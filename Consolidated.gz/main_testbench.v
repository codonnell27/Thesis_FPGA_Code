`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:28:25 12/10/2018
// Design Name:   main
// Module Name:   Z:/VM_Shared_folder/UART out.gz/main_testbench.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_testbench;

	// Inputs
	reg uart_i;
	reg clk;
	reg [4:0] bouncy_btns;
	reg [7:0] switch;

	// Outputs
	wire [7:0] led;
	wire uart_o;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.led(led), 
		.uart_i(uart_i), 
		.uart_o(uart_o), 
		.switch(switch),
		.clk(clk), 
		.bouncy_btns(bouncy_btns)
	);
	initial begin
		// Initialize Inputs
		uart_i = 0;
		clk = 0;
		bouncy_btns = 0;
		switch = 8'b00000001;

		// Wait 100 ns for global reset to finish
		#100;
		bouncy_btns = 5'b00001;
		#100;
		bouncy_btns = 5'b10000;
		#100;
		bouncy_btns = 5'b00000;
		#100;
		
		
        
		// Add stimulus here

	end
      
always #5 clk = ~clk;
endmodule

