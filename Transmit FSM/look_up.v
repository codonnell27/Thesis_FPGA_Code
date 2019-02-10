`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    look_up 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module look_up(pulse, select, out);

	//parameter definitions
	parameter pulse_length = 32;
	//port definitions - customize for different bit widths
	input wire [pulse_length -1: 0] pulse;
	input wire [pulse_length -1: 0] select;
	
	output wire out;

	
	wire out0to7;
	wire out8to15;
	wire out16to23;
	wire out24to31;
	
	assign out0to7 = (pulse[0]&select[0]) | (pulse[1]&select[1]) | (pulse[2]&select[2]) | (pulse[3]&select[3]) | (pulse[4]&select[4]) | (pulse[5]&select[5]) | (pulse[6]&select[6]) | (pulse[7]&select[7]);
	assign out8to15 = (pulse[8]&select[8]) | (pulse[9]&select[9]) | (pulse[10]&select[10]) | (pulse[11]&select[11]) | (pulse[12]&select[12]) | (pulse[13]&select[13]) | (pulse[14]&select[14]) | (pulse[15]&select[15]);
	assign out16to23 = (pulse[16]&select[16]) | (pulse[17]&select[17]) | (pulse[18]&select[18]) | (pulse[19]&select[19]) | (pulse[20]&select[20]) | (pulse[21]&select[21]) | (pulse[22]&select[22]) | (pulse[23]&select[23]);
	assign out24to31 = (pulse[24]&select[24]) |(pulse[25]&select[25]) | (pulse[26]&select[26]) | (pulse[27]&select[27]) | (pulse[28]&select[28]) | (pulse[29]&select[29]) | (pulse[30]&select[30]) | (pulse[31]&select[31]);

	assign out = out0to7 | out8to15 | out16to23 | out24to31;

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
