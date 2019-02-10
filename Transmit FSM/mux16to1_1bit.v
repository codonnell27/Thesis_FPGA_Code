`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    mux16to1_1bit 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module mux16to1_1bit(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P, switch, out);

	//parameter definitions
	parameter Q = 1;

	input wire [Q-1:0] A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P;
	input wire [3:0] switch;
	output wire [Q-1:0] out;

	//this assigns which of the op-code digits to pass down to later muxes
	wire [2:0] switch8to1;
	assign switch8to1  = switch[2:0];
	
	wire [Q-1:0] mux_0_out, mux_1_out;
	mux8to1_1bit MUX_0 (.A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G), .H(H), .switch(switch8to1), .out(mux_0_out));
	mux8to1_1bit MUX_1 (.A(I), .B(J), .C(K), .D(L), .E(M), .F(N), .G(O), .H(P), .switch(switch8to1), .out(mux_1_out));
	mux2to1_1bit MUX_2 (.X(mux_1_out), .Y(mux_0_out), .switch(switch[3]), .out(out));
endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
