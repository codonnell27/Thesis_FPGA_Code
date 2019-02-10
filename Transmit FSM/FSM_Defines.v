`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    FSM_DEFINES 
// Author(s): Patrick Hansen & Ben Anadappa
// Description: contains a written set of defines for FSM and register values
//
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef GLOBAL_DEFINES
`define GLOBAL_DEFINES

`define ZERO		       2'b00
`define ONE	             2'b01
`define READ_NOT_ENABLED 2'b11
`define BLANK 				 2'b10

`define FETCH 				4'b0000
`define DECODE				4'b0001
`define EXECUTE			4'b0110
`define WRITE_BACK		4'b0111
`define MEM_WB				4'b0100


`endif
