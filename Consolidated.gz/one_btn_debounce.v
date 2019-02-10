`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    one_btn_debounce 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module one_btn_debounce(btn_i, btn_o, clk, btn_posedge);

	//parameter definitions
	parameter dbn_num = 100;

	//port definitions - customize for different bit widths
	input wire clk, btn_i;

	
	output wire btn_o;
	output wire btn_posedge;
	
	reg [dbn_num-1:0] btn_vals;
	reg [1:0] last_btn_debounced;
	
	assign btn_o = &(btn_vals);
	assign btn_posedge = ~last_btn_debounced[1] & last_btn_debounced[0];
	
	always @ (posedge clk) begin
		last_btn_debounced[1] <= last_btn_debounced[0];
		last_btn_debounced[0] <= btn_o;
		btn_vals[dbn_num-1:1] <= btn_vals[dbn_num-2:0];
		btn_vals[0] <= btn_i;
	end
	

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire