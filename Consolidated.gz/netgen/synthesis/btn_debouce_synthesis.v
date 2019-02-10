////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: btn_debouce_synthesis.v
// /___/   /\     Timestamp: Thu Jan 17 16:05:30 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim main.ngc btn_debouce_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: main.ngc
// Output file	: \\vmware-host\shared folders\VM_Shared_folder\UART out.gz\netgen\synthesis\btn_debouce_synthesis.v
// # of Modules	: 1
// Design Name	: main
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module main (
  uart_i, clk, uart_o, bouncy_btns, switch, led
);
  input uart_i;
  input clk;
  output uart_o;
  input [4 : 0] bouncy_btns;
  input [7 : 0] switch;
  output [7 : 0] led;
  wire bouncy_btns_4_IBUF_0;
  wire bouncy_btns_3_IBUF_1;
  wire bouncy_btns_2_IBUF_2;
  wire bouncy_btns_1_IBUF_3;
  wire bouncy_btns_0_IBUF_4;
  wire switch_7_IBUF_5;
  wire switch_6_IBUF_6;
  wire switch_5_IBUF_7;
  wire switch_4_IBUF_8;
  wire switch_3_IBUF_9;
  wire switch_2_IBUF_10;
  wire switch_1_IBUF_11;
  wire switch_0_IBUF_12;
  wire uart_i_IBUF_13;
  wire clk_BUFGP_14;
  wire \sender/ready_16 ;
  wire \sender/txBit_17 ;
  wire \receiver/new_data_26 ;
  wire start_transmit_27;
  wire led_7_32;
  wire led_6_33;
  wire led_5_34;
  wire led_4_35;
  wire led_3_36;
  wire led_2_37;
  wire led_1_38;
  wire led_0_39;
  wire \current_state[2]_GND_1_o_Select_14_o ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1> ;
  wire \current_state[2]_GND_1_o_select_15_OUT<0> ;
  wire N0;
  wire N1;
  wire \sender/Mcount_bitIndex3 ;
  wire \sender/Mcount_bitIndex2 ;
  wire \sender/Mcount_bitIndex1 ;
  wire \sender/Mcount_bitIndex ;
  wire \sender/Mcount_bitTmr13 ;
  wire \sender/Mcount_bitTmr12 ;
  wire \sender/Mcount_bitTmr11 ;
  wire \sender/Mcount_bitTmr10 ;
  wire \sender/Mcount_bitTmr9 ;
  wire \sender/Mcount_bitTmr8 ;
  wire \sender/Mcount_bitTmr7 ;
  wire \sender/Mcount_bitTmr6 ;
  wire \sender/Mcount_bitTmr5 ;
  wire \sender/Mcount_bitTmr4 ;
  wire \sender/Mcount_bitTmr3 ;
  wire \sender/Mcount_bitTmr2 ;
  wire \sender/Mcount_bitTmr1 ;
  wire \sender/Mcount_bitTmr ;
  wire \sender/current_state<1>_inv ;
  wire \sender/_n0063_inv ;
  wire \sender/current_state[1]_next_state[1]_wide_mux_17_OUT<0> ;
  wire \sender/current_state[1]_next_state[1]_wide_mux_17_OUT<1> ;
  wire \sender/current_state[1]_ready_Mux_16_o ;
  wire \receiver/Mcount_bitIndex3 ;
  wire \receiver/Mcount_bitIndex2 ;
  wire \receiver/Mcount_bitIndex1 ;
  wire \receiver/Mcount_bitIndex ;
  wire \receiver/Mcount_bitTmr13 ;
  wire \receiver/Mcount_bitTmr12 ;
  wire \receiver/Mcount_bitTmr11 ;
  wire \receiver/Mcount_bitTmr10 ;
  wire \receiver/Mcount_bitTmr9 ;
  wire \receiver/Mcount_bitTmr8 ;
  wire \receiver/Mcount_bitTmr7 ;
  wire \receiver/Mcount_bitTmr6 ;
  wire \receiver/Mcount_bitTmr5 ;
  wire \receiver/Mcount_bitTmr4 ;
  wire \receiver/Mcount_bitTmr3 ;
  wire \receiver/Mcount_bitTmr2 ;
  wire \receiver/Mcount_bitTmr1 ;
  wire \receiver/Mcount_bitTmr ;
  wire \receiver/clk_inv ;
  wire \receiver/current_state<1>_inv ;
  wire \receiver/_n0070_inv ;
  wire \receiver/bit_done_INV_7_o ;
  wire \receiver/_n0064 ;
  wire \receiver/current_state[1]_next_state[1]_wide_mux_20_OUT<0> ;
  wire \receiver/current_state[1]_next_state[1]_wide_mux_20_OUT<1> ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>1_740 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>2_741 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>3_742 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>4_743 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>5_744 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>6_745 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>7_746 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>8_747 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>9_748 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>10_749 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>11_750 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>12_751 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>13_752 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>14_753 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>15_754 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>16_755 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>17_756 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>18_757 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>19_758 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>20_759 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>21_760 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>22_761 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>23_762 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>24_763 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>25_764 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>26_765 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>27_766 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>28_767 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>29_768 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>30_769 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>31_770 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>32_771 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>33_772 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>34_773 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>35_774 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>36_775 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>37_776 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>38_777 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>39_778 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>40_779 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>41_780 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>42_781 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>43_782 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>44_783 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>45_784 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>46_785 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>47_786 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>48_787 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>49_788 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>50_789 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>51_790 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>52_791 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>53_792 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>54_793 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>55_794 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>56_795 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>57_796 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>58_797 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>59_798 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>60_799 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>61_800 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>62_801 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>63_802 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>64_803 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>65_804 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>66_805 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>67_806 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>68_807 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>69_808 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>70_809 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>71_810 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>72_811 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>73_812 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>74_813 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>75_814 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>76_815 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>77_816 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>78_817 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>79_818 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>80_819 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>81_820 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>82_821 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>83_822 ;
  wire \current_state[2]_GND_1_o_select_15_OUT<1>84_823 ;
  wire \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT2 ;
  wire \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT21_825 ;
  wire \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT1 ;
  wire \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT11_827 ;
  wire \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT12_828 ;
  wire \sender/Mmux__n00851 ;
  wire \receiver/bit_done_INV_7_o1_830 ;
  wire \receiver/bit_done_INV_7_o2_831 ;
  wire \sender/txBit_rstpot_856 ;
  wire \receiver/new_data_rstpot_857 ;
  wire N2;
  wire N4;
  wire \receiver/_n0081_inv1_rstpot_860 ;
  wire \receiver/data_0_dpot_861 ;
  wire \receiver/data_1_dpot_862 ;
  wire \receiver/data_2_dpot_863 ;
  wire \receiver/data_3_dpot_864 ;
  wire \receiver/data_4_dpot_865 ;
  wire \receiver/data_5_dpot_866 ;
  wire \receiver/data_6_dpot_867 ;
  wire \receiver/data_7_dpot_868 ;
  wire \sender/current_state_1_1_869 ;
  wire \receiver/current_state_1_1_870 ;
  wire \sender/_n0057<1>1_cepot ;
  wire \sender/latched_data_0_dpot_872 ;
  wire \sender/latched_data_1_dpot_873 ;
  wire \sender/latched_data_2_dpot_874 ;
  wire \sender/latched_data_3_dpot_875 ;
  wire \sender/latched_data_4_dpot_876 ;
  wire \sender/latched_data_5_dpot_877 ;
  wire \sender/latched_data_6_dpot_878 ;
  wire \sender/latched_data_7_dpot_879 ;
  wire \receiver/current_state_1_2_880 ;
  wire \sender/current_state_1_2_881 ;
  wire N6;
  wire N7;
  wire [0 : 0] db_btns;
  wire [7 : 0] \receiver/data ;
  wire [1 : 0] next_state;
  wire [1 : 0] current_state;
  wire [99 : 0] \btns/l_btn/btn_vals ;
  wire [99 : 0] \btns/b_btn/btn_vals ;
  wire [99 : 0] \btns/r_btn/btn_vals ;
  wire [99 : 0] \btns/t_btn/btn_vals ;
  wire [99 : 0] \btns/c_btn/btn_vals ;
  wire [13 : 0] \sender/Mcount_bitTmr_lut ;
  wire [12 : 0] \sender/Mcount_bitTmr_cy ;
  wire [3 : 0] \sender/bitIndex ;
  wire [1 : 0] \sender/next_state ;
  wire [13 : 0] \sender/bitTmr ;
  wire [1 : 0] \sender/current_state ;
  wire [7 : 0] \sender/latched_data ;
  wire [13 : 0] \receiver/Mcount_bitTmr_lut ;
  wire [12 : 0] \receiver/Mcount_bitTmr_cy ;
  wire [7 : 0] \receiver/tx_data ;
  wire [3 : 0] \receiver/bitIndex ;
  wire [1 : 0] \receiver/next_state ;
  wire [13 : 0] \receiver/bitTmr ;
  wire [1 : 0] \receiver/current_state ;
  wire [16 : 0] \btns/c_btn/out_wg_lut ;
  wire [15 : 0] \btns/c_btn/out_wg_cy ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FD   start_transmit (
    .C(clk_BUFGP_14),
    .D(\current_state[2]_GND_1_o_Select_14_o ),
    .Q(start_transmit_27)
  );
  FD   next_state_0 (
    .C(clk_BUFGP_14),
    .D(\current_state[2]_GND_1_o_select_15_OUT<0> ),
    .Q(next_state[0])
  );
  FD   next_state_1 (
    .C(clk_BUFGP_14),
    .D(\current_state[2]_GND_1_o_select_15_OUT<1> ),
    .Q(next_state[1])
  );
  FDR   current_state_0 (
    .C(clk_BUFGP_14),
    .D(next_state[0]),
    .R(db_btns[0]),
    .Q(current_state[0])
  );
  FDR   current_state_1 (
    .C(clk_BUFGP_14),
    .D(next_state[1]),
    .R(db_btns[0]),
    .Q(current_state[1])
  );
  FD   led_0 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [0]),
    .Q(led_0_39)
  );
  FD   led_1 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [1]),
    .Q(led_1_38)
  );
  FD   led_2 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [2]),
    .Q(led_2_37)
  );
  FD   led_3 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [3]),
    .Q(led_3_36)
  );
  FD   led_4 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [4]),
    .Q(led_4_35)
  );
  FD   led_5 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [5]),
    .Q(led_5_34)
  );
  FD   led_6 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [6]),
    .Q(led_6_33)
  );
  FD   led_7 (
    .C(\receiver/new_data_26 ),
    .D(\receiver/data [7]),
    .Q(led_7_32)
  );
  FD   \btns/l_btn/btn_vals_99  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [98]),
    .Q(\btns/l_btn/btn_vals [99])
  );
  FD   \btns/l_btn/btn_vals_98  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [97]),
    .Q(\btns/l_btn/btn_vals [98])
  );
  FD   \btns/l_btn/btn_vals_97  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [96]),
    .Q(\btns/l_btn/btn_vals [97])
  );
  FD   \btns/l_btn/btn_vals_96  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [95]),
    .Q(\btns/l_btn/btn_vals [96])
  );
  FD   \btns/l_btn/btn_vals_95  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [94]),
    .Q(\btns/l_btn/btn_vals [95])
  );
  FD   \btns/l_btn/btn_vals_94  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [93]),
    .Q(\btns/l_btn/btn_vals [94])
  );
  FD   \btns/l_btn/btn_vals_93  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [92]),
    .Q(\btns/l_btn/btn_vals [93])
  );
  FD   \btns/l_btn/btn_vals_92  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [91]),
    .Q(\btns/l_btn/btn_vals [92])
  );
  FD   \btns/l_btn/btn_vals_91  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [90]),
    .Q(\btns/l_btn/btn_vals [91])
  );
  FD   \btns/l_btn/btn_vals_90  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [89]),
    .Q(\btns/l_btn/btn_vals [90])
  );
  FD   \btns/l_btn/btn_vals_89  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [88]),
    .Q(\btns/l_btn/btn_vals [89])
  );
  FD   \btns/l_btn/btn_vals_88  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [87]),
    .Q(\btns/l_btn/btn_vals [88])
  );
  FD   \btns/l_btn/btn_vals_87  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [86]),
    .Q(\btns/l_btn/btn_vals [87])
  );
  FD   \btns/l_btn/btn_vals_86  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [85]),
    .Q(\btns/l_btn/btn_vals [86])
  );
  FD   \btns/l_btn/btn_vals_85  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [84]),
    .Q(\btns/l_btn/btn_vals [85])
  );
  FD   \btns/l_btn/btn_vals_84  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [83]),
    .Q(\btns/l_btn/btn_vals [84])
  );
  FD   \btns/l_btn/btn_vals_83  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [82]),
    .Q(\btns/l_btn/btn_vals [83])
  );
  FD   \btns/l_btn/btn_vals_82  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [81]),
    .Q(\btns/l_btn/btn_vals [82])
  );
  FD   \btns/l_btn/btn_vals_81  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [80]),
    .Q(\btns/l_btn/btn_vals [81])
  );
  FD   \btns/l_btn/btn_vals_80  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [79]),
    .Q(\btns/l_btn/btn_vals [80])
  );
  FD   \btns/l_btn/btn_vals_79  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [78]),
    .Q(\btns/l_btn/btn_vals [79])
  );
  FD   \btns/l_btn/btn_vals_78  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [77]),
    .Q(\btns/l_btn/btn_vals [78])
  );
  FD   \btns/l_btn/btn_vals_77  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [76]),
    .Q(\btns/l_btn/btn_vals [77])
  );
  FD   \btns/l_btn/btn_vals_76  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [75]),
    .Q(\btns/l_btn/btn_vals [76])
  );
  FD   \btns/l_btn/btn_vals_75  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [74]),
    .Q(\btns/l_btn/btn_vals [75])
  );
  FD   \btns/l_btn/btn_vals_74  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [73]),
    .Q(\btns/l_btn/btn_vals [74])
  );
  FD   \btns/l_btn/btn_vals_73  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [72]),
    .Q(\btns/l_btn/btn_vals [73])
  );
  FD   \btns/l_btn/btn_vals_72  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [71]),
    .Q(\btns/l_btn/btn_vals [72])
  );
  FD   \btns/l_btn/btn_vals_71  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [70]),
    .Q(\btns/l_btn/btn_vals [71])
  );
  FD   \btns/l_btn/btn_vals_70  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [69]),
    .Q(\btns/l_btn/btn_vals [70])
  );
  FD   \btns/l_btn/btn_vals_69  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [68]),
    .Q(\btns/l_btn/btn_vals [69])
  );
  FD   \btns/l_btn/btn_vals_68  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [67]),
    .Q(\btns/l_btn/btn_vals [68])
  );
  FD   \btns/l_btn/btn_vals_67  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [66]),
    .Q(\btns/l_btn/btn_vals [67])
  );
  FD   \btns/l_btn/btn_vals_66  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [65]),
    .Q(\btns/l_btn/btn_vals [66])
  );
  FD   \btns/l_btn/btn_vals_65  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [64]),
    .Q(\btns/l_btn/btn_vals [65])
  );
  FD   \btns/l_btn/btn_vals_64  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [63]),
    .Q(\btns/l_btn/btn_vals [64])
  );
  FD   \btns/l_btn/btn_vals_63  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [62]),
    .Q(\btns/l_btn/btn_vals [63])
  );
  FD   \btns/l_btn/btn_vals_62  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [61]),
    .Q(\btns/l_btn/btn_vals [62])
  );
  FD   \btns/l_btn/btn_vals_61  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [60]),
    .Q(\btns/l_btn/btn_vals [61])
  );
  FD   \btns/l_btn/btn_vals_60  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [59]),
    .Q(\btns/l_btn/btn_vals [60])
  );
  FD   \btns/l_btn/btn_vals_59  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [58]),
    .Q(\btns/l_btn/btn_vals [59])
  );
  FD   \btns/l_btn/btn_vals_58  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [57]),
    .Q(\btns/l_btn/btn_vals [58])
  );
  FD   \btns/l_btn/btn_vals_57  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [56]),
    .Q(\btns/l_btn/btn_vals [57])
  );
  FD   \btns/l_btn/btn_vals_56  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [55]),
    .Q(\btns/l_btn/btn_vals [56])
  );
  FD   \btns/l_btn/btn_vals_55  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [54]),
    .Q(\btns/l_btn/btn_vals [55])
  );
  FD   \btns/l_btn/btn_vals_54  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [53]),
    .Q(\btns/l_btn/btn_vals [54])
  );
  FD   \btns/l_btn/btn_vals_53  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [52]),
    .Q(\btns/l_btn/btn_vals [53])
  );
  FD   \btns/l_btn/btn_vals_52  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [51]),
    .Q(\btns/l_btn/btn_vals [52])
  );
  FD   \btns/l_btn/btn_vals_51  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [50]),
    .Q(\btns/l_btn/btn_vals [51])
  );
  FD   \btns/l_btn/btn_vals_50  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [49]),
    .Q(\btns/l_btn/btn_vals [50])
  );
  FD   \btns/l_btn/btn_vals_49  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [48]),
    .Q(\btns/l_btn/btn_vals [49])
  );
  FD   \btns/l_btn/btn_vals_48  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [47]),
    .Q(\btns/l_btn/btn_vals [48])
  );
  FD   \btns/l_btn/btn_vals_47  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [46]),
    .Q(\btns/l_btn/btn_vals [47])
  );
  FD   \btns/l_btn/btn_vals_46  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [45]),
    .Q(\btns/l_btn/btn_vals [46])
  );
  FD   \btns/l_btn/btn_vals_45  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [44]),
    .Q(\btns/l_btn/btn_vals [45])
  );
  FD   \btns/l_btn/btn_vals_44  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [43]),
    .Q(\btns/l_btn/btn_vals [44])
  );
  FD   \btns/l_btn/btn_vals_43  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [42]),
    .Q(\btns/l_btn/btn_vals [43])
  );
  FD   \btns/l_btn/btn_vals_42  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [41]),
    .Q(\btns/l_btn/btn_vals [42])
  );
  FD   \btns/l_btn/btn_vals_41  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [40]),
    .Q(\btns/l_btn/btn_vals [41])
  );
  FD   \btns/l_btn/btn_vals_40  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [39]),
    .Q(\btns/l_btn/btn_vals [40])
  );
  FD   \btns/l_btn/btn_vals_39  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [38]),
    .Q(\btns/l_btn/btn_vals [39])
  );
  FD   \btns/l_btn/btn_vals_38  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [37]),
    .Q(\btns/l_btn/btn_vals [38])
  );
  FD   \btns/l_btn/btn_vals_37  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [36]),
    .Q(\btns/l_btn/btn_vals [37])
  );
  FD   \btns/l_btn/btn_vals_36  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [35]),
    .Q(\btns/l_btn/btn_vals [36])
  );
  FD   \btns/l_btn/btn_vals_35  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [34]),
    .Q(\btns/l_btn/btn_vals [35])
  );
  FD   \btns/l_btn/btn_vals_34  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [33]),
    .Q(\btns/l_btn/btn_vals [34])
  );
  FD   \btns/l_btn/btn_vals_33  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [32]),
    .Q(\btns/l_btn/btn_vals [33])
  );
  FD   \btns/l_btn/btn_vals_32  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [31]),
    .Q(\btns/l_btn/btn_vals [32])
  );
  FD   \btns/l_btn/btn_vals_31  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [30]),
    .Q(\btns/l_btn/btn_vals [31])
  );
  FD   \btns/l_btn/btn_vals_30  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [29]),
    .Q(\btns/l_btn/btn_vals [30])
  );
  FD   \btns/l_btn/btn_vals_29  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [28]),
    .Q(\btns/l_btn/btn_vals [29])
  );
  FD   \btns/l_btn/btn_vals_28  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [27]),
    .Q(\btns/l_btn/btn_vals [28])
  );
  FD   \btns/l_btn/btn_vals_27  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [26]),
    .Q(\btns/l_btn/btn_vals [27])
  );
  FD   \btns/l_btn/btn_vals_26  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [25]),
    .Q(\btns/l_btn/btn_vals [26])
  );
  FD   \btns/l_btn/btn_vals_25  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [24]),
    .Q(\btns/l_btn/btn_vals [25])
  );
  FD   \btns/l_btn/btn_vals_24  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [23]),
    .Q(\btns/l_btn/btn_vals [24])
  );
  FD   \btns/l_btn/btn_vals_23  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [22]),
    .Q(\btns/l_btn/btn_vals [23])
  );
  FD   \btns/l_btn/btn_vals_22  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [21]),
    .Q(\btns/l_btn/btn_vals [22])
  );
  FD   \btns/l_btn/btn_vals_21  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [20]),
    .Q(\btns/l_btn/btn_vals [21])
  );
  FD   \btns/l_btn/btn_vals_20  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [19]),
    .Q(\btns/l_btn/btn_vals [20])
  );
  FD   \btns/l_btn/btn_vals_19  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [18]),
    .Q(\btns/l_btn/btn_vals [19])
  );
  FD   \btns/l_btn/btn_vals_18  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [17]),
    .Q(\btns/l_btn/btn_vals [18])
  );
  FD   \btns/l_btn/btn_vals_17  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [16]),
    .Q(\btns/l_btn/btn_vals [17])
  );
  FD   \btns/l_btn/btn_vals_16  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [15]),
    .Q(\btns/l_btn/btn_vals [16])
  );
  FD   \btns/l_btn/btn_vals_15  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [14]),
    .Q(\btns/l_btn/btn_vals [15])
  );
  FD   \btns/l_btn/btn_vals_14  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [13]),
    .Q(\btns/l_btn/btn_vals [14])
  );
  FD   \btns/l_btn/btn_vals_13  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [12]),
    .Q(\btns/l_btn/btn_vals [13])
  );
  FD   \btns/l_btn/btn_vals_12  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [11]),
    .Q(\btns/l_btn/btn_vals [12])
  );
  FD   \btns/l_btn/btn_vals_11  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [10]),
    .Q(\btns/l_btn/btn_vals [11])
  );
  FD   \btns/l_btn/btn_vals_10  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [9]),
    .Q(\btns/l_btn/btn_vals [10])
  );
  FD   \btns/l_btn/btn_vals_9  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [8]),
    .Q(\btns/l_btn/btn_vals [9])
  );
  FD   \btns/l_btn/btn_vals_8  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [7]),
    .Q(\btns/l_btn/btn_vals [8])
  );
  FD   \btns/l_btn/btn_vals_7  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [6]),
    .Q(\btns/l_btn/btn_vals [7])
  );
  FD   \btns/l_btn/btn_vals_6  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [5]),
    .Q(\btns/l_btn/btn_vals [6])
  );
  FD   \btns/l_btn/btn_vals_5  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [4]),
    .Q(\btns/l_btn/btn_vals [5])
  );
  FD   \btns/l_btn/btn_vals_4  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [3]),
    .Q(\btns/l_btn/btn_vals [4])
  );
  FD   \btns/l_btn/btn_vals_3  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [2]),
    .Q(\btns/l_btn/btn_vals [3])
  );
  FD   \btns/l_btn/btn_vals_2  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [1]),
    .Q(\btns/l_btn/btn_vals [2])
  );
  FD   \btns/l_btn/btn_vals_1  (
    .C(clk_BUFGP_14),
    .D(\btns/l_btn/btn_vals [0]),
    .Q(\btns/l_btn/btn_vals [1])
  );
  FD   \btns/l_btn/btn_vals_0  (
    .C(clk_BUFGP_14),
    .D(bouncy_btns_4_IBUF_0),
    .Q(\btns/l_btn/btn_vals [0])
  );
  FD   \btns/b_btn/btn_vals_99  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [98]),
    .Q(\btns/b_btn/btn_vals [99])
  );
  FD   \btns/b_btn/btn_vals_98  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [97]),
    .Q(\btns/b_btn/btn_vals [98])
  );
  FD   \btns/b_btn/btn_vals_97  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [96]),
    .Q(\btns/b_btn/btn_vals [97])
  );
  FD   \btns/b_btn/btn_vals_96  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [95]),
    .Q(\btns/b_btn/btn_vals [96])
  );
  FD   \btns/b_btn/btn_vals_95  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [94]),
    .Q(\btns/b_btn/btn_vals [95])
  );
  FD   \btns/b_btn/btn_vals_94  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [93]),
    .Q(\btns/b_btn/btn_vals [94])
  );
  FD   \btns/b_btn/btn_vals_93  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [92]),
    .Q(\btns/b_btn/btn_vals [93])
  );
  FD   \btns/b_btn/btn_vals_92  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [91]),
    .Q(\btns/b_btn/btn_vals [92])
  );
  FD   \btns/b_btn/btn_vals_91  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [90]),
    .Q(\btns/b_btn/btn_vals [91])
  );
  FD   \btns/b_btn/btn_vals_90  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [89]),
    .Q(\btns/b_btn/btn_vals [90])
  );
  FD   \btns/b_btn/btn_vals_89  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [88]),
    .Q(\btns/b_btn/btn_vals [89])
  );
  FD   \btns/b_btn/btn_vals_88  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [87]),
    .Q(\btns/b_btn/btn_vals [88])
  );
  FD   \btns/b_btn/btn_vals_87  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [86]),
    .Q(\btns/b_btn/btn_vals [87])
  );
  FD   \btns/b_btn/btn_vals_86  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [85]),
    .Q(\btns/b_btn/btn_vals [86])
  );
  FD   \btns/b_btn/btn_vals_85  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [84]),
    .Q(\btns/b_btn/btn_vals [85])
  );
  FD   \btns/b_btn/btn_vals_84  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [83]),
    .Q(\btns/b_btn/btn_vals [84])
  );
  FD   \btns/b_btn/btn_vals_83  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [82]),
    .Q(\btns/b_btn/btn_vals [83])
  );
  FD   \btns/b_btn/btn_vals_82  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [81]),
    .Q(\btns/b_btn/btn_vals [82])
  );
  FD   \btns/b_btn/btn_vals_81  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [80]),
    .Q(\btns/b_btn/btn_vals [81])
  );
  FD   \btns/b_btn/btn_vals_80  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [79]),
    .Q(\btns/b_btn/btn_vals [80])
  );
  FD   \btns/b_btn/btn_vals_79  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [78]),
    .Q(\btns/b_btn/btn_vals [79])
  );
  FD   \btns/b_btn/btn_vals_78  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [77]),
    .Q(\btns/b_btn/btn_vals [78])
  );
  FD   \btns/b_btn/btn_vals_77  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [76]),
    .Q(\btns/b_btn/btn_vals [77])
  );
  FD   \btns/b_btn/btn_vals_76  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [75]),
    .Q(\btns/b_btn/btn_vals [76])
  );
  FD   \btns/b_btn/btn_vals_75  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [74]),
    .Q(\btns/b_btn/btn_vals [75])
  );
  FD   \btns/b_btn/btn_vals_74  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [73]),
    .Q(\btns/b_btn/btn_vals [74])
  );
  FD   \btns/b_btn/btn_vals_73  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [72]),
    .Q(\btns/b_btn/btn_vals [73])
  );
  FD   \btns/b_btn/btn_vals_72  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [71]),
    .Q(\btns/b_btn/btn_vals [72])
  );
  FD   \btns/b_btn/btn_vals_71  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [70]),
    .Q(\btns/b_btn/btn_vals [71])
  );
  FD   \btns/b_btn/btn_vals_70  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [69]),
    .Q(\btns/b_btn/btn_vals [70])
  );
  FD   \btns/b_btn/btn_vals_69  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [68]),
    .Q(\btns/b_btn/btn_vals [69])
  );
  FD   \btns/b_btn/btn_vals_68  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [67]),
    .Q(\btns/b_btn/btn_vals [68])
  );
  FD   \btns/b_btn/btn_vals_67  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [66]),
    .Q(\btns/b_btn/btn_vals [67])
  );
  FD   \btns/b_btn/btn_vals_66  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [65]),
    .Q(\btns/b_btn/btn_vals [66])
  );
  FD   \btns/b_btn/btn_vals_65  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [64]),
    .Q(\btns/b_btn/btn_vals [65])
  );
  FD   \btns/b_btn/btn_vals_64  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [63]),
    .Q(\btns/b_btn/btn_vals [64])
  );
  FD   \btns/b_btn/btn_vals_63  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [62]),
    .Q(\btns/b_btn/btn_vals [63])
  );
  FD   \btns/b_btn/btn_vals_62  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [61]),
    .Q(\btns/b_btn/btn_vals [62])
  );
  FD   \btns/b_btn/btn_vals_61  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [60]),
    .Q(\btns/b_btn/btn_vals [61])
  );
  FD   \btns/b_btn/btn_vals_60  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [59]),
    .Q(\btns/b_btn/btn_vals [60])
  );
  FD   \btns/b_btn/btn_vals_59  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [58]),
    .Q(\btns/b_btn/btn_vals [59])
  );
  FD   \btns/b_btn/btn_vals_58  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [57]),
    .Q(\btns/b_btn/btn_vals [58])
  );
  FD   \btns/b_btn/btn_vals_57  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [56]),
    .Q(\btns/b_btn/btn_vals [57])
  );
  FD   \btns/b_btn/btn_vals_56  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [55]),
    .Q(\btns/b_btn/btn_vals [56])
  );
  FD   \btns/b_btn/btn_vals_55  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [54]),
    .Q(\btns/b_btn/btn_vals [55])
  );
  FD   \btns/b_btn/btn_vals_54  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [53]),
    .Q(\btns/b_btn/btn_vals [54])
  );
  FD   \btns/b_btn/btn_vals_53  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [52]),
    .Q(\btns/b_btn/btn_vals [53])
  );
  FD   \btns/b_btn/btn_vals_52  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [51]),
    .Q(\btns/b_btn/btn_vals [52])
  );
  FD   \btns/b_btn/btn_vals_51  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [50]),
    .Q(\btns/b_btn/btn_vals [51])
  );
  FD   \btns/b_btn/btn_vals_50  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [49]),
    .Q(\btns/b_btn/btn_vals [50])
  );
  FD   \btns/b_btn/btn_vals_49  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [48]),
    .Q(\btns/b_btn/btn_vals [49])
  );
  FD   \btns/b_btn/btn_vals_48  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [47]),
    .Q(\btns/b_btn/btn_vals [48])
  );
  FD   \btns/b_btn/btn_vals_47  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [46]),
    .Q(\btns/b_btn/btn_vals [47])
  );
  FD   \btns/b_btn/btn_vals_46  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [45]),
    .Q(\btns/b_btn/btn_vals [46])
  );
  FD   \btns/b_btn/btn_vals_45  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [44]),
    .Q(\btns/b_btn/btn_vals [45])
  );
  FD   \btns/b_btn/btn_vals_44  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [43]),
    .Q(\btns/b_btn/btn_vals [44])
  );
  FD   \btns/b_btn/btn_vals_43  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [42]),
    .Q(\btns/b_btn/btn_vals [43])
  );
  FD   \btns/b_btn/btn_vals_42  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [41]),
    .Q(\btns/b_btn/btn_vals [42])
  );
  FD   \btns/b_btn/btn_vals_41  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [40]),
    .Q(\btns/b_btn/btn_vals [41])
  );
  FD   \btns/b_btn/btn_vals_40  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [39]),
    .Q(\btns/b_btn/btn_vals [40])
  );
  FD   \btns/b_btn/btn_vals_39  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [38]),
    .Q(\btns/b_btn/btn_vals [39])
  );
  FD   \btns/b_btn/btn_vals_38  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [37]),
    .Q(\btns/b_btn/btn_vals [38])
  );
  FD   \btns/b_btn/btn_vals_37  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [36]),
    .Q(\btns/b_btn/btn_vals [37])
  );
  FD   \btns/b_btn/btn_vals_36  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [35]),
    .Q(\btns/b_btn/btn_vals [36])
  );
  FD   \btns/b_btn/btn_vals_35  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [34]),
    .Q(\btns/b_btn/btn_vals [35])
  );
  FD   \btns/b_btn/btn_vals_34  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [33]),
    .Q(\btns/b_btn/btn_vals [34])
  );
  FD   \btns/b_btn/btn_vals_33  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [32]),
    .Q(\btns/b_btn/btn_vals [33])
  );
  FD   \btns/b_btn/btn_vals_32  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [31]),
    .Q(\btns/b_btn/btn_vals [32])
  );
  FD   \btns/b_btn/btn_vals_31  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [30]),
    .Q(\btns/b_btn/btn_vals [31])
  );
  FD   \btns/b_btn/btn_vals_30  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [29]),
    .Q(\btns/b_btn/btn_vals [30])
  );
  FD   \btns/b_btn/btn_vals_29  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [28]),
    .Q(\btns/b_btn/btn_vals [29])
  );
  FD   \btns/b_btn/btn_vals_28  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [27]),
    .Q(\btns/b_btn/btn_vals [28])
  );
  FD   \btns/b_btn/btn_vals_27  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [26]),
    .Q(\btns/b_btn/btn_vals [27])
  );
  FD   \btns/b_btn/btn_vals_26  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [25]),
    .Q(\btns/b_btn/btn_vals [26])
  );
  FD   \btns/b_btn/btn_vals_25  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [24]),
    .Q(\btns/b_btn/btn_vals [25])
  );
  FD   \btns/b_btn/btn_vals_24  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [23]),
    .Q(\btns/b_btn/btn_vals [24])
  );
  FD   \btns/b_btn/btn_vals_23  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [22]),
    .Q(\btns/b_btn/btn_vals [23])
  );
  FD   \btns/b_btn/btn_vals_22  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [21]),
    .Q(\btns/b_btn/btn_vals [22])
  );
  FD   \btns/b_btn/btn_vals_21  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [20]),
    .Q(\btns/b_btn/btn_vals [21])
  );
  FD   \btns/b_btn/btn_vals_20  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [19]),
    .Q(\btns/b_btn/btn_vals [20])
  );
  FD   \btns/b_btn/btn_vals_19  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [18]),
    .Q(\btns/b_btn/btn_vals [19])
  );
  FD   \btns/b_btn/btn_vals_18  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [17]),
    .Q(\btns/b_btn/btn_vals [18])
  );
  FD   \btns/b_btn/btn_vals_17  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [16]),
    .Q(\btns/b_btn/btn_vals [17])
  );
  FD   \btns/b_btn/btn_vals_16  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [15]),
    .Q(\btns/b_btn/btn_vals [16])
  );
  FD   \btns/b_btn/btn_vals_15  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [14]),
    .Q(\btns/b_btn/btn_vals [15])
  );
  FD   \btns/b_btn/btn_vals_14  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [13]),
    .Q(\btns/b_btn/btn_vals [14])
  );
  FD   \btns/b_btn/btn_vals_13  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [12]),
    .Q(\btns/b_btn/btn_vals [13])
  );
  FD   \btns/b_btn/btn_vals_12  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [11]),
    .Q(\btns/b_btn/btn_vals [12])
  );
  FD   \btns/b_btn/btn_vals_11  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [10]),
    .Q(\btns/b_btn/btn_vals [11])
  );
  FD   \btns/b_btn/btn_vals_10  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [9]),
    .Q(\btns/b_btn/btn_vals [10])
  );
  FD   \btns/b_btn/btn_vals_9  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [8]),
    .Q(\btns/b_btn/btn_vals [9])
  );
  FD   \btns/b_btn/btn_vals_8  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [7]),
    .Q(\btns/b_btn/btn_vals [8])
  );
  FD   \btns/b_btn/btn_vals_7  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [6]),
    .Q(\btns/b_btn/btn_vals [7])
  );
  FD   \btns/b_btn/btn_vals_6  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [5]),
    .Q(\btns/b_btn/btn_vals [6])
  );
  FD   \btns/b_btn/btn_vals_5  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [4]),
    .Q(\btns/b_btn/btn_vals [5])
  );
  FD   \btns/b_btn/btn_vals_4  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [3]),
    .Q(\btns/b_btn/btn_vals [4])
  );
  FD   \btns/b_btn/btn_vals_3  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [2]),
    .Q(\btns/b_btn/btn_vals [3])
  );
  FD   \btns/b_btn/btn_vals_2  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [1]),
    .Q(\btns/b_btn/btn_vals [2])
  );
  FD   \btns/b_btn/btn_vals_1  (
    .C(clk_BUFGP_14),
    .D(\btns/b_btn/btn_vals [0]),
    .Q(\btns/b_btn/btn_vals [1])
  );
  FD   \btns/b_btn/btn_vals_0  (
    .C(clk_BUFGP_14),
    .D(bouncy_btns_3_IBUF_1),
    .Q(\btns/b_btn/btn_vals [0])
  );
  FD   \btns/r_btn/btn_vals_99  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [98]),
    .Q(\btns/r_btn/btn_vals [99])
  );
  FD   \btns/r_btn/btn_vals_98  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [97]),
    .Q(\btns/r_btn/btn_vals [98])
  );
  FD   \btns/r_btn/btn_vals_97  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [96]),
    .Q(\btns/r_btn/btn_vals [97])
  );
  FD   \btns/r_btn/btn_vals_96  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [95]),
    .Q(\btns/r_btn/btn_vals [96])
  );
  FD   \btns/r_btn/btn_vals_95  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [94]),
    .Q(\btns/r_btn/btn_vals [95])
  );
  FD   \btns/r_btn/btn_vals_94  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [93]),
    .Q(\btns/r_btn/btn_vals [94])
  );
  FD   \btns/r_btn/btn_vals_93  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [92]),
    .Q(\btns/r_btn/btn_vals [93])
  );
  FD   \btns/r_btn/btn_vals_92  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [91]),
    .Q(\btns/r_btn/btn_vals [92])
  );
  FD   \btns/r_btn/btn_vals_91  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [90]),
    .Q(\btns/r_btn/btn_vals [91])
  );
  FD   \btns/r_btn/btn_vals_90  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [89]),
    .Q(\btns/r_btn/btn_vals [90])
  );
  FD   \btns/r_btn/btn_vals_89  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [88]),
    .Q(\btns/r_btn/btn_vals [89])
  );
  FD   \btns/r_btn/btn_vals_88  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [87]),
    .Q(\btns/r_btn/btn_vals [88])
  );
  FD   \btns/r_btn/btn_vals_87  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [86]),
    .Q(\btns/r_btn/btn_vals [87])
  );
  FD   \btns/r_btn/btn_vals_86  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [85]),
    .Q(\btns/r_btn/btn_vals [86])
  );
  FD   \btns/r_btn/btn_vals_85  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [84]),
    .Q(\btns/r_btn/btn_vals [85])
  );
  FD   \btns/r_btn/btn_vals_84  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [83]),
    .Q(\btns/r_btn/btn_vals [84])
  );
  FD   \btns/r_btn/btn_vals_83  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [82]),
    .Q(\btns/r_btn/btn_vals [83])
  );
  FD   \btns/r_btn/btn_vals_82  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [81]),
    .Q(\btns/r_btn/btn_vals [82])
  );
  FD   \btns/r_btn/btn_vals_81  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [80]),
    .Q(\btns/r_btn/btn_vals [81])
  );
  FD   \btns/r_btn/btn_vals_80  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [79]),
    .Q(\btns/r_btn/btn_vals [80])
  );
  FD   \btns/r_btn/btn_vals_79  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [78]),
    .Q(\btns/r_btn/btn_vals [79])
  );
  FD   \btns/r_btn/btn_vals_78  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [77]),
    .Q(\btns/r_btn/btn_vals [78])
  );
  FD   \btns/r_btn/btn_vals_77  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [76]),
    .Q(\btns/r_btn/btn_vals [77])
  );
  FD   \btns/r_btn/btn_vals_76  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [75]),
    .Q(\btns/r_btn/btn_vals [76])
  );
  FD   \btns/r_btn/btn_vals_75  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [74]),
    .Q(\btns/r_btn/btn_vals [75])
  );
  FD   \btns/r_btn/btn_vals_74  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [73]),
    .Q(\btns/r_btn/btn_vals [74])
  );
  FD   \btns/r_btn/btn_vals_73  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [72]),
    .Q(\btns/r_btn/btn_vals [73])
  );
  FD   \btns/r_btn/btn_vals_72  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [71]),
    .Q(\btns/r_btn/btn_vals [72])
  );
  FD   \btns/r_btn/btn_vals_71  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [70]),
    .Q(\btns/r_btn/btn_vals [71])
  );
  FD   \btns/r_btn/btn_vals_70  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [69]),
    .Q(\btns/r_btn/btn_vals [70])
  );
  FD   \btns/r_btn/btn_vals_69  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [68]),
    .Q(\btns/r_btn/btn_vals [69])
  );
  FD   \btns/r_btn/btn_vals_68  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [67]),
    .Q(\btns/r_btn/btn_vals [68])
  );
  FD   \btns/r_btn/btn_vals_67  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [66]),
    .Q(\btns/r_btn/btn_vals [67])
  );
  FD   \btns/r_btn/btn_vals_66  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [65]),
    .Q(\btns/r_btn/btn_vals [66])
  );
  FD   \btns/r_btn/btn_vals_65  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [64]),
    .Q(\btns/r_btn/btn_vals [65])
  );
  FD   \btns/r_btn/btn_vals_64  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [63]),
    .Q(\btns/r_btn/btn_vals [64])
  );
  FD   \btns/r_btn/btn_vals_63  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [62]),
    .Q(\btns/r_btn/btn_vals [63])
  );
  FD   \btns/r_btn/btn_vals_62  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [61]),
    .Q(\btns/r_btn/btn_vals [62])
  );
  FD   \btns/r_btn/btn_vals_61  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [60]),
    .Q(\btns/r_btn/btn_vals [61])
  );
  FD   \btns/r_btn/btn_vals_60  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [59]),
    .Q(\btns/r_btn/btn_vals [60])
  );
  FD   \btns/r_btn/btn_vals_59  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [58]),
    .Q(\btns/r_btn/btn_vals [59])
  );
  FD   \btns/r_btn/btn_vals_58  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [57]),
    .Q(\btns/r_btn/btn_vals [58])
  );
  FD   \btns/r_btn/btn_vals_57  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [56]),
    .Q(\btns/r_btn/btn_vals [57])
  );
  FD   \btns/r_btn/btn_vals_56  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [55]),
    .Q(\btns/r_btn/btn_vals [56])
  );
  FD   \btns/r_btn/btn_vals_55  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [54]),
    .Q(\btns/r_btn/btn_vals [55])
  );
  FD   \btns/r_btn/btn_vals_54  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [53]),
    .Q(\btns/r_btn/btn_vals [54])
  );
  FD   \btns/r_btn/btn_vals_53  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [52]),
    .Q(\btns/r_btn/btn_vals [53])
  );
  FD   \btns/r_btn/btn_vals_52  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [51]),
    .Q(\btns/r_btn/btn_vals [52])
  );
  FD   \btns/r_btn/btn_vals_51  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [50]),
    .Q(\btns/r_btn/btn_vals [51])
  );
  FD   \btns/r_btn/btn_vals_50  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [49]),
    .Q(\btns/r_btn/btn_vals [50])
  );
  FD   \btns/r_btn/btn_vals_49  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [48]),
    .Q(\btns/r_btn/btn_vals [49])
  );
  FD   \btns/r_btn/btn_vals_48  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [47]),
    .Q(\btns/r_btn/btn_vals [48])
  );
  FD   \btns/r_btn/btn_vals_47  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [46]),
    .Q(\btns/r_btn/btn_vals [47])
  );
  FD   \btns/r_btn/btn_vals_46  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [45]),
    .Q(\btns/r_btn/btn_vals [46])
  );
  FD   \btns/r_btn/btn_vals_45  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [44]),
    .Q(\btns/r_btn/btn_vals [45])
  );
  FD   \btns/r_btn/btn_vals_44  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [43]),
    .Q(\btns/r_btn/btn_vals [44])
  );
  FD   \btns/r_btn/btn_vals_43  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [42]),
    .Q(\btns/r_btn/btn_vals [43])
  );
  FD   \btns/r_btn/btn_vals_42  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [41]),
    .Q(\btns/r_btn/btn_vals [42])
  );
  FD   \btns/r_btn/btn_vals_41  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [40]),
    .Q(\btns/r_btn/btn_vals [41])
  );
  FD   \btns/r_btn/btn_vals_40  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [39]),
    .Q(\btns/r_btn/btn_vals [40])
  );
  FD   \btns/r_btn/btn_vals_39  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [38]),
    .Q(\btns/r_btn/btn_vals [39])
  );
  FD   \btns/r_btn/btn_vals_38  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [37]),
    .Q(\btns/r_btn/btn_vals [38])
  );
  FD   \btns/r_btn/btn_vals_37  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [36]),
    .Q(\btns/r_btn/btn_vals [37])
  );
  FD   \btns/r_btn/btn_vals_36  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [35]),
    .Q(\btns/r_btn/btn_vals [36])
  );
  FD   \btns/r_btn/btn_vals_35  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [34]),
    .Q(\btns/r_btn/btn_vals [35])
  );
  FD   \btns/r_btn/btn_vals_34  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [33]),
    .Q(\btns/r_btn/btn_vals [34])
  );
  FD   \btns/r_btn/btn_vals_33  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [32]),
    .Q(\btns/r_btn/btn_vals [33])
  );
  FD   \btns/r_btn/btn_vals_32  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [31]),
    .Q(\btns/r_btn/btn_vals [32])
  );
  FD   \btns/r_btn/btn_vals_31  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [30]),
    .Q(\btns/r_btn/btn_vals [31])
  );
  FD   \btns/r_btn/btn_vals_30  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [29]),
    .Q(\btns/r_btn/btn_vals [30])
  );
  FD   \btns/r_btn/btn_vals_29  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [28]),
    .Q(\btns/r_btn/btn_vals [29])
  );
  FD   \btns/r_btn/btn_vals_28  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [27]),
    .Q(\btns/r_btn/btn_vals [28])
  );
  FD   \btns/r_btn/btn_vals_27  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [26]),
    .Q(\btns/r_btn/btn_vals [27])
  );
  FD   \btns/r_btn/btn_vals_26  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [25]),
    .Q(\btns/r_btn/btn_vals [26])
  );
  FD   \btns/r_btn/btn_vals_25  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [24]),
    .Q(\btns/r_btn/btn_vals [25])
  );
  FD   \btns/r_btn/btn_vals_24  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [23]),
    .Q(\btns/r_btn/btn_vals [24])
  );
  FD   \btns/r_btn/btn_vals_23  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [22]),
    .Q(\btns/r_btn/btn_vals [23])
  );
  FD   \btns/r_btn/btn_vals_22  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [21]),
    .Q(\btns/r_btn/btn_vals [22])
  );
  FD   \btns/r_btn/btn_vals_21  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [20]),
    .Q(\btns/r_btn/btn_vals [21])
  );
  FD   \btns/r_btn/btn_vals_20  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [19]),
    .Q(\btns/r_btn/btn_vals [20])
  );
  FD   \btns/r_btn/btn_vals_19  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [18]),
    .Q(\btns/r_btn/btn_vals [19])
  );
  FD   \btns/r_btn/btn_vals_18  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [17]),
    .Q(\btns/r_btn/btn_vals [18])
  );
  FD   \btns/r_btn/btn_vals_17  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [16]),
    .Q(\btns/r_btn/btn_vals [17])
  );
  FD   \btns/r_btn/btn_vals_16  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [15]),
    .Q(\btns/r_btn/btn_vals [16])
  );
  FD   \btns/r_btn/btn_vals_15  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [14]),
    .Q(\btns/r_btn/btn_vals [15])
  );
  FD   \btns/r_btn/btn_vals_14  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [13]),
    .Q(\btns/r_btn/btn_vals [14])
  );
  FD   \btns/r_btn/btn_vals_13  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [12]),
    .Q(\btns/r_btn/btn_vals [13])
  );
  FD   \btns/r_btn/btn_vals_12  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [11]),
    .Q(\btns/r_btn/btn_vals [12])
  );
  FD   \btns/r_btn/btn_vals_11  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [10]),
    .Q(\btns/r_btn/btn_vals [11])
  );
  FD   \btns/r_btn/btn_vals_10  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [9]),
    .Q(\btns/r_btn/btn_vals [10])
  );
  FD   \btns/r_btn/btn_vals_9  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [8]),
    .Q(\btns/r_btn/btn_vals [9])
  );
  FD   \btns/r_btn/btn_vals_8  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [7]),
    .Q(\btns/r_btn/btn_vals [8])
  );
  FD   \btns/r_btn/btn_vals_7  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [6]),
    .Q(\btns/r_btn/btn_vals [7])
  );
  FD   \btns/r_btn/btn_vals_6  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [5]),
    .Q(\btns/r_btn/btn_vals [6])
  );
  FD   \btns/r_btn/btn_vals_5  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [4]),
    .Q(\btns/r_btn/btn_vals [5])
  );
  FD   \btns/r_btn/btn_vals_4  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [3]),
    .Q(\btns/r_btn/btn_vals [4])
  );
  FD   \btns/r_btn/btn_vals_3  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [2]),
    .Q(\btns/r_btn/btn_vals [3])
  );
  FD   \btns/r_btn/btn_vals_2  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [1]),
    .Q(\btns/r_btn/btn_vals [2])
  );
  FD   \btns/r_btn/btn_vals_1  (
    .C(clk_BUFGP_14),
    .D(\btns/r_btn/btn_vals [0]),
    .Q(\btns/r_btn/btn_vals [1])
  );
  FD   \btns/r_btn/btn_vals_0  (
    .C(clk_BUFGP_14),
    .D(bouncy_btns_2_IBUF_2),
    .Q(\btns/r_btn/btn_vals [0])
  );
  FD   \btns/t_btn/btn_vals_99  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [98]),
    .Q(\btns/t_btn/btn_vals [99])
  );
  FD   \btns/t_btn/btn_vals_98  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [97]),
    .Q(\btns/t_btn/btn_vals [98])
  );
  FD   \btns/t_btn/btn_vals_97  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [96]),
    .Q(\btns/t_btn/btn_vals [97])
  );
  FD   \btns/t_btn/btn_vals_96  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [95]),
    .Q(\btns/t_btn/btn_vals [96])
  );
  FD   \btns/t_btn/btn_vals_95  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [94]),
    .Q(\btns/t_btn/btn_vals [95])
  );
  FD   \btns/t_btn/btn_vals_94  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [93]),
    .Q(\btns/t_btn/btn_vals [94])
  );
  FD   \btns/t_btn/btn_vals_93  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [92]),
    .Q(\btns/t_btn/btn_vals [93])
  );
  FD   \btns/t_btn/btn_vals_92  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [91]),
    .Q(\btns/t_btn/btn_vals [92])
  );
  FD   \btns/t_btn/btn_vals_91  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [90]),
    .Q(\btns/t_btn/btn_vals [91])
  );
  FD   \btns/t_btn/btn_vals_90  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [89]),
    .Q(\btns/t_btn/btn_vals [90])
  );
  FD   \btns/t_btn/btn_vals_89  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [88]),
    .Q(\btns/t_btn/btn_vals [89])
  );
  FD   \btns/t_btn/btn_vals_88  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [87]),
    .Q(\btns/t_btn/btn_vals [88])
  );
  FD   \btns/t_btn/btn_vals_87  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [86]),
    .Q(\btns/t_btn/btn_vals [87])
  );
  FD   \btns/t_btn/btn_vals_86  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [85]),
    .Q(\btns/t_btn/btn_vals [86])
  );
  FD   \btns/t_btn/btn_vals_85  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [84]),
    .Q(\btns/t_btn/btn_vals [85])
  );
  FD   \btns/t_btn/btn_vals_84  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [83]),
    .Q(\btns/t_btn/btn_vals [84])
  );
  FD   \btns/t_btn/btn_vals_83  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [82]),
    .Q(\btns/t_btn/btn_vals [83])
  );
  FD   \btns/t_btn/btn_vals_82  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [81]),
    .Q(\btns/t_btn/btn_vals [82])
  );
  FD   \btns/t_btn/btn_vals_81  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [80]),
    .Q(\btns/t_btn/btn_vals [81])
  );
  FD   \btns/t_btn/btn_vals_80  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [79]),
    .Q(\btns/t_btn/btn_vals [80])
  );
  FD   \btns/t_btn/btn_vals_79  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [78]),
    .Q(\btns/t_btn/btn_vals [79])
  );
  FD   \btns/t_btn/btn_vals_78  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [77]),
    .Q(\btns/t_btn/btn_vals [78])
  );
  FD   \btns/t_btn/btn_vals_77  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [76]),
    .Q(\btns/t_btn/btn_vals [77])
  );
  FD   \btns/t_btn/btn_vals_76  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [75]),
    .Q(\btns/t_btn/btn_vals [76])
  );
  FD   \btns/t_btn/btn_vals_75  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [74]),
    .Q(\btns/t_btn/btn_vals [75])
  );
  FD   \btns/t_btn/btn_vals_74  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [73]),
    .Q(\btns/t_btn/btn_vals [74])
  );
  FD   \btns/t_btn/btn_vals_73  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [72]),
    .Q(\btns/t_btn/btn_vals [73])
  );
  FD   \btns/t_btn/btn_vals_72  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [71]),
    .Q(\btns/t_btn/btn_vals [72])
  );
  FD   \btns/t_btn/btn_vals_71  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [70]),
    .Q(\btns/t_btn/btn_vals [71])
  );
  FD   \btns/t_btn/btn_vals_70  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [69]),
    .Q(\btns/t_btn/btn_vals [70])
  );
  FD   \btns/t_btn/btn_vals_69  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [68]),
    .Q(\btns/t_btn/btn_vals [69])
  );
  FD   \btns/t_btn/btn_vals_68  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [67]),
    .Q(\btns/t_btn/btn_vals [68])
  );
  FD   \btns/t_btn/btn_vals_67  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [66]),
    .Q(\btns/t_btn/btn_vals [67])
  );
  FD   \btns/t_btn/btn_vals_66  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [65]),
    .Q(\btns/t_btn/btn_vals [66])
  );
  FD   \btns/t_btn/btn_vals_65  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [64]),
    .Q(\btns/t_btn/btn_vals [65])
  );
  FD   \btns/t_btn/btn_vals_64  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [63]),
    .Q(\btns/t_btn/btn_vals [64])
  );
  FD   \btns/t_btn/btn_vals_63  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [62]),
    .Q(\btns/t_btn/btn_vals [63])
  );
  FD   \btns/t_btn/btn_vals_62  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [61]),
    .Q(\btns/t_btn/btn_vals [62])
  );
  FD   \btns/t_btn/btn_vals_61  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [60]),
    .Q(\btns/t_btn/btn_vals [61])
  );
  FD   \btns/t_btn/btn_vals_60  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [59]),
    .Q(\btns/t_btn/btn_vals [60])
  );
  FD   \btns/t_btn/btn_vals_59  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [58]),
    .Q(\btns/t_btn/btn_vals [59])
  );
  FD   \btns/t_btn/btn_vals_58  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [57]),
    .Q(\btns/t_btn/btn_vals [58])
  );
  FD   \btns/t_btn/btn_vals_57  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [56]),
    .Q(\btns/t_btn/btn_vals [57])
  );
  FD   \btns/t_btn/btn_vals_56  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [55]),
    .Q(\btns/t_btn/btn_vals [56])
  );
  FD   \btns/t_btn/btn_vals_55  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [54]),
    .Q(\btns/t_btn/btn_vals [55])
  );
  FD   \btns/t_btn/btn_vals_54  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [53]),
    .Q(\btns/t_btn/btn_vals [54])
  );
  FD   \btns/t_btn/btn_vals_53  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [52]),
    .Q(\btns/t_btn/btn_vals [53])
  );
  FD   \btns/t_btn/btn_vals_52  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [51]),
    .Q(\btns/t_btn/btn_vals [52])
  );
  FD   \btns/t_btn/btn_vals_51  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [50]),
    .Q(\btns/t_btn/btn_vals [51])
  );
  FD   \btns/t_btn/btn_vals_50  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [49]),
    .Q(\btns/t_btn/btn_vals [50])
  );
  FD   \btns/t_btn/btn_vals_49  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [48]),
    .Q(\btns/t_btn/btn_vals [49])
  );
  FD   \btns/t_btn/btn_vals_48  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [47]),
    .Q(\btns/t_btn/btn_vals [48])
  );
  FD   \btns/t_btn/btn_vals_47  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [46]),
    .Q(\btns/t_btn/btn_vals [47])
  );
  FD   \btns/t_btn/btn_vals_46  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [45]),
    .Q(\btns/t_btn/btn_vals [46])
  );
  FD   \btns/t_btn/btn_vals_45  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [44]),
    .Q(\btns/t_btn/btn_vals [45])
  );
  FD   \btns/t_btn/btn_vals_44  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [43]),
    .Q(\btns/t_btn/btn_vals [44])
  );
  FD   \btns/t_btn/btn_vals_43  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [42]),
    .Q(\btns/t_btn/btn_vals [43])
  );
  FD   \btns/t_btn/btn_vals_42  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [41]),
    .Q(\btns/t_btn/btn_vals [42])
  );
  FD   \btns/t_btn/btn_vals_41  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [40]),
    .Q(\btns/t_btn/btn_vals [41])
  );
  FD   \btns/t_btn/btn_vals_40  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [39]),
    .Q(\btns/t_btn/btn_vals [40])
  );
  FD   \btns/t_btn/btn_vals_39  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [38]),
    .Q(\btns/t_btn/btn_vals [39])
  );
  FD   \btns/t_btn/btn_vals_38  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [37]),
    .Q(\btns/t_btn/btn_vals [38])
  );
  FD   \btns/t_btn/btn_vals_37  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [36]),
    .Q(\btns/t_btn/btn_vals [37])
  );
  FD   \btns/t_btn/btn_vals_36  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [35]),
    .Q(\btns/t_btn/btn_vals [36])
  );
  FD   \btns/t_btn/btn_vals_35  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [34]),
    .Q(\btns/t_btn/btn_vals [35])
  );
  FD   \btns/t_btn/btn_vals_34  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [33]),
    .Q(\btns/t_btn/btn_vals [34])
  );
  FD   \btns/t_btn/btn_vals_33  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [32]),
    .Q(\btns/t_btn/btn_vals [33])
  );
  FD   \btns/t_btn/btn_vals_32  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [31]),
    .Q(\btns/t_btn/btn_vals [32])
  );
  FD   \btns/t_btn/btn_vals_31  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [30]),
    .Q(\btns/t_btn/btn_vals [31])
  );
  FD   \btns/t_btn/btn_vals_30  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [29]),
    .Q(\btns/t_btn/btn_vals [30])
  );
  FD   \btns/t_btn/btn_vals_29  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [28]),
    .Q(\btns/t_btn/btn_vals [29])
  );
  FD   \btns/t_btn/btn_vals_28  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [27]),
    .Q(\btns/t_btn/btn_vals [28])
  );
  FD   \btns/t_btn/btn_vals_27  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [26]),
    .Q(\btns/t_btn/btn_vals [27])
  );
  FD   \btns/t_btn/btn_vals_26  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [25]),
    .Q(\btns/t_btn/btn_vals [26])
  );
  FD   \btns/t_btn/btn_vals_25  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [24]),
    .Q(\btns/t_btn/btn_vals [25])
  );
  FD   \btns/t_btn/btn_vals_24  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [23]),
    .Q(\btns/t_btn/btn_vals [24])
  );
  FD   \btns/t_btn/btn_vals_23  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [22]),
    .Q(\btns/t_btn/btn_vals [23])
  );
  FD   \btns/t_btn/btn_vals_22  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [21]),
    .Q(\btns/t_btn/btn_vals [22])
  );
  FD   \btns/t_btn/btn_vals_21  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [20]),
    .Q(\btns/t_btn/btn_vals [21])
  );
  FD   \btns/t_btn/btn_vals_20  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [19]),
    .Q(\btns/t_btn/btn_vals [20])
  );
  FD   \btns/t_btn/btn_vals_19  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [18]),
    .Q(\btns/t_btn/btn_vals [19])
  );
  FD   \btns/t_btn/btn_vals_18  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [17]),
    .Q(\btns/t_btn/btn_vals [18])
  );
  FD   \btns/t_btn/btn_vals_17  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [16]),
    .Q(\btns/t_btn/btn_vals [17])
  );
  FD   \btns/t_btn/btn_vals_16  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [15]),
    .Q(\btns/t_btn/btn_vals [16])
  );
  FD   \btns/t_btn/btn_vals_15  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [14]),
    .Q(\btns/t_btn/btn_vals [15])
  );
  FD   \btns/t_btn/btn_vals_14  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [13]),
    .Q(\btns/t_btn/btn_vals [14])
  );
  FD   \btns/t_btn/btn_vals_13  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [12]),
    .Q(\btns/t_btn/btn_vals [13])
  );
  FD   \btns/t_btn/btn_vals_12  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [11]),
    .Q(\btns/t_btn/btn_vals [12])
  );
  FD   \btns/t_btn/btn_vals_11  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [10]),
    .Q(\btns/t_btn/btn_vals [11])
  );
  FD   \btns/t_btn/btn_vals_10  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [9]),
    .Q(\btns/t_btn/btn_vals [10])
  );
  FD   \btns/t_btn/btn_vals_9  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [8]),
    .Q(\btns/t_btn/btn_vals [9])
  );
  FD   \btns/t_btn/btn_vals_8  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [7]),
    .Q(\btns/t_btn/btn_vals [8])
  );
  FD   \btns/t_btn/btn_vals_7  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [6]),
    .Q(\btns/t_btn/btn_vals [7])
  );
  FD   \btns/t_btn/btn_vals_6  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [5]),
    .Q(\btns/t_btn/btn_vals [6])
  );
  FD   \btns/t_btn/btn_vals_5  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [4]),
    .Q(\btns/t_btn/btn_vals [5])
  );
  FD   \btns/t_btn/btn_vals_4  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [3]),
    .Q(\btns/t_btn/btn_vals [4])
  );
  FD   \btns/t_btn/btn_vals_3  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [2]),
    .Q(\btns/t_btn/btn_vals [3])
  );
  FD   \btns/t_btn/btn_vals_2  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [1]),
    .Q(\btns/t_btn/btn_vals [2])
  );
  FD   \btns/t_btn/btn_vals_1  (
    .C(clk_BUFGP_14),
    .D(\btns/t_btn/btn_vals [0]),
    .Q(\btns/t_btn/btn_vals [1])
  );
  FD   \btns/t_btn/btn_vals_0  (
    .C(clk_BUFGP_14),
    .D(bouncy_btns_1_IBUF_3),
    .Q(\btns/t_btn/btn_vals [0])
  );
  FD   \btns/c_btn/btn_vals_99  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [98]),
    .Q(\btns/c_btn/btn_vals [99])
  );
  FD   \btns/c_btn/btn_vals_98  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [97]),
    .Q(\btns/c_btn/btn_vals [98])
  );
  FD   \btns/c_btn/btn_vals_97  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [96]),
    .Q(\btns/c_btn/btn_vals [97])
  );
  FD   \btns/c_btn/btn_vals_96  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [95]),
    .Q(\btns/c_btn/btn_vals [96])
  );
  FD   \btns/c_btn/btn_vals_95  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [94]),
    .Q(\btns/c_btn/btn_vals [95])
  );
  FD   \btns/c_btn/btn_vals_94  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [93]),
    .Q(\btns/c_btn/btn_vals [94])
  );
  FD   \btns/c_btn/btn_vals_93  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [92]),
    .Q(\btns/c_btn/btn_vals [93])
  );
  FD   \btns/c_btn/btn_vals_92  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [91]),
    .Q(\btns/c_btn/btn_vals [92])
  );
  FD   \btns/c_btn/btn_vals_91  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [90]),
    .Q(\btns/c_btn/btn_vals [91])
  );
  FD   \btns/c_btn/btn_vals_90  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [89]),
    .Q(\btns/c_btn/btn_vals [90])
  );
  FD   \btns/c_btn/btn_vals_89  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [88]),
    .Q(\btns/c_btn/btn_vals [89])
  );
  FD   \btns/c_btn/btn_vals_88  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [87]),
    .Q(\btns/c_btn/btn_vals [88])
  );
  FD   \btns/c_btn/btn_vals_87  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [86]),
    .Q(\btns/c_btn/btn_vals [87])
  );
  FD   \btns/c_btn/btn_vals_86  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [85]),
    .Q(\btns/c_btn/btn_vals [86])
  );
  FD   \btns/c_btn/btn_vals_85  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [84]),
    .Q(\btns/c_btn/btn_vals [85])
  );
  FD   \btns/c_btn/btn_vals_84  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [83]),
    .Q(\btns/c_btn/btn_vals [84])
  );
  FD   \btns/c_btn/btn_vals_83  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [82]),
    .Q(\btns/c_btn/btn_vals [83])
  );
  FD   \btns/c_btn/btn_vals_82  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [81]),
    .Q(\btns/c_btn/btn_vals [82])
  );
  FD   \btns/c_btn/btn_vals_81  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [80]),
    .Q(\btns/c_btn/btn_vals [81])
  );
  FD   \btns/c_btn/btn_vals_80  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [79]),
    .Q(\btns/c_btn/btn_vals [80])
  );
  FD   \btns/c_btn/btn_vals_79  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [78]),
    .Q(\btns/c_btn/btn_vals [79])
  );
  FD   \btns/c_btn/btn_vals_78  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [77]),
    .Q(\btns/c_btn/btn_vals [78])
  );
  FD   \btns/c_btn/btn_vals_77  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [76]),
    .Q(\btns/c_btn/btn_vals [77])
  );
  FD   \btns/c_btn/btn_vals_76  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [75]),
    .Q(\btns/c_btn/btn_vals [76])
  );
  FD   \btns/c_btn/btn_vals_75  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [74]),
    .Q(\btns/c_btn/btn_vals [75])
  );
  FD   \btns/c_btn/btn_vals_74  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [73]),
    .Q(\btns/c_btn/btn_vals [74])
  );
  FD   \btns/c_btn/btn_vals_73  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [72]),
    .Q(\btns/c_btn/btn_vals [73])
  );
  FD   \btns/c_btn/btn_vals_72  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [71]),
    .Q(\btns/c_btn/btn_vals [72])
  );
  FD   \btns/c_btn/btn_vals_71  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [70]),
    .Q(\btns/c_btn/btn_vals [71])
  );
  FD   \btns/c_btn/btn_vals_70  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [69]),
    .Q(\btns/c_btn/btn_vals [70])
  );
  FD   \btns/c_btn/btn_vals_69  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [68]),
    .Q(\btns/c_btn/btn_vals [69])
  );
  FD   \btns/c_btn/btn_vals_68  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [67]),
    .Q(\btns/c_btn/btn_vals [68])
  );
  FD   \btns/c_btn/btn_vals_67  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [66]),
    .Q(\btns/c_btn/btn_vals [67])
  );
  FD   \btns/c_btn/btn_vals_66  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [65]),
    .Q(\btns/c_btn/btn_vals [66])
  );
  FD   \btns/c_btn/btn_vals_65  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [64]),
    .Q(\btns/c_btn/btn_vals [65])
  );
  FD   \btns/c_btn/btn_vals_64  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [63]),
    .Q(\btns/c_btn/btn_vals [64])
  );
  FD   \btns/c_btn/btn_vals_63  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [62]),
    .Q(\btns/c_btn/btn_vals [63])
  );
  FD   \btns/c_btn/btn_vals_62  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [61]),
    .Q(\btns/c_btn/btn_vals [62])
  );
  FD   \btns/c_btn/btn_vals_61  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [60]),
    .Q(\btns/c_btn/btn_vals [61])
  );
  FD   \btns/c_btn/btn_vals_60  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [59]),
    .Q(\btns/c_btn/btn_vals [60])
  );
  FD   \btns/c_btn/btn_vals_59  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [58]),
    .Q(\btns/c_btn/btn_vals [59])
  );
  FD   \btns/c_btn/btn_vals_58  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [57]),
    .Q(\btns/c_btn/btn_vals [58])
  );
  FD   \btns/c_btn/btn_vals_57  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [56]),
    .Q(\btns/c_btn/btn_vals [57])
  );
  FD   \btns/c_btn/btn_vals_56  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [55]),
    .Q(\btns/c_btn/btn_vals [56])
  );
  FD   \btns/c_btn/btn_vals_55  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [54]),
    .Q(\btns/c_btn/btn_vals [55])
  );
  FD   \btns/c_btn/btn_vals_54  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [53]),
    .Q(\btns/c_btn/btn_vals [54])
  );
  FD   \btns/c_btn/btn_vals_53  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [52]),
    .Q(\btns/c_btn/btn_vals [53])
  );
  FD   \btns/c_btn/btn_vals_52  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [51]),
    .Q(\btns/c_btn/btn_vals [52])
  );
  FD   \btns/c_btn/btn_vals_51  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [50]),
    .Q(\btns/c_btn/btn_vals [51])
  );
  FD   \btns/c_btn/btn_vals_50  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [49]),
    .Q(\btns/c_btn/btn_vals [50])
  );
  FD   \btns/c_btn/btn_vals_49  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [48]),
    .Q(\btns/c_btn/btn_vals [49])
  );
  FD   \btns/c_btn/btn_vals_48  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [47]),
    .Q(\btns/c_btn/btn_vals [48])
  );
  FD   \btns/c_btn/btn_vals_47  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [46]),
    .Q(\btns/c_btn/btn_vals [47])
  );
  FD   \btns/c_btn/btn_vals_46  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [45]),
    .Q(\btns/c_btn/btn_vals [46])
  );
  FD   \btns/c_btn/btn_vals_45  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [44]),
    .Q(\btns/c_btn/btn_vals [45])
  );
  FD   \btns/c_btn/btn_vals_44  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [43]),
    .Q(\btns/c_btn/btn_vals [44])
  );
  FD   \btns/c_btn/btn_vals_43  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [42]),
    .Q(\btns/c_btn/btn_vals [43])
  );
  FD   \btns/c_btn/btn_vals_42  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [41]),
    .Q(\btns/c_btn/btn_vals [42])
  );
  FD   \btns/c_btn/btn_vals_41  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [40]),
    .Q(\btns/c_btn/btn_vals [41])
  );
  FD   \btns/c_btn/btn_vals_40  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [39]),
    .Q(\btns/c_btn/btn_vals [40])
  );
  FD   \btns/c_btn/btn_vals_39  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [38]),
    .Q(\btns/c_btn/btn_vals [39])
  );
  FD   \btns/c_btn/btn_vals_38  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [37]),
    .Q(\btns/c_btn/btn_vals [38])
  );
  FD   \btns/c_btn/btn_vals_37  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [36]),
    .Q(\btns/c_btn/btn_vals [37])
  );
  FD   \btns/c_btn/btn_vals_36  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [35]),
    .Q(\btns/c_btn/btn_vals [36])
  );
  FD   \btns/c_btn/btn_vals_35  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [34]),
    .Q(\btns/c_btn/btn_vals [35])
  );
  FD   \btns/c_btn/btn_vals_34  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [33]),
    .Q(\btns/c_btn/btn_vals [34])
  );
  FD   \btns/c_btn/btn_vals_33  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [32]),
    .Q(\btns/c_btn/btn_vals [33])
  );
  FD   \btns/c_btn/btn_vals_32  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [31]),
    .Q(\btns/c_btn/btn_vals [32])
  );
  FD   \btns/c_btn/btn_vals_31  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [30]),
    .Q(\btns/c_btn/btn_vals [31])
  );
  FD   \btns/c_btn/btn_vals_30  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [29]),
    .Q(\btns/c_btn/btn_vals [30])
  );
  FD   \btns/c_btn/btn_vals_29  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [28]),
    .Q(\btns/c_btn/btn_vals [29])
  );
  FD   \btns/c_btn/btn_vals_28  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [27]),
    .Q(\btns/c_btn/btn_vals [28])
  );
  FD   \btns/c_btn/btn_vals_27  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [26]),
    .Q(\btns/c_btn/btn_vals [27])
  );
  FD   \btns/c_btn/btn_vals_26  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [25]),
    .Q(\btns/c_btn/btn_vals [26])
  );
  FD   \btns/c_btn/btn_vals_25  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [24]),
    .Q(\btns/c_btn/btn_vals [25])
  );
  FD   \btns/c_btn/btn_vals_24  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [23]),
    .Q(\btns/c_btn/btn_vals [24])
  );
  FD   \btns/c_btn/btn_vals_23  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [22]),
    .Q(\btns/c_btn/btn_vals [23])
  );
  FD   \btns/c_btn/btn_vals_22  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [21]),
    .Q(\btns/c_btn/btn_vals [22])
  );
  FD   \btns/c_btn/btn_vals_21  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [20]),
    .Q(\btns/c_btn/btn_vals [21])
  );
  FD   \btns/c_btn/btn_vals_20  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [19]),
    .Q(\btns/c_btn/btn_vals [20])
  );
  FD   \btns/c_btn/btn_vals_19  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [18]),
    .Q(\btns/c_btn/btn_vals [19])
  );
  FD   \btns/c_btn/btn_vals_18  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [17]),
    .Q(\btns/c_btn/btn_vals [18])
  );
  FD   \btns/c_btn/btn_vals_17  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [16]),
    .Q(\btns/c_btn/btn_vals [17])
  );
  FD   \btns/c_btn/btn_vals_16  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [15]),
    .Q(\btns/c_btn/btn_vals [16])
  );
  FD   \btns/c_btn/btn_vals_15  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [14]),
    .Q(\btns/c_btn/btn_vals [15])
  );
  FD   \btns/c_btn/btn_vals_14  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [13]),
    .Q(\btns/c_btn/btn_vals [14])
  );
  FD   \btns/c_btn/btn_vals_13  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [12]),
    .Q(\btns/c_btn/btn_vals [13])
  );
  FD   \btns/c_btn/btn_vals_12  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [11]),
    .Q(\btns/c_btn/btn_vals [12])
  );
  FD   \btns/c_btn/btn_vals_11  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [10]),
    .Q(\btns/c_btn/btn_vals [11])
  );
  FD   \btns/c_btn/btn_vals_10  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [9]),
    .Q(\btns/c_btn/btn_vals [10])
  );
  FD   \btns/c_btn/btn_vals_9  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [8]),
    .Q(\btns/c_btn/btn_vals [9])
  );
  FD   \btns/c_btn/btn_vals_8  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [7]),
    .Q(\btns/c_btn/btn_vals [8])
  );
  FD   \btns/c_btn/btn_vals_7  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [6]),
    .Q(\btns/c_btn/btn_vals [7])
  );
  FD   \btns/c_btn/btn_vals_6  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [5]),
    .Q(\btns/c_btn/btn_vals [6])
  );
  FD   \btns/c_btn/btn_vals_5  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [4]),
    .Q(\btns/c_btn/btn_vals [5])
  );
  FD   \btns/c_btn/btn_vals_4  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [3]),
    .Q(\btns/c_btn/btn_vals [4])
  );
  FD   \btns/c_btn/btn_vals_3  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [2]),
    .Q(\btns/c_btn/btn_vals [3])
  );
  FD   \btns/c_btn/btn_vals_2  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [1]),
    .Q(\btns/c_btn/btn_vals [2])
  );
  FD   \btns/c_btn/btn_vals_1  (
    .C(clk_BUFGP_14),
    .D(\btns/c_btn/btn_vals [0]),
    .Q(\btns/c_btn/btn_vals [1])
  );
  FD   \btns/c_btn/btn_vals_0  (
    .C(clk_BUFGP_14),
    .D(bouncy_btns_0_IBUF_4),
    .Q(\btns/c_btn/btn_vals [0])
  );
  FDE   \sender/bitIndex_3  (
    .C(\receiver/clk_inv ),
    .CE(\sender/current_state<1>_inv ),
    .D(\sender/Mcount_bitIndex3 ),
    .Q(\sender/bitIndex [3])
  );
  FDE   \sender/bitIndex_2  (
    .C(\receiver/clk_inv ),
    .CE(\sender/current_state<1>_inv ),
    .D(\sender/Mcount_bitIndex2 ),
    .Q(\sender/bitIndex [2])
  );
  FDE   \sender/bitIndex_1  (
    .C(\receiver/clk_inv ),
    .CE(\sender/current_state<1>_inv ),
    .D(\sender/Mcount_bitIndex1 ),
    .Q(\sender/bitIndex [1])
  );
  FDE   \sender/bitIndex_0  (
    .C(\receiver/clk_inv ),
    .CE(\sender/current_state<1>_inv ),
    .D(\sender/Mcount_bitIndex ),
    .Q(\sender/bitIndex [0])
  );
  FDE   \sender/bitTmr_13  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr13 ),
    .Q(\sender/bitTmr [13])
  );
  FDE   \sender/bitTmr_12  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr12 ),
    .Q(\sender/bitTmr [12])
  );
  FDE   \sender/bitTmr_11  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr11 ),
    .Q(\sender/bitTmr [11])
  );
  FDE   \sender/bitTmr_10  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr10 ),
    .Q(\sender/bitTmr [10])
  );
  FDE   \sender/bitTmr_9  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr9 ),
    .Q(\sender/bitTmr [9])
  );
  FDE   \sender/bitTmr_8  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr8 ),
    .Q(\sender/bitTmr [8])
  );
  FDE   \sender/bitTmr_7  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr7 ),
    .Q(\sender/bitTmr [7])
  );
  FDE   \sender/bitTmr_6  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr6 ),
    .Q(\sender/bitTmr [6])
  );
  FDE   \sender/bitTmr_5  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr5 ),
    .Q(\sender/bitTmr [5])
  );
  FDE   \sender/bitTmr_4  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr4 ),
    .Q(\sender/bitTmr [4])
  );
  FDE   \sender/bitTmr_3  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr3 ),
    .Q(\sender/bitTmr [3])
  );
  FDE   \sender/bitTmr_2  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr2 ),
    .Q(\sender/bitTmr [2])
  );
  FDE   \sender/bitTmr_1  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr1 ),
    .Q(\sender/bitTmr [1])
  );
  FDE   \sender/bitTmr_0  (
    .C(\receiver/clk_inv ),
    .CE(\sender/_n0063_inv ),
    .D(\sender/Mcount_bitTmr ),
    .Q(\sender/bitTmr [0])
  );
  XORCY   \sender/Mcount_bitTmr_xor<13>  (
    .CI(\sender/Mcount_bitTmr_cy [12]),
    .LI(\sender/Mcount_bitTmr_lut [13]),
    .O(\sender/Mcount_bitTmr13 )
  );
  XORCY   \sender/Mcount_bitTmr_xor<12>  (
    .CI(\sender/Mcount_bitTmr_cy [11]),
    .LI(\sender/Mcount_bitTmr_lut [12]),
    .O(\sender/Mcount_bitTmr12 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<12>  (
    .CI(\sender/Mcount_bitTmr_cy [11]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [12]),
    .O(\sender/Mcount_bitTmr_cy [12])
  );
  XORCY   \sender/Mcount_bitTmr_xor<11>  (
    .CI(\sender/Mcount_bitTmr_cy [10]),
    .LI(\sender/Mcount_bitTmr_lut [11]),
    .O(\sender/Mcount_bitTmr11 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<11>  (
    .CI(\sender/Mcount_bitTmr_cy [10]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [11]),
    .O(\sender/Mcount_bitTmr_cy [11])
  );
  XORCY   \sender/Mcount_bitTmr_xor<10>  (
    .CI(\sender/Mcount_bitTmr_cy [9]),
    .LI(\sender/Mcount_bitTmr_lut [10]),
    .O(\sender/Mcount_bitTmr10 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<10>  (
    .CI(\sender/Mcount_bitTmr_cy [9]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [10]),
    .O(\sender/Mcount_bitTmr_cy [10])
  );
  XORCY   \sender/Mcount_bitTmr_xor<9>  (
    .CI(\sender/Mcount_bitTmr_cy [8]),
    .LI(\sender/Mcount_bitTmr_lut [9]),
    .O(\sender/Mcount_bitTmr9 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<9>  (
    .CI(\sender/Mcount_bitTmr_cy [8]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [9]),
    .O(\sender/Mcount_bitTmr_cy [9])
  );
  XORCY   \sender/Mcount_bitTmr_xor<8>  (
    .CI(\sender/Mcount_bitTmr_cy [7]),
    .LI(\sender/Mcount_bitTmr_lut [8]),
    .O(\sender/Mcount_bitTmr8 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<8>  (
    .CI(\sender/Mcount_bitTmr_cy [7]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [8]),
    .O(\sender/Mcount_bitTmr_cy [8])
  );
  XORCY   \sender/Mcount_bitTmr_xor<7>  (
    .CI(\sender/Mcount_bitTmr_cy [6]),
    .LI(\sender/Mcount_bitTmr_lut [7]),
    .O(\sender/Mcount_bitTmr7 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<7>  (
    .CI(\sender/Mcount_bitTmr_cy [6]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [7]),
    .O(\sender/Mcount_bitTmr_cy [7])
  );
  XORCY   \sender/Mcount_bitTmr_xor<6>  (
    .CI(\sender/Mcount_bitTmr_cy [5]),
    .LI(\sender/Mcount_bitTmr_lut [6]),
    .O(\sender/Mcount_bitTmr6 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<6>  (
    .CI(\sender/Mcount_bitTmr_cy [5]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [6]),
    .O(\sender/Mcount_bitTmr_cy [6])
  );
  XORCY   \sender/Mcount_bitTmr_xor<5>  (
    .CI(\sender/Mcount_bitTmr_cy [4]),
    .LI(\sender/Mcount_bitTmr_lut [5]),
    .O(\sender/Mcount_bitTmr5 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<5>  (
    .CI(\sender/Mcount_bitTmr_cy [4]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [5]),
    .O(\sender/Mcount_bitTmr_cy [5])
  );
  XORCY   \sender/Mcount_bitTmr_xor<4>  (
    .CI(\sender/Mcount_bitTmr_cy [3]),
    .LI(\sender/Mcount_bitTmr_lut [4]),
    .O(\sender/Mcount_bitTmr4 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<4>  (
    .CI(\sender/Mcount_bitTmr_cy [3]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [4]),
    .O(\sender/Mcount_bitTmr_cy [4])
  );
  XORCY   \sender/Mcount_bitTmr_xor<3>  (
    .CI(\sender/Mcount_bitTmr_cy [2]),
    .LI(\sender/Mcount_bitTmr_lut [3]),
    .O(\sender/Mcount_bitTmr3 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<3>  (
    .CI(\sender/Mcount_bitTmr_cy [2]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [3]),
    .O(\sender/Mcount_bitTmr_cy [3])
  );
  XORCY   \sender/Mcount_bitTmr_xor<2>  (
    .CI(\sender/Mcount_bitTmr_cy [1]),
    .LI(\sender/Mcount_bitTmr_lut [2]),
    .O(\sender/Mcount_bitTmr2 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<2>  (
    .CI(\sender/Mcount_bitTmr_cy [1]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [2]),
    .O(\sender/Mcount_bitTmr_cy [2])
  );
  XORCY   \sender/Mcount_bitTmr_xor<1>  (
    .CI(\sender/Mcount_bitTmr_cy [0]),
    .LI(\sender/Mcount_bitTmr_lut [1]),
    .O(\sender/Mcount_bitTmr1 )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<1>  (
    .CI(\sender/Mcount_bitTmr_cy [0]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [1]),
    .O(\sender/Mcount_bitTmr_cy [1])
  );
  XORCY   \sender/Mcount_bitTmr_xor<0>  (
    .CI(\sender/current_state [1]),
    .LI(\sender/Mcount_bitTmr_lut [0]),
    .O(\sender/Mcount_bitTmr )
  );
  MUXCY   \sender/Mcount_bitTmr_cy<0>  (
    .CI(\sender/current_state [1]),
    .DI(N1),
    .S(\sender/Mcount_bitTmr_lut [0]),
    .O(\sender/Mcount_bitTmr_cy [0])
  );
  FDE_1   \sender/ready  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0063_inv ),
    .D(\sender/current_state[1]_ready_Mux_16_o ),
    .Q(\sender/ready_16 )
  );
  FDR   \sender/current_state_1  (
    .C(clk_BUFGP_14),
    .D(\sender/next_state [1]),
    .R(db_btns[0]),
    .Q(\sender/current_state [1])
  );
  FDR   \sender/current_state_0  (
    .C(clk_BUFGP_14),
    .D(\sender/next_state [0]),
    .R(db_btns[0]),
    .Q(\sender/current_state [0])
  );
  FDE_1   \sender/next_state_1  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0063_inv ),
    .D(\sender/current_state[1]_next_state[1]_wide_mux_17_OUT<1> ),
    .Q(\sender/next_state [1])
  );
  FDE_1   \sender/next_state_0  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0063_inv ),
    .D(\sender/current_state[1]_next_state[1]_wide_mux_17_OUT<0> ),
    .Q(\sender/next_state [0])
  );
  FDE_1   \sender/latched_data_7  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_7_dpot_879 ),
    .Q(\sender/latched_data [7])
  );
  FDE_1   \sender/latched_data_6  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_6_dpot_878 ),
    .Q(\sender/latched_data [6])
  );
  FDE_1   \sender/latched_data_5  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_5_dpot_877 ),
    .Q(\sender/latched_data [5])
  );
  FDE_1   \sender/latched_data_4  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_4_dpot_876 ),
    .Q(\sender/latched_data [4])
  );
  FDE_1   \sender/latched_data_3  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_3_dpot_875 ),
    .Q(\sender/latched_data [3])
  );
  FDE_1   \sender/latched_data_2  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_2_dpot_874 ),
    .Q(\sender/latched_data [2])
  );
  FDE_1   \sender/latched_data_1  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_1_dpot_873 ),
    .Q(\sender/latched_data [1])
  );
  FDE_1   \sender/latched_data_0  (
    .C(clk_BUFGP_14),
    .CE(\sender/_n0057<1>1_cepot ),
    .D(\sender/latched_data_0_dpot_872 ),
    .Q(\sender/latched_data [0])
  );
  FDE   \receiver/bitIndex_3  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/current_state<1>_inv ),
    .D(\receiver/Mcount_bitIndex3 ),
    .Q(\receiver/bitIndex [3])
  );
  FDE   \receiver/bitIndex_2  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/current_state<1>_inv ),
    .D(\receiver/Mcount_bitIndex2 ),
    .Q(\receiver/bitIndex [2])
  );
  FDE   \receiver/bitIndex_1  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/current_state<1>_inv ),
    .D(\receiver/Mcount_bitIndex1 ),
    .Q(\receiver/bitIndex [1])
  );
  FDE   \receiver/bitIndex_0  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/current_state<1>_inv ),
    .D(\receiver/Mcount_bitIndex ),
    .Q(\receiver/bitIndex [0])
  );
  FDE   \receiver/bitTmr_13  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr13 ),
    .Q(\receiver/bitTmr [13])
  );
  FDE   \receiver/bitTmr_12  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr12 ),
    .Q(\receiver/bitTmr [12])
  );
  FDE   \receiver/bitTmr_11  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr11 ),
    .Q(\receiver/bitTmr [11])
  );
  FDE   \receiver/bitTmr_10  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr10 ),
    .Q(\receiver/bitTmr [10])
  );
  FDE   \receiver/bitTmr_9  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr9 ),
    .Q(\receiver/bitTmr [9])
  );
  FDE   \receiver/bitTmr_8  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr8 ),
    .Q(\receiver/bitTmr [8])
  );
  FDE   \receiver/bitTmr_7  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr7 ),
    .Q(\receiver/bitTmr [7])
  );
  FDE   \receiver/bitTmr_6  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr6 ),
    .Q(\receiver/bitTmr [6])
  );
  FDE   \receiver/bitTmr_5  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr5 ),
    .Q(\receiver/bitTmr [5])
  );
  FDE   \receiver/bitTmr_4  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr4 ),
    .Q(\receiver/bitTmr [4])
  );
  FDE   \receiver/bitTmr_3  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr3 ),
    .Q(\receiver/bitTmr [3])
  );
  FDE   \receiver/bitTmr_2  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr2 ),
    .Q(\receiver/bitTmr [2])
  );
  FDE   \receiver/bitTmr_1  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr1 ),
    .Q(\receiver/bitTmr [1])
  );
  FDE   \receiver/bitTmr_0  (
    .C(\receiver/clk_inv ),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/Mcount_bitTmr ),
    .Q(\receiver/bitTmr [0])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<13>  (
    .CI(\receiver/Mcount_bitTmr_cy [12]),
    .LI(\receiver/Mcount_bitTmr_lut [13]),
    .O(\receiver/Mcount_bitTmr13 )
  );
  XORCY   \receiver/Mcount_bitTmr_xor<12>  (
    .CI(\receiver/Mcount_bitTmr_cy [11]),
    .LI(\receiver/Mcount_bitTmr_lut [12]),
    .O(\receiver/Mcount_bitTmr12 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<12>  (
    .CI(\receiver/Mcount_bitTmr_cy [11]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [12]),
    .O(\receiver/Mcount_bitTmr_cy [12])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<11>  (
    .CI(\receiver/Mcount_bitTmr_cy [10]),
    .LI(\receiver/Mcount_bitTmr_lut [11]),
    .O(\receiver/Mcount_bitTmr11 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<11>  (
    .CI(\receiver/Mcount_bitTmr_cy [10]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [11]),
    .O(\receiver/Mcount_bitTmr_cy [11])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<10>  (
    .CI(\receiver/Mcount_bitTmr_cy [9]),
    .LI(\receiver/Mcount_bitTmr_lut [10]),
    .O(\receiver/Mcount_bitTmr10 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<10>  (
    .CI(\receiver/Mcount_bitTmr_cy [9]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [10]),
    .O(\receiver/Mcount_bitTmr_cy [10])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<9>  (
    .CI(\receiver/Mcount_bitTmr_cy [8]),
    .LI(\receiver/Mcount_bitTmr_lut [9]),
    .O(\receiver/Mcount_bitTmr9 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<9>  (
    .CI(\receiver/Mcount_bitTmr_cy [8]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [9]),
    .O(\receiver/Mcount_bitTmr_cy [9])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<8>  (
    .CI(\receiver/Mcount_bitTmr_cy [7]),
    .LI(\receiver/Mcount_bitTmr_lut [8]),
    .O(\receiver/Mcount_bitTmr8 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<8>  (
    .CI(\receiver/Mcount_bitTmr_cy [7]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [8]),
    .O(\receiver/Mcount_bitTmr_cy [8])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<7>  (
    .CI(\receiver/Mcount_bitTmr_cy [6]),
    .LI(\receiver/Mcount_bitTmr_lut [7]),
    .O(\receiver/Mcount_bitTmr7 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<7>  (
    .CI(\receiver/Mcount_bitTmr_cy [6]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [7]),
    .O(\receiver/Mcount_bitTmr_cy [7])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<6>  (
    .CI(\receiver/Mcount_bitTmr_cy [5]),
    .LI(\receiver/Mcount_bitTmr_lut [6]),
    .O(\receiver/Mcount_bitTmr6 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<6>  (
    .CI(\receiver/Mcount_bitTmr_cy [5]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [6]),
    .O(\receiver/Mcount_bitTmr_cy [6])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<5>  (
    .CI(\receiver/Mcount_bitTmr_cy [4]),
    .LI(\receiver/Mcount_bitTmr_lut [5]),
    .O(\receiver/Mcount_bitTmr5 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<5>  (
    .CI(\receiver/Mcount_bitTmr_cy [4]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [5]),
    .O(\receiver/Mcount_bitTmr_cy [5])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<4>  (
    .CI(\receiver/Mcount_bitTmr_cy [3]),
    .LI(\receiver/Mcount_bitTmr_lut [4]),
    .O(\receiver/Mcount_bitTmr4 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<4>  (
    .CI(\receiver/Mcount_bitTmr_cy [3]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [4]),
    .O(\receiver/Mcount_bitTmr_cy [4])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<3>  (
    .CI(\receiver/Mcount_bitTmr_cy [2]),
    .LI(\receiver/Mcount_bitTmr_lut [3]),
    .O(\receiver/Mcount_bitTmr3 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<3>  (
    .CI(\receiver/Mcount_bitTmr_cy [2]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [3]),
    .O(\receiver/Mcount_bitTmr_cy [3])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<2>  (
    .CI(\receiver/Mcount_bitTmr_cy [1]),
    .LI(\receiver/Mcount_bitTmr_lut [2]),
    .O(\receiver/Mcount_bitTmr2 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<2>  (
    .CI(\receiver/Mcount_bitTmr_cy [1]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [2]),
    .O(\receiver/Mcount_bitTmr_cy [2])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<1>  (
    .CI(\receiver/Mcount_bitTmr_cy [0]),
    .LI(\receiver/Mcount_bitTmr_lut [1]),
    .O(\receiver/Mcount_bitTmr1 )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<1>  (
    .CI(\receiver/Mcount_bitTmr_cy [0]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [1]),
    .O(\receiver/Mcount_bitTmr_cy [1])
  );
  XORCY   \receiver/Mcount_bitTmr_xor<0>  (
    .CI(\receiver/current_state [1]),
    .LI(\receiver/Mcount_bitTmr_lut [0]),
    .O(\receiver/Mcount_bitTmr )
  );
  MUXCY   \receiver/Mcount_bitTmr_cy<0>  (
    .CI(\receiver/current_state [1]),
    .DI(N1),
    .S(\receiver/Mcount_bitTmr_lut [0]),
    .O(\receiver/Mcount_bitTmr_cy [0])
  );
  FDR   \receiver/current_state_1  (
    .C(clk_BUFGP_14),
    .D(\receiver/next_state [1]),
    .R(db_btns[0]),
    .Q(\receiver/current_state [1])
  );
  FDR   \receiver/current_state_0  (
    .C(clk_BUFGP_14),
    .D(\receiver/next_state [0]),
    .R(db_btns[0]),
    .Q(\receiver/current_state [0])
  );
  FDE_1   \receiver/next_state_1  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/current_state[1]_next_state[1]_wide_mux_20_OUT<1> ),
    .Q(\receiver/next_state [1])
  );
  FDE_1   \receiver/next_state_0  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0070_inv ),
    .D(\receiver/current_state[1]_next_state[1]_wide_mux_20_OUT<0> ),
    .Q(\receiver/next_state [0])
  );
  FDE_1   \receiver/data_7  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_7_dpot_868 ),
    .Q(\receiver/data [7])
  );
  FDE_1   \receiver/data_6  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_6_dpot_867 ),
    .Q(\receiver/data [6])
  );
  FDE_1   \receiver/data_5  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_5_dpot_866 ),
    .Q(\receiver/data [5])
  );
  FDE_1   \receiver/data_4  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_4_dpot_865 ),
    .Q(\receiver/data [4])
  );
  FDE_1   \receiver/data_3  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_3_dpot_864 ),
    .Q(\receiver/data [3])
  );
  FDE_1   \receiver/data_2  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_2_dpot_863 ),
    .Q(\receiver/data [2])
  );
  FDE_1   \receiver/data_1  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_1_dpot_862 ),
    .Q(\receiver/data [1])
  );
  FDE_1   \receiver/data_0  (
    .C(clk_BUFGP_14),
    .CE(\receiver/current_state [1]),
    .D(\receiver/data_0_dpot_861 ),
    .Q(\receiver/data [0])
  );
  FDE_1   \receiver/tx_data_7  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(\receiver/tx_data [6]),
    .Q(\receiver/tx_data [7])
  );
  FDE_1   \receiver/tx_data_6  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(\receiver/tx_data [5]),
    .Q(\receiver/tx_data [6])
  );
  FDE_1   \receiver/tx_data_5  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(\receiver/tx_data [4]),
    .Q(\receiver/tx_data [5])
  );
  FDE_1   \receiver/tx_data_4  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(\receiver/tx_data [3]),
    .Q(\receiver/tx_data [4])
  );
  FDE_1   \receiver/tx_data_3  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(\receiver/tx_data [2]),
    .Q(\receiver/tx_data [3])
  );
  FDE_1   \receiver/tx_data_2  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(\receiver/tx_data [1]),
    .Q(\receiver/tx_data [2])
  );
  FDE_1   \receiver/tx_data_1  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(\receiver/tx_data [0]),
    .Q(\receiver/tx_data [1])
  );
  FDE_1   \receiver/tx_data_0  (
    .C(clk_BUFGP_14),
    .CE(\receiver/_n0064 ),
    .D(uart_i_IBUF_13),
    .Q(\receiver/tx_data [0])
  );
  LUT3 #(
    .INIT ( 8'h64 ))
  \current_state[2]_GND_1_o_Select_14_o1  (
    .I0(current_state[0]),
    .I1(current_state[1]),
    .I2(start_transmit_27),
    .O(\current_state[2]_GND_1_o_Select_14_o )
  );
  LUT4 #(
    .INIT ( 16'h6E2A ))
  \current_state[2]_GND_1_o_select_15_OUT<0>1  (
    .I0(current_state[1]),
    .I1(current_state[0]),
    .I2(\sender/ready_16 ),
    .I3(next_state[0]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \sender/Mcount_bitIndex_xor<3>11  (
    .I0(\sender/current_state [0]),
    .I1(\sender/bitIndex [3]),
    .I2(\sender/bitIndex [0]),
    .I3(\sender/bitIndex [1]),
    .I4(\sender/bitIndex [2]),
    .O(\sender/Mcount_bitIndex3 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \sender/Mcount_bitIndex_xor<1>11  (
    .I0(\sender/current_state [0]),
    .I1(\sender/bitIndex [0]),
    .I2(\sender/bitIndex [1]),
    .O(\sender/Mcount_bitIndex1 )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \sender/Mcount_bitIndex_xor<2>11  (
    .I0(\sender/current_state [0]),
    .I1(\sender/bitIndex [2]),
    .I2(\sender/bitIndex [0]),
    .I3(\sender/bitIndex [1]),
    .O(\sender/Mcount_bitIndex2 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \sender/_n0063_inv1  (
    .I0(\sender/current_state_1_1_869 ),
    .I1(\sender/current_state [0]),
    .O(\sender/_n0063_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sender/Mcount_bitIndex_xor<0>11  (
    .I0(\sender/current_state [0]),
    .I1(\sender/bitIndex [0]),
    .O(\sender/Mcount_bitIndex )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \sender/Mmux_current_state[1]_ready_Mux_16_o11  (
    .I0(\sender/current_state [1]),
    .I1(\sender/current_state [0]),
    .I2(start_transmit_27),
    .O(\sender/current_state[1]_ready_Mux_16_o )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \receiver/Mcount_bitIndex_xor<3>11  (
    .I0(\receiver/current_state [0]),
    .I1(\receiver/bitIndex [3]),
    .I2(\receiver/bitIndex [0]),
    .I3(\receiver/bitIndex [1]),
    .I4(\receiver/bitIndex [2]),
    .O(\receiver/Mcount_bitIndex3 )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \receiver/Mcount_bitIndex_xor<2>11  (
    .I0(\receiver/current_state [0]),
    .I1(\receiver/bitIndex [2]),
    .I2(\receiver/bitIndex [0]),
    .I3(\receiver/bitIndex [1]),
    .O(\receiver/Mcount_bitIndex2 )
  );
  LUT6 #(
    .INIT ( 64'h4444444404444444 ))
  \receiver/Mmux_current_state[1]_next_state[1]_wide_mux_20_OUT11  (
    .I0(\receiver/bit_done_INV_7_o ),
    .I1(\receiver/current_state [1]),
    .I2(\receiver/bitIndex [0]),
    .I3(\receiver/bitIndex [1]),
    .I4(\receiver/bitIndex [2]),
    .I5(\receiver/bitIndex [3]),
    .O(\receiver/current_state[1]_next_state[1]_wide_mux_20_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \receiver/Mcount_bitIndex_xor<1>11  (
    .I0(\receiver/current_state [0]),
    .I1(\receiver/bitIndex [0]),
    .I2(\receiver/bitIndex [1]),
    .O(\receiver/Mcount_bitIndex1 )
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \receiver/Mmux_current_state[1]_next_state[1]_wide_mux_20_OUT21  (
    .I0(\receiver/current_state [1]),
    .I1(\receiver/current_state [0]),
    .I2(uart_i_IBUF_13),
    .I3(\receiver/bit_done_INV_7_o ),
    .O(\receiver/current_state[1]_next_state[1]_wide_mux_20_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \receiver/Mcount_bitIndex_xor<0>11  (
    .I0(\receiver/current_state [0]),
    .I1(\receiver/bitIndex [0]),
    .O(\receiver/Mcount_bitIndex )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \receiver/_n0070_inv1  (
    .I0(\receiver/current_state_1_1_870 ),
    .I1(\receiver/current_state [0]),
    .O(\receiver/_n0070_inv )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \receiver/_n0064<1>1  (
    .I0(\receiver/current_state_1_2_880 ),
    .I1(\receiver/current_state [0]),
    .O(\receiver/_n0064 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \btns/c_btn/out_wg_lut<0>  (
    .I0(\btns/c_btn/btn_vals [83]),
    .I1(\btns/c_btn/btn_vals [82]),
    .I2(\btns/c_btn/btn_vals [81]),
    .I3(\btns/c_btn/btn_vals [78]),
    .O(\btns/c_btn/out_wg_lut [0])
  );
  MUXCY   \btns/c_btn/out_wg_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [0]),
    .O(\btns/c_btn/out_wg_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<1>  (
    .I0(\btns/c_btn/btn_vals [80]),
    .I1(\btns/c_btn/btn_vals [79]),
    .I2(\btns/c_btn/btn_vals [75]),
    .I3(\btns/c_btn/btn_vals [77]),
    .I4(\btns/c_btn/btn_vals [85]),
    .I5(\btns/c_btn/btn_vals [76]),
    .O(\btns/c_btn/out_wg_lut [1])
  );
  MUXCY   \btns/c_btn/out_wg_cy<1>  (
    .CI(\btns/c_btn/out_wg_cy [0]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [1]),
    .O(\btns/c_btn/out_wg_cy [1])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<2>  (
    .I0(\btns/c_btn/btn_vals [74]),
    .I1(\btns/c_btn/btn_vals [73]),
    .I2(\btns/c_btn/btn_vals [72]),
    .I3(\btns/c_btn/btn_vals [71]),
    .I4(\btns/c_btn/btn_vals [86]),
    .I5(\btns/c_btn/btn_vals [68]),
    .O(\btns/c_btn/out_wg_lut [2])
  );
  MUXCY   \btns/c_btn/out_wg_cy<2>  (
    .CI(\btns/c_btn/out_wg_cy [1]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [2]),
    .O(\btns/c_btn/out_wg_cy [2])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<3>  (
    .I0(\btns/c_btn/btn_vals [70]),
    .I1(\btns/c_btn/btn_vals [69]),
    .I2(\btns/c_btn/btn_vals [65]),
    .I3(\btns/c_btn/btn_vals [67]),
    .I4(\btns/c_btn/btn_vals [84]),
    .I5(\btns/c_btn/btn_vals [66]),
    .O(\btns/c_btn/out_wg_lut [3])
  );
  MUXCY   \btns/c_btn/out_wg_cy<3>  (
    .CI(\btns/c_btn/out_wg_cy [2]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [3]),
    .O(\btns/c_btn/out_wg_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<4>  (
    .I0(\btns/c_btn/btn_vals [62]),
    .I1(\btns/c_btn/btn_vals [64]),
    .I2(\btns/c_btn/btn_vals [63]),
    .I3(\btns/c_btn/btn_vals [59]),
    .I4(\btns/c_btn/btn_vals [88]),
    .I5(\btns/c_btn/btn_vals [61]),
    .O(\btns/c_btn/out_wg_lut [4])
  );
  MUXCY   \btns/c_btn/out_wg_cy<4>  (
    .CI(\btns/c_btn/out_wg_cy [3]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [4]),
    .O(\btns/c_btn/out_wg_cy [4])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<5>  (
    .I0(\btns/c_btn/btn_vals [60]),
    .I1(\btns/c_btn/btn_vals [56]),
    .I2(\btns/c_btn/btn_vals [58]),
    .I3(\btns/c_btn/btn_vals [57]),
    .I4(\btns/c_btn/btn_vals [89]),
    .I5(\btns/c_btn/btn_vals [53]),
    .O(\btns/c_btn/out_wg_lut [5])
  );
  MUXCY   \btns/c_btn/out_wg_cy<5>  (
    .CI(\btns/c_btn/out_wg_cy [4]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [5]),
    .O(\btns/c_btn/out_wg_cy [5])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<6>  (
    .I0(\btns/c_btn/btn_vals [55]),
    .I1(\btns/c_btn/btn_vals [54]),
    .I2(\btns/c_btn/btn_vals [50]),
    .I3(\btns/c_btn/btn_vals [52]),
    .I4(\btns/c_btn/btn_vals [87]),
    .I5(\btns/c_btn/btn_vals [51]),
    .O(\btns/c_btn/out_wg_lut [6])
  );
  MUXCY   \btns/c_btn/out_wg_cy<6>  (
    .CI(\btns/c_btn/out_wg_cy [5]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [6]),
    .O(\btns/c_btn/out_wg_cy [6])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<7>  (
    .I0(\btns/c_btn/btn_vals [49]),
    .I1(\btns/c_btn/btn_vals [48]),
    .I2(\btns/c_btn/btn_vals [47]),
    .I3(\btns/c_btn/btn_vals [46]),
    .I4(\btns/c_btn/btn_vals [91]),
    .I5(\btns/c_btn/btn_vals [43]),
    .O(\btns/c_btn/out_wg_lut [7])
  );
  MUXCY   \btns/c_btn/out_wg_cy<7>  (
    .CI(\btns/c_btn/out_wg_cy [6]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [7]),
    .O(\btns/c_btn/out_wg_cy [7])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<8>  (
    .I0(\btns/c_btn/btn_vals [45]),
    .I1(\btns/c_btn/btn_vals [44]),
    .I2(\btns/c_btn/btn_vals [40]),
    .I3(\btns/c_btn/btn_vals [42]),
    .I4(\btns/c_btn/btn_vals [92]),
    .I5(\btns/c_btn/btn_vals [41]),
    .O(\btns/c_btn/out_wg_lut [8])
  );
  MUXCY   \btns/c_btn/out_wg_cy<8>  (
    .CI(\btns/c_btn/out_wg_cy [7]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [8]),
    .O(\btns/c_btn/out_wg_cy [8])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<9>  (
    .I0(\btns/c_btn/btn_vals [37]),
    .I1(\btns/c_btn/btn_vals [39]),
    .I2(\btns/c_btn/btn_vals [38]),
    .I3(\btns/c_btn/btn_vals [34]),
    .I4(\btns/c_btn/btn_vals [90]),
    .I5(\btns/c_btn/btn_vals [36]),
    .O(\btns/c_btn/out_wg_lut [9])
  );
  MUXCY   \btns/c_btn/out_wg_cy<9>  (
    .CI(\btns/c_btn/out_wg_cy [8]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [9]),
    .O(\btns/c_btn/out_wg_cy [9])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<10>  (
    .I0(\btns/c_btn/btn_vals [35]),
    .I1(\btns/c_btn/btn_vals [31]),
    .I2(\btns/c_btn/btn_vals [33]),
    .I3(\btns/c_btn/btn_vals [32]),
    .I4(\btns/c_btn/btn_vals [94]),
    .I5(\btns/c_btn/btn_vals [28]),
    .O(\btns/c_btn/out_wg_lut [10])
  );
  MUXCY   \btns/c_btn/out_wg_cy<10>  (
    .CI(\btns/c_btn/out_wg_cy [9]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [10]),
    .O(\btns/c_btn/out_wg_cy [10])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<11>  (
    .I0(\btns/c_btn/btn_vals [30]),
    .I1(\btns/c_btn/btn_vals [29]),
    .I2(\btns/c_btn/btn_vals [25]),
    .I3(\btns/c_btn/btn_vals [27]),
    .I4(\btns/c_btn/btn_vals [95]),
    .I5(\btns/c_btn/btn_vals [26]),
    .O(\btns/c_btn/out_wg_lut [11])
  );
  MUXCY   \btns/c_btn/out_wg_cy<11>  (
    .CI(\btns/c_btn/out_wg_cy [10]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [11]),
    .O(\btns/c_btn/out_wg_cy [11])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<12>  (
    .I0(\btns/c_btn/btn_vals [24]),
    .I1(\btns/c_btn/btn_vals [23]),
    .I2(\btns/c_btn/btn_vals [22]),
    .I3(\btns/c_btn/btn_vals [21]),
    .I4(\btns/c_btn/btn_vals [93]),
    .I5(\btns/c_btn/btn_vals [18]),
    .O(\btns/c_btn/out_wg_lut [12])
  );
  MUXCY   \btns/c_btn/out_wg_cy<12>  (
    .CI(\btns/c_btn/out_wg_cy [11]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [12]),
    .O(\btns/c_btn/out_wg_cy [12])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<13>  (
    .I0(\btns/c_btn/btn_vals [20]),
    .I1(\btns/c_btn/btn_vals [19]),
    .I2(\btns/c_btn/btn_vals [15]),
    .I3(\btns/c_btn/btn_vals [17]),
    .I4(\btns/c_btn/btn_vals [96]),
    .I5(\btns/c_btn/btn_vals [16]),
    .O(\btns/c_btn/out_wg_lut [13])
  );
  MUXCY   \btns/c_btn/out_wg_cy<13>  (
    .CI(\btns/c_btn/out_wg_cy [12]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [13]),
    .O(\btns/c_btn/out_wg_cy [13])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<14>  (
    .I0(\btns/c_btn/btn_vals [12]),
    .I1(\btns/c_btn/btn_vals [14]),
    .I2(\btns/c_btn/btn_vals [13]),
    .I3(\btns/c_btn/btn_vals [9]),
    .I4(\btns/c_btn/btn_vals [97]),
    .I5(\btns/c_btn/btn_vals [11]),
    .O(\btns/c_btn/out_wg_lut [14])
  );
  MUXCY   \btns/c_btn/out_wg_cy<14>  (
    .CI(\btns/c_btn/out_wg_cy [13]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [14]),
    .O(\btns/c_btn/out_wg_cy [14])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<15>  (
    .I0(\btns/c_btn/btn_vals [10]),
    .I1(\btns/c_btn/btn_vals [6]),
    .I2(\btns/c_btn/btn_vals [8]),
    .I3(\btns/c_btn/btn_vals [7]),
    .I4(\btns/c_btn/btn_vals [98]),
    .I5(\btns/c_btn/btn_vals [3]),
    .O(\btns/c_btn/out_wg_lut [15])
  );
  MUXCY   \btns/c_btn/out_wg_cy<15>  (
    .CI(\btns/c_btn/out_wg_cy [14]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [15]),
    .O(\btns/c_btn/out_wg_cy [15])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \btns/c_btn/out_wg_lut<16>  (
    .I0(\btns/c_btn/btn_vals [5]),
    .I1(\btns/c_btn/btn_vals [4]),
    .I2(\btns/c_btn/btn_vals [0]),
    .I3(\btns/c_btn/btn_vals [2]),
    .I4(\btns/c_btn/btn_vals [99]),
    .I5(\btns/c_btn/btn_vals [1]),
    .O(\btns/c_btn/out_wg_lut [16])
  );
  MUXCY   \btns/c_btn/out_wg_cy<16>  (
    .CI(\btns/c_btn/out_wg_cy [15]),
    .DI(N1),
    .S(\btns/c_btn/out_wg_lut [16]),
    .O(db_btns[0])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>1  (
    .I0(\btns/l_btn/btn_vals [17]),
    .I1(\btns/l_btn/btn_vals [16]),
    .I2(\btns/l_btn/btn_vals [19]),
    .I3(\btns/l_btn/btn_vals [18]),
    .I4(\btns/l_btn/btn_vals [21]),
    .I5(\btns/l_btn/btn_vals [20]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>1_740 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>2  (
    .I0(\btns/l_btn/btn_vals [11]),
    .I1(\btns/l_btn/btn_vals [10]),
    .I2(\btns/l_btn/btn_vals [13]),
    .I3(\btns/l_btn/btn_vals [12]),
    .I4(\btns/l_btn/btn_vals [15]),
    .I5(\btns/l_btn/btn_vals [14]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>2_741 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>3  (
    .I0(\btns/l_btn/btn_vals [29]),
    .I1(\btns/l_btn/btn_vals [28]),
    .I2(\btns/l_btn/btn_vals [31]),
    .I3(\btns/l_btn/btn_vals [30]),
    .I4(\btns/l_btn/btn_vals [33]),
    .I5(\btns/l_btn/btn_vals [32]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>3_742 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>4  (
    .I0(\btns/l_btn/btn_vals [23]),
    .I1(\btns/l_btn/btn_vals [22]),
    .I2(\btns/l_btn/btn_vals [25]),
    .I3(\btns/l_btn/btn_vals [24]),
    .I4(\btns/l_btn/btn_vals [27]),
    .I5(\btns/l_btn/btn_vals [26]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>4_743 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>5  (
    .I0(\btns/l_btn/btn_vals [1]),
    .I1(\btns/l_btn/btn_vals [0]),
    .I2(\btns/l_btn/btn_vals [3]),
    .I3(\btns/l_btn/btn_vals [2]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>5_744 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>6  (
    .I0(\btns/l_btn/btn_vals [5]),
    .I1(\btns/l_btn/btn_vals [4]),
    .I2(\btns/l_btn/btn_vals [7]),
    .I3(\btns/l_btn/btn_vals [6]),
    .I4(\btns/l_btn/btn_vals [9]),
    .I5(\btns/l_btn/btn_vals [8]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>6_745 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>7  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>5_744 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>6_745 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>1_740 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>2_741 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>3_742 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>4_743 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>7_746 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>8  (
    .I0(\btns/l_btn/btn_vals [95]),
    .I1(\btns/l_btn/btn_vals [94]),
    .I2(\btns/l_btn/btn_vals [97]),
    .I3(\btns/l_btn/btn_vals [96]),
    .I4(\btns/l_btn/btn_vals [99]),
    .I5(\btns/l_btn/btn_vals [98]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>8_747 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>9  (
    .I0(\btns/l_btn/btn_vals [89]),
    .I1(\btns/l_btn/btn_vals [88]),
    .I2(\btns/l_btn/btn_vals [91]),
    .I3(\btns/l_btn/btn_vals [90]),
    .I4(\btns/l_btn/btn_vals [93]),
    .I5(\btns/l_btn/btn_vals [92]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>9_748 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>10  (
    .I0(\btns/l_btn/btn_vals [83]),
    .I1(\btns/l_btn/btn_vals [82]),
    .I2(\btns/l_btn/btn_vals [85]),
    .I3(\btns/l_btn/btn_vals [84]),
    .I4(\btns/l_btn/btn_vals [87]),
    .I5(\btns/l_btn/btn_vals [86]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>10_749 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>11  (
    .I0(\btns/l_btn/btn_vals [65]),
    .I1(\btns/l_btn/btn_vals [64]),
    .I2(\btns/l_btn/btn_vals [67]),
    .I3(\btns/l_btn/btn_vals [66]),
    .I4(\btns/l_btn/btn_vals [69]),
    .I5(\btns/l_btn/btn_vals [68]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>11_750 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>12  (
    .I0(\btns/l_btn/btn_vals [59]),
    .I1(\btns/l_btn/btn_vals [58]),
    .I2(\btns/l_btn/btn_vals [61]),
    .I3(\btns/l_btn/btn_vals [60]),
    .I4(\btns/l_btn/btn_vals [63]),
    .I5(\btns/l_btn/btn_vals [62]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>12_751 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>13  (
    .I0(\btns/l_btn/btn_vals [77]),
    .I1(\btns/l_btn/btn_vals [76]),
    .I2(\btns/l_btn/btn_vals [79]),
    .I3(\btns/l_btn/btn_vals [78]),
    .I4(\btns/l_btn/btn_vals [81]),
    .I5(\btns/l_btn/btn_vals [80]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>13_752 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>14  (
    .I0(\btns/l_btn/btn_vals [71]),
    .I1(\btns/l_btn/btn_vals [70]),
    .I2(\btns/l_btn/btn_vals [73]),
    .I3(\btns/l_btn/btn_vals [72]),
    .I4(\btns/l_btn/btn_vals [75]),
    .I5(\btns/l_btn/btn_vals [74]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>14_753 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>15  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>11_750 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>12_751 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>13_752 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>14_753 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>15_754 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>16  (
    .I0(\btns/l_btn/btn_vals [41]),
    .I1(\btns/l_btn/btn_vals [40]),
    .I2(\btns/l_btn/btn_vals [43]),
    .I3(\btns/l_btn/btn_vals [42]),
    .I4(\btns/l_btn/btn_vals [45]),
    .I5(\btns/l_btn/btn_vals [44]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>16_755 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>17  (
    .I0(\btns/l_btn/btn_vals [35]),
    .I1(\btns/l_btn/btn_vals [34]),
    .I2(\btns/l_btn/btn_vals [37]),
    .I3(\btns/l_btn/btn_vals [36]),
    .I4(\btns/l_btn/btn_vals [39]),
    .I5(\btns/l_btn/btn_vals [38]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>17_756 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>18  (
    .I0(\btns/l_btn/btn_vals [53]),
    .I1(\btns/l_btn/btn_vals [52]),
    .I2(\btns/l_btn/btn_vals [55]),
    .I3(\btns/l_btn/btn_vals [54]),
    .I4(\btns/l_btn/btn_vals [57]),
    .I5(\btns/l_btn/btn_vals [56]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>18_757 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>19  (
    .I0(\btns/l_btn/btn_vals [47]),
    .I1(\btns/l_btn/btn_vals [46]),
    .I2(\btns/l_btn/btn_vals [49]),
    .I3(\btns/l_btn/btn_vals [48]),
    .I4(\btns/l_btn/btn_vals [51]),
    .I5(\btns/l_btn/btn_vals [50]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>19_758 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>20  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>16_755 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>17_756 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>18_757 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>19_758 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>20_759 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>21  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>10_749 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>9_748 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>8_747 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>20_759 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>15_754 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>7_746 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>21_760 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>22  (
    .I0(\btns/b_btn/btn_vals [17]),
    .I1(\btns/b_btn/btn_vals [16]),
    .I2(\btns/b_btn/btn_vals [19]),
    .I3(\btns/b_btn/btn_vals [18]),
    .I4(\btns/b_btn/btn_vals [21]),
    .I5(\btns/b_btn/btn_vals [20]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>22_761 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>23  (
    .I0(\btns/b_btn/btn_vals [11]),
    .I1(\btns/b_btn/btn_vals [10]),
    .I2(\btns/b_btn/btn_vals [13]),
    .I3(\btns/b_btn/btn_vals [12]),
    .I4(\btns/b_btn/btn_vals [15]),
    .I5(\btns/b_btn/btn_vals [14]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>23_762 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>24  (
    .I0(\btns/b_btn/btn_vals [29]),
    .I1(\btns/b_btn/btn_vals [28]),
    .I2(\btns/b_btn/btn_vals [31]),
    .I3(\btns/b_btn/btn_vals [30]),
    .I4(\btns/b_btn/btn_vals [33]),
    .I5(\btns/b_btn/btn_vals [32]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>24_763 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>25  (
    .I0(\btns/b_btn/btn_vals [23]),
    .I1(\btns/b_btn/btn_vals [22]),
    .I2(\btns/b_btn/btn_vals [25]),
    .I3(\btns/b_btn/btn_vals [24]),
    .I4(\btns/b_btn/btn_vals [27]),
    .I5(\btns/b_btn/btn_vals [26]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>25_764 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>26  (
    .I0(\btns/b_btn/btn_vals [1]),
    .I1(\btns/b_btn/btn_vals [0]),
    .I2(\btns/b_btn/btn_vals [3]),
    .I3(\btns/b_btn/btn_vals [2]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>26_765 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>27  (
    .I0(\btns/b_btn/btn_vals [5]),
    .I1(\btns/b_btn/btn_vals [4]),
    .I2(\btns/b_btn/btn_vals [7]),
    .I3(\btns/b_btn/btn_vals [6]),
    .I4(\btns/b_btn/btn_vals [9]),
    .I5(\btns/b_btn/btn_vals [8]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>27_766 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>28  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>26_765 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>27_766 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>22_761 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>23_762 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>24_763 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>25_764 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>28_767 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>29  (
    .I0(\btns/b_btn/btn_vals [41]),
    .I1(\btns/b_btn/btn_vals [40]),
    .I2(\btns/b_btn/btn_vals [43]),
    .I3(\btns/b_btn/btn_vals [42]),
    .I4(\btns/b_btn/btn_vals [45]),
    .I5(\btns/b_btn/btn_vals [44]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>29_768 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>30  (
    .I0(\btns/b_btn/btn_vals [35]),
    .I1(\btns/b_btn/btn_vals [34]),
    .I2(\btns/b_btn/btn_vals [37]),
    .I3(\btns/b_btn/btn_vals [36]),
    .I4(\btns/b_btn/btn_vals [39]),
    .I5(\btns/b_btn/btn_vals [38]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>30_769 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>31  (
    .I0(\btns/b_btn/btn_vals [53]),
    .I1(\btns/b_btn/btn_vals [52]),
    .I2(\btns/b_btn/btn_vals [55]),
    .I3(\btns/b_btn/btn_vals [54]),
    .I4(\btns/b_btn/btn_vals [57]),
    .I5(\btns/b_btn/btn_vals [56]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>31_770 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>32  (
    .I0(\btns/b_btn/btn_vals [47]),
    .I1(\btns/b_btn/btn_vals [46]),
    .I2(\btns/b_btn/btn_vals [49]),
    .I3(\btns/b_btn/btn_vals [48]),
    .I4(\btns/b_btn/btn_vals [51]),
    .I5(\btns/b_btn/btn_vals [50]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>32_771 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>33  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>29_768 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>30_769 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>31_770 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>32_771 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>33_772 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>34  (
    .I0(\btns/b_btn/btn_vals [65]),
    .I1(\btns/b_btn/btn_vals [64]),
    .I2(\btns/b_btn/btn_vals [67]),
    .I3(\btns/b_btn/btn_vals [66]),
    .I4(\btns/b_btn/btn_vals [69]),
    .I5(\btns/b_btn/btn_vals [68]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>34_773 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>35  (
    .I0(\btns/b_btn/btn_vals [59]),
    .I1(\btns/b_btn/btn_vals [58]),
    .I2(\btns/b_btn/btn_vals [61]),
    .I3(\btns/b_btn/btn_vals [60]),
    .I4(\btns/b_btn/btn_vals [63]),
    .I5(\btns/b_btn/btn_vals [62]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>35_774 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>36  (
    .I0(\btns/b_btn/btn_vals [77]),
    .I1(\btns/b_btn/btn_vals [76]),
    .I2(\btns/b_btn/btn_vals [79]),
    .I3(\btns/b_btn/btn_vals [78]),
    .I4(\btns/b_btn/btn_vals [81]),
    .I5(\btns/b_btn/btn_vals [80]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>36_775 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>37  (
    .I0(\btns/b_btn/btn_vals [71]),
    .I1(\btns/b_btn/btn_vals [70]),
    .I2(\btns/b_btn/btn_vals [73]),
    .I3(\btns/b_btn/btn_vals [72]),
    .I4(\btns/b_btn/btn_vals [75]),
    .I5(\btns/b_btn/btn_vals [74]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>37_776 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>38  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>34_773 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>35_774 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>36_775 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>37_776 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>33_772 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>38_777 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>39  (
    .I0(\btns/b_btn/btn_vals [95]),
    .I1(\btns/b_btn/btn_vals [94]),
    .I2(\btns/b_btn/btn_vals [97]),
    .I3(\btns/b_btn/btn_vals [96]),
    .I4(\btns/b_btn/btn_vals [99]),
    .I5(\btns/b_btn/btn_vals [98]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>39_778 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>40  (
    .I0(\btns/b_btn/btn_vals [89]),
    .I1(\btns/b_btn/btn_vals [88]),
    .I2(\btns/b_btn/btn_vals [91]),
    .I3(\btns/b_btn/btn_vals [90]),
    .I4(\btns/b_btn/btn_vals [93]),
    .I5(\btns/b_btn/btn_vals [92]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>40_779 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>41  (
    .I0(\btns/b_btn/btn_vals [83]),
    .I1(\btns/b_btn/btn_vals [82]),
    .I2(\btns/b_btn/btn_vals [85]),
    .I3(\btns/b_btn/btn_vals [84]),
    .I4(\btns/b_btn/btn_vals [87]),
    .I5(\btns/b_btn/btn_vals [86]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>41_780 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>42  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>41_780 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>40_779 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>39_778 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>28_767 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>38_777 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>21_760 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>42_781 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>43  (
    .I0(\btns/r_btn/btn_vals [17]),
    .I1(\btns/r_btn/btn_vals [16]),
    .I2(\btns/r_btn/btn_vals [19]),
    .I3(\btns/r_btn/btn_vals [18]),
    .I4(\btns/r_btn/btn_vals [21]),
    .I5(\btns/r_btn/btn_vals [20]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>43_782 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>44  (
    .I0(\btns/r_btn/btn_vals [11]),
    .I1(\btns/r_btn/btn_vals [10]),
    .I2(\btns/r_btn/btn_vals [13]),
    .I3(\btns/r_btn/btn_vals [12]),
    .I4(\btns/r_btn/btn_vals [15]),
    .I5(\btns/r_btn/btn_vals [14]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>44_783 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>45  (
    .I0(\btns/r_btn/btn_vals [29]),
    .I1(\btns/r_btn/btn_vals [28]),
    .I2(\btns/r_btn/btn_vals [31]),
    .I3(\btns/r_btn/btn_vals [30]),
    .I4(\btns/r_btn/btn_vals [33]),
    .I5(\btns/r_btn/btn_vals [32]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>45_784 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>46  (
    .I0(\btns/r_btn/btn_vals [23]),
    .I1(\btns/r_btn/btn_vals [22]),
    .I2(\btns/r_btn/btn_vals [25]),
    .I3(\btns/r_btn/btn_vals [24]),
    .I4(\btns/r_btn/btn_vals [27]),
    .I5(\btns/r_btn/btn_vals [26]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>46_785 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>47  (
    .I0(\btns/r_btn/btn_vals [1]),
    .I1(\btns/r_btn/btn_vals [0]),
    .I2(\btns/r_btn/btn_vals [3]),
    .I3(\btns/r_btn/btn_vals [2]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>47_786 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>48  (
    .I0(\btns/r_btn/btn_vals [5]),
    .I1(\btns/r_btn/btn_vals [4]),
    .I2(\btns/r_btn/btn_vals [7]),
    .I3(\btns/r_btn/btn_vals [6]),
    .I4(\btns/r_btn/btn_vals [9]),
    .I5(\btns/r_btn/btn_vals [8]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>48_787 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>49  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>47_786 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>48_787 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>43_782 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>44_783 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>45_784 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>46_785 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>49_788 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>50  (
    .I0(\btns/r_btn/btn_vals [95]),
    .I1(\btns/r_btn/btn_vals [94]),
    .I2(\btns/r_btn/btn_vals [97]),
    .I3(\btns/r_btn/btn_vals [96]),
    .I4(\btns/r_btn/btn_vals [99]),
    .I5(\btns/r_btn/btn_vals [98]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>50_789 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>51  (
    .I0(\btns/r_btn/btn_vals [89]),
    .I1(\btns/r_btn/btn_vals [88]),
    .I2(\btns/r_btn/btn_vals [91]),
    .I3(\btns/r_btn/btn_vals [90]),
    .I4(\btns/r_btn/btn_vals [93]),
    .I5(\btns/r_btn/btn_vals [92]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>51_790 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>52  (
    .I0(\btns/r_btn/btn_vals [83]),
    .I1(\btns/r_btn/btn_vals [82]),
    .I2(\btns/r_btn/btn_vals [85]),
    .I3(\btns/r_btn/btn_vals [84]),
    .I4(\btns/r_btn/btn_vals [87]),
    .I5(\btns/r_btn/btn_vals [86]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>52_791 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>53  (
    .I0(\btns/r_btn/btn_vals [65]),
    .I1(\btns/r_btn/btn_vals [64]),
    .I2(\btns/r_btn/btn_vals [67]),
    .I3(\btns/r_btn/btn_vals [66]),
    .I4(\btns/r_btn/btn_vals [69]),
    .I5(\btns/r_btn/btn_vals [68]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>53_792 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>54  (
    .I0(\btns/r_btn/btn_vals [59]),
    .I1(\btns/r_btn/btn_vals [58]),
    .I2(\btns/r_btn/btn_vals [61]),
    .I3(\btns/r_btn/btn_vals [60]),
    .I4(\btns/r_btn/btn_vals [63]),
    .I5(\btns/r_btn/btn_vals [62]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>54_793 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>55  (
    .I0(\btns/r_btn/btn_vals [77]),
    .I1(\btns/r_btn/btn_vals [76]),
    .I2(\btns/r_btn/btn_vals [79]),
    .I3(\btns/r_btn/btn_vals [78]),
    .I4(\btns/r_btn/btn_vals [81]),
    .I5(\btns/r_btn/btn_vals [80]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>55_794 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>56  (
    .I0(\btns/r_btn/btn_vals [71]),
    .I1(\btns/r_btn/btn_vals [70]),
    .I2(\btns/r_btn/btn_vals [73]),
    .I3(\btns/r_btn/btn_vals [72]),
    .I4(\btns/r_btn/btn_vals [75]),
    .I5(\btns/r_btn/btn_vals [74]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>56_795 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>57  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>53_792 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>54_793 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>55_794 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>56_795 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>57_796 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>58  (
    .I0(\btns/r_btn/btn_vals [41]),
    .I1(\btns/r_btn/btn_vals [40]),
    .I2(\btns/r_btn/btn_vals [43]),
    .I3(\btns/r_btn/btn_vals [42]),
    .I4(\btns/r_btn/btn_vals [45]),
    .I5(\btns/r_btn/btn_vals [44]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>58_797 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>59  (
    .I0(\btns/r_btn/btn_vals [35]),
    .I1(\btns/r_btn/btn_vals [34]),
    .I2(\btns/r_btn/btn_vals [37]),
    .I3(\btns/r_btn/btn_vals [36]),
    .I4(\btns/r_btn/btn_vals [39]),
    .I5(\btns/r_btn/btn_vals [38]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>59_798 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>60  (
    .I0(\btns/r_btn/btn_vals [53]),
    .I1(\btns/r_btn/btn_vals [52]),
    .I2(\btns/r_btn/btn_vals [55]),
    .I3(\btns/r_btn/btn_vals [54]),
    .I4(\btns/r_btn/btn_vals [57]),
    .I5(\btns/r_btn/btn_vals [56]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>60_799 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>61  (
    .I0(\btns/r_btn/btn_vals [47]),
    .I1(\btns/r_btn/btn_vals [46]),
    .I2(\btns/r_btn/btn_vals [49]),
    .I3(\btns/r_btn/btn_vals [48]),
    .I4(\btns/r_btn/btn_vals [51]),
    .I5(\btns/r_btn/btn_vals [50]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>61_800 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>62  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>58_797 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>59_798 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>60_799 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>61_800 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>62_801 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>63  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>52_791 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>51_790 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>50_789 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>62_801 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>57_796 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>49_788 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>63_802 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>64  (
    .I0(\btns/t_btn/btn_vals [17]),
    .I1(\btns/t_btn/btn_vals [16]),
    .I2(\btns/t_btn/btn_vals [19]),
    .I3(\btns/t_btn/btn_vals [18]),
    .I4(\btns/t_btn/btn_vals [21]),
    .I5(\btns/t_btn/btn_vals [20]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>64_803 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>65  (
    .I0(\btns/t_btn/btn_vals [11]),
    .I1(\btns/t_btn/btn_vals [10]),
    .I2(\btns/t_btn/btn_vals [13]),
    .I3(\btns/t_btn/btn_vals [12]),
    .I4(\btns/t_btn/btn_vals [15]),
    .I5(\btns/t_btn/btn_vals [14]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>65_804 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>66  (
    .I0(\btns/t_btn/btn_vals [29]),
    .I1(\btns/t_btn/btn_vals [28]),
    .I2(\btns/t_btn/btn_vals [31]),
    .I3(\btns/t_btn/btn_vals [30]),
    .I4(\btns/t_btn/btn_vals [33]),
    .I5(\btns/t_btn/btn_vals [32]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>66_805 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>67  (
    .I0(\btns/t_btn/btn_vals [23]),
    .I1(\btns/t_btn/btn_vals [22]),
    .I2(\btns/t_btn/btn_vals [25]),
    .I3(\btns/t_btn/btn_vals [24]),
    .I4(\btns/t_btn/btn_vals [27]),
    .I5(\btns/t_btn/btn_vals [26]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>67_806 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>68  (
    .I0(\btns/t_btn/btn_vals [1]),
    .I1(\btns/t_btn/btn_vals [0]),
    .I2(\btns/t_btn/btn_vals [3]),
    .I3(\btns/t_btn/btn_vals [2]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>68_807 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>69  (
    .I0(\btns/t_btn/btn_vals [5]),
    .I1(\btns/t_btn/btn_vals [4]),
    .I2(\btns/t_btn/btn_vals [7]),
    .I3(\btns/t_btn/btn_vals [6]),
    .I4(\btns/t_btn/btn_vals [9]),
    .I5(\btns/t_btn/btn_vals [8]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>69_808 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>70  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>68_807 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>69_808 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>64_803 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>65_804 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>66_805 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>67_806 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>70_809 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>71  (
    .I0(\btns/t_btn/btn_vals [41]),
    .I1(\btns/t_btn/btn_vals [40]),
    .I2(\btns/t_btn/btn_vals [43]),
    .I3(\btns/t_btn/btn_vals [42]),
    .I4(\btns/t_btn/btn_vals [45]),
    .I5(\btns/t_btn/btn_vals [44]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>71_810 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>72  (
    .I0(\btns/t_btn/btn_vals [35]),
    .I1(\btns/t_btn/btn_vals [34]),
    .I2(\btns/t_btn/btn_vals [37]),
    .I3(\btns/t_btn/btn_vals [36]),
    .I4(\btns/t_btn/btn_vals [39]),
    .I5(\btns/t_btn/btn_vals [38]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>72_811 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>73  (
    .I0(\btns/t_btn/btn_vals [53]),
    .I1(\btns/t_btn/btn_vals [52]),
    .I2(\btns/t_btn/btn_vals [55]),
    .I3(\btns/t_btn/btn_vals [54]),
    .I4(\btns/t_btn/btn_vals [57]),
    .I5(\btns/t_btn/btn_vals [56]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>73_812 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>74  (
    .I0(\btns/t_btn/btn_vals [47]),
    .I1(\btns/t_btn/btn_vals [46]),
    .I2(\btns/t_btn/btn_vals [49]),
    .I3(\btns/t_btn/btn_vals [48]),
    .I4(\btns/t_btn/btn_vals [51]),
    .I5(\btns/t_btn/btn_vals [50]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>74_813 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>75  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>71_810 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>72_811 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>73_812 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>74_813 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>75_814 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>76  (
    .I0(\btns/t_btn/btn_vals [65]),
    .I1(\btns/t_btn/btn_vals [64]),
    .I2(\btns/t_btn/btn_vals [67]),
    .I3(\btns/t_btn/btn_vals [66]),
    .I4(\btns/t_btn/btn_vals [69]),
    .I5(\btns/t_btn/btn_vals [68]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>76_815 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>77  (
    .I0(\btns/t_btn/btn_vals [59]),
    .I1(\btns/t_btn/btn_vals [58]),
    .I2(\btns/t_btn/btn_vals [61]),
    .I3(\btns/t_btn/btn_vals [60]),
    .I4(\btns/t_btn/btn_vals [63]),
    .I5(\btns/t_btn/btn_vals [62]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>77_816 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>78  (
    .I0(\btns/t_btn/btn_vals [77]),
    .I1(\btns/t_btn/btn_vals [76]),
    .I2(\btns/t_btn/btn_vals [79]),
    .I3(\btns/t_btn/btn_vals [78]),
    .I4(\btns/t_btn/btn_vals [81]),
    .I5(\btns/t_btn/btn_vals [80]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>78_817 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>79  (
    .I0(\btns/t_btn/btn_vals [71]),
    .I1(\btns/t_btn/btn_vals [70]),
    .I2(\btns/t_btn/btn_vals [73]),
    .I3(\btns/t_btn/btn_vals [72]),
    .I4(\btns/t_btn/btn_vals [75]),
    .I5(\btns/t_btn/btn_vals [74]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>79_818 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>80  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>76_815 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>77_816 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>78_817 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>79_818 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>75_814 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>80_819 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>81  (
    .I0(\btns/t_btn/btn_vals [95]),
    .I1(\btns/t_btn/btn_vals [94]),
    .I2(\btns/t_btn/btn_vals [97]),
    .I3(\btns/t_btn/btn_vals [96]),
    .I4(\btns/t_btn/btn_vals [99]),
    .I5(\btns/t_btn/btn_vals [98]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>81_820 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>82  (
    .I0(\btns/t_btn/btn_vals [89]),
    .I1(\btns/t_btn/btn_vals [88]),
    .I2(\btns/t_btn/btn_vals [91]),
    .I3(\btns/t_btn/btn_vals [90]),
    .I4(\btns/t_btn/btn_vals [93]),
    .I5(\btns/t_btn/btn_vals [92]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>82_821 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>83  (
    .I0(\btns/t_btn/btn_vals [83]),
    .I1(\btns/t_btn/btn_vals [82]),
    .I2(\btns/t_btn/btn_vals [85]),
    .I3(\btns/t_btn/btn_vals [84]),
    .I4(\btns/t_btn/btn_vals [87]),
    .I5(\btns/t_btn/btn_vals [86]),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>83_822 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \current_state[2]_GND_1_o_select_15_OUT<1>84  (
    .I0(\current_state[2]_GND_1_o_select_15_OUT<1>83_822 ),
    .I1(\current_state[2]_GND_1_o_select_15_OUT<1>82_821 ),
    .I2(\current_state[2]_GND_1_o_select_15_OUT<1>81_820 ),
    .I3(\current_state[2]_GND_1_o_select_15_OUT<1>70_809 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>80_819 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>63_802 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1>84_823 )
  );
  LUT6 #(
    .INIT ( 64'h2FEC2FEC2FEC2CEC ))
  \current_state[2]_GND_1_o_select_15_OUT<1>85  (
    .I0(next_state[1]),
    .I1(current_state[1]),
    .I2(current_state[0]),
    .I3(\sender/ready_16 ),
    .I4(\current_state[2]_GND_1_o_select_15_OUT<1>84_823 ),
    .I5(\current_state[2]_GND_1_o_select_15_OUT<1>42_781 ),
    .O(\current_state[2]_GND_1_o_select_15_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0001010111111111 ))
  \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT21  (
    .I0(\sender/bitTmr [9]),
    .I1(\sender/bitTmr [8]),
    .I2(\sender/bitTmr [6]),
    .I3(\sender/bitTmr [5]),
    .I4(\sender/bitTmr [4]),
    .I5(\sender/bitTmr [7]),
    .O(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT2 )
  );
  LUT5 #(
    .INIT ( 32'h1151FFFF ))
  \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT22  (
    .I0(\sender/bitTmr [12]),
    .I1(\sender/bitTmr [11]),
    .I2(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT2 ),
    .I3(\sender/bitTmr [10]),
    .I4(\sender/bitTmr [13]),
    .O(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT21_825 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT23  (
    .I0(\sender/current_state [1]),
    .I1(\sender/current_state [0]),
    .I2(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT21_825 ),
    .O(\sender/current_state[1]_next_state[1]_wide_mux_17_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT11  (
    .I0(\sender/bitTmr [7]),
    .I1(\sender/bitTmr [4]),
    .I2(\sender/bitTmr [5]),
    .I3(\sender/bitTmr [6]),
    .O(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAAA8 ))
  \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT12  (
    .I0(\sender/bitTmr [11]),
    .I1(\sender/bitTmr [10]),
    .I2(\sender/bitTmr [8]),
    .I3(\sender/bitTmr [9]),
    .I4(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT1 ),
    .I5(\sender/bitTmr [12]),
    .O(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT11_827 )
  );
  LUT4 #(
    .INIT ( 16'h222A ))
  \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT13  (
    .I0(\sender/bitTmr [13]),
    .I1(\sender/bitIndex [3]),
    .I2(\sender/bitIndex [2]),
    .I3(\sender/bitIndex [1]),
    .O(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT12_828 )
  );
  LUT5 #(
    .INIT ( 32'hBA101010 ))
  \sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT14  (
    .I0(\sender/current_state [1]),
    .I1(\sender/current_state [0]),
    .I2(start_transmit_27),
    .I3(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT12_828 ),
    .I4(\sender/Mmux_current_state[1]_next_state[1]_wide_mux_17_OUT11_827 ),
    .O(\sender/current_state[1]_next_state[1]_wide_mux_17_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \sender/Mmux__n008511  (
    .I0(\sender/bitIndex [0]),
    .I1(\sender/latched_data [7]),
    .I2(\sender/bitIndex [3]),
    .O(\sender/Mmux__n00851 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \receiver/bit_done_INV_7_o1  (
    .I0(\receiver/bitTmr [3]),
    .I1(\receiver/bitTmr [2]),
    .I2(\receiver/bitTmr [9]),
    .I3(\receiver/bitTmr [8]),
    .I4(\receiver/bitTmr [6]),
    .O(\receiver/bit_done_INV_7_o1_830 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF7FFFFFFFFF ))
  \receiver/bit_done_INV_7_o2  (
    .I0(\receiver/bitTmr [11]),
    .I1(\receiver/bitTmr [13]),
    .I2(\receiver/bitTmr [4]),
    .I3(\receiver/bitTmr [10]),
    .I4(\receiver/bitTmr [12]),
    .I5(\receiver/bitTmr [5]),
    .O(\receiver/bit_done_INV_7_o2_831 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFEFF ))
  \receiver/bit_done_INV_7_o3  (
    .I0(\receiver/bit_done_INV_7_o2_831 ),
    .I1(\receiver/bitTmr [0]),
    .I2(\receiver/bit_done_INV_7_o1_830 ),
    .I3(\receiver/bitTmr [7]),
    .I4(\receiver/bitTmr [1]),
    .O(\receiver/bit_done_INV_7_o )
  );
  IBUF   bouncy_btns_4_IBUF (
    .I(bouncy_btns[4]),
    .O(bouncy_btns_4_IBUF_0)
  );
  IBUF   bouncy_btns_3_IBUF (
    .I(bouncy_btns[3]),
    .O(bouncy_btns_3_IBUF_1)
  );
  IBUF   bouncy_btns_2_IBUF (
    .I(bouncy_btns[2]),
    .O(bouncy_btns_2_IBUF_2)
  );
  IBUF   bouncy_btns_1_IBUF (
    .I(bouncy_btns[1]),
    .O(bouncy_btns_1_IBUF_3)
  );
  IBUF   bouncy_btns_0_IBUF (
    .I(bouncy_btns[0]),
    .O(bouncy_btns_0_IBUF_4)
  );
  IBUF   switch_7_IBUF (
    .I(switch[7]),
    .O(switch_7_IBUF_5)
  );
  IBUF   switch_6_IBUF (
    .I(switch[6]),
    .O(switch_6_IBUF_6)
  );
  IBUF   switch_5_IBUF (
    .I(switch[5]),
    .O(switch_5_IBUF_7)
  );
  IBUF   switch_4_IBUF (
    .I(switch[4]),
    .O(switch_4_IBUF_8)
  );
  IBUF   switch_3_IBUF (
    .I(switch[3]),
    .O(switch_3_IBUF_9)
  );
  IBUF   switch_2_IBUF (
    .I(switch[2]),
    .O(switch_2_IBUF_10)
  );
  IBUF   switch_1_IBUF (
    .I(switch[1]),
    .O(switch_1_IBUF_11)
  );
  IBUF   switch_0_IBUF (
    .I(switch[0]),
    .O(switch_0_IBUF_12)
  );
  IBUF   uart_i_IBUF (
    .I(uart_i),
    .O(uart_i_IBUF_13)
  );
  OBUF   led_7_OBUF (
    .I(led_7_32),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(led_6_33),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(led_5_34),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(led_4_35),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(led_3_36),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(led_2_37),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(led_1_38),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(led_0_39),
    .O(led[0])
  );
  OBUF   uart_o_OBUF (
    .I(\sender/txBit_17 ),
    .O(uart_o)
  );
  FD_1   \sender/txBit  (
    .C(clk_BUFGP_14),
    .D(\sender/txBit_rstpot_856 ),
    .Q(\sender/txBit_17 )
  );
  FD_1   \receiver/new_data  (
    .C(clk_BUFGP_14),
    .D(\receiver/new_data_rstpot_857 ),
    .Q(\receiver/new_data_26 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<0>  (
    .I0(\sender/bitTmr [0]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<0>  (
    .I0(\receiver/bitTmr [0]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<1>  (
    .I0(\sender/bitTmr [1]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<1>  (
    .I0(\receiver/bitTmr [1]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<2>  (
    .I0(\sender/bitTmr [2]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<2>  (
    .I0(\receiver/bitTmr [2]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<3>  (
    .I0(\sender/bitTmr [3]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<3>  (
    .I0(\receiver/bitTmr [3]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<4>  (
    .I0(\sender/bitTmr [4]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<4>  (
    .I0(\receiver/bitTmr [4]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<5>  (
    .I0(\sender/bitTmr [5]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<5>  (
    .I0(\receiver/bitTmr [5]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<6>  (
    .I0(\sender/bitTmr [6]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<6>  (
    .I0(\receiver/bitTmr [6]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<7>  (
    .I0(\sender/bitTmr [7]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<7>  (
    .I0(\receiver/bitTmr [7]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<8>  (
    .I0(\sender/bitTmr [8]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<8>  (
    .I0(\receiver/bitTmr [8]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<9>  (
    .I0(\sender/bitTmr [9]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<9>  (
    .I0(\receiver/bitTmr [9]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<10>  (
    .I0(\sender/bitTmr [10]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<10>  (
    .I0(\receiver/bitTmr [10]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<11>  (
    .I0(\sender/bitTmr [11]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<11>  (
    .I0(\receiver/bitTmr [11]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<12>  (
    .I0(\sender/bitTmr [12]),
    .I1(\sender/current_state [1]),
    .O(\sender/Mcount_bitTmr_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<12>  (
    .I0(\receiver/bitTmr [12]),
    .I1(\receiver/current_state [1]),
    .O(\receiver/Mcount_bitTmr_lut [12])
  );
  LUT6 #(
    .INIT ( 64'hFBFBFBFF51515155 ))
  \sender/txBit_rstpot  (
    .I0(\sender/current_state [1]),
    .I1(\sender/current_state [0]),
    .I2(\sender/Mmux__n00851 ),
    .I3(\sender/bitIndex [3]),
    .I4(N2),
    .I5(\sender/txBit_17 ),
    .O(\sender/txBit_rstpot_856 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sender/Mcount_bitTmr_lut<13>  (
    .I0(\sender/current_state [1]),
    .I1(\sender/bitTmr [13]),
    .O(\sender/Mcount_bitTmr_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/Mcount_bitTmr_lut<13>  (
    .I0(\receiver/current_state [1]),
    .I1(\receiver/bitTmr [13]),
    .O(\receiver/Mcount_bitTmr_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \receiver/_n0093_inv1_SW0  (
    .I0(\receiver/bitIndex [1]),
    .I1(\receiver/bitIndex [0]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F4F0F0F00000 ))
  \receiver/new_data_rstpot  (
    .I0(\receiver/bitIndex [3]),
    .I1(\receiver/bitIndex [2]),
    .I2(\receiver/new_data_26 ),
    .I3(N4),
    .I4(\receiver/current_state [0]),
    .I5(\receiver/current_state [1]),
    .O(\receiver/new_data_rstpot_857 )
  );
  LUT5 #(
    .INIT ( 32'h00004000 ))
  \receiver/_n0081_inv1_rstpot  (
    .I0(\receiver/bitIndex [3]),
    .I1(\receiver/bitIndex [2]),
    .I2(\receiver/bitIndex [1]),
    .I3(\receiver/bitIndex [0]),
    .I4(\receiver/current_state [0]),
    .O(\receiver/_n0081_inv1_rstpot_860 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_0_dpot  (
    .I0(\receiver/tx_data [0]),
    .I1(\receiver/data [0]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_0_dpot_861 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_1_dpot  (
    .I0(\receiver/tx_data [1]),
    .I1(\receiver/data [1]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_1_dpot_862 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_2_dpot  (
    .I0(\receiver/tx_data [2]),
    .I1(\receiver/data [2]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_2_dpot_863 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_3_dpot  (
    .I0(\receiver/tx_data [3]),
    .I1(\receiver/data [3]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_3_dpot_864 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_4_dpot  (
    .I0(\receiver/tx_data [4]),
    .I1(\receiver/data [4]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_4_dpot_865 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_5_dpot  (
    .I0(\receiver/tx_data [5]),
    .I1(\receiver/data [5]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_5_dpot_866 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_6_dpot  (
    .I0(\receiver/tx_data [6]),
    .I1(\receiver/data [6]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_6_dpot_867 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \receiver/data_7_dpot  (
    .I0(\receiver/tx_data [7]),
    .I1(\receiver/data [7]),
    .I2(\receiver/_n0081_inv1_rstpot_860 ),
    .O(\receiver/data_7_dpot_868 )
  );
  FDR   \sender/current_state_1_1  (
    .C(clk_BUFGP_14),
    .D(\sender/next_state [1]),
    .R(db_btns[0]),
    .Q(\sender/current_state_1_1_869 )
  );
  FDR   \receiver/current_state_1_1  (
    .C(clk_BUFGP_14),
    .D(\receiver/next_state [1]),
    .R(db_btns[0]),
    .Q(\receiver/current_state_1_1_870 )
  );
  FDR   \receiver/current_state_1_2  (
    .C(clk_BUFGP_14),
    .D(\receiver/next_state [1]),
    .R(db_btns[0]),
    .Q(\receiver/current_state_1_2_880 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_0_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_0_IBUF_12),
    .I2(\sender/latched_data [0]),
    .O(\sender/latched_data_0_dpot_872 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_1_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_1_IBUF_11),
    .I2(\sender/latched_data [1]),
    .O(\sender/latched_data_1_dpot_873 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_2_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_2_IBUF_10),
    .I2(\sender/latched_data [2]),
    .O(\sender/latched_data_2_dpot_874 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_3_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_3_IBUF_9),
    .I2(\sender/latched_data [3]),
    .O(\sender/latched_data_3_dpot_875 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_4_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_4_IBUF_8),
    .I2(\sender/latched_data [4]),
    .O(\sender/latched_data_4_dpot_876 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_5_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_5_IBUF_7),
    .I2(\sender/latched_data [5]),
    .O(\sender/latched_data_5_dpot_877 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_6_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_6_IBUF_6),
    .I2(\sender/latched_data [6]),
    .O(\sender/latched_data_6_dpot_878 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sender/latched_data_7_dpot  (
    .I0(\sender/current_state [0]),
    .I1(switch_7_IBUF_5),
    .I2(\sender/latched_data [7]),
    .O(\sender/latched_data_7_dpot_879 )
  );
  FDR   \sender/current_state_1_2  (
    .C(clk_BUFGP_14),
    .D(\sender/next_state [1]),
    .R(db_btns[0]),
    .Q(\sender/current_state_1_2_881 )
  );
  MUXF7   \sender/txBit_rstpot_SW0  (
    .I0(N6),
    .I1(N7),
    .S(\sender/bitIndex [1]),
    .O(N2)
  );
  LUT5 #(
    .INIT ( 32'h082A4C6E ))
  \sender/txBit_rstpot_SW0_F  (
    .I0(\sender/bitIndex [0]),
    .I1(\sender/bitIndex [2]),
    .I2(\sender/latched_data [4]),
    .I3(\sender/latched_data [0]),
    .I4(\sender/latched_data [3]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h028A139B46CE57DF ))
  \sender/txBit_rstpot_SW0_G  (
    .I0(\sender/bitIndex [0]),
    .I1(\sender/bitIndex [2]),
    .I2(\sender/latched_data [2]),
    .I3(\sender/latched_data [6]),
    .I4(\sender/latched_data [1]),
    .I5(\sender/latched_data [5]),
    .O(N7)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_14)
  );
  INV   \sender/clk_inv1_INV_0  (
    .I(clk_BUFGP_14),
    .O(\receiver/clk_inv )
  );
  INV   \sender/current_state<1>_inv1_INV_0  (
    .I(\sender/current_state [1]),
    .O(\sender/current_state<1>_inv )
  );
  INV   \receiver/current_state<1>_inv1_INV_0  (
    .I(\receiver/current_state_1_2_880 ),
    .O(\receiver/current_state<1>_inv )
  );
  INV   \sender/_n0057<1>1_cepot_INV_0  (
    .I(\sender/current_state_1_2_881 ),
    .O(\sender/_n0057<1>1_cepot )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

