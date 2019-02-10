////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices
// Engineer: 		Alex Arrants
//	Create Date:   04/19/07
// Design Name:   AD9259 
// Tool versions:	ISE 9.1.03  
// Description: 	 
// 
// Revision:      1.0
//
//////////////////////////////////////////////////////////////////////////////////
`timescale  1 ns / 10 ps
module fifo32k_by_1 (din, wrclk, rdclk, wr_en, rd_en, rst, dout/*, full, empty*/);

input din;
input wrclk, rdclk, wr_en, rd_en, rst;
output reg dout;
//output full, empty;

wire dout1, dout2;

reg full;//, empty; 
reg rd_sel;
//reg din;
//reg [1:0] dout, mem; 
reg [1:0] mem; 
reg [14:0] wr_addr;
reg [14:0] rd_addr;

// generate write address
always @(posedge wrclk or posedge rst)
	if(rst)
		wr_addr <= 15'b0;
	else if(wr_en && ~&wr_addr) // do not write past max count
		wr_addr <= wr_addr + 1;
	

// generate full flag
always @(posedge wrclk)
    	full <= &wr_addr;
		
//// generate empty flag
//always @(posedge rdclk)
//    	empty <= &rd_addr;

// generate write enables to steer the data into the correct block of memory
always@(wr_en or full or wr_addr[14])
	case({wr_en & ~full, wr_addr[14]})  // disable writes when full
		2'b10: mem = 2'b01;
		2'b11: mem = 2'b10;
		default: mem = 2'b00;
	endcase

// generate read address
always @(negedge rdclk or posedge rst)
	if(rst)
		rd_addr <= 15'b0;
	else if(rd_en) 
		rd_addr <= rd_addr + 1;

// generate read sel
always@(posedge rdclk)
  rd_sel <= rd_addr[14];

// select read data from the correct block of memory
always @(dout1 or dout2 or rd_sel)
	case(rd_sel)
		1'b0: dout <= dout1;
		1'b1: dout <= dout2;
	endcase
// instantiate 4 block memories to provide 4x the memory address depth
RAMB16 #(
.DOA_REG(0), // Optional output registers on A port (0 or 1)
.DOB_REG(0), // Optional output registers on B port (0 or 1)
.INIT_A(36'h000000000), // Initial values on A output port
.INIT_B(36'h000000000), // Initial values on B output port
.INVERT_CLK_DOA_REG("FALSE"),// Invert clock on A port output registers ("TRUE" or "FALSE")
.INVERT_CLK_DOB_REG("FALSE"),// Invert clock on A port output registers ("TRUE" or "FALSE")
.RAM_EXTENSION_A("NONE"), // "UPPER", "LOWER" or "NONE" when cascaded
.RAM_EXTENSION_B("NONE"), // "UPPER", "LOWER" or "NONE" when cascaded
.READ_WIDTH_A(1), // Valid values are 1, 2, 4, 9, 18, or 36
.READ_WIDTH_B(1), // Valid values are 1, 2, 4, 9, 18, or 36
.SIM_COLLISION_CHECK("ALL"), // Collision check enable "ALL", "WARNING_ONLY",// "GENERATE_X_ONLY" or "NONE"
.SRVAL_A(36'h000000000), // Set/Reset value for A port output
.SRVAL_B(36'h000000000), // Set/Reset value for B port output
.WRITE_MODE_A("WRITE_FIRST"), // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE"
.WRITE_MODE_B("WRITE_FIRST"), // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE"
.WRITE_WIDTH_A(1), // Valid values are 1, 2, 4, 9, 18, or 36
.WRITE_WIDTH_B(1) // Valid values are 1, 2, 4, 9, 18, or 36
// INIT_xx declarations specify the initial contents of the RAM and by default are intialized to zero
// INITP_xx are for the parity bits and by default are intialized to zero
) 

RAMB16_U1 (
.CASCADEOUTA(), // 1-bit cascade output
.CASCADEOUTB(), // 1-bit cascade output
.DOA(), // 32-bit A port data output
.DOB(dout1), // 32-bit B port data output
.DOPA(), // 4-bit A port parity data output
.DOPB(), // 4-bit B port parity data output
.ADDRA({1'b0, wr_addr[13:0]}), // 15-bit A port address input
.ADDRB({1'b0, rd_addr[13:0]}), // 15-bit B port address input
.CASCADEINA(), // 1-bit cascade A input
.CASCADEINB(), // 1-bit cascade B input
.CLKA(wrclk), // 1-bit A port clock input
.CLKB(rdclk), // 1-bit B port clock input
.DIA({31'b0, din}), // 32-bit A port data input
.DIB(), // 32-bit B port data input
.DIPA(), // 4-bit A port parity data input
.DIPB(), // 4-bit B port parity data input
.ENA(1'b1), // 1-bit A port enable input
.ENB(1'b1), // 1-bit B port enable input
.REGCEA(), // 1-bit A port register enable input
.REGCEB(), // 1-bit B port register enable input
.SSRA(rst), // 1-bit A port set/reset input
.SSRB(rst), // 1-bit B port set/reset input
.WEA({4{mem[0]}}), // 4-bit A port write enable input
.WEB(4'b0) // 4-bit B port write enable input
);
// End of RAMB16_U1 instantiation
///
RAMB16 #(
.DOA_REG(0), // Optional output registers on A port (0 or 1)
.DOB_REG(0), // Optional output registers on B port (0 or 1)
.INIT_A(36'h000000000), // Initial values on A output port
.INIT_B(36'h000000000), // Initial values on B output port
.INVERT_CLK_DOA_REG("FALSE"),// Invert clock on A port output registers ("TRUE" or "FALSE")
.INVERT_CLK_DOB_REG("FALSE"),// Invert clock on A port output registers ("TRUE" or "FALSE")
.RAM_EXTENSION_A("NONE"), // "UPPER", "LOWER" or "NONE" when cascaded
.RAM_EXTENSION_B("NONE"), // "UPPER", "LOWER" or "NONE" when cascaded
.READ_WIDTH_A(1), // Valid values are 1, 2, 4, 9, 18, or 36
.READ_WIDTH_B(1), // Valid values are 1, 2, 4, 9, 18, or 36
.SIM_COLLISION_CHECK("ALL"), // Collision check enable "ALL", "WARNING_ONLY",// "GENERATE_X_ONLY" or "NONE"
.SRVAL_A(36'h000000000), // Set/Reset value for A port output
.SRVAL_B(36'h000000000), // Set/Reset value for B port output
.WRITE_MODE_A("WRITE_FIRST"), // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE"
.WRITE_MODE_B("WRITE_FIRST"), // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE"
.WRITE_WIDTH_A(1), // Valid values are 1, 2, 4, 9, 18, or 36
.WRITE_WIDTH_B(1) // Valid values are 1, 2, 4, 9, 18, or 36
// INIT_xx declarations specify the initial contents of the RAM and by default are intialized to zero
// INITP_xx are for the parity bits and by default are intialized to zero
) RAMB16_U2 (
.CASCADEOUTA(), // 1-bit cascade output
.CASCADEOUTB(), // 1-bit cascade output
.DOA(), // 32-bit A port data output
.DOB(dout2), // 32-bit B port data output
.DOPA(), // 4-bit A port parity data output
.DOPB(), // 4-bit B port parity data output
.ADDRA({1'b0, wr_addr[13:0]}), // 15-bit A port address input
.ADDRB({1'b0, rd_addr[13:0]}), // 15-bit B port address input
.CASCADEINA(), // 1-bit cascade A input
.CASCADEINB(), // 1-bit cascade B input
.CLKA(wrclk), // 1-bit A port clock input
.CLKB(rdclk), // 1-bit B port clock input
.DIA({31'b0, din}), // 32-bit A port data input
.DIB(), // 32-bD_INit B port data input
.DIPA(), // 4-bit A port parity data input
.DIPB(), // 4-bit B port parity data input
.ENA(1'b1), // 1-bit A port enable input
.ENB(1'b1), // 1-bit B port enable input
.REGCEA(), // 1-bit A port register enable input
.REGCEB(), // 1-bit B port register enable input
.SSRA(rst), // 1-bit A port set/reset input
.SSRB(rst), // 1-bit B port set/reset input
.WEA({4{mem[1]}}), // 4-bit A port write enable input
.WEB(4'b0) // 4-bit B port write enable input
);
// End of RAMB16_U2 instantiation

//// instantiate block memory
//RAMB16 #(.READ_WIDTH_A(1), .READ_WIDTH_B(1), 
//			.WRITE_WIDTH_A(1), .WRITE_WIDTH_B(1)) 
//RAMB16_U1 (.DOB(dout1), 
//			  .ADDRA({1'b0, wr_addr[12:0], 1'b0}), 
//			  .ADDRB({1'b0, rd_addr[13:1], 1'b0}), 
//			  .CLKA(wrclk), .CLKB(rdclk), 
//			  .DIA({30'b0, din}),  
//			  .ENA(1'b1), .ENB(1'b1), 
//			  .SSRA(rst), .SSRB(rst), 
//			  .WEA({4{mem[0]}}), .WEB(4'b0));
//
//RAMB16 #(.READ_WIDTH_A(1), .READ_WIDTH_B(1), 
//			.WRITE_WIDTH_A(1), .WRITE_WIDTH_B(1)) 
//RAMB16_U2 (.DOB(dout2), 
//			  .ADDRA({2'b0, wr_addr[12:0], 1'b0}), 
//			  .ADDRB({2'b0, rd_addr[13:1], 1'b0}), 
//			  .CLKA(wrclk), .CLKB(rdclk), 
//			  .DIA({30'b0, din}), 
//			  .ENA(1'b1), .ENB(1'b1), 
//			  .SSRA(rst), .SSRB(rst), 
//			  .WEA({4{mem[1]}}), .WEB(4'b0));

endmodule
