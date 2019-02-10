`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    mux8to1_1bit 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module mux8to1_1bit(A,B,C,D,E,F,G,H, switch, out);

	//parameter definitions
	parameter Q = 1;
	
	input wire [Q-1:0] A,B,C,D,E,F,G,H;
	input wire [2:0] switch;
	output wire [Q-1:0] out;
	
	//this assigns which of the op-code digits to pass down to later muxes
	wire [1:0] switch4to1;
	assign switch4to1  = switch[1:0];

	//the actual muxing
	wire [Q-1:0] mux_0_out, mux_1_out;
	mux4to1_1bit MUX_0 (.A(A), .B(B), .C(C), .D(D), .switch(switch4to1), .out(mux_0_out));
	mux4to1_1bit MUX_1 (.A(E), .B(F), .C(G), .D(H), .switch(switch4to1), .out(mux_1_out));
	mux2to1_1bit MUX_2 (.X(mux_1_out), .Y(mux_0_out), .switch(switch[2]), .out(out));


endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
