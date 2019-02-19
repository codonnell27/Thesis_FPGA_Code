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
`ifndef image_transmit_fsm_defines
`define image_transmit_fsm_defines

`define IMAGE_TRANSMIT_IDLE		3'b000
`define RETRIEVE_DELAYS 			3'b001
`define START_TRANSMIT 				3'b010
`define NEXT_ALINE 					3'b011
`define TRANSMITTING 			   3'b100


`endif
