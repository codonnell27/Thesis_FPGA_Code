////////////////////////////////////////////////////////////////////////////////
// Company: 			Analog Devices
// Engineer: 			Mike Hughes & Alex Arrants
// Create Date:   	05/31/07
// Design Name:   	FIFO5 for quads & octals
// Module Name:   	
// Project Name:  	 
// Target Device:  
// Tool versions:	ISE 9.1.03i
// Description: 	 
// Revision:
// Comments:
// 	
////////////////////////////////////////////////////////////////////////////////  
`timescale 1ns / 1ps
module storage(dinA, dinB, wrclk, load, rst, rdclk, rden, dout, bw_bits);

	input wrclk, rst;
	input rdclk, load;
	input [7:0] rden;
	input [11:0] dinA;
	input [11:0] dinB;
	input [1:0] bw_bits;

	output reg [11:0] dout;

	wire [11:0] doutA;
	wire [11:0] doutB;
	wire [11:0] doutC;
	wire [11:0] doutD;
	wire [11:0] doutE;
	wire [11:0] doutF;
	wire [11:0] doutG;
	wire [11:0] doutH;

	`ifndef EXTERNAL_RAM
		fifo32k F0(
			.din(dinA),
			.rdclk(rdclk),
			.rden(rdenA),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutA),
			.bw_bits(bw_bits));
		fifo32k F1(
			.din(dinB),
			.rdclk(rdclk),
			.rden(rdenB),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutB),
			.bw_bits(bw_bits));
		fifo32k F2(
			.din(dinC),
			.rdclk(rdclk),
			.rden(rdenB),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutB),
			.bw_bits(bw_bits));
		fifo32k F3(
			.din(dinD),
			.rdclk(rdclk),
			.rden(rdenB),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutB),
			.bw_bits(bw_bits));	
		fifo32k F4(
			.din(dinE),
			.rdclk(rdclk),
			.rden(rdenB),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutB),
			.bw_bits(bw_bits));
		fifo32k F5(
			.din(dinF),
			.rdclk(rdclk),
			.rden(rdenB),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutB),
			.bw_bits(bw_bits));
		fifo32k F6(
			.din(dinG),
			.rdclk(rdclk),
			.rden(rdenB),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutB),
			.bw_bits(bw_bits));
		fifo32k F7(
			.din(dinH),
			.rdclk(rdclk),
			.rden(rdenB),
			.rst(rst),
			.wrclk(wrclk),
			.wren(load),
			.dout(doutB),
			.bw_bits(bw_bits));
	 


	always @(posedge rdclk)
		if(rden[0])
			dout <= doutA;
		else if (rden[1])
			dout <= doutB;
		else if (rden[2])
			dout <=doutC;
		else if (rden[3])
			dout <=doutD;
		else if (rden[4])
			dout <=doutE;
		else if (rden[5])
			dout <= doutF;
		else if (rden[6])
			dout <=doutG;
		else if (rden[7])
			dout <=doutH;


`else
    // insert code for external SRAM here
`endif

endmodule
