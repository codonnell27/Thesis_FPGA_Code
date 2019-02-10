`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:20 02/05/2019
// Design Name:   store_configs
// Module Name:   Z:/VM_Shared_folder/UART out.gz/configs_test.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: store_configs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module configs_test;

	// Inputs
	reg [7:0] uart_data;
	reg rst;
	reg clk;
	reg new_data;

	// Outputs
	wire intaking_configs;
	wire [7:0] channel_select;
	wire [4:0] aline_select;
	wire [31:0] pulse_shape;
	wire [15:0] c0a0;
	wire [15:0] c0a1;
	wire [15:0] c0a2;
	wire [15:0] c0a3;
	wire [15:0] c0a4;
	wire [15:0] c0a5;
	wire [15:0] c0a6;
	wire [15:0] c0a7;
	wire [15:0] c0a8;
	wire [15:0] c0a9;
	wire [15:0] c0a10;
	wire [15:0] c0a11;
	wire [15:0] c0a12;
	wire [15:0] c0a13;
	wire [15:0] c0a14;
	wire [15:0] c0a15;
	wire [15:0] c1a0;
	wire [15:0] c1a1;
	wire [15:0] c1a2;
	wire [15:0] c1a3;
	wire [15:0] c1a4;
	wire [15:0] c1a5;
	wire [15:0] c1a6;
	wire [15:0] c1a7;
	wire [15:0] c1a8;
	wire [15:0] c1a9;
	wire [15:0] c1a10;
	wire [15:0] c1a11;
	wire [15:0] c1a12;
	wire [15:0] c1a13;
	wire [15:0] c1a14;
	wire [15:0] c1a15;
	wire [15:0] c2a0;
	wire [15:0] c2a1;
	wire [15:0] c2a2;
	wire [15:0] c2a3;
	wire [15:0] c2a4;
	wire [15:0] c2a5;
	wire [15:0] c2a6;
	wire [15:0] c2a7;
	wire [15:0] c2a8;
	wire [15:0] c2a9;
	wire [15:0] c2a10;
	wire [15:0] c2a11;
	wire [15:0] c2a12;
	wire [15:0] c2a13;
	wire [15:0] c2a14;
	wire [15:0] c2a15;
	wire [15:0] c3a0;
	wire [15:0] c3a1;
	wire [15:0] c3a2;
	wire [15:0] c3a3;
	wire [15:0] c3a4;
	wire [15:0] c3a5;
	wire [15:0] c3a6;
	wire [15:0] c3a7;
	wire [15:0] c3a8;
	wire [15:0] c3a9;
	wire [15:0] c3a10;
	wire [15:0] c3a11;
	wire [15:0] c3a12;
	wire [15:0] c3a13;
	wire [15:0] c3a14;
	wire [15:0] c3a15;
	wire [15:0] c4a0;
	wire [15:0] c4a1;
	wire [15:0] c4a2;
	wire [15:0] c4a3;
	wire [15:0] c4a4;
	wire [15:0] c4a5;
	wire [15:0] c4a6;
	wire [15:0] c4a7;
	wire [15:0] c4a8;
	wire [15:0] c4a9;
	wire [15:0] c4a10;
	wire [15:0] c4a11;
	wire [15:0] c4a12;
	wire [15:0] c4a13;
	wire [15:0] c4a14;
	wire [15:0] c4a15;
	wire [15:0] c5a0;
	wire [15:0] c5a1;
	wire [15:0] c5a2;
	wire [15:0] c5a3;
	wire [15:0] c5a4;
	wire [15:0] c5a5;
	wire [15:0] c5a6;
	wire [15:0] c5a7;
	wire [15:0] c5a8;
	wire [15:0] c5a9;
	wire [15:0] c5a10;
	wire [15:0] c5a11;
	wire [15:0] c5a12;
	wire [15:0] c5a13;
	wire [15:0] c5a14;
	wire [15:0] c5a15;
	wire [15:0] c6a0;
	wire [15:0] c6a1;
	wire [15:0] c6a2;
	wire [15:0] c6a3;
	wire [15:0] c6a4;
	wire [15:0] c6a5;
	wire [15:0] c6a6;
	wire [15:0] c6a7;
	wire [15:0] c6a8;
	wire [15:0] c6a9;
	wire [15:0] c6a10;
	wire [15:0] c6a11;
	wire [15:0] c6a12;
	wire [15:0] c6a13;
	wire [15:0] c6a14;
	wire [15:0] c6a15;
	wire [15:0] c7a0;
	wire [15:0] c7a1;
	wire [15:0] c7a2;
	wire [15:0] c7a3;
	wire [15:0] c7a4;
	wire [15:0] c7a5;
	wire [15:0] c7a6;
	wire [15:0] c7a7;
	wire [15:0] c7a8;
	wire [15:0] ca79;
	wire [15:0] c7a10;
	wire [15:0] c7a11;
	wire [15:0] c7a12;
	wire [15:0] c7a13;
	wire [15:0] c7a14;
	wire [15:0] c7a15;

	// Instantiate the Unit Under Test (UUT)
	store_configs uut (
		.uart_data(uart_data), 
		.rst(rst), 
		.clk(clk), 
		.new_data(new_data), 
		.intaking_configs(intaking_configs), 
		.channel_select(channel_select), 
		.aline_select(aline_select), 
		.pulse_shape(pulse_shape), 
		.c0a0(c0a0), 
		.c0a1(c0a1), 
		.c0a2(c0a2), 
		.c0a3(c0a3), 
		.c0a4(c0a4), 
		.c0a5(c0a5), 
		.c0a6(c0a6), 
		.c0a7(c0a7), 
		.c0a8(c0a8), 
		.c0a9(c0a9), 
		.c0a10(c0a10), 
		.c0a11(c0a11), 
		.c0a12(c0a12), 
		.c0a13(c0a13), 
		.c0a14(c0a14), 
		.c0a15(c0a15), 
		.c1a0(c1a0), 
		.c1a1(c1a1), 
		.c1a2(c1a2), 
		.c1a3(c1a3), 
		.c1a4(c1a4), 
		.c1a5(c1a5), 
		.c1a6(c1a6), 
		.c1a7(c1a7), 
		.c1a8(c1a8), 
		.c1a9(c1a9), 
		.c1a10(c1a10), 
		.c1a11(c1a11), 
		.c1a12(c1a12), 
		.c1a13(c1a13), 
		.c1a14(c1a14), 
		.c1a15(c1a15), 
		.c2a0(c2a0), 
		.c2a1(c2a1), 
		.c2a2(c2a2), 
		.c2a3(c2a3), 
		.c2a4(c2a4), 
		.c2a5(c2a5), 
		.c2a6(c2a6), 
		.c2a7(c2a7), 
		.c2a8(c2a8), 
		.c2a9(c2a9), 
		.c2a10(c2a10), 
		.c2a11(c2a11), 
		.c2a12(c2a12), 
		.c2a13(c2a13), 
		.c2a14(c2a14), 
		.c2a15(c2a15), 
		.c3a0(c3a0), 
		.c3a1(c3a1), 
		.c3a2(c3a2), 
		.c3a3(c3a3), 
		.c3a4(c3a4), 
		.c3a5(c3a5), 
		.c3a6(c3a6), 
		.c3a7(c3a7), 
		.c3a8(c3a8), 
		.c3a9(c3a9), 
		.c3a10(c3a10), 
		.c3a11(c3a11), 
		.c3a12(c3a12), 
		.c3a13(c3a13), 
		.c3a14(c3a14), 
		.c3a15(c3a15), 
		.c4a0(c4a0), 
		.c4a1(c4a1), 
		.c4a2(c4a2), 
		.c4a3(c4a3), 
		.c4a4(c4a4), 
		.c4a5(c4a5), 
		.c4a6(c4a6), 
		.c4a7(c4a7), 
		.c4a8(c4a8), 
		.c4a9(c4a9), 
		.c4a10(c4a10), 
		.c4a11(c4a11), 
		.c4a12(c4a12), 
		.c4a13(c4a13), 
		.c4a14(c4a14), 
		.c4a15(c4a15), 
		.c5a0(c5a0), 
		.c5a1(c5a1), 
		.c5a2(c5a2), 
		.c5a3(c5a3), 
		.c5a4(c5a4), 
		.c5a5(c5a5), 
		.c5a6(c5a6), 
		.c5a7(c5a7), 
		.c5a8(c5a8), 
		.c5a9(c5a9), 
		.c5a10(c5a10), 
		.c5a11(c5a11), 
		.c5a12(c5a12), 
		.c5a13(c5a13), 
		.c5a14(c5a14), 
		.c5a15(c5a15), 
		.c6a0(c6a0), 
		.c6a1(c6a1), 
		.c6a2(c6a2), 
		.c6a3(c6a3), 
		.c6a4(c6a4), 
		.c6a5(c6a5), 
		.c6a6(c6a6), 
		.c6a7(c6a7), 
		.c6a8(c6a8), 
		.c6a9(c6a9), 
		.c6a10(c6a10), 
		.c6a11(c6a11), 
		.c6a12(c6a12), 
		.c6a13(c6a13), 
		.c6a14(c6a14), 
		.c6a15(c6a15), 
		.c7a0(c7a0), 
		.c7a1(c7a1), 
		.c7a2(c7a2), 
		.c7a3(c7a3), 
		.c7a4(c7a4), 
		.c7a5(c7a5), 
		.c7a6(c7a6), 
		.c7a7(c7a7), 
		.c7a8(c7a8), 
		.ca79(ca79), 
		.c7a10(c7a10), 
		.c7a11(c7a11), 
		.c7a12(c7a12), 
		.c7a13(c7a13), 
		.c7a14(c7a14), 
		.c7a15(c7a15)
	);

	initial begin
		// Initialize Inputs
		uart_data = 8'b11011111;
		rst = 0;
		clk = 0;
		new_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		new_data = 1;
		#50;
		new_data = 0;
		#50;
		new_data = 1;
		#50;
		new_data = 0;
		#50;
		new_data = 1;
		#50;
		new_data = 0;
		#50;
		new_data = 1;
		#50;
		new_data = 0;
		#50;

	end
	
	
always #5 clk = ~clk;
endmodule


