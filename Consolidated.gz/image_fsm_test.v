`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:35:32 02/26/2019
// Design Name:   image_transmit_fsm
// Module Name:   Z:/VM_Shared_folder/Thesis/Consolidated.gz/image_fsm_test.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: image_transmit_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module image_fsm_test;

	// Inputs
	reg clk;
	reg rst;
	reg start_transmit;
	reg [7:0] received_data;
	reg new_received_data;
	reg mem_clear;

	// Outputs
	wire transmit_in_progress;
	wire [7:0] ultrasound_pulses;
	wire afe_switch;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	image_transmit_fsm uut (
		.clk(clk), 
		.rst(rst), 
		.start_transmit(start_transmit), 
		.transmit_in_progress(transmit_in_progress), 
		.ultrasound_pulses(ultrasound_pulses), 
		.afe_switch(afe_switch), 
		.busy(busy), 
		.received_data(received_data), 
		.new_received_data(new_received_data), 
		.mem_clear(mem_clear)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		start_transmit = 0;
		received_data = 0;
		new_received_data = 0;
		mem_clear = 0;
		//pulse_shape = 32'b1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#10;
		rst = 0;
		#10;
		start_transmit = 1;
		#10;
		
      start_transmit = 0;
		#700;
		mem_clear = 1;
		#10
		mem_clear = 0;
		
		#700;
		mem_clear = 1;
		#10
		mem_clear = 0;
		
		#700;
		mem_clear = 1;
		#10
		mem_clear = 0;
		
		#700;
		mem_clear = 1;
		#10
		mem_clear = 0;
		
		#700;
		mem_clear = 1;
		#10
		mem_clear = 0;
		// Add stimulus here

	end
      
always #5 clk = ~clk;
endmodule

