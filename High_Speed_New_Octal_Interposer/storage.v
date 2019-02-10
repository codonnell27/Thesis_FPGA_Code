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
module storage(dinA, dinB, wrclk, load, rst, rdclk, rdenA, rdenB, dout, bw_bits);

input wrclk, rst;
input rdclk, rdenA, rdenB, load;
input [13:0] dinA;
input [13:0] dinB;
input [1:0] bw_bits;

output reg [15:0] dout;

wire [15:0] doutA;
wire [15:0] doutB;

`ifndef EXTERNAL_RAM
fifo32k F1(
	 .din(dinA),
	 .rdclk(rdclk),
	 .rden(rdenA),
	 .rst(rst),
	 .wrclk(wrclk),
	 .wren(load),
	 .dout(doutA),
	 .bw_bits(bw_bits));
 //fifo32k F2(
//	 .din(dinB),
//	 .rdclk(rdclk),
//	 .rden(rdenB),
//	 .rst(rst),
//	 .wrclk(wrclk),
//	 .wren(load),
//	 .dout(doutB),
//	 .bw_bits(bw_bits));
	 


always @(posedge rdclk)
	if(rdenA)
		dout <= doutA;
	else if(rdenB)
		dout <= doutB;


`else
    // insert code for external SRAM here
`endif

endmodule
