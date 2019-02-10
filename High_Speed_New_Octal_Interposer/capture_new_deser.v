////////////////////////////////////////////////////////////////////////////////
// Company: 			Analog Devices
// Engineer: 		Alex Arrants 
// Create Date:   	04/24/2006
// Design Name:   	FIFO5 for Octals 
// Module Name:   	Top.UCF
// Project Name:  	 
// Target Device:  
// Tool versions:	ISE 9.1.02 3
// Description: 	 
// Revision:
// Comments:
// 	
////////////////////////////////////////////////////////////////////////////////  
`timescale  1 ns / 1 ps
module capture(rst, wren, cntrl_bits,
					dco_p, dco_n, fco_p, fco_n, 
					din_ap, din_an, din_bp, din_bn,  
					din_cp, din_cn, din_dp, din_dn,  
					din_ep, din_en, din_fp, din_fn,  
					din_gp, din_gn, din_hp, din_hn,
					doutA, doutB, clkout, load, dco_locked, fco_locked);

input rst, wren; 
input dco_p, dco_n;
input fco_p, fco_n;
input din_ap, din_an;
input din_bp, din_bn;
input din_cp, din_cn;
input din_dp, din_dn;
input din_ep, din_en;
input din_fp, din_fn;
input din_gp, din_gn;
input din_hp, din_hn;
input [5:0] cntrl_bits;

output clkout, load;          
output [13:0] doutA; 
output [13:0] doutB; 
output dco_locked;
output fco_locked;

reg load, gate;
reg [13:0] dat_a;
reg [13:0] dat_b;
reg [13:0] dat_c;
reg [13:0] dat_d;
reg [13:0] dat_e;
reg [13:0] dat_f;
reg [13:0] dat_g;
reg [13:0] dat_h;


reg [13:0] doutA;
reg [13:0] doutB;

reg [13:0] dout_a, dout_b;
reg [13:0] dout_c, dout_d;
reg [13:0] dout_e, dout_f;
reg [13:0] dout_g, dout_h;

reg [15:0] count;       
reg fco1,fco2;
reg fcostb;

wire dco;
wire dcoshifted;

IBUFGDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB1 (.O(dco_in), .I(dco_p), .IB(dco_n));
IBUFGDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB2 (.O(fco_in), .I(fco_p), .IB(fco_n));

IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB3 (.O(din_a), .I(din_ap), .IB(din_an)); 
IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB4 (.O(din_b), .I(din_bp), .IB(din_bn)); 
IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB5 (.O(din_c), .I(din_cp), .IB(din_cn));
IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB6 (.O(din_d), .I(din_dp), .IB(din_dn));
IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB7 (.O(din_e), .I(din_ep), .IB(din_en)); 
IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB8 (.O(din_f), .I(din_fp), .IB(din_fn)); 
IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB9 (.O(din_g), .I(din_gp), .IB(din_gn));
IBUFDS #(.DIFF_TERM("TRUE"), .IOSTANDARD("LVDS_25")) IB10 (.O(din_h), .I(din_hp), .IB(din_hn));



DCM_BASE # (.CLKOUT_PHASE_SHIFT("FIXED"), .PHASE_SHIFT(0)) DCM1 (.CLKIN(dco_in),      
					 .CLKFB(dcofb),
					 .LOCKED(dco_locked),
					 .RST(rst), 
					 .CLK90(dcoshifted),
					 .CLK0(dco0d));
					 

BUFG B1 (.I(dco0d), .O(dcofb));

BUFG B3 (.I(dcoshifted), .O(dco));

DCM_BASE DCM2 (.CLKIN(fco_in),      
					 .CLKFB(fco),
					 .LOCKED(fco_locked),					 
		 			 .RST(rst),            
					 .CLK0(clk0f));				 
BUFG B2 (.I(clk0f), .O(fco));

IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I1 (
			.D(din_a), .C(dco), 
			.Q1(q1_a), .Q2(q2_a),
			.CE(1'b1), .S(1'b0), .R(1'b0));

IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I2 (
			.D(din_b), .C(dco), 
			.Q1(q1_b), .Q2(q2_b),
			.CE(1'b1), .S(1'b0), .R(1'b0));

IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I3 (
			.D(din_c), .C(dco), 
			.Q1(q1_c), .Q2(q2_c),
			.CE(1'b1), .S(1'b0), .R(1'b0));

IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I4 (
			.D(din_d), .C(dco), 
			.Q1(q1_d), .Q2(q2_d),
			.CE(1'b1), .S(1'b0), .R(1'b0));
IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I5 (
			.D(din_e), .C(dco), 
			.Q1(q1_e), .Q2(q2_e),
			.CE(1'b1), .S(1'b0), .R(1'b0));

IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I6 (
			.D(din_f), .C(dco), 
			.Q1(q1_f), .Q2(q2_f),
			.CE(1'b1), .S(1'b0), .R(1'b0));

IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I7 (
			.D(din_g), .C(dco), 
			.Q1(q1_g), .Q2(q2_g),
			.CE(1'b1), .S(1'b0), .R(1'b0));

IDDR   #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) I8 (
			.D(din_h), .C(dco), 
			.Q1(q1_h), .Q2(q2_h),
			.CE(1'b1), .S(1'b0), .R(1'b0));


always @(posedge dco)
	begin
		dat_a[13:0] <= {dat_a[11:0], q1_a, q2_a}; 
		dat_b[13:0] <= {dat_b[11:0], q1_b, q2_b}; 
		dat_c[13:0] <= {dat_c[11:0], q1_c, q2_c}; 
		dat_d[13:0] <= {dat_d[11:0], q1_d, q2_d}; 
		dat_e[13:0] <= {dat_e[11:0], q1_e, q2_e}; 
		dat_f[13:0] <= {dat_f[11:0], q1_f, q2_f}; 
		dat_g[13:0] <= {dat_g[11:0], q1_g, q2_g}; 
		dat_h[13:0] <= {dat_h[11:0], q1_h, q2_h}; 
		
	end
//start new fco stuff

//generate new FCO
always @ (posedge dco)
	begin
		fco1 <= fco;
		fco2 <= fco1;
		fcostb <= fco1 & ~fco2;
	end

always @(posedge dco)
	if (fcostb)
	
		case(cntrl_bits[2:0])
			3'b000: doutA <= ~dat_a;
			3'b001: doutA <= dat_b;
			3'b010: doutA <= dat_c;
			3'b011: doutA <= dat_d;
			3'b100: doutA <= dat_e;
			3'b101: doutA <= dat_f;
			3'b110: doutA <= dat_g;
			3'b111: doutA <= dat_h;
		endcase
		
always @(posedge dco)
	if (fcostb)
	
		case(cntrl_bits[5:3])
			3'b000: doutB <= ~dat_a;
			3'b001: doutB <= dat_b;
			3'b010: doutB <= dat_c;
			3'b011: doutB <= dat_d;
			3'b100: doutB <= dat_e;
			3'b101: doutB <= dat_f;
			3'b110: doutB <= dat_g;
			3'b111: doutB <= dat_h;
		endcase
 

assign clkout = fco;

//always @(posedge dco or posedge rst)
always @(posedge dco)
begin
	if (rst)
		begin
			count <= 1'b0;
			gate <= 1'b0;
		end
	else if (fcostb)
		begin
			count <= count + 1;
			if (&count)
				gate <= 1;
		end
end
always @(posedge dco)
	 
	if (gate & fcostb)
		begin
			load <= wren;
		end

endmodule