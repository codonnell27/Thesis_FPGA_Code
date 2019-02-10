`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    uart_transmit 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`include "uart_transmit_fsm_defines.v"
module uart_transmit(send, data, clk, ready, uart_tx, rst);

	//parameter definitions
	parameter line_length = 8;
	parameter line_handshake_length = 4;
	parameter tmr_length = 14;
	wire [tmr_length-1:0] bitTmrMax = 14'b010100010110000;
	
	
	//port definitions - customize for different bit widths
	input wire clk, rst, send;
	input wire [line_length-1:0] data;
	
	output reg ready;
	output wire uart_tx ;
	
	
	reg [line_handshake_length -1:0] bitIndex; 
	reg [7:0] latched_data;
	wire [9:0] tx_data;
	reg txBit;
	reg [tmr_length-1:0] bitTmr;
	reg [1:0] current_state;
	reg [1:0] next_state;
	
	wire [line_handshake_length -1:0] bit_max = 4'd10;
	wire bit_done = (bitTmr >= bitTmrMax);
	
	assign uart_tx = txBit;
	assign tx_data[0] = 0;
	assign tx_data[9] = 1;
	assign tx_data[8:1] = latched_data;
	
	
	always @(posedge clk) begin
	//state changing
		if (rst) begin
			current_state <= `READY; 
		end else begin
			current_state <= next_state;
		end
	end
	
	always @(negedge clk) begin
	// whenever I had it as always @ (*) I would get warnings about too many interations.
	begin
		case(current_state)
			
			`READY: begin
				bitTmr <= 14'd0;
				bitIndex <= 0;
				latched_data <= data;
				txBit <= 1;
				
			
				if (send) begin
					next_state <= `LOAD;
					ready <= 0;
				end else begin
					next_state <= `READY;
					ready <= 1;
				end
			end
			
			`LOAD: begin
			
				bitTmr <= 14'd0;
				bitIndex <= bitIndex + 1;
				txBit <= tx_data[bitIndex];
				next_state <= `SEND;
				ready <= 0;

			end

			`SEND: begin
				bitTmr <= bitTmr + 1;
				ready <= 0;
				
				
				if (~bit_done) begin
					next_state <= `SEND;
				end else if (bitIndex < bit_max) begin
					next_state <= `LOAD;
				end else begin
					next_state <= 	`READY;
				end

			end	

			
		endcase
		
	end
	end 
	

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
