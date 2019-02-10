`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:41:15 11/01/2018
// Design Name:   Transmit_counter
// Module Name:   Z:/VM_Shared_folder/ThesisD1/transmit_counter_test.v
// Project Name:  ThesisD1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Transmit_counter
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module transmit_counter_test;

	// Inputs
	reg clk;
	reg rst;
	reg counter_in_use;
	reg start_count;
	reg [31:0] pulse_shape;
	reg [7:0] count;
	reg upload_new_count;

	// Outputs
	wire count_complete;
	wire pulse_sent;
	wire ultrasound_pulse;

	// Instantiate the Unit Under Test (UUT)
	Transmit_counter uut (
		.clk(clk), 
		.rst(rst), 
		.counter_in_use(counter_in_use), 
		.start_count(start_count), 
		.count_complete(count_complete), 
		.pulse_sent(pulse_sent), 
		.pulse_shape(pulse_shape), 
		.ultrasound_pulse(ultrasound_pulse), 
		.count(count), 
		.upload_new_count(upload_new_count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		counter_in_use = 0;
		start_count = 0;
		pulse_shape = 32'b01011011101111011111011111101011;
		count = 8'b00000100;
		upload_new_count = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#10;
		rst = 0;
		upload_new_count = 1;
		#10;
		upload_new_count = 0;
		start_count = 1;
		#10;
		start_count = 0;	
		count = 8'b00000101;
		#400;
		upload_new_count = 1;
		#10;
		upload_new_count = 0;
		start_count = 1;
		#10;
		start_count = 0;
		//upload_new_count = 1;
		//#50;
		//upload_new_count = 0;
		
        
		// Add stimulus here

	end

always #5 clk = ~clk;
      
endmodule

