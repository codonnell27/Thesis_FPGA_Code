`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    Transmit_counter 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`include "transmit_counter_defines.v"
module Transmit_counter(
								clk,
								rst,
								counter_in_use,
								start_count, 
								count_complete,
								pulse_sent,
								pulse_shape,
								ultrasound_pulse,
								count,
								upload_new_count						
);

	//parameter definitions
	parameter pulse_length = 32;
	parameter count_num_bits = 16;
	
	//port definitions - customize for different bit widths
	input wire clk,rst;
	input wire counter_in_use;
	input wire start_count;
	input wire upload_new_count;
	input [pulse_length -1: 0] pulse_shape;
	input [count_num_bits -1: 0] count;
	
	output reg count_complete;
	output reg ultrasound_pulse;
	output reg pulse_sent;
	
	reg [count_num_bits -1: 0] current_count;
	reg currently_counting;
	reg [count_num_bits -1: 0] count_max;
	reg [pulse_length -1: 0] pulse_loc;
	wire look_up_out;
	
	reg [2:0] current_state;
	reg [2:0] next_state;
	
	look_up find_pulse (.pulse(pulse_shape), .select(pulse_loc), .out(look_up_out));
	

	always @(posedge clk) begin
	//state changing
		if (rst) begin
			current_state <= `UPLOAD_NEW_COUNT; 
		end else begin
			current_state <= next_state;
		end
	
	end


	always @(negedge clk) begin
	// whenever I had it as always @ (*) I would get warnings about too many interations.
	begin
		case(current_state)
			
			`UPLOAD_NEW_COUNT: begin
				current_count <= 16'd0;
				ultrasound_pulse <= 0;
				count_complete <= 0;
				currently_counting <= 0;
				pulse_sent <=0; 
				count_max <= count;
				pulse_loc <= 32'd0;
				
				if (start_count & counter_in_use) begin
					next_state <= `START_COUNT;
				end else if (start_count) begin
					next_state <= `PULSE_SENT;
				end else begin
					next_state <= `UPLOAD_NEW_COUNT;
				end
			end
			
			`START_COUNT: begin
				current_count <= 16'd1;
				//ultrasound_pulse <= 0;
				//count_complete <= 0;
				currently_counting <= 1;
				//pulse_sent <=0; 
				//count_max <= count;
				//pulse_loc <= pulse_length'd0;
				
				next_state <= `COUNTING;

			end
	
			
			`COUNTING: begin
				current_count <= current_count + 1 ;
				//ultrasound_pulse <= 0;
				//count_complete <= 0;
				currently_counting <= 1;
				//pulse_sent <=0; 
				//count_max <= count;
				pulse_loc <= 32'd1;
				
				if (current_count <= count_max) begin
					next_state <= `COUNTING;
				end else begin
					next_state <= `SENDING_PULSE;
				end
			end
				
			`SENDING_PULSE: begin
				//current_count <= current_count + 1 ;
				ultrasound_pulse <= look_up_out;
				count_complete <= 1;
				currently_counting <= 0;
				//pulse_sent <=0; 
				//count_max <= count;
				pulse_loc <= pulse_loc << 1;
				
				if (pulse_loc[pulse_length-1]) begin
					next_state <= `PULSE_SENT;
				end else begin
					next_state <= `SENDING_PULSE;
				end

			
			end
				
			`PULSE_SENT: begin
				//current_count <= current_count + 1 ;
				ultrasound_pulse <= 0;
				//count_complete <= 0;
				//currently_counting <= 1;
				pulse_sent <=1; 
				//count_max <= count;
				//pulse_loc <= pulse_length'd0;
				
				if (upload_new_count) begin
					next_state <= `UPLOAD_NEW_COUNT;
				end else begin
					next_state <= `PULSE_SENT;
				end

			
			end
			
		endcase
		
	end
end

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
