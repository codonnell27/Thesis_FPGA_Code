`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:22:05 02/05/2019
// Design Name:   image_configs
// Module Name:   Z:/VM_Shared_folder/UART out.gz/image_configs_text.v
// Project Name:  lab1_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: image_configs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module image_configs_text;

	// Inputs
	reg [7:0] uart_data;
	reg rst;
	reg clk;
	reg new_data;
	reg wr_en;
	reg rd_en;
	reg [3:0] which_aline;

	// Outputs
	wire intaking_configs;
	wire updating_delays;
	wire [7:0] channel_select;
	wire [4:0] aline_select;
	wire [31:0] pulse_shape;
	wire [15:0] ch0delay;
	wire [15:0] ch1delay;
	wire [15:0] ch2delay;
	wire [15:0] ch3delay;
	wire [15:0] ch4delay;
	wire [15:0] ch5delay;
	wire [15:0] ch6delay;
	wire [15:0] ch7delay;

	// Instantiate the Unit Under Test (UUT)
	image_configs uut (
		.uart_data(uart_data), 
		.rst(rst), 
		.clk(clk), 
		.new_data(new_data), 
		.intaking_configs(intaking_configs), 
		.updating_delays( updating_delays),
		.wr_en(wr_en), 
		.rd_en(rd_en), 
		.channel_select(channel_select), 
		.aline_select(aline_select), 
		.pulse_shape(pulse_shape), 
		.which_aline(which_aline), 
		.ch0delay(ch0delay), 
		.ch1delay(ch1delay), 
		.ch2delay(ch2delay), 
		.ch3delay(ch3delay), 
		.ch4delay(ch4delay), 
		.ch5delay(ch5delay), 
		.ch6delay(ch6delay), 
		.ch7delay(ch7delay)
	);

	initial begin
		// Initialize Inputs
		uart_data = 8'b11011011;
		rst = 0;
		clk = 0;
		new_data = 0;
		wr_en = 1;
		rd_en = 0;
		which_aline = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#10;
		rst = 0;
		#10;
		rd_en = 0;
		#50;
		uart_data = 8'b00011011;
		#2000;
		uart_data = 8'd0;
		wr_en = 0;
		#24500;
		rd_en = 1;
		#10;
		rd_en = 0;
		
		
		
        
		// Add stimulus here

	end
always #5 clk = ~clk;
always #50 new_data = ~new_data;   
endmodule

