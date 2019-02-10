`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:56:14 11/01/2018
// Design Name:   look_up
// Module Name:   Z:/VM_Shared_folder/ThesisD1/look_up_test.v
// Project Name:  ThesisD1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: look_up
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module look_up_test;

	// Inputs
	reg [31:0] pulse;
	reg [31:0] select;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	look_up uut (
		.pulse(pulse), 
		.select(select), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		pulse = 32'b00000000000000000000000000001010;
		select = 32'b00000000000000000000000000000000;

		// Wait 100 ns for global reset to finish
		#100;
		select = 32'b00000000000000000000000000000010;
		#10;
		select = 32'b00000000000000000000000000000100;
		#10;
		select = 32'b00000000000000000000000000001000;
		#10;
		select = 32'b00000000000000000000000000010000;
		#10;
        
		// Add stimulus here
		

	end
      
endmodule

