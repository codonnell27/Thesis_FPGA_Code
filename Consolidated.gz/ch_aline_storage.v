`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    ch_aline_storage 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module ch_aline_storage(clk, rst, addr, data_in, data_out, wr_en);

	//parameter definitions

	//port definitions - customize for different bit widths
	input wire clk, rst, wr_en;
	input wire [4:0] addr;
	input wire [7:0] data_in;
	
	output wire [7:0] data_out;
	
	
	//assign data_out = {DOA, DOB, DOC, DOD); 

	// RAM32M: 32-deep by 8-wide Multi Port LUT RAM
	// Virtex-5, Virtex-6, Spartan-6
	// Xilinx HDL Libraries Guide, version 11.2
	RAM32M #(
		.INIT_A(64'h0000000000000000), // Initial contents of A Port
		.INIT_B(64'h0000000000000000), // Initial contents of B Port
		.INIT_C(64'h0000000000000000), // Initial contents of C Port
		.INIT_D(64'h0000000000000000) // Initial contents of D Port
	) RAM32M_inst (
		.DOA(data_out[7:6]), // Read port A 2-bit output
		.DOB(data_out[5:4]), // Read port B 2-bit output
		.DOC(data_out[3:2]), // Read port C 2-bit output
		.DOD(data_out[1:0]), // Read/Write port D 2-bit output
		.ADDRA(addr), // Read port A 5-bit address input
		.ADDRB(addr), // Read port B 5-bit address input
		.ADDRC(addr), // Read port C 5-bit address input
		.ADDRD(addr), // Read/Write port D 5-bit address input
		.DIA(data_in[7:6]), // RAM 2-bit data write input addressed by ADDRD,// read addressed by ADDRA
		.DIB(data_in[5:4]), // RAM 2-bit data write input addressed by ADDRD,// read addressed by ADDRB
		.DIC(data_in[3:2]), // RAM 2-bit data write input addressed by ADDRD,	// read addressed by ADDRC
		.DID(data_in[1:0]), // RAM 2-bit data write input addressed by ADDRD, // read addressed by ADDRD
		.WCLK(clk), // Write clock input
		.WE(wr_en) // Write enable input
);
// End of RAM32M_inst instantiation

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
