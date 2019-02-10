`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    store_configs 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////

`include "store_configs_defines.v"
module store_configs(uart_data, rst, clk, new_data, intaking_configs, wr_en, rd_en,
		channel_select,
		aline_select,
		pulse_shape,
		which_aline,
		ch0delay, ch1delay, ch2delay, ch3delay, ch4delay, ch5delay, ch6delay, ch7delay
		//c0a0, c0a1, c0a2, c0a3, c0a4, c0a5, c0a6, c0a7, c0a8, c0a9, c0a10, c0a11, c0a12, c0a13, c0a14, c0a15,
		//c1a0, c1a1, c1a2, c1a3, c1a4, c1a5, c1a6, c1a7, c1a8, c1a9, c1a10, c1a11, c1a12, c1a13, c1a14, c1a15,
		//c2a0, c2a1, c2a2, c2a3, c2a4, c2a5, c2a6, c2a7, c2a8, c2a9, c2a10, c2a11, c2a12, c2a13, c2a14, c2a15,
		//c3a0, c3a1, c3a2, c3a3, c3a4, c3a5, c3a6, c3a7, c3a8, c3a9, c3a10, c3a11, c3a12, c3a13, c3a14, c3a15,
		//c4a0, c4a1, c4a2, c4a3, c4a4, c4a5, c4a6, c4a7, c4a8, c4a9, c4a10, c4a11, c4a12, c4a13, c4a14, c4a15,
		//c5a0, c5a1, c5a2, c5a3, c5a4, c5a5, c5a6, c5a7, c5a8, c5a9, c5a10, c5a11, c5a12, c5a13, c5a14, c5a15,
		//c6a0, c6a1, c6a2, c6a3, c6a4, c6a5, c6a6, c6a7, c6a8, c6a9, c6a10, c6a11, c6a12, c6a13, c6a14, c6a15,
		//c7a0, c7a1, c7a2, c7a3, c7a4, c7a5, c7a6, c7a7, c7a8, ca79, c7a10, c7a11, c7a12, c7a13, c7a14, c7a15
	);

	//parameter definitions
	parameter handshake = 3'b110;

	//port definitions - customize for different bit widths
	input wire rst, clk, new_data, wr_en, rd_en;
	input wire [7:0] uart_data;
	input wire [4:0] which_aline;
	
	output reg intaking_configs;
	output reg [7:0] channel_select;
	output reg [4:0] aline_select;
	output reg [31:0] pulse_shape;
	output reg [15:0] ch0delay, ch1delay, ch2delay, ch3delay, ch4delay, ch5delay, ch6delay, ch7delay;
	//output reg [15:0] c0a0, c0a1, c0a2, c0a3, c0a4, c0a5, c0a6, c0a7, c0a8, c0a9, c0a10, c0a11, c0a12, c0a13, c0a14, c0a15;
	//output reg [15:0] c1a0, c1a1, c1a2, c1a3, c1a4, c1a5, c1a6, c1a7, c1a8, c1a9, c1a10, c1a11, c1a12, c1a13, c1a14, c1a15;
	//output reg [15:0] c2a0, c2a1, c2a2, c2a3, c2a4, c2a5, c2a6, c2a7, c2a8, c2a9, c2a10, c2a11, c2a12, c2a13, c2a14, c2a15;
	//output reg [15:0] c3a0, c3a1, c3a2, c3a3, c3a4, c3a5, c3a6, c3a7, c3a8, c3a9, c3a10, c3a11, c3a12, c3a13, c3a14, c3a15;
	//output reg [15:0] c4a0, c4a1, c4a2, c4a3, c4a4, c4a5, c4a6, c4a7, c4a8, c4a9, c4a10, c4a11, c4a12, c4a13, c4a14, c4a15;
	//output reg [15:0] c5a0, c5a1, c5a2, c5a3, c5a4, c5a5, c5a6, c5a7, c5a8, c5a9, c5a10, c5a11, c5a12, c5a13, c5a14, c5a15;
	//output reg [15:0] c6a0, c6a1, c6a2, c6a3, c6a4, c6a5, c6a6, c6a7, c6a8, c6a9, c6a10, c6a11, c6a12, c6a13, c6a14, c6a15;
	//output reg [15:0] c7a0, c7a1, c7a2, c7a3, c7a4, c7a5, c7a6, c7a7, c7a8, ca79, c7a10, c7a11, c7a12, c7a13, c7a14, c7a15;
	
	reg [9:0] current_state, next_state;
	reg [4:0] next_addr;
	
	
	ch_aline_storage ch0 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch0_data_in), .data_out(ch0_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch1 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch1_data_in), .data_out(ch1_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch2 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch2_data_in), .data_out(ch2_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch3 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch3_data_in), .data_out(ch3_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch4 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch4_data_in), .data_out(ch4_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch5 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch5_data_in), .data_out(ch5_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch6 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch6_data_in), .data_out(ch6_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch7 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch7_data_in), .data_out(ch7_data_out), .wr_en(ch0_wr_en));
	
	always @(negedge clk) begin
	//state changing
		if (rst) begin
			current_state <= 9'b100000000; 
		end else begin
			current_state <= next_state;
		end
	end
	
	always @(posedge clk) begin
	
		case (current_state)
			`IDLE: begin
				intaking_configs <= 0;
				
				if (new_data) begin
					if (uart_data[7:5] == handshake) begin
					end else begin
						next_state <= 	`IDLE;
					end
				end else begin
					next_state <= 	`IDLE;
				end
			end
			
			`CHANNEL_SELECT1_LOAD: begin
				channel_select[7:3] <= uart_data[4:0];
				intaking_configs <= 1;
				
				if (new_data) begin
					next_state <= 	`CHANNEL_SELECT1_LOAD;
				end else begin
					next_state <= 	`CHANNEL_SELECT1_HOLD;
				end
			end
			`CHANNEL_SELECT1_HOLD: begin
				
				if (new_data) begin
					next_state <= 	`CHANNEL_SELECT2_LOAD;
				end else begin
					next_state <= 	`CHANNEL_SELECT1_HOLD;
				end
			end
			
			`CHANNEL_SELECT2_LOAD: begin
				channel_select[2:0] <= uart_data[7:5];
				aline_select <= uart_data[4:0];
				
				if (new_data) begin
					next_state <= 	`CHANNEL_SELECT2_LOAD;
				end else begin
					next_state <= 	`CHANNEL_SELECT2_HOLD;
				end
			end
			`CHANNEL_SELECT2_HOLD: begin
				intaking_configs <= 1;
				channel_select[2:0] <= uart_data[7:5];
				aline_select <= uart_data[4:0];
				
				if (new_data) begin
					next_state <= 	`IDLE;
				end else begin
					next_state <= 	`CHANNEL_SELECT2_HOLD;
				end
			end		
			

			
			`CH0_LOAD: begin
			
			if (next_addr <= max_addr) begin
				next_state <= `IDLE;
				next_addr <= next_addr + 1;
			end else begin
				next_state <= `IDLE;
				next_addr <= 5'd0;			
			end
				
			end

		
		
		endcase
	
	end

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
