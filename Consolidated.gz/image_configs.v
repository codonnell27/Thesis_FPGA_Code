`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    image_configs 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
`include "store_configs_defines.v"
module image_configs(uart_data, rst, clk, new_data, intaking_configs, updating_delays, wr_en, rd_en,
		channel_select,
		aline_select,
		pulse_shape,
		which_aline,
		ch0delay, ch1delay, ch2delay, ch3delay, ch4delay, ch5delay, ch6delay, ch7delay
		);

	//parameter definitions

	//parameter definitions
	parameter handshake = 3'b110;
	wire [4:0] max_addr;
	assign max_addr = 5'b11111;
	wire [2:0] rd_count_max;
	assign rd_count_max = 3'b010;

	//port definitions - customize for different bit widths
	input wire rst, clk, new_data, wr_en, rd_en;
	input wire [7:0] uart_data;
	input wire [3:0] which_aline;
	
	output reg intaking_configs, updating_delays;
	output reg [7:0] channel_select;
	output reg [4:0] aline_select;
	output reg [31:0] pulse_shape;
	output reg [15:0] ch0delay, ch1delay, ch2delay, ch3delay, ch4delay, ch5delay, ch6delay, ch7delay;
	
	
	wire [7:0] ch0_data_out, ch1_data_out, ch2_data_out, ch3_data_out, ch4_data_out, ch5_data_out, ch6_data_out, ch7_data_out;
	reg ch0_wr_en, ch1_wr_en, ch2_wr_en, ch3_wr_en, ch4_wr_en, ch5_wr_en, ch6_wr_en, ch7_wr_en;
	reg [2:0] rd_count; 
	//port definitions - customize for different bit widths

	reg [4:0] current_state, next_state;
	reg [4:0] addr;
	
	
	ch_aline_storage ch0 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch0_data_out), .wr_en(ch0_wr_en));
	ch_aline_storage ch1 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch1_data_out), .wr_en(ch1_wr_en));
	ch_aline_storage ch2 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch2_data_out), .wr_en(ch2_wr_en));
	ch_aline_storage ch3 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch3_data_out), .wr_en(ch3_wr_en));
	ch_aline_storage ch4 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch4_data_out), .wr_en(ch4_wr_en));
	ch_aline_storage ch5 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch5_data_out), .wr_en(ch5_wr_en));
	ch_aline_storage ch6 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch6_data_out), .wr_en(ch6_wr_en));
	ch_aline_storage ch7 (.clk(clk), .rst(rst), .addr(addr), .data_in(uart_data), .data_out(ch7_data_out), .wr_en(ch7_wr_en));
	
	always @(negedge clk) begin
	//state changing
		if (rst) begin
			current_state <= `IDLE; 
		end else begin
			current_state <= next_state;
		end
	end
		always @(posedge clk) begin
	
		case (current_state)
			`IDLE: begin
				intaking_configs <= 0;
				updating_delays <= 0;
				ch0_wr_en <= 0;
				ch1_wr_en <= 0;
				ch2_wr_en <= 0;
				ch3_wr_en <= 0;
				ch4_wr_en <= 0;
				ch5_wr_en <= 0;
				ch6_wr_en <= 0;
				ch7_wr_en <= 0;
				
			
				if (rd_en) begin
					next_state <= `READ_DELAY1;
					updating_delays <= 1;
					rd_count <= 3'd0;
				end else if (new_data & wr_en) begin
					if (uart_data[7:5] == handshake) begin
						next_state <= `CHANNEL_SELECT1_LOAD; 
					end else begin
						next_state <= 	`IDLE;
					end
				end else begin
					next_state <= 	`IDLE;
				end
			end
			
			`READ_DELAY1: begin
				addr[4:1] <= which_aline;
				addr[0] <= 0;
				ch0delay[15:8] <= ch0_data_out; 
				ch1delay[15:8] <= ch1_data_out; 
				ch2delay[15:8] <= ch2_data_out; 
				ch3delay[15:8] <= ch3_data_out; 
				ch4delay[15:8] <= ch4_data_out; 
				ch5delay[15:8] <= ch5_data_out; 
				ch6delay[15:8] <= ch6_data_out; 
				ch7delay[15:8] <= ch7_data_out; 
				
				if (rd_count < rd_count_max) begin
					next_state <= `READ_DELAY1;
					rd_count <= rd_count + 1;
				end else begin
					next_state <= `READ_DELAY2;
					rd_count <= 3'd0;
				end
			end
			
			`READ_DELAY2: begin
				addr[4:1] <= which_aline;
				addr[0] <= 1;
				ch0delay[7:0]<= ch0_data_out; 
				ch1delay[7:0] <= ch1_data_out; 
				ch2delay[7:0] <= ch2_data_out; 
				ch3delay[7:0] <= ch3_data_out; 
				ch4delay[7:0] <= ch4_data_out; 
				ch5delay[7:0] <= ch5_data_out; 
				ch6delay[7:0] <= ch6_data_out; 
				ch7delay[7:0] <= ch7_data_out; 
				
				if (rd_count < rd_count_max) begin
					next_state <= `READ_DELAY2;
					rd_count <= rd_count + 1;
				end else begin
					next_state <= `IDLE;
					rd_count <= 3'd0;
				end
			end
			
			`CHANNEL_SELECT1_LOAD: begin
				channel_select[7:3] <= uart_data[4:0];
				intaking_configs <= 1;
				addr <= 5'd0;
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
				if (new_data) begin
					next_state <= 	`PULSE1_LOAD;
				end else begin
					next_state <= 	`CHANNEL_SELECT2_HOLD;
				end
			end


			`PULSE1_LOAD: begin
				pulse_shape[31:24] <= uart_data;				
				if (new_data) begin
					next_state <= 	`PULSE1_LOAD;
				end else begin
					next_state <= 	`PULSE1_HOLD;
				end
			end
			`PULSE1_HOLD: begin
				if (new_data) begin
					next_state <= 	`PULSE2_LOAD;
				end else begin
					next_state <= 	`PULSE1_HOLD;
				end
			end			
			
			`PULSE2_LOAD: begin
				pulse_shape[23:16] <= uart_data;				
				if (new_data) begin
					next_state <= 	`PULSE2_LOAD;
				end else begin
					next_state <= 	`PULSE2_HOLD;
				end
			end
			`PULSE2_HOLD: begin
				if (new_data) begin
					next_state <= 	`PULSE3_LOAD;
				end else begin
					next_state <= 	`PULSE2_HOLD;
				end
			end			
			
			
			`PULSE3_LOAD: begin
				pulse_shape[15:8] <= uart_data;				
				if (new_data) begin
					next_state <= 	`PULSE3_LOAD;
				end else begin
					next_state <= 	`PULSE3_HOLD;
				end
			end
			`PULSE3_HOLD: begin
				if (new_data) begin
					next_state <= 	`PULSE4_LOAD;
				end else begin
					next_state <= 	`PULSE3_HOLD;
				end
			end			

			`PULSE4_LOAD: begin
				pulse_shape[7:0] <= uart_data;				
				if (new_data) begin
					next_state <= 	`PULSE4_LOAD;
				end else begin
					next_state <= 	`PULSE4_HOLD;
				end
			end
			`PULSE4_HOLD: begin
				if (new_data) begin
					next_state <= 	`CH0_LOAD;
				end else begin
					next_state <= 	`PULSE4_HOLD;
				end
			end		
			
			
	
	//ch_aline_storage ch0 (.clk(clk), .rst(rst), .addr(addr), .data_in(ch0_data_in), .data_out(ch0_data_out), .wr_en(ch0_wr_en));			
			
			`CH0_LOAD: begin
				ch0_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH0_LOAD;
				end else begin
					next_state <= 	`CH0_HOLD;
				end				
			end
			
			`CH0_HOLD: begin
				ch0_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH0_LOAD;
					end else begin
						next_state <= 	`CH1_LOAD;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH0_HOLD;
				end				
			end

			`CH1_LOAD: begin
				ch1_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH1_LOAD;
				end else begin
					next_state <= 	`CH1_HOLD;
				end				
			end
			
			`CH1_HOLD: begin
				ch1_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH1_LOAD;
					end else begin
						next_state <= 	`CH2_LOAD	;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH1_HOLD;
				end				
			end
			
			
			`CH2_LOAD: begin
				ch2_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH2_LOAD;
				end else begin
					next_state <= 	`CH2_HOLD;
				end				
			end
			
			`CH2_HOLD: begin
				ch2_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH2_LOAD;
					end else begin
						next_state <= 	`CH3_LOAD;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH2_HOLD;
				end				
			end
			
			
			`CH3_LOAD: begin
				ch3_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH3_LOAD;
				end else begin
					next_state <= 	`CH3_HOLD;
				end				
			end
			
			`CH3_HOLD: begin
				ch3_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH3_LOAD;
					end else begin
						next_state <= 	`CH4_LOAD;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH3_HOLD;
				end				
			end
			
			
			`CH4_LOAD: begin
				ch4_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH4_LOAD;
				end else begin
					next_state <= 	`CH4_HOLD;
				end				
			end
			
			`CH4_HOLD: begin
				ch4_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH4_LOAD;
					end else begin
						next_state <= 	`CH5_LOAD;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH4_HOLD;
				end				
			end
			
			`CH5_LOAD: begin
				ch5_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH5_LOAD;
				end else begin
					next_state <= 	`CH5_HOLD;
				end				
			end
			
			`CH5_HOLD: begin
				ch5_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH5_LOAD;
					end else begin
						next_state <= 	`CH6_LOAD;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH5_HOLD;
				end				
			end
			
			`CH6_LOAD: begin
				ch6_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH6_LOAD;
				end else begin
					next_state <= 	`CH6_HOLD;
				end				
			end
			
			`CH6_HOLD: begin
				ch6_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH6_LOAD;
					end else begin
						next_state <= 	`CH7_LOAD;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH6_HOLD;
				end				
			end
			
			`CH7_LOAD: begin
				ch7_wr_en <= 1;
				if (new_data) begin
					next_state <= 	`CH7_LOAD;
				end else begin
					next_state <= 	`CH7_HOLD;
				end				
			end
			
			`CH7_HOLD: begin
				ch7_wr_en <= 0;
				if (new_data) begin
					if (addr < max_addr) begin
						addr <= addr + 1;
						next_state <= 	`CH7_LOAD;
					end else begin
						next_state <= 	`IDLE;
						addr <= 5'd0;
					end
				end else begin
					next_state <= 	`CH7_HOLD;
				end				
			end
			
			
		
		
		endcase
	
	end
endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
