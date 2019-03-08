`timescale 1ns / 1ps
`default_nettype none //helps catch typo-related bugs
//////////////////////////////////////////////////////////////////////////////////
// 
// CS 141 - Fall 2015
// Module Name:    fifo8k_b_1 
// Author(s): 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module fifo8k_b_1(din, wrclk, rdclk, wr_en, rd_en, rst, dout);

	//parameter definitions

	//port definitions - customize for different bit widths
	
	input wire din;
	input wire wrclk, rdclk, wr_en, rd_en, rst;
	
	output reg dout; 
	
	
	reg full;
	reg rd_sel;
	reg [12:0] wr_addr;
	reg [12:0] rd_addr;

	wire DOADO;

	// generate write address
	always @(posedge wrclk or posedge rst) begin
		if(rst) begin
			wr_addr <= 12'b0;
		end else if(wr_en && ~&wr_addr) begin // do not write past max count
			wr_addr <= wr_addr + 1;
		end
	end
		
	// generate full flag
	always @(posedge wrclk) begin
			full <= &wr_addr;
			
	end

	// generate read address
	always @(negedge rdclk or posedge rst) begin
		if (rst) begin
			rd_addr <= 12'b0;
		end else if(rd_en) begin
			rd_addr <= rd_addr + 1;
		end	
	end

	always @(DOBDO) begin
		dout <= DOBDO;
	
	end
	
	
	
	//RAMB8BWER: 8K-bit Data and 1K-bit Parity Configurable Synchronous Block RAM
	// Spartan-6
	// Xilinx HDL Language Template, version 11.1
	RAMB8BWER #(
		.DATA_WIDTH_A(1), // 0, 1, 2, 4, 9, 18, or 36
		.DATA_WIDTH_B(1), // 0, 1, 2, 4, 9, 18, or 36
		.DOA_REG(0), // Optional output register on A port (0 or 1)
		.DOB_REG(0), // Optional output register on B port (0 or 1)
		.EN_RSTRAM_A("TRUE"), // Enable/disable A port RST
		.EN_RSTRAM_B("TRUE"), // Enable/disable B port RST INITP_00 to INITP_03: Allows specification of the initial contents of the 1KB parity data memory array.
		.INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
		//	INIT_00 to INIT_1F: Allows specification of the initial contents of the 8KB data memory array.
		.INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
		.INIT_A(18'h00000), // Initial values on A output port
		.INIT_B(18'h00000), // Initial values on B output port
		.INIT_FILE("NONE"), // File name of file used to specify initial RAM contents.
		.RAM_MODE("SDP"), // SDP or TDP
		.RSTTYPE("SYNC"), // SYNC or ASYNC
		.RST_PRIORITY_A("CE"), // CE or SR
		.RST_PRIORITY_B("CE"), // CE or SR
		.SIM_COLLISION_CHECK("ALL"), // Collision check enable "ALL", "WARNING_ONLY", "GENERATE_X_ONLY" or"NONE"
		.SRVAL_A(18'h00000), // Set/Reset value for A port output
		.SRVAL_B(18'h00000), // Set/Reset value for B port output
		.WRITE_MODE_A("WRITE_FIRST"), // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE"
		.WRITE_MODE_B("WRITE_FIRST") // "WRITE_FIRST","READ_FIRST", or "NO_CHANGE"
	)
	RAMB8BWER_inst (
		.DOADO(), // 16-bit A port data/LSB data output
		.DOBDO(DOBDO), // 16-bit B port data/MSB data output
		.DOPADOP(), // 2-bit A port parity/LSB parity output
		.DOPBDOP(), // 2-bit B port parity/MSB parity output
		.ADDRAWRADDR(wr_addr), // 13-bit A port address/Write address input
		.ADDRBRDADDR(rd_addr), // 13-bit B port address/Read address input
		.CLKAWRCLK(wr_clk), // 1-bit A port clock/Write clock input
		.CLKBRDCLK(rd_clk), // 1-bit B port clock/Read clock input
		.DIADI(din), // 16-bit A port data/LSB data input
		.DIBDI(), // 16-bit B port data/MSB data input
		.DIPADIP(), // 2-bit A port parity/LSB parity input
		.DIPBDIP(), // 2-bit B port parity/MSB parity input
		.ENAWREN(wr_en), // 1-bit A port enable/Write enable input
		.ENBRDEN(rd_en), // 1-bit B port enable/Read enable input
		.REGCEA(0), // 1-bit A port register enable input
		.REGCEBREGCE(1), // 1-bit B port register enable/Register enable input
		.RSTA(rst), // 1-bit A port set/reset input
		.RSTBRST(rst), // 1-bit B port set/reset input
		.WEAWEL(), // 2-bit A port write enable input
		.WEBWEU() // 2-bit B port write enable input
	);
	// End of RAMB8BWER_inst instantiation

endmodule
`default_nettype wire //some Xilinx IP requires that the default_nettype be set to wire
