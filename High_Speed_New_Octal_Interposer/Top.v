////////////////////////////////////////////////////////////////////////////////
// Company: 			Analog Devices
// Engineer: 			Mike Hughes & Alex Arrants
// Create Date:   	05/31/07
// Design Name:   	FIFO5 for quads & octals 
// Module Name:   	
// Project Name:  	 
// Target Device:  
// Tool versions:	ISE 9.1.03i  
// Description: 	  
// Revision:
// Comments:
// 	 
////////////////////////////////////////////////////////////////////////////////  
`timescale  1 ns / 10 ps
module Top (dco_p, dco_n,    
				fco_p, fco_n, 
				din_ap, din_an, 
				din_bp, din_bn, 
				din_cp, din_cn,  
				din_dp, din_dn,
				din_ep, din_en, 
				din_fp, din_fn, 
				din_gp, din_gn,  
				din_hp, din_hn, 				
				_wen, rclk, _renA, _renB, _mr,  
				dout,	chan_a_led, chan_b_led, 
				chan_c_led, chan_d_led, sdi_in, sclk_in, csb_in);
          
input _wen;	               // active-low FIFO write enable
input rclk;                // read clk
input	_mr;                 // active-low master reset
input _renA, _renB;                // active-low FIFO read enable
input dco_p, dco_n;        // clk inputs 
input fco_p, fco_n;         
input	din_ap, din_an;      // data inputs
input	din_bp, din_bn;
input	din_cp, din_cn;
input	din_dp, din_dn;
input	din_ep, din_en;      // data inputs
input	din_fp, din_fn;
input	din_gp, din_gn;
input	din_hp, din_hn;

//input tp_d0; //reset for DCMs

//input tp_bw0, tp_bw1; //bit width and clk mux select

input csb_in, sdi_in, sclk_in;
//output sdo_out;

output chan_a_led;
output chan_b_led;
output chan_c_led;
output chan_d_led;
output [15:0] dout;        // data output
//output tp_data_clk, tp_frame_clk, tp_datab;
//output tp_sclk, tp_cs_fpga, tp_sdi;
//output tp_d0, tp_d1, tp_d2, tp_d3;
wire data_clk;
wire [13:0] captured_dataA;
wire [13:0] captured_dataB;
wire [7:0] SPI_Register;
wire dco_locked;
wire fco_locked;
wire load;
//wire tp_sclk;
//wire tp_cs_fpga;
//wire tp_sdi;

wire sdi_buf, sclk_buf, csb_buf;
//wire tp_data_clk, tp_frame_clk, tp_datab;
//wire tp_bw0, tp_bw1;
assign chan_a_led = ~(load && dco_locked && fco_locked) ; // CAPTURE LED
assign chan_b_led = ~dco_locked; // LED1
assign chan_c_led = ~fco_locked; // LED2
assign chan_d_led = ~(~_renA || ~_renB); // UPLOAD LED

//assign tp_sclk = sclk_buf;
//assign tp_sdi = sdi_buf;
//assign tp_cs_fpga = csb_buf;

//assign tp_d0 = SPI_Register[0];
//assign tp_d1 = SPI_Register[1];


IBUF #(.IOSTANDARD("DEFAULT")   
	)IBUF_1 (
      .O(sclk_buf),    
      .I(sclk_in)     
   );
	
IBUF #(.IOSTANDARD("DEFAULT")   
	)IBUF_2 (
      .O(csb_buf),    
      .I(csb_in)     
   );

IBUF #(.IOSTANDARD("DEFAULT")   
	)IBUF_3 (
      .O(sdi_buf),    
      .I(sdi_in)     
   );

spi_write_8b U3 (.sdi(sdi_buf), .csb(csb_buf), .sclk(sclk_buf), .cntrl_bits(SPI_Register[7:0]));

// capture data
capture U1 (.rst(~_mr), .wren(~_wen), 
				.cntrl_bits(SPI_Register[5:0]),
				.dco_p(dco_p), .dco_n(dco_n), 
				.fco_p(fco_p), .fco_n(fco_n), 
				.din_ap(din_ap), .din_an(din_an),  
				.din_bp(din_bp), .din_bn(din_bn),  
				.din_cp(din_cp), .din_cn(din_cn),  
				.din_dp(din_dp), .din_dn(din_dn),
				.din_ep(din_ep), .din_en(din_en),  
				.din_fp(din_fp), .din_fn(din_fn),  
				.din_gp(din_gp), .din_gn(din_gn),  
				.din_hp(din_hp), .din_hn(din_hn),				
				.doutA(captured_dataA), .doutB(captured_dataB),.clkout(data_clk), 
				.load(load), .dco_locked(dco_locked), .fco_locked(fco_locked));

				
// write to and read from FIFO
storage U2 (.dinA(captured_dataA), .dinB(captured_dataB), .wrclk(data_clk), 
				.load(load && dco_locked && fco_locked), .rst(~_mr), 
				.rdclk(rclk_b), .rdenA(~_renA), .rdenB(~_renB),
				.dout(dout), .bw_bits(SPI_Register[7:6]));

//RCLK
IBUF I36 (.O(rclk_i), .I(rclk));
BUFG B32 (.O(rclk_b), .I(rclk_i));

endmodule
