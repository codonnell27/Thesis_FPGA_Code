`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    store_configs_defines 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef store_configs_defines
`define store_configs_defines

`define CONFIGS_IDLE	     				5'b00000
`define CHANNEL_SELECT1_LOAD			5'b00001
`define CHANNEL_SELECT1_HOLD		 	5'b00010
`define CHANNEL_SELECT2_LOAD		 	5'b00011
`define CHANNEL_SELECT2_HOLD			5'b00100
`define PULSE1_LOAD 						5'b00101
`define PULSE2_LOAD 						5'b00110
`define PULSE3_LOAD						5'b00111
`define PULSE4_LOAD						5'b01000
`define PULSE1_HOLD 						5'b01001
`define PULSE2_HOLD 						5'b01010
`define PULSE3_HOLD						5'b01011
`define PULSE4_HOLD						5'b01100
`define CH0_LOAD 							5'b01101
`define CH0_HOLD							5'b01110
`define CH1_LOAD 							5'b01111
`define CH1_HOLD							5'b10000
`define CH2_LOAD 							5'b10001
`define CH2_HOLD							5'b10010
`define CH3_LOAD 							5'b10011
`define CH3_HOLD							5'b10100
`define CH4_LOAD 							5'b10101
`define CH4_HOLD							5'b10110
`define CH5_LOAD 							5'b10111
`define CH5_HOLD							5'b11000
`define CH6_LOAD 							5'b11001
`define CH6_HOLD							5'b11010
`define CH7_LOAD 							5'b11011
`define CH7_HOLD							5'b11100
`define READ_DELAY1						5'b11101
`define READ_DELAY2						5'b11110


`endif