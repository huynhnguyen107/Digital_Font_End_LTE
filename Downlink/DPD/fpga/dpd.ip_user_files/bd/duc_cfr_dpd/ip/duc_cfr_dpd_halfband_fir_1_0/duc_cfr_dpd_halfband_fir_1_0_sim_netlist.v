// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jun  9 17:24:39 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/FPGA/Vivaldo
//               Project/Digital_Font_End_LTE/Downlink/DPD/fpga/dpd.gen/sources_1/bd/duc_cfr_dpd/ip/duc_cfr_dpd_halfband_fir_1_0/duc_cfr_dpd_halfband_fir_1_0_sim_netlist.v}
// Design      : duc_cfr_dpd_halfband_fir_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "duc_cfr_dpd_halfband_fir_1_0,halfband_fir,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "halfband_fir,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module duc_cfr_dpd_halfband_fir_1_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN duc_cfr_dpd_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_dpd_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_dpd_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tkeep[3:0] = s_axis_tkeep;
  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  duc_cfr_dpd_halfband_fir_1_0_halfband_fir inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "halfband_fir" *) 
module duc_cfr_dpd_halfband_fir_1_0_halfband_fir
   (m_axis_tdata,
    s_axis_tdata,
    s_axis_tvalid,
    m_axis_tready,
    s_axis_tlast,
    aresetn,
    aclk);
  output [31:0]m_axis_tdata;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  input m_axis_tready;
  input s_axis_tlast;
  input aresetn;
  input aclk;

  wire \I1[15]_i_1_n_0 ;
  wire \I1[15]_i_2_n_0 ;
  wire \I1_reg_n_0_[0] ;
  wire \I1_reg_n_0_[10] ;
  wire \I1_reg_n_0_[11] ;
  wire \I1_reg_n_0_[12] ;
  wire \I1_reg_n_0_[13] ;
  wire \I1_reg_n_0_[14] ;
  wire \I1_reg_n_0_[15] ;
  wire \I1_reg_n_0_[1] ;
  wire \I1_reg_n_0_[2] ;
  wire \I1_reg_n_0_[3] ;
  wire \I1_reg_n_0_[4] ;
  wire \I1_reg_n_0_[5] ;
  wire \I1_reg_n_0_[6] ;
  wire \I1_reg_n_0_[7] ;
  wire \I1_reg_n_0_[8] ;
  wire \I1_reg_n_0_[9] ;
  wire \I2_reg_n_0_[0] ;
  wire \I2_reg_n_0_[10] ;
  wire \I2_reg_n_0_[11] ;
  wire \I2_reg_n_0_[12] ;
  wire \I2_reg_n_0_[13] ;
  wire \I2_reg_n_0_[14] ;
  wire \I2_reg_n_0_[1] ;
  wire \I2_reg_n_0_[2] ;
  wire \I2_reg_n_0_[3] ;
  wire \I2_reg_n_0_[4] ;
  wire \I2_reg_n_0_[5] ;
  wire \I2_reg_n_0_[6] ;
  wire \I2_reg_n_0_[7] ;
  wire \I2_reg_n_0_[8] ;
  wire \I2_reg_n_0_[9] ;
  wire \I4_reg_n_0_[0] ;
  wire \I4_reg_n_0_[10] ;
  wire \I4_reg_n_0_[11] ;
  wire \I4_reg_n_0_[12] ;
  wire \I4_reg_n_0_[13] ;
  wire \I4_reg_n_0_[14] ;
  wire \I4_reg_n_0_[1] ;
  wire \I4_reg_n_0_[2] ;
  wire \I4_reg_n_0_[3] ;
  wire \I4_reg_n_0_[4] ;
  wire \I4_reg_n_0_[5] ;
  wire \I4_reg_n_0_[6] ;
  wire \I4_reg_n_0_[7] ;
  wire \I4_reg_n_0_[8] ;
  wire \I4_reg_n_0_[9] ;
  wire [15:0]I5;
  wire [15:0]I6;
  wire [15:0]Q1;
  wire \Q2_reg_n_0_[0] ;
  wire \Q2_reg_n_0_[10] ;
  wire \Q2_reg_n_0_[11] ;
  wire \Q2_reg_n_0_[12] ;
  wire \Q2_reg_n_0_[13] ;
  wire \Q2_reg_n_0_[14] ;
  wire \Q2_reg_n_0_[1] ;
  wire \Q2_reg_n_0_[2] ;
  wire \Q2_reg_n_0_[3] ;
  wire \Q2_reg_n_0_[4] ;
  wire \Q2_reg_n_0_[5] ;
  wire \Q2_reg_n_0_[6] ;
  wire \Q2_reg_n_0_[7] ;
  wire \Q2_reg_n_0_[8] ;
  wire \Q2_reg_n_0_[9] ;
  wire \Q4_reg_n_0_[0] ;
  wire \Q4_reg_n_0_[10] ;
  wire \Q4_reg_n_0_[11] ;
  wire \Q4_reg_n_0_[12] ;
  wire \Q4_reg_n_0_[13] ;
  wire \Q4_reg_n_0_[14] ;
  wire \Q4_reg_n_0_[1] ;
  wire \Q4_reg_n_0_[2] ;
  wire \Q4_reg_n_0_[3] ;
  wire \Q4_reg_n_0_[4] ;
  wire \Q4_reg_n_0_[5] ;
  wire \Q4_reg_n_0_[6] ;
  wire \Q4_reg_n_0_[7] ;
  wire \Q4_reg_n_0_[8] ;
  wire \Q4_reg_n_0_[9] ;
  wire [15:0]Q5;
  wire [15:0]Q6;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire total_I20;
  wire [19:4]total_I3;
  wire total_I50;
  wire total_I__0_carry__0_i_10_n_0;
  wire total_I__0_carry__0_i_11_n_0;
  wire total_I__0_carry__0_i_12_n_0;
  wire total_I__0_carry__0_i_13_n_0;
  wire total_I__0_carry__0_i_14_n_0;
  wire total_I__0_carry__0_i_15_n_0;
  wire total_I__0_carry__0_i_16_n_0;
  wire total_I__0_carry__0_i_1_n_0;
  wire total_I__0_carry__0_i_2_n_0;
  wire total_I__0_carry__0_i_3_n_0;
  wire total_I__0_carry__0_i_4_n_0;
  wire total_I__0_carry__0_i_5_n_0;
  wire total_I__0_carry__0_i_6_n_0;
  wire total_I__0_carry__0_i_7_n_0;
  wire total_I__0_carry__0_i_8_n_0;
  wire total_I__0_carry__0_i_9_n_0;
  wire total_I__0_carry__0_n_0;
  wire total_I__0_carry__0_n_1;
  wire total_I__0_carry__0_n_10;
  wire total_I__0_carry__0_n_11;
  wire total_I__0_carry__0_n_12;
  wire total_I__0_carry__0_n_13;
  wire total_I__0_carry__0_n_14;
  wire total_I__0_carry__0_n_15;
  wire total_I__0_carry__0_n_2;
  wire total_I__0_carry__0_n_3;
  wire total_I__0_carry__0_n_4;
  wire total_I__0_carry__0_n_5;
  wire total_I__0_carry__0_n_6;
  wire total_I__0_carry__0_n_7;
  wire total_I__0_carry__0_n_8;
  wire total_I__0_carry__0_n_9;
  wire total_I__0_carry__1_i_1_n_0;
  wire total_I__0_carry__1_i_2_n_0;
  wire total_I__0_carry__1_n_15;
  wire total_I__0_carry__1_n_6;
  wire total_I__0_carry_i_10_n_0;
  wire total_I__0_carry_i_11_n_0;
  wire total_I__0_carry_i_12_n_0;
  wire total_I__0_carry_i_13_n_0;
  wire total_I__0_carry_i_14_n_0;
  wire total_I__0_carry_i_15_n_0;
  wire total_I__0_carry_i_1_n_0;
  wire total_I__0_carry_i_2_n_0;
  wire total_I__0_carry_i_3_n_0;
  wire total_I__0_carry_i_4_n_0;
  wire total_I__0_carry_i_5_n_0;
  wire total_I__0_carry_i_6_n_0;
  wire total_I__0_carry_i_7_n_0;
  wire total_I__0_carry_i_8_n_0;
  wire total_I__0_carry_i_9_n_0;
  wire total_I__0_carry_n_0;
  wire total_I__0_carry_n_1;
  wire total_I__0_carry_n_10;
  wire total_I__0_carry_n_11;
  wire total_I__0_carry_n_12;
  wire total_I__0_carry_n_13;
  wire total_I__0_carry_n_14;
  wire total_I__0_carry_n_15;
  wire total_I__0_carry_n_2;
  wire total_I__0_carry_n_3;
  wire total_I__0_carry_n_4;
  wire total_I__0_carry_n_5;
  wire total_I__0_carry_n_6;
  wire total_I__0_carry_n_7;
  wire total_I__0_carry_n_8;
  wire total_I__0_carry_n_9;
  wire total_I__105_carry__0_i_10_n_0;
  wire total_I__105_carry__0_i_11_n_0;
  wire total_I__105_carry__0_i_12_n_0;
  wire total_I__105_carry__0_i_13_n_0;
  wire total_I__105_carry__0_i_14_n_0;
  wire total_I__105_carry__0_i_15_n_0;
  wire total_I__105_carry__0_i_16_n_0;
  wire total_I__105_carry__0_i_1_n_0;
  wire total_I__105_carry__0_i_2_n_0;
  wire total_I__105_carry__0_i_3_n_0;
  wire total_I__105_carry__0_i_4_n_0;
  wire total_I__105_carry__0_i_5_n_0;
  wire total_I__105_carry__0_i_6_n_0;
  wire total_I__105_carry__0_i_7_n_0;
  wire total_I__105_carry__0_i_8_n_0;
  wire total_I__105_carry__0_i_9_n_0;
  wire total_I__105_carry__0_n_0;
  wire total_I__105_carry__0_n_1;
  wire total_I__105_carry__0_n_2;
  wire total_I__105_carry__0_n_3;
  wire total_I__105_carry__0_n_4;
  wire total_I__105_carry__0_n_5;
  wire total_I__105_carry__0_n_6;
  wire total_I__105_carry__0_n_7;
  wire total_I__105_carry__1_i_1_n_0;
  wire total_I__105_carry__1_i_2_n_0;
  wire total_I__105_carry__1_i_3_n_0;
  wire total_I__105_carry__1_i_4_n_0;
  wire total_I__105_carry__1_i_5_n_0;
  wire total_I__105_carry__1_i_6_n_0;
  wire total_I__105_carry__1_i_7_n_0;
  wire total_I__105_carry__1_n_5;
  wire total_I__105_carry__1_n_6;
  wire total_I__105_carry__1_n_7;
  wire total_I__105_carry_i_10_n_0;
  wire total_I__105_carry_i_11_n_0;
  wire total_I__105_carry_i_12_n_0;
  wire total_I__105_carry_i_13_n_0;
  wire total_I__105_carry_i_1_n_0;
  wire total_I__105_carry_i_2_n_0;
  wire total_I__105_carry_i_3_n_0;
  wire total_I__105_carry_i_4_n_0;
  wire total_I__105_carry_i_5_n_0;
  wire total_I__105_carry_i_6_n_0;
  wire total_I__105_carry_i_7_n_0;
  wire total_I__105_carry_i_8_n_0;
  wire total_I__105_carry_i_9_n_0;
  wire total_I__105_carry_n_0;
  wire total_I__105_carry_n_1;
  wire total_I__105_carry_n_2;
  wire total_I__105_carry_n_3;
  wire total_I__105_carry_n_4;
  wire total_I__105_carry_n_5;
  wire total_I__105_carry_n_6;
  wire total_I__105_carry_n_7;
  wire total_I__53_carry__0_i_10_n_0;
  wire total_I__53_carry__0_i_11_n_0;
  wire total_I__53_carry__0_i_12_n_0;
  wire total_I__53_carry__0_i_13_n_0;
  wire total_I__53_carry__0_i_14_n_0;
  wire total_I__53_carry__0_i_15_n_0;
  wire total_I__53_carry__0_i_16_n_0;
  wire total_I__53_carry__0_i_1_n_0;
  wire total_I__53_carry__0_i_2_n_0;
  wire total_I__53_carry__0_i_3_n_0;
  wire total_I__53_carry__0_i_4_n_0;
  wire total_I__53_carry__0_i_5_n_0;
  wire total_I__53_carry__0_i_6_n_0;
  wire total_I__53_carry__0_i_7_n_0;
  wire total_I__53_carry__0_i_8_n_0;
  wire total_I__53_carry__0_i_9_n_0;
  wire total_I__53_carry__0_n_0;
  wire total_I__53_carry__0_n_1;
  wire total_I__53_carry__0_n_10;
  wire total_I__53_carry__0_n_11;
  wire total_I__53_carry__0_n_12;
  wire total_I__53_carry__0_n_13;
  wire total_I__53_carry__0_n_14;
  wire total_I__53_carry__0_n_15;
  wire total_I__53_carry__0_n_2;
  wire total_I__53_carry__0_n_3;
  wire total_I__53_carry__0_n_4;
  wire total_I__53_carry__0_n_5;
  wire total_I__53_carry__0_n_6;
  wire total_I__53_carry__0_n_7;
  wire total_I__53_carry__0_n_8;
  wire total_I__53_carry__0_n_9;
  wire total_I__53_carry__1_i_1_n_0;
  wire total_I__53_carry__1_i_2_n_0;
  wire total_I__53_carry__1_i_3_n_0;
  wire total_I__53_carry__1_n_14;
  wire total_I__53_carry__1_n_15;
  wire total_I__53_carry__1_n_7;
  wire total_I__53_carry_i_10_n_0;
  wire total_I__53_carry_i_11_n_0;
  wire total_I__53_carry_i_12_n_0;
  wire total_I__53_carry_i_1_n_0;
  wire total_I__53_carry_i_2_n_0;
  wire total_I__53_carry_i_3_n_0;
  wire total_I__53_carry_i_4_n_0;
  wire total_I__53_carry_i_5_n_0;
  wire total_I__53_carry_i_6_n_0;
  wire total_I__53_carry_i_7_n_0;
  wire total_I__53_carry_i_8_n_0;
  wire total_I__53_carry_i_9_n_0;
  wire total_I__53_carry_n_0;
  wire total_I__53_carry_n_1;
  wire total_I__53_carry_n_10;
  wire total_I__53_carry_n_11;
  wire total_I__53_carry_n_12;
  wire total_I__53_carry_n_13;
  wire total_I__53_carry_n_14;
  wire total_I__53_carry_n_15;
  wire total_I__53_carry_n_2;
  wire total_I__53_carry_n_3;
  wire total_I__53_carry_n_4;
  wire total_I__53_carry_n_5;
  wire total_I__53_carry_n_6;
  wire total_I__53_carry_n_7;
  wire total_I__53_carry_n_8;
  wire total_I__53_carry_n_9;
  wire total_Q20;
  wire [19:4]total_Q3;
  wire total_Q50;
  wire total_Q__0_carry__0_i_10_n_0;
  wire total_Q__0_carry__0_i_11_n_0;
  wire total_Q__0_carry__0_i_12_n_0;
  wire total_Q__0_carry__0_i_13_n_0;
  wire total_Q__0_carry__0_i_14_n_0;
  wire total_Q__0_carry__0_i_15_n_0;
  wire total_Q__0_carry__0_i_16_n_0;
  wire total_Q__0_carry__0_i_1_n_0;
  wire total_Q__0_carry__0_i_2_n_0;
  wire total_Q__0_carry__0_i_3_n_0;
  wire total_Q__0_carry__0_i_4_n_0;
  wire total_Q__0_carry__0_i_5_n_0;
  wire total_Q__0_carry__0_i_6_n_0;
  wire total_Q__0_carry__0_i_7_n_0;
  wire total_Q__0_carry__0_i_8_n_0;
  wire total_Q__0_carry__0_i_9_n_0;
  wire total_Q__0_carry__0_n_0;
  wire total_Q__0_carry__0_n_1;
  wire total_Q__0_carry__0_n_10;
  wire total_Q__0_carry__0_n_11;
  wire total_Q__0_carry__0_n_12;
  wire total_Q__0_carry__0_n_13;
  wire total_Q__0_carry__0_n_14;
  wire total_Q__0_carry__0_n_15;
  wire total_Q__0_carry__0_n_2;
  wire total_Q__0_carry__0_n_3;
  wire total_Q__0_carry__0_n_4;
  wire total_Q__0_carry__0_n_5;
  wire total_Q__0_carry__0_n_6;
  wire total_Q__0_carry__0_n_7;
  wire total_Q__0_carry__0_n_8;
  wire total_Q__0_carry__0_n_9;
  wire total_Q__0_carry__1_i_1_n_0;
  wire total_Q__0_carry__1_i_2_n_0;
  wire total_Q__0_carry__1_n_15;
  wire total_Q__0_carry__1_n_6;
  wire total_Q__0_carry_i_10_n_0;
  wire total_Q__0_carry_i_11_n_0;
  wire total_Q__0_carry_i_12_n_0;
  wire total_Q__0_carry_i_13_n_0;
  wire total_Q__0_carry_i_14_n_0;
  wire total_Q__0_carry_i_15_n_0;
  wire total_Q__0_carry_i_1_n_0;
  wire total_Q__0_carry_i_2_n_0;
  wire total_Q__0_carry_i_3_n_0;
  wire total_Q__0_carry_i_4_n_0;
  wire total_Q__0_carry_i_5_n_0;
  wire total_Q__0_carry_i_6_n_0;
  wire total_Q__0_carry_i_7_n_0;
  wire total_Q__0_carry_i_8_n_0;
  wire total_Q__0_carry_i_9_n_0;
  wire total_Q__0_carry_n_0;
  wire total_Q__0_carry_n_1;
  wire total_Q__0_carry_n_10;
  wire total_Q__0_carry_n_11;
  wire total_Q__0_carry_n_12;
  wire total_Q__0_carry_n_13;
  wire total_Q__0_carry_n_14;
  wire total_Q__0_carry_n_15;
  wire total_Q__0_carry_n_2;
  wire total_Q__0_carry_n_3;
  wire total_Q__0_carry_n_4;
  wire total_Q__0_carry_n_5;
  wire total_Q__0_carry_n_6;
  wire total_Q__0_carry_n_7;
  wire total_Q__0_carry_n_8;
  wire total_Q__0_carry_n_9;
  wire total_Q__105_carry__0_i_10_n_0;
  wire total_Q__105_carry__0_i_11_n_0;
  wire total_Q__105_carry__0_i_12_n_0;
  wire total_Q__105_carry__0_i_13_n_0;
  wire total_Q__105_carry__0_i_14_n_0;
  wire total_Q__105_carry__0_i_15_n_0;
  wire total_Q__105_carry__0_i_16_n_0;
  wire total_Q__105_carry__0_i_1_n_0;
  wire total_Q__105_carry__0_i_2_n_0;
  wire total_Q__105_carry__0_i_3_n_0;
  wire total_Q__105_carry__0_i_4_n_0;
  wire total_Q__105_carry__0_i_5_n_0;
  wire total_Q__105_carry__0_i_6_n_0;
  wire total_Q__105_carry__0_i_7_n_0;
  wire total_Q__105_carry__0_i_8_n_0;
  wire total_Q__105_carry__0_i_9_n_0;
  wire total_Q__105_carry__0_n_0;
  wire total_Q__105_carry__0_n_1;
  wire total_Q__105_carry__0_n_2;
  wire total_Q__105_carry__0_n_3;
  wire total_Q__105_carry__0_n_4;
  wire total_Q__105_carry__0_n_5;
  wire total_Q__105_carry__0_n_6;
  wire total_Q__105_carry__0_n_7;
  wire total_Q__105_carry__1_i_1_n_0;
  wire total_Q__105_carry__1_i_2_n_0;
  wire total_Q__105_carry__1_i_3_n_0;
  wire total_Q__105_carry__1_i_4_n_0;
  wire total_Q__105_carry__1_i_5_n_0;
  wire total_Q__105_carry__1_i_6_n_0;
  wire total_Q__105_carry__1_i_7_n_0;
  wire total_Q__105_carry__1_n_5;
  wire total_Q__105_carry__1_n_6;
  wire total_Q__105_carry__1_n_7;
  wire total_Q__105_carry_i_10_n_0;
  wire total_Q__105_carry_i_11_n_0;
  wire total_Q__105_carry_i_12_n_0;
  wire total_Q__105_carry_i_13_n_0;
  wire total_Q__105_carry_i_1_n_0;
  wire total_Q__105_carry_i_2_n_0;
  wire total_Q__105_carry_i_3_n_0;
  wire total_Q__105_carry_i_4_n_0;
  wire total_Q__105_carry_i_5_n_0;
  wire total_Q__105_carry_i_6_n_0;
  wire total_Q__105_carry_i_7_n_0;
  wire total_Q__105_carry_i_8_n_0;
  wire total_Q__105_carry_i_9_n_0;
  wire total_Q__105_carry_n_0;
  wire total_Q__105_carry_n_1;
  wire total_Q__105_carry_n_2;
  wire total_Q__105_carry_n_3;
  wire total_Q__105_carry_n_4;
  wire total_Q__105_carry_n_5;
  wire total_Q__105_carry_n_6;
  wire total_Q__105_carry_n_7;
  wire total_Q__53_carry__0_i_10_n_0;
  wire total_Q__53_carry__0_i_11_n_0;
  wire total_Q__53_carry__0_i_12_n_0;
  wire total_Q__53_carry__0_i_13_n_0;
  wire total_Q__53_carry__0_i_14_n_0;
  wire total_Q__53_carry__0_i_15_n_0;
  wire total_Q__53_carry__0_i_16_n_0;
  wire total_Q__53_carry__0_i_1_n_0;
  wire total_Q__53_carry__0_i_2_n_0;
  wire total_Q__53_carry__0_i_3_n_0;
  wire total_Q__53_carry__0_i_4_n_0;
  wire total_Q__53_carry__0_i_5_n_0;
  wire total_Q__53_carry__0_i_6_n_0;
  wire total_Q__53_carry__0_i_7_n_0;
  wire total_Q__53_carry__0_i_8_n_0;
  wire total_Q__53_carry__0_i_9_n_0;
  wire total_Q__53_carry__0_n_0;
  wire total_Q__53_carry__0_n_1;
  wire total_Q__53_carry__0_n_10;
  wire total_Q__53_carry__0_n_11;
  wire total_Q__53_carry__0_n_12;
  wire total_Q__53_carry__0_n_13;
  wire total_Q__53_carry__0_n_14;
  wire total_Q__53_carry__0_n_15;
  wire total_Q__53_carry__0_n_2;
  wire total_Q__53_carry__0_n_3;
  wire total_Q__53_carry__0_n_4;
  wire total_Q__53_carry__0_n_5;
  wire total_Q__53_carry__0_n_6;
  wire total_Q__53_carry__0_n_7;
  wire total_Q__53_carry__0_n_8;
  wire total_Q__53_carry__0_n_9;
  wire total_Q__53_carry__1_i_1_n_0;
  wire total_Q__53_carry__1_i_2_n_0;
  wire total_Q__53_carry__1_i_3_n_0;
  wire total_Q__53_carry__1_n_14;
  wire total_Q__53_carry__1_n_15;
  wire total_Q__53_carry__1_n_7;
  wire total_Q__53_carry_i_10_n_0;
  wire total_Q__53_carry_i_11_n_0;
  wire total_Q__53_carry_i_12_n_0;
  wire total_Q__53_carry_i_1_n_0;
  wire total_Q__53_carry_i_2_n_0;
  wire total_Q__53_carry_i_3_n_0;
  wire total_Q__53_carry_i_4_n_0;
  wire total_Q__53_carry_i_5_n_0;
  wire total_Q__53_carry_i_6_n_0;
  wire total_Q__53_carry_i_7_n_0;
  wire total_Q__53_carry_i_8_n_0;
  wire total_Q__53_carry_i_9_n_0;
  wire total_Q__53_carry_n_0;
  wire total_Q__53_carry_n_1;
  wire total_Q__53_carry_n_10;
  wire total_Q__53_carry_n_11;
  wire total_Q__53_carry_n_12;
  wire total_Q__53_carry_n_13;
  wire total_Q__53_carry_n_14;
  wire total_Q__53_carry_n_15;
  wire total_Q__53_carry_n_2;
  wire total_Q__53_carry_n_3;
  wire total_Q__53_carry_n_4;
  wire total_Q__53_carry_n_5;
  wire total_Q__53_carry_n_6;
  wire total_Q__53_carry_n_7;
  wire total_Q__53_carry_n_8;
  wire total_Q__53_carry_n_9;
  wire [7:0]NLW_total_I__0_carry__1_CO_UNCONNECTED;
  wire [7:1]NLW_total_I__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_total_I__105_carry_O_UNCONNECTED;
  wire [7:3]NLW_total_I__105_carry__1_CO_UNCONNECTED;
  wire [7:4]NLW_total_I__105_carry__1_O_UNCONNECTED;
  wire [7:1]NLW_total_I__53_carry__1_CO_UNCONNECTED;
  wire [7:2]NLW_total_I__53_carry__1_O_UNCONNECTED;
  wire [7:0]NLW_total_Q__0_carry__1_CO_UNCONNECTED;
  wire [7:1]NLW_total_Q__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_total_Q__105_carry_O_UNCONNECTED;
  wire [7:3]NLW_total_Q__105_carry__1_CO_UNCONNECTED;
  wire [7:4]NLW_total_Q__105_carry__1_O_UNCONNECTED;
  wire [7:1]NLW_total_Q__53_carry__1_CO_UNCONNECTED;
  wire [7:2]NLW_total_Q__53_carry__1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h80FF)) 
    \I1[15]_i_1 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(s_axis_tlast),
        .I3(aresetn),
        .O(\I1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \I1[15]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(\I1[15]_i_2_n_0 ));
  FDRE \I1_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\I1_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\I1_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\I1_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\I1_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\I1_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\I1_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\I1_reg_n_0_[15] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\I1_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\I1_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\I1_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\I1_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\I1_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\I1_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\I1_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\I1_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\I1_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[0] ),
        .Q(\I2_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[10] ),
        .Q(\I2_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[11] ),
        .Q(\I2_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[12] ),
        .Q(\I2_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[13] ),
        .Q(\I2_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[14] ),
        .Q(\I2_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[15] ),
        .Q(total_I50),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[1] ),
        .Q(\I2_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[2] ),
        .Q(\I2_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[3] ),
        .Q(\I2_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[4] ),
        .Q(\I2_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[5] ),
        .Q(\I2_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[6] ),
        .Q(\I2_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[7] ),
        .Q(\I2_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[8] ),
        .Q(\I2_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I1_reg_n_0_[9] ),
        .Q(\I2_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[0] ),
        .Q(total_I3[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[10] ),
        .Q(total_I3[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[11] ),
        .Q(total_I3[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[12] ),
        .Q(total_I3[16]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[13] ),
        .Q(total_I3[17]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[14] ),
        .Q(total_I3[18]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I50),
        .Q(total_I3[19]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[1] ),
        .Q(total_I3[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[2] ),
        .Q(total_I3[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[3] ),
        .Q(total_I3[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[4] ),
        .Q(total_I3[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[5] ),
        .Q(total_I3[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[6] ),
        .Q(total_I3[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[7] ),
        .Q(total_I3[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[8] ),
        .Q(total_I3[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I2_reg_n_0_[9] ),
        .Q(total_I3[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[4]),
        .Q(\I4_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[14]),
        .Q(\I4_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[15]),
        .Q(\I4_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[16]),
        .Q(\I4_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[17]),
        .Q(\I4_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[18]),
        .Q(\I4_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[19]),
        .Q(total_I20),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[5]),
        .Q(\I4_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[6]),
        .Q(\I4_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[7]),
        .Q(\I4_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[8]),
        .Q(\I4_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[9]),
        .Q(\I4_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[10]),
        .Q(\I4_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[11]),
        .Q(\I4_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[12]),
        .Q(\I4_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I3[13]),
        .Q(\I4_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[0] ),
        .Q(I5[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[10] ),
        .Q(I5[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[11] ),
        .Q(I5[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[12] ),
        .Q(I5[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[13] ),
        .Q(I5[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[14] ),
        .Q(I5[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_I20),
        .Q(I5[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[1] ),
        .Q(I5[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[2] ),
        .Q(I5[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[3] ),
        .Q(I5[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[4] ),
        .Q(I5[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[5] ),
        .Q(I5[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[6] ),
        .Q(I5[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[7] ),
        .Q(I5[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[8] ),
        .Q(I5[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\I4_reg_n_0_[9] ),
        .Q(I5[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[0]),
        .Q(I6[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[10]),
        .Q(I6[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[11]),
        .Q(I6[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[12]),
        .Q(I6[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[13]),
        .Q(I6[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[14]),
        .Q(I6[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[15]),
        .Q(I6[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[1]),
        .Q(I6[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[2]),
        .Q(I6[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[3]),
        .Q(I6[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[4]),
        .Q(I6[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[5]),
        .Q(I6[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[6]),
        .Q(I6[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[7]),
        .Q(I6[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[8]),
        .Q(I6[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(I5[9]),
        .Q(I6[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(Q1[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(Q1[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(Q1[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(Q1[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(Q1[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(Q1[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(Q1[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(Q1[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(Q1[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(Q1[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(Q1[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(Q1[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(Q1[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(Q1[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(Q1[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(Q1[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[0]),
        .Q(\Q2_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[10]),
        .Q(\Q2_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[11]),
        .Q(\Q2_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[12]),
        .Q(\Q2_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[13]),
        .Q(\Q2_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[14]),
        .Q(\Q2_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[15]),
        .Q(total_Q50),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[1]),
        .Q(\Q2_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[2]),
        .Q(\Q2_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[3]),
        .Q(\Q2_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[4]),
        .Q(\Q2_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[5]),
        .Q(\Q2_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[6]),
        .Q(\Q2_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[7]),
        .Q(\Q2_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[8]),
        .Q(\Q2_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q1[9]),
        .Q(\Q2_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[0] ),
        .Q(total_Q3[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[10] ),
        .Q(total_Q3[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[11] ),
        .Q(total_Q3[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[12] ),
        .Q(total_Q3[16]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[13] ),
        .Q(total_Q3[17]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[14] ),
        .Q(total_Q3[18]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q50),
        .Q(total_Q3[19]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[1] ),
        .Q(total_Q3[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[2] ),
        .Q(total_Q3[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[3] ),
        .Q(total_Q3[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[4] ),
        .Q(total_Q3[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[5] ),
        .Q(total_Q3[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[6] ),
        .Q(total_Q3[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[7] ),
        .Q(total_Q3[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[8] ),
        .Q(total_Q3[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q2_reg_n_0_[9] ),
        .Q(total_Q3[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[4]),
        .Q(\Q4_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[14]),
        .Q(\Q4_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[15]),
        .Q(\Q4_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[16]),
        .Q(\Q4_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[17]),
        .Q(\Q4_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[18]),
        .Q(\Q4_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[19]),
        .Q(total_Q20),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[5]),
        .Q(\Q4_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[6]),
        .Q(\Q4_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[7]),
        .Q(\Q4_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[8]),
        .Q(\Q4_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[9]),
        .Q(\Q4_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[10]),
        .Q(\Q4_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[11]),
        .Q(\Q4_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[12]),
        .Q(\Q4_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q3[13]),
        .Q(\Q4_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[0] ),
        .Q(Q5[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[10] ),
        .Q(Q5[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[11] ),
        .Q(Q5[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[12] ),
        .Q(Q5[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[13] ),
        .Q(Q5[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[14] ),
        .Q(Q5[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(total_Q20),
        .Q(Q5[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[1] ),
        .Q(Q5[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[2] ),
        .Q(Q5[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[3] ),
        .Q(Q5[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[4] ),
        .Q(Q5[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[5] ),
        .Q(Q5[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[6] ),
        .Q(Q5[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[7] ),
        .Q(Q5[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[8] ),
        .Q(Q5[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(\Q4_reg_n_0_[9] ),
        .Q(Q5[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[0] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[0]),
        .Q(Q6[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[10] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[10]),
        .Q(Q6[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[11] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[11]),
        .Q(Q6[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[12] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[12]),
        .Q(Q6[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[13] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[13]),
        .Q(Q6[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[14] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[14]),
        .Q(Q6[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[15] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[15]),
        .Q(Q6[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[1] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[1]),
        .Q(Q6[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[2] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[2]),
        .Q(Q6[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[3] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[3]),
        .Q(Q6[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[4] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[4]),
        .Q(Q6[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[5] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[5]),
        .Q(Q6[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[6] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[6]),
        .Q(Q6[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[7] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[7]),
        .Q(Q6[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[8] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[8]),
        .Q(Q6[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[9] 
       (.C(aclk),
        .CE(\I1[15]_i_2_n_0 ),
        .D(Q5[9]),
        .Q(Q6[9]),
        .R(\I1[15]_i_1_n_0 ));
  CARRY8 total_I__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_I__0_carry_n_0,total_I__0_carry_n_1,total_I__0_carry_n_2,total_I__0_carry_n_3,total_I__0_carry_n_4,total_I__0_carry_n_5,total_I__0_carry_n_6,total_I__0_carry_n_7}),
        .DI({total_I__0_carry_i_1_n_0,total_I__0_carry_i_2_n_0,total_I__0_carry_i_3_n_0,total_I__0_carry_i_4_n_0,total_I__0_carry_i_5_n_0,total_I__0_carry_i_6_n_0,total_I__0_carry_i_7_n_0,1'b0}),
        .O({total_I__0_carry_n_8,total_I__0_carry_n_9,total_I__0_carry_n_10,total_I__0_carry_n_11,total_I__0_carry_n_12,total_I__0_carry_n_13,total_I__0_carry_n_14,total_I__0_carry_n_15}),
        .S({total_I__0_carry_i_8_n_0,total_I__0_carry_i_9_n_0,total_I__0_carry_i_10_n_0,total_I__0_carry_i_11_n_0,total_I__0_carry_i_12_n_0,total_I__0_carry_i_13_n_0,total_I__0_carry_i_14_n_0,total_I__0_carry_i_15_n_0}));
  CARRY8 total_I__0_carry__0
       (.CI(total_I__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_I__0_carry__0_n_0,total_I__0_carry__0_n_1,total_I__0_carry__0_n_2,total_I__0_carry__0_n_3,total_I__0_carry__0_n_4,total_I__0_carry__0_n_5,total_I__0_carry__0_n_6,total_I__0_carry__0_n_7}),
        .DI({total_I__0_carry__0_i_1_n_0,total_I__0_carry__0_i_2_n_0,total_I__0_carry__0_i_3_n_0,total_I__0_carry__0_i_4_n_0,total_I__0_carry__0_i_5_n_0,total_I__0_carry__0_i_6_n_0,total_I__0_carry__0_i_7_n_0,total_I__0_carry__0_i_8_n_0}),
        .O({total_I__0_carry__0_n_8,total_I__0_carry__0_n_9,total_I__0_carry__0_n_10,total_I__0_carry__0_n_11,total_I__0_carry__0_n_12,total_I__0_carry__0_n_13,total_I__0_carry__0_n_14,total_I__0_carry__0_n_15}),
        .S({total_I__0_carry__0_i_9_n_0,total_I__0_carry__0_i_10_n_0,total_I__0_carry__0_i_11_n_0,total_I__0_carry__0_i_12_n_0,total_I__0_carry__0_i_13_n_0,total_I__0_carry__0_i_14_n_0,total_I__0_carry__0_i_15_n_0,total_I__0_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__0_carry__0_i_1
       (.I0(s_axis_tdata[15]),
        .I1(I6[15]),
        .I2(total_I20),
        .O(total_I__0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry__0_i_10
       (.I0(total_I__0_carry__0_i_2_n_0),
        .I1(I6[14]),
        .I2(\I4_reg_n_0_[14] ),
        .I3(s_axis_tdata[14]),
        .O(total_I__0_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry__0_i_11
       (.I0(I6[13]),
        .I1(\I4_reg_n_0_[13] ),
        .I2(s_axis_tdata[13]),
        .I3(total_I__0_carry__0_i_3_n_0),
        .O(total_I__0_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry__0_i_12
       (.I0(I6[12]),
        .I1(\I4_reg_n_0_[12] ),
        .I2(s_axis_tdata[12]),
        .I3(total_I__0_carry__0_i_4_n_0),
        .O(total_I__0_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry__0_i_13
       (.I0(I6[11]),
        .I1(\I4_reg_n_0_[11] ),
        .I2(s_axis_tdata[11]),
        .I3(total_I__0_carry__0_i_5_n_0),
        .O(total_I__0_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry__0_i_14
       (.I0(I6[10]),
        .I1(\I4_reg_n_0_[10] ),
        .I2(s_axis_tdata[10]),
        .I3(total_I__0_carry__0_i_6_n_0),
        .O(total_I__0_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry__0_i_15
       (.I0(I6[9]),
        .I1(\I4_reg_n_0_[9] ),
        .I2(s_axis_tdata[9]),
        .I3(total_I__0_carry__0_i_7_n_0),
        .O(total_I__0_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry__0_i_16
       (.I0(I6[8]),
        .I1(\I4_reg_n_0_[8] ),
        .I2(s_axis_tdata[8]),
        .I3(total_I__0_carry__0_i_8_n_0),
        .O(total_I__0_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_2
       (.I0(I6[13]),
        .I1(\I4_reg_n_0_[13] ),
        .I2(s_axis_tdata[13]),
        .O(total_I__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_3
       (.I0(I6[12]),
        .I1(\I4_reg_n_0_[12] ),
        .I2(s_axis_tdata[12]),
        .O(total_I__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_4
       (.I0(I6[11]),
        .I1(\I4_reg_n_0_[11] ),
        .I2(s_axis_tdata[11]),
        .O(total_I__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_5
       (.I0(I6[10]),
        .I1(\I4_reg_n_0_[10] ),
        .I2(s_axis_tdata[10]),
        .O(total_I__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_6
       (.I0(I6[9]),
        .I1(\I4_reg_n_0_[9] ),
        .I2(s_axis_tdata[9]),
        .O(total_I__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_7
       (.I0(I6[8]),
        .I1(\I4_reg_n_0_[8] ),
        .I2(s_axis_tdata[8]),
        .O(total_I__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_8
       (.I0(I6[7]),
        .I1(\I4_reg_n_0_[7] ),
        .I2(s_axis_tdata[7]),
        .O(total_I__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    total_I__0_carry__0_i_9
       (.I0(s_axis_tdata[15]),
        .I1(I6[15]),
        .I2(total_I20),
        .I3(s_axis_tdata[14]),
        .I4(\I4_reg_n_0_[14] ),
        .I5(I6[14]),
        .O(total_I__0_carry__0_i_9_n_0));
  CARRY8 total_I__0_carry__1
       (.CI(total_I__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_I__0_carry__1_CO_UNCONNECTED[7:2],total_I__0_carry__1_n_6,NLW_total_I__0_carry__1_CO_UNCONNECTED[0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_I__0_carry__1_i_1_n_0}),
        .O({NLW_total_I__0_carry__1_O_UNCONNECTED[7:1],total_I__0_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,total_I__0_carry__1_i_2_n_0}));
  LUT3 #(
    .INIT(8'h28)) 
    total_I__0_carry__1_i_1
       (.I0(s_axis_tdata[15]),
        .I1(total_I20),
        .I2(I6[15]),
        .O(total_I__0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hDB)) 
    total_I__0_carry__1_i_2
       (.I0(s_axis_tdata[15]),
        .I1(total_I20),
        .I2(I6[15]),
        .O(total_I__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_1
       (.I0(I6[6]),
        .I1(\I4_reg_n_0_[6] ),
        .I2(s_axis_tdata[6]),
        .O(total_I__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry_i_10
       (.I0(I6[5]),
        .I1(\I4_reg_n_0_[5] ),
        .I2(s_axis_tdata[5]),
        .I3(total_I__0_carry_i_3_n_0),
        .O(total_I__0_carry_i_10_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry_i_11
       (.I0(I6[4]),
        .I1(\I4_reg_n_0_[4] ),
        .I2(s_axis_tdata[4]),
        .I3(total_I__0_carry_i_4_n_0),
        .O(total_I__0_carry_i_11_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry_i_12
       (.I0(I6[3]),
        .I1(\I4_reg_n_0_[3] ),
        .I2(s_axis_tdata[3]),
        .I3(total_I__0_carry_i_5_n_0),
        .O(total_I__0_carry_i_12_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry_i_13
       (.I0(I6[2]),
        .I1(\I4_reg_n_0_[2] ),
        .I2(s_axis_tdata[2]),
        .I3(total_I__0_carry_i_6_n_0),
        .O(total_I__0_carry_i_13_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry_i_14
       (.I0(I6[1]),
        .I1(\I4_reg_n_0_[1] ),
        .I2(s_axis_tdata[1]),
        .I3(total_I__0_carry_i_7_n_0),
        .O(total_I__0_carry_i_14_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT3 #(
    .INIT(8'h96)) 
    total_I__0_carry_i_15
       (.I0(I6[0]),
        .I1(\I4_reg_n_0_[0] ),
        .I2(s_axis_tdata[0]),
        .O(total_I__0_carry_i_15_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_2
       (.I0(I6[5]),
        .I1(\I4_reg_n_0_[5] ),
        .I2(s_axis_tdata[5]),
        .O(total_I__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_3
       (.I0(I6[4]),
        .I1(\I4_reg_n_0_[4] ),
        .I2(s_axis_tdata[4]),
        .O(total_I__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_4
       (.I0(I6[3]),
        .I1(\I4_reg_n_0_[3] ),
        .I2(s_axis_tdata[3]),
        .O(total_I__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_5
       (.I0(I6[2]),
        .I1(\I4_reg_n_0_[2] ),
        .I2(s_axis_tdata[2]),
        .O(total_I__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_6
       (.I0(I6[1]),
        .I1(\I4_reg_n_0_[1] ),
        .I2(s_axis_tdata[1]),
        .O(total_I__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_7
       (.I0(I6[0]),
        .I1(\I4_reg_n_0_[0] ),
        .I2(s_axis_tdata[0]),
        .O(total_I__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry_i_8
       (.I0(I6[7]),
        .I1(\I4_reg_n_0_[7] ),
        .I2(s_axis_tdata[7]),
        .I3(total_I__0_carry_i_1_n_0),
        .O(total_I__0_carry_i_8_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__0_carry_i_9
       (.I0(I6[6]),
        .I1(\I4_reg_n_0_[6] ),
        .I2(s_axis_tdata[6]),
        .I3(total_I__0_carry_i_2_n_0),
        .O(total_I__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__105_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_I__105_carry_n_0,total_I__105_carry_n_1,total_I__105_carry_n_2,total_I__105_carry_n_3,total_I__105_carry_n_4,total_I__105_carry_n_5,total_I__105_carry_n_6,total_I__105_carry_n_7}),
        .DI({total_I__105_carry_i_1_n_0,total_I__105_carry_i_2_n_0,total_I__105_carry_i_3_n_0,total_I__105_carry_i_4_n_0,total_I__105_carry_i_5_n_0,\I2_reg_n_0_[1] ,total_I__0_carry_n_14,total_I__0_carry_n_15}),
        .O({m_axis_tdata[3:0],NLW_total_I__105_carry_O_UNCONNECTED[3:0]}),
        .S({total_I__105_carry_i_6_n_0,total_I__105_carry_i_7_n_0,total_I__105_carry_i_8_n_0,total_I__105_carry_i_9_n_0,total_I__105_carry_i_10_n_0,total_I__105_carry_i_11_n_0,total_I__105_carry_i_12_n_0,total_I__105_carry_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__105_carry__0
       (.CI(total_I__105_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_I__105_carry__0_n_0,total_I__105_carry__0_n_1,total_I__105_carry__0_n_2,total_I__105_carry__0_n_3,total_I__105_carry__0_n_4,total_I__105_carry__0_n_5,total_I__105_carry__0_n_6,total_I__105_carry__0_n_7}),
        .DI({total_I__105_carry__0_i_1_n_0,total_I__105_carry__0_i_2_n_0,total_I__105_carry__0_i_3_n_0,total_I__105_carry__0_i_4_n_0,total_I__105_carry__0_i_5_n_0,total_I__105_carry__0_i_6_n_0,total_I__105_carry__0_i_7_n_0,total_I__105_carry__0_i_8_n_0}),
        .O(m_axis_tdata[11:4]),
        .S({total_I__105_carry__0_i_9_n_0,total_I__105_carry__0_i_10_n_0,total_I__105_carry__0_i_11_n_0,total_I__105_carry__0_i_12_n_0,total_I__105_carry__0_i_13_n_0,total_I__105_carry__0_i_14_n_0,total_I__105_carry__0_i_15_n_0,total_I__105_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_1
       (.I0(total_I__53_carry__0_n_11),
        .I1(total_I__0_carry__0_n_9),
        .I2(\I2_reg_n_0_[11] ),
        .O(total_I__105_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_10
       (.I0(total_I__53_carry__0_n_11),
        .I1(total_I__0_carry__0_n_9),
        .I2(\I2_reg_n_0_[11] ),
        .I3(total_I__105_carry__0_i_2_n_0),
        .O(total_I__105_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_11
       (.I0(total_I__53_carry__0_n_12),
        .I1(total_I__0_carry__0_n_10),
        .I2(\I2_reg_n_0_[10] ),
        .I3(total_I__105_carry__0_i_3_n_0),
        .O(total_I__105_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_12
       (.I0(total_I__53_carry__0_n_13),
        .I1(total_I__0_carry__0_n_11),
        .I2(\I2_reg_n_0_[9] ),
        .I3(total_I__105_carry__0_i_4_n_0),
        .O(total_I__105_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_13
       (.I0(total_I__53_carry__0_n_14),
        .I1(total_I__0_carry__0_n_12),
        .I2(\I2_reg_n_0_[8] ),
        .I3(total_I__105_carry__0_i_5_n_0),
        .O(total_I__105_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_14
       (.I0(total_I__53_carry__0_n_15),
        .I1(total_I__0_carry__0_n_13),
        .I2(\I2_reg_n_0_[7] ),
        .I3(total_I__105_carry__0_i_6_n_0),
        .O(total_I__105_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_15
       (.I0(total_I__53_carry_n_8),
        .I1(total_I__0_carry__0_n_14),
        .I2(\I2_reg_n_0_[6] ),
        .I3(total_I__105_carry__0_i_7_n_0),
        .O(total_I__105_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_16
       (.I0(total_I__53_carry_n_9),
        .I1(total_I__0_carry__0_n_15),
        .I2(\I2_reg_n_0_[5] ),
        .I3(total_I__105_carry__0_i_8_n_0),
        .O(total_I__105_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_2
       (.I0(total_I__53_carry__0_n_12),
        .I1(total_I__0_carry__0_n_10),
        .I2(\I2_reg_n_0_[10] ),
        .O(total_I__105_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_3
       (.I0(total_I__53_carry__0_n_13),
        .I1(total_I__0_carry__0_n_11),
        .I2(\I2_reg_n_0_[9] ),
        .O(total_I__105_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_4
       (.I0(total_I__53_carry__0_n_14),
        .I1(total_I__0_carry__0_n_12),
        .I2(\I2_reg_n_0_[8] ),
        .O(total_I__105_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_5
       (.I0(total_I__53_carry__0_n_15),
        .I1(total_I__0_carry__0_n_13),
        .I2(\I2_reg_n_0_[7] ),
        .O(total_I__105_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_6
       (.I0(total_I__53_carry_n_8),
        .I1(total_I__0_carry__0_n_14),
        .I2(\I2_reg_n_0_[6] ),
        .O(total_I__105_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_7
       (.I0(total_I__53_carry_n_9),
        .I1(total_I__0_carry__0_n_15),
        .I2(\I2_reg_n_0_[5] ),
        .O(total_I__105_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__0_i_8
       (.I0(total_I__53_carry_n_10),
        .I1(total_I__0_carry_n_8),
        .I2(\I2_reg_n_0_[4] ),
        .O(total_I__105_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__0_i_9
       (.I0(total_I__53_carry__0_n_10),
        .I1(total_I__0_carry__0_n_8),
        .I2(\I2_reg_n_0_[12] ),
        .I3(total_I__105_carry__0_i_1_n_0),
        .O(total_I__105_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__105_carry__1
       (.CI(total_I__105_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_I__105_carry__1_CO_UNCONNECTED[7:3],total_I__105_carry__1_n_5,total_I__105_carry__1_n_6,total_I__105_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,total_I__105_carry__1_i_1_n_0,total_I__105_carry__1_i_2_n_0,total_I__105_carry__1_i_3_n_0}),
        .O({NLW_total_I__105_carry__1_O_UNCONNECTED[7:4],m_axis_tdata[15:12]}),
        .S({1'b0,1'b0,1'b0,1'b0,total_I__105_carry__1_i_4_n_0,total_I__105_carry__1_i_5_n_0,total_I__105_carry__1_i_6_n_0,total_I__105_carry__1_i_7_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    total_I__105_carry__1_i_1
       (.I0(total_I50),
        .I1(total_I__0_carry__1_n_6),
        .I2(total_I__53_carry__1_n_15),
        .O(total_I__105_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__1_i_2
       (.I0(total_I__53_carry__0_n_9),
        .I1(total_I__0_carry__1_n_15),
        .I2(\I2_reg_n_0_[13] ),
        .O(total_I__105_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry__1_i_3
       (.I0(total_I__53_carry__0_n_10),
        .I1(total_I__0_carry__0_n_8),
        .I2(\I2_reg_n_0_[12] ),
        .O(total_I__105_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hD24B)) 
    total_I__105_carry__1_i_4
       (.I0(total_I50),
        .I1(total_I__0_carry__1_n_6),
        .I2(total_I__53_carry__1_n_14),
        .I3(total_I__53_carry__1_n_15),
        .O(total_I__105_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h96666669)) 
    total_I__105_carry__1_i_5
       (.I0(total_I50),
        .I1(total_I__53_carry__1_n_15),
        .I2(\I2_reg_n_0_[14] ),
        .I3(total_I__53_carry__0_n_8),
        .I4(total_I__0_carry__1_n_6),
        .O(total_I__105_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    total_I__105_carry__1_i_6
       (.I0(total_I__105_carry__1_i_2_n_0),
        .I1(total_I__0_carry__1_n_6),
        .I2(total_I__53_carry__0_n_8),
        .I3(\I2_reg_n_0_[14] ),
        .O(total_I__105_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry__1_i_7
       (.I0(total_I__53_carry__0_n_9),
        .I1(total_I__0_carry__1_n_15),
        .I2(\I2_reg_n_0_[13] ),
        .I3(total_I__105_carry__1_i_3_n_0),
        .O(total_I__105_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry_i_1
       (.I0(total_I__53_carry_n_11),
        .I1(total_I__0_carry_n_9),
        .I2(\I2_reg_n_0_[3] ),
        .O(total_I__105_carry_i_1_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    total_I__105_carry_i_10
       (.I0(total_I__53_carry_n_14),
        .I1(total_I__0_carry_n_12),
        .I2(\I2_reg_n_0_[0] ),
        .I3(total_I__0_carry_n_13),
        .I4(total_I__53_carry_n_15),
        .O(total_I__105_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__105_carry_i_11
       (.I0(\I2_reg_n_0_[1] ),
        .I1(total_I__53_carry_n_15),
        .I2(total_I__0_carry_n_13),
        .O(total_I__105_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    total_I__105_carry_i_12
       (.I0(\I2_reg_n_0_[1] ),
        .I1(total_I__0_carry_n_14),
        .O(total_I__105_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_I__105_carry_i_13
       (.I0(total_I__0_carry_n_15),
        .I1(\I2_reg_n_0_[0] ),
        .O(total_I__105_carry_i_13_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry_i_2
       (.I0(total_I__53_carry_n_12),
        .I1(total_I__0_carry_n_10),
        .I2(\I2_reg_n_0_[2] ),
        .O(total_I__105_carry_i_2_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry_i_3
       (.I0(total_I__53_carry_n_13),
        .I1(total_I__0_carry_n_11),
        .I2(\I2_reg_n_0_[1] ),
        .O(total_I__105_carry_i_3_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__105_carry_i_4
       (.I0(total_I__53_carry_n_14),
        .I1(total_I__0_carry_n_12),
        .I2(\I2_reg_n_0_[0] ),
        .O(total_I__105_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__105_carry_i_5
       (.I0(\I2_reg_n_0_[0] ),
        .I1(total_I__53_carry_n_14),
        .I2(total_I__0_carry_n_12),
        .O(total_I__105_carry_i_5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry_i_6
       (.I0(total_I__53_carry_n_10),
        .I1(total_I__0_carry_n_8),
        .I2(\I2_reg_n_0_[4] ),
        .I3(total_I__105_carry_i_1_n_0),
        .O(total_I__105_carry_i_6_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry_i_7
       (.I0(total_I__53_carry_n_11),
        .I1(total_I__0_carry_n_9),
        .I2(\I2_reg_n_0_[3] ),
        .I3(total_I__105_carry_i_2_n_0),
        .O(total_I__105_carry_i_7_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry_i_8
       (.I0(total_I__53_carry_n_12),
        .I1(total_I__0_carry_n_10),
        .I2(\I2_reg_n_0_[2] ),
        .I3(total_I__105_carry_i_3_n_0),
        .O(total_I__105_carry_i_8_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__105_carry_i_9
       (.I0(total_I__53_carry_n_13),
        .I1(total_I__0_carry_n_11),
        .I2(\I2_reg_n_0_[1] ),
        .I3(total_I__105_carry_i_4_n_0),
        .O(total_I__105_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__53_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_I__53_carry_n_0,total_I__53_carry_n_1,total_I__53_carry_n_2,total_I__53_carry_n_3,total_I__53_carry_n_4,total_I__53_carry_n_5,total_I__53_carry_n_6,total_I__53_carry_n_7}),
        .DI({total_I__53_carry_i_1_n_0,total_I__53_carry_i_2_n_0,total_I__53_carry_i_3_n_0,total_I__53_carry_i_4_n_0,total_I__53_carry_i_5_n_0,\I4_reg_n_0_[1] ,\I4_reg_n_0_[0] ,1'b0}),
        .O({total_I__53_carry_n_8,total_I__53_carry_n_9,total_I__53_carry_n_10,total_I__53_carry_n_11,total_I__53_carry_n_12,total_I__53_carry_n_13,total_I__53_carry_n_14,total_I__53_carry_n_15}),
        .S({total_I__53_carry_i_6_n_0,total_I__53_carry_i_7_n_0,total_I__53_carry_i_8_n_0,total_I__53_carry_i_9_n_0,total_I__53_carry_i_10_n_0,total_I__53_carry_i_11_n_0,total_I__53_carry_i_12_n_0,\I2_reg_n_0_[2] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__53_carry__0
       (.CI(total_I__53_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_I__53_carry__0_n_0,total_I__53_carry__0_n_1,total_I__53_carry__0_n_2,total_I__53_carry__0_n_3,total_I__53_carry__0_n_4,total_I__53_carry__0_n_5,total_I__53_carry__0_n_6,total_I__53_carry__0_n_7}),
        .DI({total_I__53_carry__0_i_1_n_0,total_I__53_carry__0_i_2_n_0,total_I__53_carry__0_i_3_n_0,total_I__53_carry__0_i_4_n_0,total_I__53_carry__0_i_5_n_0,total_I__53_carry__0_i_6_n_0,total_I__53_carry__0_i_7_n_0,total_I__53_carry__0_i_8_n_0}),
        .O({total_I__53_carry__0_n_8,total_I__53_carry__0_n_9,total_I__53_carry__0_n_10,total_I__53_carry__0_n_11,total_I__53_carry__0_n_12,total_I__53_carry__0_n_13,total_I__53_carry__0_n_14,total_I__53_carry__0_n_15}),
        .S({total_I__53_carry__0_i_9_n_0,total_I__53_carry__0_i_10_n_0,total_I__53_carry__0_i_11_n_0,total_I__53_carry__0_i_12_n_0,total_I__53_carry__0_i_13_n_0,total_I__53_carry__0_i_14_n_0,total_I__53_carry__0_i_15_n_0,total_I__53_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'hD00D)) 
    total_I__53_carry__0_i_1
       (.I0(total_I50),
        .I1(total_I3[15]),
        .I2(total_I3[16]),
        .I3(\I4_reg_n_0_[13] ),
        .O(total_I__53_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    total_I__53_carry__0_i_10
       (.I0(\I4_reg_n_0_[12] ),
        .I1(\I4_reg_n_0_[13] ),
        .I2(total_I3[16]),
        .I3(total_I3[15]),
        .I4(total_I50),
        .O(total_I__53_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    total_I__53_carry__0_i_11
       (.I0(\I4_reg_n_0_[12] ),
        .I1(total_I3[15]),
        .I2(total_I50),
        .I3(\I4_reg_n_0_[11] ),
        .I4(total_I3[14]),
        .I5(\I2_reg_n_0_[14] ),
        .O(total_I__53_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry__0_i_12
       (.I0(total_I__53_carry__0_i_4_n_0),
        .I1(total_I3[14]),
        .I2(\I2_reg_n_0_[14] ),
        .I3(\I4_reg_n_0_[11] ),
        .O(total_I__53_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry__0_i_13
       (.I0(\I2_reg_n_0_[13] ),
        .I1(total_I3[13]),
        .I2(\I4_reg_n_0_[10] ),
        .I3(total_I__53_carry__0_i_5_n_0),
        .O(total_I__53_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry__0_i_14
       (.I0(\I2_reg_n_0_[12] ),
        .I1(total_I3[12]),
        .I2(\I4_reg_n_0_[9] ),
        .I3(total_I__53_carry__0_i_6_n_0),
        .O(total_I__53_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry__0_i_15
       (.I0(\I2_reg_n_0_[11] ),
        .I1(total_I3[11]),
        .I2(\I4_reg_n_0_[8] ),
        .I3(total_I__53_carry__0_i_7_n_0),
        .O(total_I__53_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry__0_i_16
       (.I0(\I2_reg_n_0_[10] ),
        .I1(total_I3[10]),
        .I2(\I4_reg_n_0_[7] ),
        .I3(total_I__53_carry__0_i_8_n_0),
        .O(total_I__53_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    total_I__53_carry__0_i_2
       (.I0(\I4_reg_n_0_[12] ),
        .I1(total_I50),
        .I2(total_I3[15]),
        .O(total_I__53_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__53_carry__0_i_3
       (.I0(total_I50),
        .I1(total_I3[15]),
        .I2(\I4_reg_n_0_[12] ),
        .O(total_I__53_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_4
       (.I0(\I2_reg_n_0_[13] ),
        .I1(total_I3[13]),
        .I2(\I4_reg_n_0_[10] ),
        .O(total_I__53_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_5
       (.I0(\I2_reg_n_0_[12] ),
        .I1(total_I3[12]),
        .I2(\I4_reg_n_0_[9] ),
        .O(total_I__53_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_6
       (.I0(\I2_reg_n_0_[11] ),
        .I1(total_I3[11]),
        .I2(\I4_reg_n_0_[8] ),
        .O(total_I__53_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_7
       (.I0(\I2_reg_n_0_[10] ),
        .I1(total_I3[10]),
        .I2(\I4_reg_n_0_[7] ),
        .O(total_I__53_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_8
       (.I0(\I2_reg_n_0_[9] ),
        .I1(total_I3[9]),
        .I2(\I4_reg_n_0_[6] ),
        .O(total_I__53_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hB44B0FF00FF04BB4)) 
    total_I__53_carry__0_i_9
       (.I0(total_I3[15]),
        .I1(total_I50),
        .I2(\I4_reg_n_0_[14] ),
        .I3(total_I3[17]),
        .I4(\I4_reg_n_0_[13] ),
        .I5(total_I3[16]),
        .O(total_I__53_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__53_carry__1
       (.CI(total_I__53_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_I__53_carry__1_CO_UNCONNECTED[7:1],total_I__53_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_I__53_carry__1_i_1_n_0}),
        .O({NLW_total_I__53_carry__1_O_UNCONNECTED[7:2],total_I__53_carry__1_n_14,total_I__53_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_I__53_carry__1_i_2_n_0,total_I__53_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    total_I__53_carry__1_i_1
       (.I0(total_I3[16]),
        .I1(\I4_reg_n_0_[13] ),
        .I2(total_I3[17]),
        .I3(\I4_reg_n_0_[14] ),
        .O(total_I__53_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    total_I__53_carry__1_i_2
       (.I0(\I4_reg_n_0_[14] ),
        .I1(total_I3[17]),
        .I2(total_I3[18]),
        .I3(total_I20),
        .I4(total_I3[19]),
        .O(total_I__53_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    total_I__53_carry__1_i_3
       (.I0(\I4_reg_n_0_[13] ),
        .I1(total_I3[16]),
        .I2(total_I20),
        .I3(total_I3[18]),
        .I4(\I4_reg_n_0_[14] ),
        .I5(total_I3[17]),
        .O(total_I__53_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_1
       (.I0(\I2_reg_n_0_[8] ),
        .I1(total_I3[8]),
        .I2(\I4_reg_n_0_[5] ),
        .O(total_I__53_carry_i_1_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    total_I__53_carry_i_10
       (.I0(\I2_reg_n_0_[5] ),
        .I1(total_I3[5]),
        .I2(\I4_reg_n_0_[2] ),
        .I3(total_I3[4]),
        .I4(\I2_reg_n_0_[4] ),
        .O(total_I__53_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__53_carry_i_11
       (.I0(\I2_reg_n_0_[4] ),
        .I1(total_I3[4]),
        .I2(\I4_reg_n_0_[1] ),
        .O(total_I__53_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_I__53_carry_i_12
       (.I0(\I4_reg_n_0_[0] ),
        .I1(\I2_reg_n_0_[3] ),
        .O(total_I__53_carry_i_12_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_2
       (.I0(\I2_reg_n_0_[7] ),
        .I1(total_I3[7]),
        .I2(\I4_reg_n_0_[4] ),
        .O(total_I__53_carry_i_2_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_3
       (.I0(\I2_reg_n_0_[6] ),
        .I1(total_I3[6]),
        .I2(\I4_reg_n_0_[3] ),
        .O(total_I__53_carry_i_3_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_4
       (.I0(\I2_reg_n_0_[5] ),
        .I1(total_I3[5]),
        .I2(\I4_reg_n_0_[2] ),
        .O(total_I__53_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__53_carry_i_5
       (.I0(\I4_reg_n_0_[2] ),
        .I1(\I2_reg_n_0_[5] ),
        .I2(total_I3[5]),
        .O(total_I__53_carry_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry_i_6
       (.I0(\I2_reg_n_0_[9] ),
        .I1(total_I3[9]),
        .I2(\I4_reg_n_0_[6] ),
        .I3(total_I__53_carry_i_1_n_0),
        .O(total_I__53_carry_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry_i_7
       (.I0(\I2_reg_n_0_[8] ),
        .I1(total_I3[8]),
        .I2(\I4_reg_n_0_[5] ),
        .I3(total_I__53_carry_i_2_n_0),
        .O(total_I__53_carry_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry_i_8
       (.I0(\I2_reg_n_0_[7] ),
        .I1(total_I3[7]),
        .I2(\I4_reg_n_0_[4] ),
        .I3(total_I__53_carry_i_3_n_0),
        .O(total_I__53_carry_i_8_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_I__53_carry_i_9
       (.I0(\I2_reg_n_0_[6] ),
        .I1(total_I3[6]),
        .I2(\I4_reg_n_0_[3] ),
        .I3(total_I__53_carry_i_4_n_0),
        .O(total_I__53_carry_i_9_n_0));
  CARRY8 total_Q__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_Q__0_carry_n_0,total_Q__0_carry_n_1,total_Q__0_carry_n_2,total_Q__0_carry_n_3,total_Q__0_carry_n_4,total_Q__0_carry_n_5,total_Q__0_carry_n_6,total_Q__0_carry_n_7}),
        .DI({total_Q__0_carry_i_1_n_0,total_Q__0_carry_i_2_n_0,total_Q__0_carry_i_3_n_0,total_Q__0_carry_i_4_n_0,total_Q__0_carry_i_5_n_0,total_Q__0_carry_i_6_n_0,total_Q__0_carry_i_7_n_0,1'b0}),
        .O({total_Q__0_carry_n_8,total_Q__0_carry_n_9,total_Q__0_carry_n_10,total_Q__0_carry_n_11,total_Q__0_carry_n_12,total_Q__0_carry_n_13,total_Q__0_carry_n_14,total_Q__0_carry_n_15}),
        .S({total_Q__0_carry_i_8_n_0,total_Q__0_carry_i_9_n_0,total_Q__0_carry_i_10_n_0,total_Q__0_carry_i_11_n_0,total_Q__0_carry_i_12_n_0,total_Q__0_carry_i_13_n_0,total_Q__0_carry_i_14_n_0,total_Q__0_carry_i_15_n_0}));
  CARRY8 total_Q__0_carry__0
       (.CI(total_Q__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_Q__0_carry__0_n_0,total_Q__0_carry__0_n_1,total_Q__0_carry__0_n_2,total_Q__0_carry__0_n_3,total_Q__0_carry__0_n_4,total_Q__0_carry__0_n_5,total_Q__0_carry__0_n_6,total_Q__0_carry__0_n_7}),
        .DI({total_Q__0_carry__0_i_1_n_0,total_Q__0_carry__0_i_2_n_0,total_Q__0_carry__0_i_3_n_0,total_Q__0_carry__0_i_4_n_0,total_Q__0_carry__0_i_5_n_0,total_Q__0_carry__0_i_6_n_0,total_Q__0_carry__0_i_7_n_0,total_Q__0_carry__0_i_8_n_0}),
        .O({total_Q__0_carry__0_n_8,total_Q__0_carry__0_n_9,total_Q__0_carry__0_n_10,total_Q__0_carry__0_n_11,total_Q__0_carry__0_n_12,total_Q__0_carry__0_n_13,total_Q__0_carry__0_n_14,total_Q__0_carry__0_n_15}),
        .S({total_Q__0_carry__0_i_9_n_0,total_Q__0_carry__0_i_10_n_0,total_Q__0_carry__0_i_11_n_0,total_Q__0_carry__0_i_12_n_0,total_Q__0_carry__0_i_13_n_0,total_Q__0_carry__0_i_14_n_0,total_Q__0_carry__0_i_15_n_0,total_Q__0_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__0_carry__0_i_1
       (.I0(s_axis_tdata[31]),
        .I1(Q6[15]),
        .I2(total_Q20),
        .O(total_Q__0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry__0_i_10
       (.I0(total_Q__0_carry__0_i_2_n_0),
        .I1(Q6[14]),
        .I2(\Q4_reg_n_0_[14] ),
        .I3(s_axis_tdata[30]),
        .O(total_Q__0_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry__0_i_11
       (.I0(Q6[13]),
        .I1(\Q4_reg_n_0_[13] ),
        .I2(s_axis_tdata[29]),
        .I3(total_Q__0_carry__0_i_3_n_0),
        .O(total_Q__0_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry__0_i_12
       (.I0(Q6[12]),
        .I1(\Q4_reg_n_0_[12] ),
        .I2(s_axis_tdata[28]),
        .I3(total_Q__0_carry__0_i_4_n_0),
        .O(total_Q__0_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry__0_i_13
       (.I0(Q6[11]),
        .I1(\Q4_reg_n_0_[11] ),
        .I2(s_axis_tdata[27]),
        .I3(total_Q__0_carry__0_i_5_n_0),
        .O(total_Q__0_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry__0_i_14
       (.I0(Q6[10]),
        .I1(\Q4_reg_n_0_[10] ),
        .I2(s_axis_tdata[26]),
        .I3(total_Q__0_carry__0_i_6_n_0),
        .O(total_Q__0_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry__0_i_15
       (.I0(Q6[9]),
        .I1(\Q4_reg_n_0_[9] ),
        .I2(s_axis_tdata[25]),
        .I3(total_Q__0_carry__0_i_7_n_0),
        .O(total_Q__0_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry__0_i_16
       (.I0(Q6[8]),
        .I1(\Q4_reg_n_0_[8] ),
        .I2(s_axis_tdata[24]),
        .I3(total_Q__0_carry__0_i_8_n_0),
        .O(total_Q__0_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_2
       (.I0(Q6[13]),
        .I1(\Q4_reg_n_0_[13] ),
        .I2(s_axis_tdata[29]),
        .O(total_Q__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_3
       (.I0(Q6[12]),
        .I1(\Q4_reg_n_0_[12] ),
        .I2(s_axis_tdata[28]),
        .O(total_Q__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_4
       (.I0(Q6[11]),
        .I1(\Q4_reg_n_0_[11] ),
        .I2(s_axis_tdata[27]),
        .O(total_Q__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_5
       (.I0(Q6[10]),
        .I1(\Q4_reg_n_0_[10] ),
        .I2(s_axis_tdata[26]),
        .O(total_Q__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_6
       (.I0(Q6[9]),
        .I1(\Q4_reg_n_0_[9] ),
        .I2(s_axis_tdata[25]),
        .O(total_Q__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_7
       (.I0(Q6[8]),
        .I1(\Q4_reg_n_0_[8] ),
        .I2(s_axis_tdata[24]),
        .O(total_Q__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_8
       (.I0(Q6[7]),
        .I1(\Q4_reg_n_0_[7] ),
        .I2(s_axis_tdata[23]),
        .O(total_Q__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    total_Q__0_carry__0_i_9
       (.I0(s_axis_tdata[31]),
        .I1(Q6[15]),
        .I2(total_Q20),
        .I3(s_axis_tdata[30]),
        .I4(\Q4_reg_n_0_[14] ),
        .I5(Q6[14]),
        .O(total_Q__0_carry__0_i_9_n_0));
  CARRY8 total_Q__0_carry__1
       (.CI(total_Q__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_Q__0_carry__1_CO_UNCONNECTED[7:2],total_Q__0_carry__1_n_6,NLW_total_Q__0_carry__1_CO_UNCONNECTED[0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_Q__0_carry__1_i_1_n_0}),
        .O({NLW_total_Q__0_carry__1_O_UNCONNECTED[7:1],total_Q__0_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,total_Q__0_carry__1_i_2_n_0}));
  LUT3 #(
    .INIT(8'h28)) 
    total_Q__0_carry__1_i_1
       (.I0(s_axis_tdata[31]),
        .I1(total_Q20),
        .I2(Q6[15]),
        .O(total_Q__0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hDB)) 
    total_Q__0_carry__1_i_2
       (.I0(s_axis_tdata[31]),
        .I1(total_Q20),
        .I2(Q6[15]),
        .O(total_Q__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_1
       (.I0(Q6[6]),
        .I1(\Q4_reg_n_0_[6] ),
        .I2(s_axis_tdata[22]),
        .O(total_Q__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry_i_10
       (.I0(Q6[5]),
        .I1(\Q4_reg_n_0_[5] ),
        .I2(s_axis_tdata[21]),
        .I3(total_Q__0_carry_i_3_n_0),
        .O(total_Q__0_carry_i_10_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry_i_11
       (.I0(Q6[4]),
        .I1(\Q4_reg_n_0_[4] ),
        .I2(s_axis_tdata[20]),
        .I3(total_Q__0_carry_i_4_n_0),
        .O(total_Q__0_carry_i_11_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry_i_12
       (.I0(Q6[3]),
        .I1(\Q4_reg_n_0_[3] ),
        .I2(s_axis_tdata[19]),
        .I3(total_Q__0_carry_i_5_n_0),
        .O(total_Q__0_carry_i_12_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry_i_13
       (.I0(Q6[2]),
        .I1(\Q4_reg_n_0_[2] ),
        .I2(s_axis_tdata[18]),
        .I3(total_Q__0_carry_i_6_n_0),
        .O(total_Q__0_carry_i_13_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry_i_14
       (.I0(Q6[1]),
        .I1(\Q4_reg_n_0_[1] ),
        .I2(s_axis_tdata[17]),
        .I3(total_Q__0_carry_i_7_n_0),
        .O(total_Q__0_carry_i_14_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__0_carry_i_15
       (.I0(Q6[0]),
        .I1(\Q4_reg_n_0_[0] ),
        .I2(s_axis_tdata[16]),
        .O(total_Q__0_carry_i_15_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_2
       (.I0(Q6[5]),
        .I1(\Q4_reg_n_0_[5] ),
        .I2(s_axis_tdata[21]),
        .O(total_Q__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_3
       (.I0(Q6[4]),
        .I1(\Q4_reg_n_0_[4] ),
        .I2(s_axis_tdata[20]),
        .O(total_Q__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_4
       (.I0(Q6[3]),
        .I1(\Q4_reg_n_0_[3] ),
        .I2(s_axis_tdata[19]),
        .O(total_Q__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_5
       (.I0(Q6[2]),
        .I1(\Q4_reg_n_0_[2] ),
        .I2(s_axis_tdata[18]),
        .O(total_Q__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_6
       (.I0(Q6[1]),
        .I1(\Q4_reg_n_0_[1] ),
        .I2(s_axis_tdata[17]),
        .O(total_Q__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_7
       (.I0(Q6[0]),
        .I1(\Q4_reg_n_0_[0] ),
        .I2(s_axis_tdata[16]),
        .O(total_Q__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry_i_8
       (.I0(Q6[7]),
        .I1(\Q4_reg_n_0_[7] ),
        .I2(s_axis_tdata[23]),
        .I3(total_Q__0_carry_i_1_n_0),
        .O(total_Q__0_carry_i_8_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__0_carry_i_9
       (.I0(Q6[6]),
        .I1(\Q4_reg_n_0_[6] ),
        .I2(s_axis_tdata[22]),
        .I3(total_Q__0_carry_i_2_n_0),
        .O(total_Q__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__105_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_Q__105_carry_n_0,total_Q__105_carry_n_1,total_Q__105_carry_n_2,total_Q__105_carry_n_3,total_Q__105_carry_n_4,total_Q__105_carry_n_5,total_Q__105_carry_n_6,total_Q__105_carry_n_7}),
        .DI({total_Q__105_carry_i_1_n_0,total_Q__105_carry_i_2_n_0,total_Q__105_carry_i_3_n_0,total_Q__105_carry_i_4_n_0,total_Q__105_carry_i_5_n_0,\Q2_reg_n_0_[1] ,total_Q__0_carry_n_14,total_Q__0_carry_n_15}),
        .O({m_axis_tdata[19:16],NLW_total_Q__105_carry_O_UNCONNECTED[3:0]}),
        .S({total_Q__105_carry_i_6_n_0,total_Q__105_carry_i_7_n_0,total_Q__105_carry_i_8_n_0,total_Q__105_carry_i_9_n_0,total_Q__105_carry_i_10_n_0,total_Q__105_carry_i_11_n_0,total_Q__105_carry_i_12_n_0,total_Q__105_carry_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__105_carry__0
       (.CI(total_Q__105_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_Q__105_carry__0_n_0,total_Q__105_carry__0_n_1,total_Q__105_carry__0_n_2,total_Q__105_carry__0_n_3,total_Q__105_carry__0_n_4,total_Q__105_carry__0_n_5,total_Q__105_carry__0_n_6,total_Q__105_carry__0_n_7}),
        .DI({total_Q__105_carry__0_i_1_n_0,total_Q__105_carry__0_i_2_n_0,total_Q__105_carry__0_i_3_n_0,total_Q__105_carry__0_i_4_n_0,total_Q__105_carry__0_i_5_n_0,total_Q__105_carry__0_i_6_n_0,total_Q__105_carry__0_i_7_n_0,total_Q__105_carry__0_i_8_n_0}),
        .O(m_axis_tdata[27:20]),
        .S({total_Q__105_carry__0_i_9_n_0,total_Q__105_carry__0_i_10_n_0,total_Q__105_carry__0_i_11_n_0,total_Q__105_carry__0_i_12_n_0,total_Q__105_carry__0_i_13_n_0,total_Q__105_carry__0_i_14_n_0,total_Q__105_carry__0_i_15_n_0,total_Q__105_carry__0_i_16_n_0}));
  (* HLUTNM = "lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_1
       (.I0(total_Q__53_carry__0_n_11),
        .I1(total_Q__0_carry__0_n_9),
        .I2(\Q2_reg_n_0_[11] ),
        .O(total_Q__105_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_10
       (.I0(total_Q__53_carry__0_n_11),
        .I1(total_Q__0_carry__0_n_9),
        .I2(\Q2_reg_n_0_[11] ),
        .I3(total_Q__105_carry__0_i_2_n_0),
        .O(total_Q__105_carry__0_i_10_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_11
       (.I0(total_Q__53_carry__0_n_12),
        .I1(total_Q__0_carry__0_n_10),
        .I2(\Q2_reg_n_0_[10] ),
        .I3(total_Q__105_carry__0_i_3_n_0),
        .O(total_Q__105_carry__0_i_11_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_12
       (.I0(total_Q__53_carry__0_n_13),
        .I1(total_Q__0_carry__0_n_11),
        .I2(\Q2_reg_n_0_[9] ),
        .I3(total_Q__105_carry__0_i_4_n_0),
        .O(total_Q__105_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_13
       (.I0(total_Q__53_carry__0_n_14),
        .I1(total_Q__0_carry__0_n_12),
        .I2(\Q2_reg_n_0_[8] ),
        .I3(total_Q__105_carry__0_i_5_n_0),
        .O(total_Q__105_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_14
       (.I0(total_Q__53_carry__0_n_15),
        .I1(total_Q__0_carry__0_n_13),
        .I2(\Q2_reg_n_0_[7] ),
        .I3(total_Q__105_carry__0_i_6_n_0),
        .O(total_Q__105_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_15
       (.I0(total_Q__53_carry_n_8),
        .I1(total_Q__0_carry__0_n_14),
        .I2(\Q2_reg_n_0_[6] ),
        .I3(total_Q__105_carry__0_i_7_n_0),
        .O(total_Q__105_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_16
       (.I0(total_Q__53_carry_n_9),
        .I1(total_Q__0_carry__0_n_15),
        .I2(\Q2_reg_n_0_[5] ),
        .I3(total_Q__105_carry__0_i_8_n_0),
        .O(total_Q__105_carry__0_i_16_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_2
       (.I0(total_Q__53_carry__0_n_12),
        .I1(total_Q__0_carry__0_n_10),
        .I2(\Q2_reg_n_0_[10] ),
        .O(total_Q__105_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_3
       (.I0(total_Q__53_carry__0_n_13),
        .I1(total_Q__0_carry__0_n_11),
        .I2(\Q2_reg_n_0_[9] ),
        .O(total_Q__105_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_4
       (.I0(total_Q__53_carry__0_n_14),
        .I1(total_Q__0_carry__0_n_12),
        .I2(\Q2_reg_n_0_[8] ),
        .O(total_Q__105_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_5
       (.I0(total_Q__53_carry__0_n_15),
        .I1(total_Q__0_carry__0_n_13),
        .I2(\Q2_reg_n_0_[7] ),
        .O(total_Q__105_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_6
       (.I0(total_Q__53_carry_n_8),
        .I1(total_Q__0_carry__0_n_14),
        .I2(\Q2_reg_n_0_[6] ),
        .O(total_Q__105_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_7
       (.I0(total_Q__53_carry_n_9),
        .I1(total_Q__0_carry__0_n_15),
        .I2(\Q2_reg_n_0_[5] ),
        .O(total_Q__105_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__0_i_8
       (.I0(total_Q__53_carry_n_10),
        .I1(total_Q__0_carry_n_8),
        .I2(\Q2_reg_n_0_[4] ),
        .O(total_Q__105_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__0_i_9
       (.I0(total_Q__53_carry__0_n_10),
        .I1(total_Q__0_carry__0_n_8),
        .I2(\Q2_reg_n_0_[12] ),
        .I3(total_Q__105_carry__0_i_1_n_0),
        .O(total_Q__105_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__105_carry__1
       (.CI(total_Q__105_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_Q__105_carry__1_CO_UNCONNECTED[7:3],total_Q__105_carry__1_n_5,total_Q__105_carry__1_n_6,total_Q__105_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,total_Q__105_carry__1_i_1_n_0,total_Q__105_carry__1_i_2_n_0,total_Q__105_carry__1_i_3_n_0}),
        .O({NLW_total_Q__105_carry__1_O_UNCONNECTED[7:4],m_axis_tdata[31:28]}),
        .S({1'b0,1'b0,1'b0,1'b0,total_Q__105_carry__1_i_4_n_0,total_Q__105_carry__1_i_5_n_0,total_Q__105_carry__1_i_6_n_0,total_Q__105_carry__1_i_7_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    total_Q__105_carry__1_i_1
       (.I0(total_Q50),
        .I1(total_Q__0_carry__1_n_6),
        .I2(total_Q__53_carry__1_n_15),
        .O(total_Q__105_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__1_i_2
       (.I0(total_Q__53_carry__0_n_9),
        .I1(total_Q__0_carry__1_n_15),
        .I2(\Q2_reg_n_0_[13] ),
        .O(total_Q__105_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry__1_i_3
       (.I0(total_Q__53_carry__0_n_10),
        .I1(total_Q__0_carry__0_n_8),
        .I2(\Q2_reg_n_0_[12] ),
        .O(total_Q__105_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hD24B)) 
    total_Q__105_carry__1_i_4
       (.I0(total_Q50),
        .I1(total_Q__0_carry__1_n_6),
        .I2(total_Q__53_carry__1_n_14),
        .I3(total_Q__53_carry__1_n_15),
        .O(total_Q__105_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h96666669)) 
    total_Q__105_carry__1_i_5
       (.I0(total_Q50),
        .I1(total_Q__53_carry__1_n_15),
        .I2(\Q2_reg_n_0_[14] ),
        .I3(total_Q__53_carry__0_n_8),
        .I4(total_Q__0_carry__1_n_6),
        .O(total_Q__105_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    total_Q__105_carry__1_i_6
       (.I0(total_Q__105_carry__1_i_2_n_0),
        .I1(total_Q__0_carry__1_n_6),
        .I2(total_Q__53_carry__0_n_8),
        .I3(\Q2_reg_n_0_[14] ),
        .O(total_Q__105_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry__1_i_7
       (.I0(total_Q__53_carry__0_n_9),
        .I1(total_Q__0_carry__1_n_15),
        .I2(\Q2_reg_n_0_[13] ),
        .I3(total_Q__105_carry__1_i_3_n_0),
        .O(total_Q__105_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry_i_1
       (.I0(total_Q__53_carry_n_11),
        .I1(total_Q__0_carry_n_9),
        .I2(\Q2_reg_n_0_[3] ),
        .O(total_Q__105_carry_i_1_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    total_Q__105_carry_i_10
       (.I0(total_Q__53_carry_n_14),
        .I1(total_Q__0_carry_n_12),
        .I2(\Q2_reg_n_0_[0] ),
        .I3(total_Q__0_carry_n_13),
        .I4(total_Q__53_carry_n_15),
        .O(total_Q__105_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__105_carry_i_11
       (.I0(\Q2_reg_n_0_[1] ),
        .I1(total_Q__53_carry_n_15),
        .I2(total_Q__0_carry_n_13),
        .O(total_Q__105_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    total_Q__105_carry_i_12
       (.I0(\Q2_reg_n_0_[1] ),
        .I1(total_Q__0_carry_n_14),
        .O(total_Q__105_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_Q__105_carry_i_13
       (.I0(total_Q__0_carry_n_15),
        .I1(\Q2_reg_n_0_[0] ),
        .O(total_Q__105_carry_i_13_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry_i_2
       (.I0(total_Q__53_carry_n_12),
        .I1(total_Q__0_carry_n_10),
        .I2(\Q2_reg_n_0_[2] ),
        .O(total_Q__105_carry_i_2_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry_i_3
       (.I0(total_Q__53_carry_n_13),
        .I1(total_Q__0_carry_n_11),
        .I2(\Q2_reg_n_0_[1] ),
        .O(total_Q__105_carry_i_3_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__105_carry_i_4
       (.I0(total_Q__53_carry_n_14),
        .I1(total_Q__0_carry_n_12),
        .I2(\Q2_reg_n_0_[0] ),
        .O(total_Q__105_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__105_carry_i_5
       (.I0(\Q2_reg_n_0_[0] ),
        .I1(total_Q__53_carry_n_14),
        .I2(total_Q__0_carry_n_12),
        .O(total_Q__105_carry_i_5_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry_i_6
       (.I0(total_Q__53_carry_n_10),
        .I1(total_Q__0_carry_n_8),
        .I2(\Q2_reg_n_0_[4] ),
        .I3(total_Q__105_carry_i_1_n_0),
        .O(total_Q__105_carry_i_6_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry_i_7
       (.I0(total_Q__53_carry_n_11),
        .I1(total_Q__0_carry_n_9),
        .I2(\Q2_reg_n_0_[3] ),
        .I3(total_Q__105_carry_i_2_n_0),
        .O(total_Q__105_carry_i_7_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry_i_8
       (.I0(total_Q__53_carry_n_12),
        .I1(total_Q__0_carry_n_10),
        .I2(\Q2_reg_n_0_[2] ),
        .I3(total_Q__105_carry_i_3_n_0),
        .O(total_Q__105_carry_i_8_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__105_carry_i_9
       (.I0(total_Q__53_carry_n_13),
        .I1(total_Q__0_carry_n_11),
        .I2(\Q2_reg_n_0_[1] ),
        .I3(total_Q__105_carry_i_4_n_0),
        .O(total_Q__105_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__53_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_Q__53_carry_n_0,total_Q__53_carry_n_1,total_Q__53_carry_n_2,total_Q__53_carry_n_3,total_Q__53_carry_n_4,total_Q__53_carry_n_5,total_Q__53_carry_n_6,total_Q__53_carry_n_7}),
        .DI({total_Q__53_carry_i_1_n_0,total_Q__53_carry_i_2_n_0,total_Q__53_carry_i_3_n_0,total_Q__53_carry_i_4_n_0,total_Q__53_carry_i_5_n_0,\Q4_reg_n_0_[1] ,\Q4_reg_n_0_[0] ,1'b0}),
        .O({total_Q__53_carry_n_8,total_Q__53_carry_n_9,total_Q__53_carry_n_10,total_Q__53_carry_n_11,total_Q__53_carry_n_12,total_Q__53_carry_n_13,total_Q__53_carry_n_14,total_Q__53_carry_n_15}),
        .S({total_Q__53_carry_i_6_n_0,total_Q__53_carry_i_7_n_0,total_Q__53_carry_i_8_n_0,total_Q__53_carry_i_9_n_0,total_Q__53_carry_i_10_n_0,total_Q__53_carry_i_11_n_0,total_Q__53_carry_i_12_n_0,\Q2_reg_n_0_[2] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__53_carry__0
       (.CI(total_Q__53_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_Q__53_carry__0_n_0,total_Q__53_carry__0_n_1,total_Q__53_carry__0_n_2,total_Q__53_carry__0_n_3,total_Q__53_carry__0_n_4,total_Q__53_carry__0_n_5,total_Q__53_carry__0_n_6,total_Q__53_carry__0_n_7}),
        .DI({total_Q__53_carry__0_i_1_n_0,total_Q__53_carry__0_i_2_n_0,total_Q__53_carry__0_i_3_n_0,total_Q__53_carry__0_i_4_n_0,total_Q__53_carry__0_i_5_n_0,total_Q__53_carry__0_i_6_n_0,total_Q__53_carry__0_i_7_n_0,total_Q__53_carry__0_i_8_n_0}),
        .O({total_Q__53_carry__0_n_8,total_Q__53_carry__0_n_9,total_Q__53_carry__0_n_10,total_Q__53_carry__0_n_11,total_Q__53_carry__0_n_12,total_Q__53_carry__0_n_13,total_Q__53_carry__0_n_14,total_Q__53_carry__0_n_15}),
        .S({total_Q__53_carry__0_i_9_n_0,total_Q__53_carry__0_i_10_n_0,total_Q__53_carry__0_i_11_n_0,total_Q__53_carry__0_i_12_n_0,total_Q__53_carry__0_i_13_n_0,total_Q__53_carry__0_i_14_n_0,total_Q__53_carry__0_i_15_n_0,total_Q__53_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'hD00D)) 
    total_Q__53_carry__0_i_1
       (.I0(total_Q50),
        .I1(total_Q3[15]),
        .I2(total_Q3[16]),
        .I3(\Q4_reg_n_0_[13] ),
        .O(total_Q__53_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    total_Q__53_carry__0_i_10
       (.I0(\Q4_reg_n_0_[12] ),
        .I1(\Q4_reg_n_0_[13] ),
        .I2(total_Q3[16]),
        .I3(total_Q3[15]),
        .I4(total_Q50),
        .O(total_Q__53_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    total_Q__53_carry__0_i_11
       (.I0(\Q4_reg_n_0_[12] ),
        .I1(total_Q3[15]),
        .I2(total_Q50),
        .I3(\Q4_reg_n_0_[11] ),
        .I4(total_Q3[14]),
        .I5(\Q2_reg_n_0_[14] ),
        .O(total_Q__53_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry__0_i_12
       (.I0(total_Q__53_carry__0_i_4_n_0),
        .I1(total_Q3[14]),
        .I2(\Q2_reg_n_0_[14] ),
        .I3(\Q4_reg_n_0_[11] ),
        .O(total_Q__53_carry__0_i_12_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry__0_i_13
       (.I0(\Q2_reg_n_0_[13] ),
        .I1(total_Q3[13]),
        .I2(\Q4_reg_n_0_[10] ),
        .I3(total_Q__53_carry__0_i_5_n_0),
        .O(total_Q__53_carry__0_i_13_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry__0_i_14
       (.I0(\Q2_reg_n_0_[12] ),
        .I1(total_Q3[12]),
        .I2(\Q4_reg_n_0_[9] ),
        .I3(total_Q__53_carry__0_i_6_n_0),
        .O(total_Q__53_carry__0_i_14_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry__0_i_15
       (.I0(\Q2_reg_n_0_[11] ),
        .I1(total_Q3[11]),
        .I2(\Q4_reg_n_0_[8] ),
        .I3(total_Q__53_carry__0_i_7_n_0),
        .O(total_Q__53_carry__0_i_15_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry__0_i_16
       (.I0(\Q2_reg_n_0_[10] ),
        .I1(total_Q3[10]),
        .I2(\Q4_reg_n_0_[7] ),
        .I3(total_Q__53_carry__0_i_8_n_0),
        .O(total_Q__53_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    total_Q__53_carry__0_i_2
       (.I0(\Q4_reg_n_0_[12] ),
        .I1(total_Q50),
        .I2(total_Q3[15]),
        .O(total_Q__53_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__53_carry__0_i_3
       (.I0(total_Q50),
        .I1(total_Q3[15]),
        .I2(\Q4_reg_n_0_[12] ),
        .O(total_Q__53_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_4
       (.I0(\Q2_reg_n_0_[13] ),
        .I1(total_Q3[13]),
        .I2(\Q4_reg_n_0_[10] ),
        .O(total_Q__53_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_5
       (.I0(\Q2_reg_n_0_[12] ),
        .I1(total_Q3[12]),
        .I2(\Q4_reg_n_0_[9] ),
        .O(total_Q__53_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_6
       (.I0(\Q2_reg_n_0_[11] ),
        .I1(total_Q3[11]),
        .I2(\Q4_reg_n_0_[8] ),
        .O(total_Q__53_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_7
       (.I0(\Q2_reg_n_0_[10] ),
        .I1(total_Q3[10]),
        .I2(\Q4_reg_n_0_[7] ),
        .O(total_Q__53_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_8
       (.I0(\Q2_reg_n_0_[9] ),
        .I1(total_Q3[9]),
        .I2(\Q4_reg_n_0_[6] ),
        .O(total_Q__53_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hB44B0FF00FF04BB4)) 
    total_Q__53_carry__0_i_9
       (.I0(total_Q3[15]),
        .I1(total_Q50),
        .I2(\Q4_reg_n_0_[14] ),
        .I3(total_Q3[17]),
        .I4(\Q4_reg_n_0_[13] ),
        .I5(total_Q3[16]),
        .O(total_Q__53_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__53_carry__1
       (.CI(total_Q__53_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_Q__53_carry__1_CO_UNCONNECTED[7:1],total_Q__53_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_Q__53_carry__1_i_1_n_0}),
        .O({NLW_total_Q__53_carry__1_O_UNCONNECTED[7:2],total_Q__53_carry__1_n_14,total_Q__53_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_Q__53_carry__1_i_2_n_0,total_Q__53_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    total_Q__53_carry__1_i_1
       (.I0(total_Q3[16]),
        .I1(\Q4_reg_n_0_[13] ),
        .I2(total_Q3[17]),
        .I3(\Q4_reg_n_0_[14] ),
        .O(total_Q__53_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    total_Q__53_carry__1_i_2
       (.I0(\Q4_reg_n_0_[14] ),
        .I1(total_Q3[17]),
        .I2(total_Q3[18]),
        .I3(total_Q20),
        .I4(total_Q3[19]),
        .O(total_Q__53_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    total_Q__53_carry__1_i_3
       (.I0(\Q4_reg_n_0_[13] ),
        .I1(total_Q3[16]),
        .I2(total_Q20),
        .I3(total_Q3[18]),
        .I4(\Q4_reg_n_0_[14] ),
        .I5(total_Q3[17]),
        .O(total_Q__53_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair52" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_1
       (.I0(\Q2_reg_n_0_[8] ),
        .I1(total_Q3[8]),
        .I2(\Q4_reg_n_0_[5] ),
        .O(total_Q__53_carry_i_1_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    total_Q__53_carry_i_10
       (.I0(\Q2_reg_n_0_[5] ),
        .I1(total_Q3[5]),
        .I2(\Q4_reg_n_0_[2] ),
        .I3(total_Q3[4]),
        .I4(\Q2_reg_n_0_[4] ),
        .O(total_Q__53_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__53_carry_i_11
       (.I0(\Q2_reg_n_0_[4] ),
        .I1(total_Q3[4]),
        .I2(\Q4_reg_n_0_[1] ),
        .O(total_Q__53_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_Q__53_carry_i_12
       (.I0(\Q4_reg_n_0_[0] ),
        .I1(\Q2_reg_n_0_[3] ),
        .O(total_Q__53_carry_i_12_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_2
       (.I0(\Q2_reg_n_0_[7] ),
        .I1(total_Q3[7]),
        .I2(\Q4_reg_n_0_[4] ),
        .O(total_Q__53_carry_i_2_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_3
       (.I0(\Q2_reg_n_0_[6] ),
        .I1(total_Q3[6]),
        .I2(\Q4_reg_n_0_[3] ),
        .O(total_Q__53_carry_i_3_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_4
       (.I0(\Q2_reg_n_0_[5] ),
        .I1(total_Q3[5]),
        .I2(\Q4_reg_n_0_[2] ),
        .O(total_Q__53_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__53_carry_i_5
       (.I0(\Q4_reg_n_0_[2] ),
        .I1(\Q2_reg_n_0_[5] ),
        .I2(total_Q3[5]),
        .O(total_Q__53_carry_i_5_n_0));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry_i_6
       (.I0(\Q2_reg_n_0_[9] ),
        .I1(total_Q3[9]),
        .I2(\Q4_reg_n_0_[6] ),
        .I3(total_Q__53_carry_i_1_n_0),
        .O(total_Q__53_carry_i_6_n_0));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry_i_7
       (.I0(\Q2_reg_n_0_[8] ),
        .I1(total_Q3[8]),
        .I2(\Q4_reg_n_0_[5] ),
        .I3(total_Q__53_carry_i_2_n_0),
        .O(total_Q__53_carry_i_7_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry_i_8
       (.I0(\Q2_reg_n_0_[7] ),
        .I1(total_Q3[7]),
        .I2(\Q4_reg_n_0_[4] ),
        .I3(total_Q__53_carry_i_3_n_0),
        .O(total_Q__53_carry_i_8_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    total_Q__53_carry_i_9
       (.I0(\Q2_reg_n_0_[6] ),
        .I1(total_Q3[6]),
        .I2(\Q4_reg_n_0_[3] ),
        .I3(total_Q__53_carry_i_4_n_0),
        .O(total_Q__53_carry_i_9_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
