////////////////////////////////////////////////////////////////////////////////
// Company: 			Analog Devices
// Engineer: 			Alex Arrants 
// Create Date:   	05/31/07
// Design Name:   	FIFO5 for quads and octals 
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
module fifo32k(din, rdclk, rden, rst, wrclk, wren, dout, bw_bits);

input [13:0] din; 

input rdclk, wren, wrclk, rden, rst;
input [1:0] bw_bits;

output reg [15:0] dout;


wire dout_13, dout_12, dout_11, dout_10;
wire dout_09, dout_08; 
wire dout_07, dout_06, dout_05, dout_04;
wire dout_03, dout_02, dout_01, dout_00;  

reg sel;
fifo32k_by_1 U13 (.din(din[13]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_13));
fifo32k_by_1 U12 (.din(din[12]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_12));
fifo32k_by_1 U11 (.din(din[11]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_11));
fifo32k_by_1 U10 (.din(din[10]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_10));
fifo32k_by_1 U09 (.din(din[09]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_09));
fifo32k_by_1 U08 (.din(din[08]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_08));
fifo32k_by_1 U07 (.din(din[07]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_07));
fifo32k_by_1 U06 (.din(din[06]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_06));
fifo32k_by_1 U05 (.din(din[05]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_05));
fifo32k_by_1 U04 (.din(din[04]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_04));
fifo32k_by_1 U03 (.din(din[03]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_03));
fifo32k_by_1 U02 (.din(din[02]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_02));
fifo32k_by_1 U01 (.din(din[01]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_01));
fifo32k_by_1 U00 (.din(din[00]), .wrclk(wrclk), .rdclk(rdclk), .wr_en(wren), .rd_en(rden&sel), 
				   .rst(rst), .dout(dout_00));

always @(posedge rdclk or posedge rst)
  if (rst) 
    sel <= 1'b0;
  else
    sel <= 1'b1;

always@(dout_13 or dout_12 or dout_11 or dout_10 or
		  dout_09 or dout_08 or
		  dout_07 or dout_06 or dout_05 or dout_04 or 
		  dout_03 or dout_02 or dout_01 or dout_00 or sel)

//bw_bits
//case (bw_bits) //00=8bit, 01=10bit, 10=12bit, 11=14bit
//		2'b00 : dout <= {dout_07, dout_06, dout_05, dout_04, dout_03, 
//				 dout_02, dout_01, dout_00,8'b0};
//		2'b01 : dout <= {dout_09, dout_08, dout_07, dout_06, dout_05, 
//				 dout_04, dout_03, dout_02, dout_01, 
//				 dout_00, 6'b0};
//		2'b10 : dout <= {dout_11, dout_10, dout_09, dout_08, dout_07, 
//				 dout_06, dout_05, dout_04, dout_03, 
//				 dout_02, dout_01, dout_00, 4'b0};
//		2'b11 : dout <= {dout_13, dout_12, dout_11, dout_10, dout_09, 
//				 dout_08, dout_07, dout_06, dout_05, 
//				 dout_04, dout_03, dout_02, dout_01, 
//				 dout_00, 2'b0};
	
//endcase

//dout <= {dout_13, dout_12, dout_11, dout_10, dout_09, 
//				 dout_08, dout_07, dout_06, dout_05, 
//				 dout_04, dout_03, dout_02, dout_01, 
//				 dout_00, 2'b0};
//
dout <= {dout_11, dout_10, dout_09, dout_08, dout_07, 
				 dout_06, dout_05, dout_04, dout_03, 
				 dout_02, dout_01, dout_00, 4'b0};

endmodule
