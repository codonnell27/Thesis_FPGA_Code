`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:12 11/02/2018
// Design Name:   transmit_fsm
// Module Name:   Z:/VM_Shared_folder/ThesisD1/transmit_Test.v
// Project Name:  ThesisD1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: transmit_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module transmit_Test;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] used_counters;
	reg [31:0] pulse_shape;
	reg [15:0] delay_ch0;
	reg [15:0] delay_ch1;
	reg [15:0] delay_ch2;
	reg [15:0] delay_ch3;
	reg [15:0] delay_ch4;
	reg [15:0] delay_ch5;
	reg [15:0] delay_ch6;
	reg [15:0] delay_ch7;
	reg start_transmit;
	reg input_delay_data;
	reg next_aline;

	// Outputs
	wire transmit_in_progress;
	wire transmit_complete;
	wire switch;

	// Instantiate the Unit Under Test (UUT)
	transmit_fsm uut (
		.clk(clk), 
		.rst(rst), 
		.used_counters(used_counters), 
		.pulse_shape(pulse_shape), 
		.delay_ch0(delay_ch0), 
		.delay_ch1(delay_ch1), 
		.delay_ch2(delay_ch2), 
		.delay_ch3(delay_ch3), 
		.delay_ch4(delay_ch4), 
		.delay_ch5(delay_ch5), 
		.delay_ch6(delay_ch6), 
		.delay_ch7(delay_ch7), 
		.start_transmit(start_transmit), 
		.input_delay_data(input_delay_data), 
		.next_aline(next_aline), 
		.transmit_in_progress(transmit_in_progress), 
		.transmit_complete(transmit_complete), 
		.switch(switch)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		used_counters = 8'b10100101;
		pulse_shape = 32'b01011011101111011111011111101011;
		delay_ch0 = 16'd6;
		delay_ch1 = 16'd6;
		delay_ch2 = 16'd4;
		delay_ch3 = 16'd4;
		delay_ch4 = 16'd2;
		delay_ch5 = 16'd2;
		delay_ch6 = 16'd0;
		delay_ch7 = 16'd0;
		start_transmit = 0;
		input_delay_data = 0;
		next_aline = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#10;
		rst = 0;
		input_delay_data = 1;
		#10;
		input_delay_data = 0;
		start_transmit = 1;
		#20
		start_transmit = 0;
		#600
		next_aline = 1;
      
		// Add stimulus here

	end
	
always #5 clk = ~clk;
      
endmodule

