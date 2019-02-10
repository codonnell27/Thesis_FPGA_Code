`timescale 1ns / 1ps  //sets the timescale (for simulation)

`default_nettype none //overrides default behaviour: errors when a net type is not declired`timescale 1ns / 1ps  //sets the timescale (for simulation)
//////////////////////////////////////////////////////////////////////////////////
// 
// 
// Module Name:    main.v
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////

`include "uart_main_defines.v"
module main(led, uart_o, uart_i, clk, bouncy_btns, switch);

	parameter num_btns = 5;
	parameter data_ln_len = 8;


	output reg [7:0] led; 
	output wire uart_o; 
	input wire [7:0] switch;
	input wire clk, uart_i;
	input wire [num_btns-1:0] bouncy_btns;
	
	wire send, rst, send_ready, new_received_data, receiving_data;
	wire [num_btns-1:0] db_btns, btns_posedge;
	wire [data_ln_len-1:0] send_data, received_data;
	reg start_transmit;
	
	reg [2:0] current_state; 
	reg [2:0] next_state;
	
	wire config_storage_intaking, config_storage_updating_delays, transmit_in_progress, transmit_complete, afe_switch;
	reg config_storage_wr_en, config_storage_rd_en, start_us_transmit, input_delay_data_transmit_fsm, next_aline;
	wire [7:0] used_channels, ultrasound_pulses, pulse_sent;
	wire [4:0] num_alines;
	reg [4:0] current_aline;
	wire [31:0] pulse_shape;
	wire [15:0] delay_ch0, delay_ch1, delay_ch2, delay_ch3, delay_ch4, delay_ch5, delay_ch6, delay_ch7;
	
	


	btn_debouce btns (.btn_i(bouncy_btns), .btn_o(db_btns), .clk(clk), .btns_posedge(btns_posedge));
	uart_transmit sender (.send(start_transmit), .data(send_data), .clk(clk), .ready(send_ready), .uart_tx(uart_o), .rst(rst));
	uart_receive receiver (.receiving(receiving_data), .data(received_data), .clk(clk), .uart_tx(uart_i), .rst(rst), .new_data(new_received_data));
	image_configs store_configs (.uart_data(received_data), .rst(rst), .clk(clk), .new_data(new_received_data), 
										.intaking_configs(config_storage_intaking), .updating_delays(config_storage_updating_delays), .wr_en(config_storage_wr_en), .rd_en(config_storage_rd_en),
										.channel_select(used_channels), .aline_select(num_alines), .pulse_shape(pulse_shape), .which_aline(current_aline), 
										.ch0delay(delay_ch0), .ch1delay(delay_ch1), .ch2delay(delay_ch2), .ch3delay(delay_ch3), .ch4delay(delay_ch4), .ch5delay(delay_ch5), .ch6delay(delay_ch6), .ch7delay(delay_ch7));
	
	transmit_fsm pulse_transmit(.clk(clk), .rst(rst), .used_counters(used_channels), .pulse_shape(pulse_shape), .delay_ch0(delay_ch0), .delay_ch1(delay_ch1), 
						.delay_ch2(delay_ch2), .delay_ch3(delay_ch3), .delay_ch4(delay_ch4), .delay_ch5(delay_ch5), .delay_ch6(delay_ch6), .delay_ch7(delay_ch7),
						.start_transmit(start_us_transmit), .input_delay_data(input_delay_data_transmit_fsm), .next_aline(next_aline), .transmit_in_progress(transmit_in_progress), 
						.transmit_complete(transmit_complete), .ultrasound_pulses(ultrasound_pulses), .pulse_sent(pulse_sent), .switch(afe_switch));
	
	
	
	
	assign rst = db_btns[0]; //center btn is reset
	assign send_data = switch;
	assign send = |(btns_posedge[num_btns-1:1]);

	always @(posedge clk) begin
	//state changing
		if (rst) begin
			current_state <= `MAIN_IDLE; 
		end else begin
			current_state <= next_state;
		end
	end
	
	always @(negedge new_received_data or posedge db_btns[2]) begin
		if (db_btns[2]) begin
			led <= 8'd0;
		end else begin
			led <= received_data;
		end
	end

	always @(posedge clk) begin
	// whenever I had it as always @ (*) I would get warnings about too many interations.
		case(current_state)
			
			`MAIN_IDLE: begin
				start_transmit <= 0;
			
				if (send & send_ready) begin
					next_state <= `START_SEND;
				end else begin
					next_state <= `MAIN_IDLE;
				end
			end
			
			`START_SEND: begin
				start_transmit <= 1; 
				
				next_state <= `SENDING;

			end

			`SENDING: begin
				start_transmit <= 0;
				
				if (~send_ready) begin
					next_state <= `SENDING;
				end else begin
					next_state <= 	`MAIN_IDLE;
				end

			end	

			
		endcase
		
	end 




endmodule

`default_nettype none //reengages default behaviour: needed for other Xilinx modules

