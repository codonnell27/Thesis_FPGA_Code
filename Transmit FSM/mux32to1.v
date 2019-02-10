`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    mux32to1 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module mux32to1_1bit(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, switch, out);

	//parameter definitions;

	input wire  a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31;
	input wire [4:0] switch;
	output wire out;

	//this assigns which of the op-code digits to pass down to later muxes
	wire [3:0] switch16to1;
	assign switch16to1  = switch[3:0];
	
	wire mux_0_out, mux_1_out;
	mux16to1_1bit MUX_0 (.A(a0), .B(a1), .C(a2), .D(a3), .E(a4), .F(a5), .G(a6), .H(a7), .I(a8), .J(a9), .K(a10), .L(a11), .M(a12), .N(a13), .O(a14), .P(a15), .switch(switch16to1), .out(mux_0_out));
	mux16to1_1bit MUX_1 (.A(a16), .B(a17), .C(a18), .D(a19), .E(a20), .F(a21), .G(a22), .H(a23), .I(a24), .J(a25), .K(a26), .L(a27), .M(a28), .N(a29), .O(a30), .P(a31), .switch(switch16to1), .out(mux_1_out));
	mux2to1_1bit MUX_2 (.X(mux_1_out), .Y(mux_0_out), .switch(switch[4]), .out(out));
endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
