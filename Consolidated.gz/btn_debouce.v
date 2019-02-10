`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    btn_debouce 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module btn_debouce(btn_i, btn_o, clk, btns_posedge);

	//parameter definitions
	parameter num_btns = 5;

	//port definitions - customize for different bit widths
	input wire clk;
	input wire [num_btns-1:0] btn_i;
	
	output wire [num_btns-1:0] btn_o;
	output wire [num_btns-1:0] btns_posedge;
	 
	one_btn_debounce c_btn (.btn_i(btn_i[0]), .clk(clk), .btn_o(btn_o[0]), .btn_posedge(btns_posedge[0]));
	one_btn_debounce t_btn (.btn_i(btn_i[1]), .clk(clk), .btn_o(btn_o[1]), .btn_posedge(btns_posedge[1]));
	one_btn_debounce r_btn (.btn_i(btn_i[2]), .clk(clk), .btn_o(btn_o[2]), .btn_posedge(btns_posedge[2]));
	one_btn_debounce b_btn (.btn_i(btn_i[3]), .clk(clk), .btn_o(btn_o[3]), .btn_posedge(btns_posedge[3]));
	one_btn_debounce l_btn (.btn_i(btn_i[4]), .clk(clk), .btn_o(btn_o[4]), .btn_posedge(btns_posedge[4]));
	
	

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
