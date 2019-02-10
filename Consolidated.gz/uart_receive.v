`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    uart_receive 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`include "uart_receive_defines.v"
module uart_receive(receiving, data, clk, uart_tx, rst, new_data);

	//parameter definitions
	parameter line_length = 8;
	parameter line_handshake_length = 4;
	parameter tmr_length = 14;
	wire [tmr_length-1:0] bitTmrMax =     14'b10100010110000 ;	//14'b10 1000 1011 0000;
	wire [tmr_length-1:0] halfBitTmrMax = 14'b01010001011000 ;	//14'b10 1000 1011 0000;

	input wire clk, rst, uart_tx;
	output reg receiving, new_data;
	output reg [7:0] data;
	
	reg [3:0] bitIndex; 
	reg [8:0] tx_data;
	reg txBit;
	reg [tmr_length-1:0] bitTmr;
	
	reg [1:0] current_state;
	reg [1:0] next_state;
	
	wire [line_handshake_length -1:0] bit_max = 4'd9;
	wire bit_done = (bitTmr >= bitTmrMax);
	
	always @(posedge clk) begin
	//state changing
		if (rst) begin
			current_state <= `LISTENING; 
		end else begin
			current_state <= next_state;
		end
	end
	
	always @(negedge clk) begin
	// whenever I had it as always @ (*) I would get warnings about too many interations.
	begin
		case(current_state)
			
			`LISTENING: begin
				
				bitTmr <= 14'd0;
				bitIndex <= 0;
				new_data <= 0;	
				receiving <= 0;
			
				if (~uart_tx) begin
					next_state <= `HALF_BIT;
				end else begin
					next_state <= `LISTENING;
				end
			end
			
			`LOAD_BIT: begin
				bitTmr <= 14'd0;
				bitIndex <= bitIndex + 1;
				tx_data[8:1] <= tx_data[7:0];
				tx_data[0] <= uart_tx;

				receiving <= 1;
			
				next_state <= `HOLD;
			end

			`HOLD: begin
				
				bitTmr <= bitTmr + 1;
				receiving <= 1;
				if (bitIndex == bit_max) begin
					data <= tx_data[8:1];
					new_data <= 1;	
				end
				
				if (~bit_done) begin
					next_state <= `HOLD;

				end else if (bitIndex != bit_max) begin
					next_state <= `LOAD_BIT;
				end else begin
					next_state <= 	`LISTENING;
								
					end

			end	
			
			`HALF_BIT: begin
				
				bitTmr <= bitTmr + 1;
				receiving <= 1;
				
				if (bitTmr >= halfBitTmrMax) begin
					next_state <= `HOLD;
					bitTmr <= 0;
				end else begin
					next_state <= 	`HALF_BIT;
				end

			end

			
		endcase
		
	end
	end 
	


endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
