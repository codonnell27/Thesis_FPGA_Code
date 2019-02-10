`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    transmit_counter_defines 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef transmit_counter_defines
`define transmit_counter_defines

`define START_COUNT	      3'b001
`define UPLOAD_NEW_COUNT 	3'b011
`define COUNTING 				3'b010

`define SENDING_PULSE 		3'b100
`define PULSE_SENT 		   3'b101



`endif
