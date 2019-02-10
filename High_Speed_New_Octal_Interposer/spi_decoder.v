////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices
// Engineer: 		Mike Hughes
//	Create Date:   11/09/05
// Design Name:   FIFO5 for AD9230
// Tool versions:	ISE 8.1.02  
// Description: 	FPGA design of a Buffer Memory Board 
// 
// Revision:      1.0
//
//////////////////////////////////////////////////////////////////////////////////
`timescale  1 ns / 10 ps
module spi_decoder(
					sdi			,		// INPUT	-- Serial Input
					sdo			, 		// OUTPUT	-- Serial Output
					csb    		, 		// INPUT	-- Chip Select
					sclk  		, 		// INPUT	-- Serial Clock
					RdData		, 		// INPUT	-- Data Recieved from Register Module
					WrData		, 		// OUTPUT	-- Data Written to Register Module
					WrStb);				// OUTPUT	-- Write Strobe for Register Module
				
input 			sdi			; wire			sdi			;							
input		[7:0] RdData      ; wire   [7:0] RdData		;
input				csb			; wire			csb			;			
input				sclk			; wire			sclk			;

output	      sdo         ; reg          sdo      	;
output         WrStb       ; reg          WrStb			;
output   [7:0] WrData      ; wire	[7:0] WrData		;

wire [7:0] Rd_int_data;
reg [2:0] current_state, next_state;
reg [12:0] address;
reg [6:0] data;
reg [1:0] w1w0;
reg [3:0] add_count;
reg [7:0] data_counter;
reg [3:0] byte_counter;
reg read, rd_wr;
reg sdo_enable;

assign Rd_int_data[0] = RdData[7];
assign Rd_int_data[1] = RdData[6];
assign Rd_int_data[2] = RdData[5];
assign Rd_int_data[3] = RdData[4];
assign Rd_int_data[4] = RdData[3];
assign Rd_int_data[5] = RdData[2];
assign Rd_int_data[6] = RdData[1];
assign Rd_int_data[7] = RdData[0];
assign WrData  = {data[6:0], sdi};
	
parameter	S0 = 3'h0,		// Recieve R/W
				S1 = 3'h1,		// Recieve W1		
				S2 = 3'h2,		// Recieve W0
				S3 = 3'h3,		// Recieve Address
				S4 = 3'h4,		// Recieve Data if Write
				S5 = 3'h5,		// Send Data if Read
				S6 = 3'h6;		// Idle State

always @(negedge sclk)
		begin
			current_state <= next_state;
			if(read)
				sdo_enable <= Rd_int_data[data_counter];
			else
				sdo_enable <= 1'b1;
		end

always@ (sdo_enable)
	if(sdo_enable)
		sdo <= 1'bZ;
	else
		sdo <= 1'b0;

always @(posedge sclk or posedge csb)
	begin
		if(csb == 1)
			begin
				data <= 0;
				next_state <= S0;
				add_count <= 0;
				data_counter <= 0;
				byte_counter <= 0;
				WrStb <= 0;
				read <= 0;
			end
		else
			begin
				case(current_state)	
					S0:begin
							data <= 0;
							add_count <= 0;
							data_counter <= 0;
							byte_counter <= 0;
							WrStb <= 0;
							rd_wr <= sdi;
							next_state <= S1;
						end
					S1:begin
							WrStb <= 0;
							w1w0[1] <= sdi;
							next_state <= S2;
						end
					S2:begin
							WrStb <= 0;
					   	w1w0[0] <= sdi;
							next_state <= S3;
					   end
					S3:begin
							WrStb <= 0;
							address <= {address[11:0], sdi};
							if(add_count == 12)
								begin
									if(!rd_wr)
										next_state <= S4;
									else
										begin
											next_state <= S5;
											read <= 1;
										end 
									add_count <= 0;
									data_counter <= 0;
									byte_counter <= 0;
								end
							else
								begin
									next_state <= S3;
									add_count <= add_count + 1'b1;
								end								
						end
					S4:begin
							data <= {data[6:0],sdi};
							if(data_counter == 7)
								begin
									if(byte_counter == w1w0)
										begin
											data_counter <= 0;
											WrStb <= 1'b0;
											next_state <= S6; 
											byte_counter <= 0;
										end
									else
										begin
											next_state <= S4;
											data_counter <= 0;
											WrStb <= 1'b0;
											address <= address + 1'b1;
											byte_counter <= byte_counter + 1'b1;
										end
								end
							else
								begin
									if(data_counter == 6)
										WrStb <= 1'b1;
									else
										WrStb <= 0;
									next_state <= S4;
									data_counter <= data_counter + 1'b1;
								end
						end
					S5:begin
							WrStb <= 0;
							if(data_counter == 7)
								begin
									data_counter <= 0;
									if(byte_counter == w1w0)
										begin
											read <= 0;
											next_state <= S6;
											byte_counter <= 0;
										end
									else
										begin
											byte_counter <= byte_counter + 1'b1;
											address <= address + 1'b1;
										end
								end
							else
								begin
									data_counter <= data_counter + 1'b1;
									next_state <= S5;
								end
						end
 					S6:begin
							read <= 0;
							WrStb <= 0;
							next_state <= S6;
						end

				endcase
			end
	end
							
endmodule						 
