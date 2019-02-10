`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    mux4to1_1bit 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module mux4to1_1bit(A,B,C,D,switch,out);

	//parameter definitions
	parameter Q = 1;

	//port definitions - customize for different bit widths
	input wire [Q-1:0] A, B, C, D;
	input wire [1:0] switch;
	output wire [Q-1:0] out;

	wire [Q-1:0] mux_0_out, mux_1_out;
	mux2to1_1bit MUX_0 (.X(B), .Y(A), .switch(switch[0]), .out(mux_0_out));
	mux2to1_1bit MUX_1 (.X(D), .Y(C), .switch(switch[0]), .out(mux_1_out));
	mux2to1_1bit MUX_2 (.X(mux_1_out), .Y(mux_0_out), .switch(switch[1]), .out(out));

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
