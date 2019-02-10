`timescale 1ns / 1ps

`default_nettype none //forces xilinx to catch undeclared wires

//the following module is made for SIMULATION ONLY - most of the language
//constructs used here will not synthesize, but will simulate
module testbench;

	// Inputs
	reg [7:0] switch;
	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.switch(switch), 
		.led(led)
	);

	//simulate all of the possible switch inputs
	integer i;
	initial begin
		//set the switch to be one of every possible value
		for(i = 0; i <= 255; i = i + 1) begin
			switch = i[7:0];
			#10;
		end
		$finish;
	end
      
endmodule

`default_nettype wire