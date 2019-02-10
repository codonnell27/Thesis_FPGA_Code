`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    transmit_fsm 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`include "transmit_fsm_defines.v"
module transmit_fsm(
							clk,
							rst,
							used_counters,
							pulse_shape,
							delay_ch0,
							delay_ch1,
							delay_ch2,
							delay_ch3,
							delay_ch4,
							delay_ch5,
							delay_ch6,
							delay_ch7,
							start_transmit,
							input_delay_data,
							next_aline,
							
							transmit_in_progress,
							transmit_complete,
							ultrasound_pulses,
							pulse_sent,
							switch				
);

	//parameter definitions
	parameter num_channels = 8;
	parameter pulse_length = 32;
	parameter count_num_bits = 16;
	

	//port definitions - customize for different bit widths
	input wire clk, rst;
	input wire start_transmit;
	input wire next_aline;
	input wire input_delay_data;
	input wire [num_channels-1:0] used_counters;
	input wire [pulse_length-1:0] pulse_shape;
	input wire [count_num_bits-1:0] delay_ch0, delay_ch1, delay_ch2, delay_ch3, delay_ch4, delay_ch5, delay_ch6, delay_ch7;
	
	output reg transmit_in_progress;
	output reg transmit_complete;	
	output wire [num_channels-1:0] pulse_sent;
	output wire [num_channels-1:0] ultrasound_pulses;
	output reg switch; //active high, i.e. pulse can transmit when switch is high
 
	reg start_count;
	reg upload_new_count;
	
	reg [2:0] current_state;
	reg [2:0] next_state;
	
	wire [num_channels-1:0] count_complete;
	
	wire	all_pulses_sent;
	wire pulse_c0, pulse_c1, pulse_c2, pulse_c3, pulse_c4, pulse_c5, pulse_c6, pulse_c7;
	assign pulse_c0 = ultrasound_pulses[0];
	assign pulse_c1 = ultrasound_pulses[1];
	assign pulse_c2 = ultrasound_pulses[2];
	assign pulse_c3 = ultrasound_pulses[3];
	assign pulse_c4 = ultrasound_pulses[4];
	assign pulse_c5 = ultrasound_pulses[5];
	assign pulse_c6 = ultrasound_pulses[6];
	assign pulse_c7 = ultrasound_pulses[7];
	
	assign all_pulses_sent = &pulse_sent;
 
	Transmit_counter counter0 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[0]), 
									.start_count(start_count), 
									.count_complete (count_complete[0]), 
									.pulse_sent(pulse_sent[0]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[0]), 
									.count(delay_ch0), 
									.upload_new_count(upload_new_count)
									);

	Transmit_counter counter1 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[1]), 
									.start_count(start_count), 
									.count_complete (count_complete[1]), 
									.pulse_sent(pulse_sent[1]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[1]), 
									.count(delay_ch1), 
									.upload_new_count(upload_new_count)
									);
									
	Transmit_counter counter2 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[2]), 
									.start_count(start_count), 
									.count_complete (count_complete[2]), 
									.pulse_sent(pulse_sent[2]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[2]), 
									.count(delay_ch2), 
									.upload_new_count(upload_new_count)
									);		
									
	Transmit_counter counter3 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[3]), 
									.start_count(start_count), 
									.count_complete (count_complete[3]), 
									.pulse_sent(pulse_sent[3]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[3]), 
									.count(delay_ch3), 
									.upload_new_count(upload_new_count)
									);
									
	Transmit_counter counter4 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[4]), 
									.start_count(start_count), 
									.count_complete (count_complete[4]), 
									.pulse_sent(pulse_sent[4]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[4]), 
									.count(delay_ch4), 
									.upload_new_count(upload_new_count)
									);
									
	Transmit_counter counter5 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[5]), 
									.start_count(start_count), 
									.count_complete (count_complete[5]), 
									.pulse_sent(pulse_sent[5]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[5]), 
									.count(delay_ch5), 
									.upload_new_count(upload_new_count)
									);
									
	Transmit_counter counter6 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[6]), 
									.start_count(start_count), 
									.count_complete (count_complete[6]), 
									.pulse_sent(pulse_sent[6]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[6]), 
									.count(delay_ch6), 
									.upload_new_count(upload_new_count)
									);
									
	Transmit_counter counter7 (.clk(clk), .rst(rst), 
									.counter_in_use(used_counters[7]), 
									.start_count(start_count),
									.count_complete (count_complete[7]), 
									.pulse_sent(pulse_sent[7]), 
									.pulse_shape(pulse_shape), 
									.ultrasound_pulse(ultrasound_pulses[7]), 
									.count(delay_ch7), 
									.upload_new_count(upload_new_count)
									);



	always @(posedge clk) begin
	//state changing
		if (rst) begin
			current_state <= `TRANSMIT_IDLE; 
			transmit_complete <=0;
		end else begin
			current_state <= next_state;
		end
	
	end
	
		always @(negedge clk) begin
	// whenever I had it as always @ (*) I would get warnings about too many interations.
	begin
		case(current_state)
			
			`TRANSMIT_IDLE: begin
			
				transmit_in_progress <= 0;
				//transmit_complete <= 0;
				switch <= 0;
				start_count <= 0;
				upload_new_count <= 0 ;
				
				if (input_delay_data) begin
					next_state <= `LOAD_DELAYS;
				end else begin
					next_state <= `TRANSMIT_IDLE;
				end
			end
			
			`LOAD_DELAYS: begin
				//transmit_in_progress <= 0;
				//transmit_complete <= 0;
				switch <= 0;
				//start_count <= 0;
				upload_new_count <= 1;
				
				next_state <= `OK_TO_TRANSMIT;

			end

			`OK_TO_TRANSMIT: begin
				//transmit_in_progress <= ;
				//transmit_complete <= ;
				switch <= 0;
				//start_count <= ;
				upload_new_count <= 0;
				if (start_transmit) begin
					next_state <= `OPEN_SWITCH;
				end else begin
					next_state <= `OK_TO_TRANSMIT;
				end

			end	
			
			`OPEN_SWITCH: begin
			
				transmit_in_progress <= 1;
				//transmit_complete <= ;
				switch <= 1;
				start_count <= 0;
				upload_new_count <= 0;				
				next_state <= `TRANSMIT;
				
			end
				
			`TRANSMIT: begin
				transmit_in_progress <= 1;
				transmit_complete <= 0;
				switch <= 1;
				start_count <= 1;
				//upload_new_count <= 0;
				
				if (all_pulses_sent) begin
					next_state <= `CLOSE_SWITCH;
				end else begin
					next_state <= `TRANSMIT;
				end

			
			end
				
			`CLOSE_SWITCH: begin
				transmit_in_progress <= 0;
				transmit_complete <= 1;
				switch <= 0;
				start_count <= 0;
				upload_new_count <= 0;
				
				
				next_state <= `TRANSMIT_IDLE;
			
			end
			
			`TRANSMIT_COMPLETE: begin
			
				transmit_in_progress <= 0;
				transmit_complete <= 1;
				switch <= 0;
				start_count <= 0;
				upload_new_count <= 0;
				if (next_aline) begin
					next_state <= `TRANSMIT_IDLE;
				end else begin
					next_state <= `TRANSMIT_COMPLETE;
				end

			
			end
			
		endcase
		
	end
end




endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
