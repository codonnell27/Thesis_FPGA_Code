`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:00 12/10/2018
// Design Name:   uart_receive
// Module Name:   Z:/VM_Shared_folder/UART out.gz/uart_receive_testbench.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_receive
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_receive_testbench;

	// Inputs
	reg clk;
	reg uart_tx;
	reg rst;

	// Outputs
	wire receiving;
	wire [7:0] data;
	wire new_data;

	// Instantiate the Unit Under Test (UUT)
	uart_receive uut (
		.receiving(receiving), 
		.data(data), 
		.clk(clk), 
		.uart_tx(uart_tx), 
		.rst(rst), 
		.new_data(new_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		uart_tx = 1;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#10;
		rst = 0;
		#50
		uart_tx = 0;
		#70;
		uart_tx = 1;
		#70;
		uart_tx = 0;
		#70;
		uart_tx = 1;
		#70;
		uart_tx = 0;
		#70;
		uart_tx = 1;
		#70;
		uart_tx = 0;
		#70;
		uart_tx = 1;
		#70;
		//uart_tx = 0;
        
		// Add stimulus here

	end
	
always #5 clk = ~clk;
      
endmodule

