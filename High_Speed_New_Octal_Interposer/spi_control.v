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
module spi_control(sdi, sdo, csb, sclk, cntrl_bits);
				
input sclk, csb, sdi;

output sdo;
output [7:0] cntrl_bits;

wire [7:0] RdData, WrData;

spi_decoder SPI1(.sdi(sdi), .sdo(sdo), .csb(csb), .sclk(sclk), 
					.RdData(RdData), .WrData(WrData), .WrStb(WrStb));

spi_reg SPI2(.sclk(sclk), .RdData(RdData), .WrStb(WrStb), 
			  .WrData(WrData), .cntrl_bits(cntrl_bits));

endmodule
