`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    mux2to1_1bit 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module mux2to1_1bit(X,Y,out,switch);

	//parameter definitions	
	parameter Q = 1;

	//port definitions - customize for different bit widths
	input wire [Q-1:0] X, Y;
	input wire switch;
	output wire [Q-1:0] out;

	assign out = switch ? X : Y;

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
