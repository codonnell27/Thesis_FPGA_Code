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
`ifndef uart_main_defines
`define uart_main_defines

`define IDLE	     				3'b000
`define LD_STR		 				3'b001
`define START_SEND		 		3'b010
`define SENDING 					3'b111





`endif