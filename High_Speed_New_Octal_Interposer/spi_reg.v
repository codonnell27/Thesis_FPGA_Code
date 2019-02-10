////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices
// Engineer: 		Mike Hughes
//	Create Date:   11/09/05
// Design Name:   FIFO5 for AD9230
// Tool versions:	ISE 8.1.02  
// Description: 	FPGA design of a Buffer Memory Board 
// 
// Revision:      1.0
//
//////////////////////////////////////////////////////////////////////////////////
`timescale  1 ns / 10 ps
module spi_reg(sclk, RdData, WrStb, WrData, cntrl_bits);
                
input sclk, WrStb;
input [7:0] WrData; 

output [7:0] cntrl_bits;	
output [7:0] RdData;

wire sclk, WrStb;
wire [7:0] WrData, RdData;

reg [7:0] data;

assign cntrl_bits[7] = data[7];
assign cntrl_bits[6] = data[6];
assign cntrl_bits[5] = data[5];
assign cntrl_bits[4] = data[4];
assign cntrl_bits[3] = data[3];
assign cntrl_bits[2] = data[2];
assign cntrl_bits[1] = data[1];
assign cntrl_bits[0] = data[0];

always @(posedge sclk)
	begin
		if(WrStb)
			data <= WrData;
	end


assign	RdData = data;
		
endmodule
