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
module main(led, 
			uart_o, 
			uart_i, 
			clk, 
			bouncy_btns, 
			switch, 
			afe_switch, 
			ultrasound_pulses);

	parameter num_btns = 5;
	parameter data_ln_len = 8;


	output wire [7:0] led; 
	output wire uart_o, afe_switch; 
	output wire [7:0] ultrasound_pulses;
	input wire [7:0] switch;
	input wire clk, uart_i;
	input wire [num_btns-1:0] bouncy_btns;
	
	wire send, rst, send_ready, new_received_data, receiving_data;
	wire [num_btns-1:0] db_btns, btns_posedge;
	wire [data_ln_len-1:0] send_data, received_data;
	reg start_transmit;
	
	reg [2:0] current_state; 
	reg [2:0] next_state;
	
	wire transmit_in_progress, busy;
	wire mem_clear, start_us_transmit;
	wire [7:0] used_channels, pulse_sent;
	wire [4:0] num_alines;
	wire [31:0] pulse_shape;
	wire [15:0] delay_ch0, delay_ch1, delay_ch2, delay_ch3, delay_ch4, delay_ch5, delay_ch6, delay_ch7;
	wire [2:0] image_transmit_current_state;
	wire [3:0] current_image_aline;
	
	


	btn_debouce btns (.btn_i(bouncy_btns), .btn_o(db_btns), .clk(clk), .btns_posedge(btns_posedge));
	uart_transmit sender (.send(start_transmit), .data(send_data), .clk(clk), .ready(send_ready), .uart_tx(uart_o), .rst(rst));
	uart_receive receiver (.receiving(receiving_data), .data(received_data), .clk(clk), .uart_tx(uart_i), .rst(rst), .new_data(new_received_data));
	
	image_transmit_fsm image_transmit (.clk(clk), .rst(rst), .start_transmit(start_us_transmit),
							.transmit_in_progress(transmit_in_progress), .ultrasound_pulses(ultrasound_pulses), .afe_switch(afe_switch), .busy(busy), 
							.received_data(received_data), .new_received_data(new_received_data), .mem_clear(mem_clear), 
							.current_state(image_transmit_current_state), .current_aline(current_image_aline)
							);
	
	assign send_data = switch;
	
	assign led[2:0] =  image_transmit_current_state;
	assign led[6:3] = current_image_aline;
	//assign led[4] = afe_switch;
	//assign led[5] = new_received_data;	
	//assign led[6] = busy;	
	assign led[7] = transmit_in_progress;	
	
	
	assign rst = db_btns[0]; //center btn is reset
	assign send = btns_posedge[1]; //top button
	assign start_us_transmit = btns_posedge[2]; //right button
	assign mem_clear =  btns_posedge[3]; //bottom button

	//assign led[4:0] = pulse_sent[4:0];

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
			//led[7:0] <= 7'd0;
		end else begin
			//led[7:0] <= received_data[7:0];
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

