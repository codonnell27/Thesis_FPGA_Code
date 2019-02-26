`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    image_transmit_fsm 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`include "image_transmit_fsm_defines.v"
module image_transmit_fsm(clk,
							rst,
							start_transmit,
							transmit_in_progress,
							ultrasound_pulses,
							afe_switch,
							busy,
							received_data, new_received_data,
							mem_clear
							);

	//parameter definitions

	//port definitions - customize for different bit widths
	input wire clk, rst, start_transmit, new_received_data, mem_clear;
	input wire [7:0] received_data;

	output wire [7:0] ultrasound_pulses;
	output wire afe_switch;
	output reg transmit_in_progress, busy;
	
	reg [2:0] current_state;
	reg [2:0] next_state;
	
	wire config_storage_intaking, config_storage_updating_delays, aline_transmit_in_progress, aline_transmit_complete, pulse_sent;
	wire [7:0] used_channels; 
	wire [4:0] num_alines;
	wire [31:0] pulse_shape;
	//wire [31:0] pulse_shap;
	//wire [4:0] num_aline;
	//wire [7:0] used_channel;
	wire [15:0] delay_ch0, delay_ch1, delay_ch2, delay_ch3, delay_ch4, delay_ch5, delay_ch6, delay_ch7;
	
	reg config_storage_wr_en, config_storage_rd_en, start_us_transmit, input_delay_data_transmit_fsm, next_aline;
	reg [3:0] current_aline;
	//assign pulse_shap = 32'b1;
	//assign num_aline = 5'b10001;
	//assign used_channel = 8'b11111111;

image_configs store_configs (.uart_data(received_data), .rst(rst), .clk(clk), .new_data(new_received_data), 
										.intaking_configs(config_storage_intaking), .updating_delays(config_storage_updating_delays), .wr_en(config_storage_wr_en), .rd_en(config_storage_rd_en),
										.channel_select(used_channels), .aline_select(num_alines[3:0]), .pulse_shape(pulse_shape), .which_aline(current_aline), 
										.ch0delay(delay_ch0), .ch1delay(delay_ch1), .ch2delay(delay_ch2), .ch3delay(delay_ch3), .ch4delay(delay_ch4), .ch5delay(delay_ch5), .ch6delay(delay_ch6), .ch7delay(delay_ch7));

aline_transmit_fsm pulse_transmit(.clk(clk), .rst(rst), .used_counters(used_channels), .pulse_shape(pulse_shape), .delay_ch0(delay_ch0), .delay_ch1(delay_ch1), 
						.delay_ch2(delay_ch2), .delay_ch3(delay_ch3), .delay_ch4(delay_ch4), .delay_ch5(delay_ch5), .delay_ch6(delay_ch6), .delay_ch7(delay_ch7),
						.start_transmit(start_us_transmit), .input_delay_data(input_delay_data_transmit_fsm), .next_aline(next_alines), .transmit_in_progress(aline_transmit_in_progress), 
						.transmit_complete(aline_transmit_complete), .ultrasound_pulses(ultrasound_pulses), .pulse_sent(pulse_sent), .switch(afe_switch));

	always @(posedge clk) begin
	//state changing
		if (rst) begin
			current_state <= `IMAGE_TRANSMIT_IDLE; 
			busy <= 0;
		end else begin
			current_state <= next_state;
		end
	
	end
	
	
	always @(negedge clk) begin
	// whenever I had it as always @ (*) I would get warnings about too many interations.
	begin
		case(current_state)
			
			`IMAGE_TRANSMIT_IDLE: begin
				transmit_in_progress <= 0;
				config_storage_wr_en <= 1;
				config_storage_rd_en <= 0;
				start_us_transmit <= 0;
				input_delay_data_transmit_fsm <= 0;
				current_aline <= 4'd0;
				//next_aline <= 1;
				
				if (~config_storage_intaking & ~aline_transmit_in_progress) begin
					if (start_transmit) begin
						next_state <= `RETRIEVE_DELAYS;
						busy <= 0;
					end else begin
						busy <= 0;
						next_state <= `IMAGE_TRANSMIT_IDLE;
					end
				end else begin
					next_state <= `IMAGE_TRANSMIT_IDLE;
					busy <= 1;
				end 
				
			end
			
			`RETRIEVE_DELAYS: begin
				transmit_in_progress <= 1;
				config_storage_wr_en <= 0; 
				config_storage_rd_en <= 1;
				//start_us_transmit <= 0;
				//input_delay_data_transmit_fsm <= 0;
				//next_aline <= 0;
				if (config_storage_updating_delays) begin
					next_state <= `RETRIEVE_DELAYS;
				end else begin
					next_state <= `START_TRANSMIT;
				end
				
			end
			
			`START_TRANSMIT: begin
				//transmit_in_progress <= 0;
				//config_storage_wr_en <= 0; 
				config_storage_rd_en <= 0;
				start_us_transmit <= 1;
				input_delay_data_transmit_fsm <= 1;
				//next_aline <= 0;
				
				if (aline_transmit_in_progress) begin
					next_state <= `TRANSMITTING;
				end else begin
					next_state <= `START_TRANSMIT;
				end
				
			end
			
			`TRANSMITTING: begin
				//transmit_in_progress <= 0;
				//config_storage_wr_en <= 0; 
				//config_storage_rd_en <= 0;
				start_us_transmit <= 0;
				input_delay_data_transmit_fsm <= 1;
				//next_aline <= 0;
				
				if (pulse_sent) begin
					next_state <= `TRANSMITTING;
				end else begin
					next_state <= `NEXT_ALINE;
					current_aline <= current_aline + 1;
				end
				
			end
			
			`NEXT_ALINE: begin
				
				//transmit_in_progress <= 0;
				//config_storage_wr_en <= 0; 
				//config_storage_rd_en <= 0;
				start_us_transmit <= 0;
				input_delay_data_transmit_fsm <= 0;
				//next_aline <= 0;
				
				if (current_aline <= num_aline[3:0]) begin
					if (mem_clear) begin
						next_state <= `RETRIEVE_DELAYS;
						
					end else begin
						next_state <= `NEXT_ALINE;
					end
				end else begin
					next_state <= `IMAGE_TRANSMIT_IDLE;
				end
				
			end
			
		endcase
	end
	end

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
