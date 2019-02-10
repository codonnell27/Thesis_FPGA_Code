`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    transmit_fsm_defines 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef transmit_fsm_defines
`define transmit_fsm_defines

`define TRANSMIT_IDLE			3'b000
`define LOAD_DELAYS 				3'b001
`define OPEN_SWITCH 				3'b010
`define TRANSMIT 					3'b011
`define CLOSE_SWITCH 		   3'b100
`define TRANSMIT_COMPLETE 		3'b101
`define OK_TO_TRANSMIT 			3'b110


`endif
