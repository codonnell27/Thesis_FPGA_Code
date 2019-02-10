`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:46 12/10/2018
// Design Name:   btn_debouce
// Module Name:   Z:/VM_Shared_folder/UART out.gz/debounce_testmodule.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: btn_debouce
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debounce_testmodule;

	// Inputs
	reg [4:0] btn_i;
	reg clk;

	// Outputs
	wire [4:0] btn_o;

	// Instantiate the Unit Under Test (UUT)
	btn_debouce uut (
		.btn_i(btn_i), 
		.btn_o(btn_o), 
		.clk(clk) 
	);

	initial begin
		// Initialize Inputs
		btn_i = 5'b0000;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		btn_i = 5'b00001;
		
 
		// Add stimulus here

	end
	
always #5 clk = ~clk;
      
endmodule

