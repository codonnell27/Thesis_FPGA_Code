`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:44:20 02/05/2019
// Design Name:   ch_aline_storage
// Module Name:   Z:/VM_Shared_folder/UART out.gz/ram_test.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ch_aline_storage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_test;

	// Inputs
	reg clk;
	reg rst;
	reg [4:0] addr;
	reg [7:0] data_in;
	reg wr_en;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	ch_aline_storage uut (
		.clk(clk), 
		.rst(rst), 
		.addr(addr), 
		.data_in(data_in), 
		.data_out(data_out), 
		.wr_en(wr_en)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		addr = 0;
		data_in = 8'b00011011;
		wr_en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		wr_en = 1;
		#10;
		wr_en = 0;
		
        
		// Add stimulus here

	end
always #5 clk = ~clk;     
endmodule

