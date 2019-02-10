`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:27 12/10/2018
// Design Name:   uart_transmit
// Module Name:   Z:/VM_Shared_folder/UART out.gz/uart_transmit_testbench.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_transmit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_transmit_testbench;

	// Inputs
	reg send;
	reg [7:0] data;
	reg clk;
	reg rst;

	// Outputs
	wire ready;
	wire uart_tx;

	// Instantiate the Unit Under Test (UUT)
	uart_transmit uut (
		.send(send), 
		.data(data), 
		.clk(clk), 
		.ready(ready), 
		.uart_tx(uart_tx), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		send = 0;
		data = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		rst = 1;
		data = 8'b00000000;
		#20;
		rst = 0;
		
		#20
		send = 1;
		#10;
		send = 0;
		// Add stimulus here

	end

always #5 clk = ~clk;
endmodule

