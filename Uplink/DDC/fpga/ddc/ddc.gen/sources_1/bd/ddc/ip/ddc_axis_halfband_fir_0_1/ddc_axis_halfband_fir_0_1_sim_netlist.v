// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun  1 11:32:45 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/FPGA/Vivaldo
//               Project/Digital_Font_End_LTE/Uplink/fpga/ddc/ddc.gen/sources_1/bd/ddc/ip/ddc_axis_halfband_fir_0_1/ddc_axis_halfband_fir_0_1_sim_netlist.v}
// Design      : ddc_axis_halfband_fir_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ddc_axis_halfband_fir_0_1,axis_halfband_fir,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_halfband_fir,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ddc_axis_halfband_fir_0_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ddc_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN ddc_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN ddc_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

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
  ddc_axis_halfband_fir_0_1_axis_halfband_fir inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_halfband_fir" *) 
module ddc_axis_halfband_fir_0_1_axis_halfband_fir
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

  wire [15:0]I1;
  wire I10;
  wire \I1[15]_i_1_n_0 ;
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
  wire \I3_reg_n_0_[0] ;
  wire \I3_reg_n_0_[10] ;
  wire \I3_reg_n_0_[11] ;
  wire \I3_reg_n_0_[12] ;
  wire \I3_reg_n_0_[13] ;
  wire \I3_reg_n_0_[14] ;
  wire \I3_reg_n_0_[1] ;
  wire \I3_reg_n_0_[2] ;
  wire \I3_reg_n_0_[3] ;
  wire \I3_reg_n_0_[4] ;
  wire \I3_reg_n_0_[5] ;
  wire \I3_reg_n_0_[6] ;
  wire \I3_reg_n_0_[7] ;
  wire \I3_reg_n_0_[8] ;
  wire \I3_reg_n_0_[9] ;
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
  wire \Q3_reg_n_0_[0] ;
  wire \Q3_reg_n_0_[10] ;
  wire \Q3_reg_n_0_[11] ;
  wire \Q3_reg_n_0_[12] ;
  wire \Q3_reg_n_0_[13] ;
  wire \Q3_reg_n_0_[14] ;
  wire \Q3_reg_n_0_[1] ;
  wire \Q3_reg_n_0_[2] ;
  wire \Q3_reg_n_0_[3] ;
  wire \Q3_reg_n_0_[4] ;
  wire \Q3_reg_n_0_[5] ;
  wire \Q3_reg_n_0_[6] ;
  wire \Q3_reg_n_0_[7] ;
  wire \Q3_reg_n_0_[8] ;
  wire \Q3_reg_n_0_[9] ;
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
  wire \m_axis_tdata[14]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[14]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[14]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[14]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[30]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[30]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[30]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[30]_INST_0_i_4_n_0 ;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire total_I20;
  wire total_I30;
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
  wire total_I__107_carry__0_i_10_n_0;
  wire total_I__107_carry__0_i_11_n_0;
  wire total_I__107_carry__0_i_12_n_0;
  wire total_I__107_carry__0_i_13_n_0;
  wire total_I__107_carry__0_i_14_n_0;
  wire total_I__107_carry__0_i_15_n_0;
  wire total_I__107_carry__0_i_16_n_0;
  wire total_I__107_carry__0_i_1_n_0;
  wire total_I__107_carry__0_i_2_n_0;
  wire total_I__107_carry__0_i_3_n_0;
  wire total_I__107_carry__0_i_4_n_0;
  wire total_I__107_carry__0_i_5_n_0;
  wire total_I__107_carry__0_i_6_n_0;
  wire total_I__107_carry__0_i_7_n_0;
  wire total_I__107_carry__0_i_8_n_0;
  wire total_I__107_carry__0_i_9_n_0;
  wire total_I__107_carry__0_n_0;
  wire total_I__107_carry__0_n_1;
  wire total_I__107_carry__0_n_10;
  wire total_I__107_carry__0_n_11;
  wire total_I__107_carry__0_n_12;
  wire total_I__107_carry__0_n_13;
  wire total_I__107_carry__0_n_14;
  wire total_I__107_carry__0_n_15;
  wire total_I__107_carry__0_n_2;
  wire total_I__107_carry__0_n_3;
  wire total_I__107_carry__0_n_4;
  wire total_I__107_carry__0_n_5;
  wire total_I__107_carry__0_n_6;
  wire total_I__107_carry__0_n_7;
  wire total_I__107_carry__0_n_8;
  wire total_I__107_carry__0_n_9;
  wire total_I__107_carry__1_i_10_n_0;
  wire total_I__107_carry__1_i_11_n_0;
  wire total_I__107_carry__1_i_12_n_0;
  wire total_I__107_carry__1_i_13_n_0;
  wire total_I__107_carry__1_i_14_n_0;
  wire total_I__107_carry__1_i_1_n_0;
  wire total_I__107_carry__1_i_2_n_0;
  wire total_I__107_carry__1_i_3_n_0;
  wire total_I__107_carry__1_i_4_n_0;
  wire total_I__107_carry__1_i_5_n_0;
  wire total_I__107_carry__1_i_6_n_0;
  wire total_I__107_carry__1_i_7_n_0;
  wire total_I__107_carry__1_i_8_n_0;
  wire total_I__107_carry__1_i_9_n_0;
  wire total_I__107_carry__1_n_0;
  wire total_I__107_carry__1_n_1;
  wire total_I__107_carry__1_n_10;
  wire total_I__107_carry__1_n_11;
  wire total_I__107_carry__1_n_12;
  wire total_I__107_carry__1_n_13;
  wire total_I__107_carry__1_n_14;
  wire total_I__107_carry__1_n_15;
  wire total_I__107_carry__1_n_2;
  wire total_I__107_carry__1_n_3;
  wire total_I__107_carry__1_n_4;
  wire total_I__107_carry__1_n_5;
  wire total_I__107_carry__1_n_6;
  wire total_I__107_carry__1_n_7;
  wire total_I__107_carry__1_n_8;
  wire total_I__107_carry__1_n_9;
  wire total_I__107_carry__2_i_1_n_0;
  wire total_I__107_carry__2_i_2_n_0;
  wire total_I__107_carry__2_i_3_n_0;
  wire total_I__107_carry__2_i_4_n_0;
  wire total_I__107_carry__2_i_5_n_0;
  wire total_I__107_carry__2_i_6_n_0;
  wire total_I__107_carry__2_i_7_n_0;
  wire total_I__107_carry__2_n_1;
  wire total_I__107_carry__2_n_10;
  wire total_I__107_carry__2_n_11;
  wire total_I__107_carry__2_n_12;
  wire total_I__107_carry__2_n_13;
  wire total_I__107_carry__2_n_14;
  wire total_I__107_carry__2_n_15;
  wire total_I__107_carry__2_n_2;
  wire total_I__107_carry__2_n_3;
  wire total_I__107_carry__2_n_4;
  wire total_I__107_carry__2_n_5;
  wire total_I__107_carry__2_n_6;
  wire total_I__107_carry__2_n_7;
  wire total_I__107_carry__2_n_9;
  wire total_I__107_carry_i_10_n_0;
  wire total_I__107_carry_i_11_n_0;
  wire total_I__107_carry_i_12_n_0;
  wire total_I__107_carry_i_13_n_0;
  wire total_I__107_carry_i_1_n_0;
  wire total_I__107_carry_i_2_n_0;
  wire total_I__107_carry_i_3_n_0;
  wire total_I__107_carry_i_4_n_0;
  wire total_I__107_carry_i_5_n_0;
  wire total_I__107_carry_i_6_n_0;
  wire total_I__107_carry_i_7_n_0;
  wire total_I__107_carry_i_8_n_0;
  wire total_I__107_carry_i_9_n_0;
  wire total_I__107_carry_n_0;
  wire total_I__107_carry_n_1;
  wire total_I__107_carry_n_10;
  wire total_I__107_carry_n_11;
  wire total_I__107_carry_n_2;
  wire total_I__107_carry_n_3;
  wire total_I__107_carry_n_4;
  wire total_I__107_carry_n_5;
  wire total_I__107_carry_n_6;
  wire total_I__107_carry_n_7;
  wire total_I__107_carry_n_8;
  wire total_I__107_carry_n_9;
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
  wire total_I__53_carry__1_i_4_n_0;
  wire total_I__53_carry__1_n_14;
  wire total_I__53_carry__1_n_15;
  wire total_I__53_carry__1_n_5;
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
  wire total_Q30;
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
  wire total_Q__107_carry__0_i_10_n_0;
  wire total_Q__107_carry__0_i_11_n_0;
  wire total_Q__107_carry__0_i_12_n_0;
  wire total_Q__107_carry__0_i_13_n_0;
  wire total_Q__107_carry__0_i_14_n_0;
  wire total_Q__107_carry__0_i_15_n_0;
  wire total_Q__107_carry__0_i_16_n_0;
  wire total_Q__107_carry__0_i_1_n_0;
  wire total_Q__107_carry__0_i_2_n_0;
  wire total_Q__107_carry__0_i_3_n_0;
  wire total_Q__107_carry__0_i_4_n_0;
  wire total_Q__107_carry__0_i_5_n_0;
  wire total_Q__107_carry__0_i_6_n_0;
  wire total_Q__107_carry__0_i_7_n_0;
  wire total_Q__107_carry__0_i_8_n_0;
  wire total_Q__107_carry__0_i_9_n_0;
  wire total_Q__107_carry__0_n_0;
  wire total_Q__107_carry__0_n_1;
  wire total_Q__107_carry__0_n_10;
  wire total_Q__107_carry__0_n_11;
  wire total_Q__107_carry__0_n_12;
  wire total_Q__107_carry__0_n_13;
  wire total_Q__107_carry__0_n_14;
  wire total_Q__107_carry__0_n_15;
  wire total_Q__107_carry__0_n_2;
  wire total_Q__107_carry__0_n_3;
  wire total_Q__107_carry__0_n_4;
  wire total_Q__107_carry__0_n_5;
  wire total_Q__107_carry__0_n_6;
  wire total_Q__107_carry__0_n_7;
  wire total_Q__107_carry__0_n_8;
  wire total_Q__107_carry__0_n_9;
  wire total_Q__107_carry__1_i_10_n_0;
  wire total_Q__107_carry__1_i_11_n_0;
  wire total_Q__107_carry__1_i_12_n_0;
  wire total_Q__107_carry__1_i_13_n_0;
  wire total_Q__107_carry__1_i_14_n_0;
  wire total_Q__107_carry__1_i_1_n_0;
  wire total_Q__107_carry__1_i_2_n_0;
  wire total_Q__107_carry__1_i_3_n_0;
  wire total_Q__107_carry__1_i_4_n_0;
  wire total_Q__107_carry__1_i_5_n_0;
  wire total_Q__107_carry__1_i_6_n_0;
  wire total_Q__107_carry__1_i_7_n_0;
  wire total_Q__107_carry__1_i_8_n_0;
  wire total_Q__107_carry__1_i_9_n_0;
  wire total_Q__107_carry__1_n_0;
  wire total_Q__107_carry__1_n_1;
  wire total_Q__107_carry__1_n_10;
  wire total_Q__107_carry__1_n_11;
  wire total_Q__107_carry__1_n_12;
  wire total_Q__107_carry__1_n_13;
  wire total_Q__107_carry__1_n_14;
  wire total_Q__107_carry__1_n_15;
  wire total_Q__107_carry__1_n_2;
  wire total_Q__107_carry__1_n_3;
  wire total_Q__107_carry__1_n_4;
  wire total_Q__107_carry__1_n_5;
  wire total_Q__107_carry__1_n_6;
  wire total_Q__107_carry__1_n_7;
  wire total_Q__107_carry__1_n_8;
  wire total_Q__107_carry__1_n_9;
  wire total_Q__107_carry__2_i_1_n_0;
  wire total_Q__107_carry__2_i_2_n_0;
  wire total_Q__107_carry__2_i_3_n_0;
  wire total_Q__107_carry__2_i_4_n_0;
  wire total_Q__107_carry__2_i_5_n_0;
  wire total_Q__107_carry__2_i_6_n_0;
  wire total_Q__107_carry__2_i_7_n_0;
  wire total_Q__107_carry__2_n_1;
  wire total_Q__107_carry__2_n_10;
  wire total_Q__107_carry__2_n_11;
  wire total_Q__107_carry__2_n_12;
  wire total_Q__107_carry__2_n_13;
  wire total_Q__107_carry__2_n_14;
  wire total_Q__107_carry__2_n_15;
  wire total_Q__107_carry__2_n_2;
  wire total_Q__107_carry__2_n_3;
  wire total_Q__107_carry__2_n_4;
  wire total_Q__107_carry__2_n_5;
  wire total_Q__107_carry__2_n_6;
  wire total_Q__107_carry__2_n_7;
  wire total_Q__107_carry__2_n_9;
  wire total_Q__107_carry_i_10_n_0;
  wire total_Q__107_carry_i_11_n_0;
  wire total_Q__107_carry_i_12_n_0;
  wire total_Q__107_carry_i_13_n_0;
  wire total_Q__107_carry_i_1_n_0;
  wire total_Q__107_carry_i_2_n_0;
  wire total_Q__107_carry_i_3_n_0;
  wire total_Q__107_carry_i_4_n_0;
  wire total_Q__107_carry_i_5_n_0;
  wire total_Q__107_carry_i_6_n_0;
  wire total_Q__107_carry_i_7_n_0;
  wire total_Q__107_carry_i_8_n_0;
  wire total_Q__107_carry_i_9_n_0;
  wire total_Q__107_carry_n_0;
  wire total_Q__107_carry_n_1;
  wire total_Q__107_carry_n_10;
  wire total_Q__107_carry_n_11;
  wire total_Q__107_carry_n_2;
  wire total_Q__107_carry_n_3;
  wire total_Q__107_carry_n_4;
  wire total_Q__107_carry_n_5;
  wire total_Q__107_carry_n_6;
  wire total_Q__107_carry_n_7;
  wire total_Q__107_carry_n_8;
  wire total_Q__107_carry_n_9;
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
  wire total_Q__53_carry__1_i_4_n_0;
  wire total_Q__53_carry__1_n_14;
  wire total_Q__53_carry__1_n_15;
  wire total_Q__53_carry__1_n_5;
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
  wire [3:0]NLW_total_I__107_carry_O_UNCONNECTED;
  wire [7:7]NLW_total_I__107_carry__2_CO_UNCONNECTED;
  wire [7:1]NLW_total_I__53_carry__1_CO_UNCONNECTED;
  wire [7:2]NLW_total_I__53_carry__1_O_UNCONNECTED;
  wire [7:0]NLW_total_Q__0_carry__1_CO_UNCONNECTED;
  wire [7:1]NLW_total_Q__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_total_Q__107_carry_O_UNCONNECTED;
  wire [7:7]NLW_total_Q__107_carry__2_CO_UNCONNECTED;
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
        .O(I10));
  FDRE \I1_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[0]),
        .Q(I1[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[10]),
        .Q(I1[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[11]),
        .Q(I1[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[12]),
        .Q(I1[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[13]),
        .Q(I1[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[14]),
        .Q(I1[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[15]),
        .Q(I1[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[1]),
        .Q(I1[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[2]),
        .Q(I1[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[3]),
        .Q(I1[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[4]),
        .Q(I1[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[5]),
        .Q(I1[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[6]),
        .Q(I1[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[7]),
        .Q(I1[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[8]),
        .Q(I1[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I1_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[9]),
        .Q(I1[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(I1[0]),
        .Q(\I2_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(I1[10]),
        .Q(\I2_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(I1[11]),
        .Q(\I2_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(I1[12]),
        .Q(\I2_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(I1[13]),
        .Q(\I2_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(I1[14]),
        .Q(\I2_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(I1[15]),
        .Q(total_I50),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(I1[1]),
        .Q(\I2_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(I1[2]),
        .Q(\I2_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(I1[3]),
        .Q(\I2_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(I1[4]),
        .Q(\I2_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(I1[5]),
        .Q(\I2_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(I1[6]),
        .Q(\I2_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(I1[7]),
        .Q(\I2_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(I1[8]),
        .Q(\I2_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I2_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(I1[9]),
        .Q(\I2_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[0] ),
        .Q(\I3_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[10] ),
        .Q(\I3_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[11] ),
        .Q(\I3_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[12] ),
        .Q(\I3_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[13] ),
        .Q(\I3_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[14] ),
        .Q(\I3_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(total_I50),
        .Q(total_I30),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[1] ),
        .Q(\I3_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[2] ),
        .Q(\I3_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[3] ),
        .Q(\I3_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[4] ),
        .Q(\I3_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[5] ),
        .Q(\I3_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[6] ),
        .Q(\I3_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[7] ),
        .Q(\I3_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[8] ),
        .Q(\I3_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I3_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(\I2_reg_n_0_[9] ),
        .Q(\I3_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[0] ),
        .Q(\I4_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[10] ),
        .Q(\I4_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[11] ),
        .Q(\I4_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[12] ),
        .Q(\I4_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[13] ),
        .Q(\I4_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[14] ),
        .Q(\I4_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(total_I30),
        .Q(total_I20),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[1] ),
        .Q(\I4_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[2] ),
        .Q(\I4_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[3] ),
        .Q(\I4_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[4] ),
        .Q(\I4_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[5] ),
        .Q(\I4_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[6] ),
        .Q(\I4_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[7] ),
        .Q(\I4_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[8] ),
        .Q(\I4_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I4_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(\I3_reg_n_0_[9] ),
        .Q(\I4_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[0] ),
        .Q(I5[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[10] ),
        .Q(I5[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[11] ),
        .Q(I5[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[12] ),
        .Q(I5[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[13] ),
        .Q(I5[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[14] ),
        .Q(I5[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(total_I20),
        .Q(I5[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[1] ),
        .Q(I5[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[2] ),
        .Q(I5[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[3] ),
        .Q(I5[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[4] ),
        .Q(I5[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[5] ),
        .Q(I5[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[6] ),
        .Q(I5[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[7] ),
        .Q(I5[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[8] ),
        .Q(I5[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I5_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(\I4_reg_n_0_[9] ),
        .Q(I5[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(I5[0]),
        .Q(I6[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(I5[10]),
        .Q(I6[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(I5[11]),
        .Q(I6[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(I5[12]),
        .Q(I6[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(I5[13]),
        .Q(I6[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(I5[14]),
        .Q(I6[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(I5[15]),
        .Q(I6[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(I5[1]),
        .Q(I6[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(I5[2]),
        .Q(I6[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(I5[3]),
        .Q(I6[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(I5[4]),
        .Q(I6[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(I5[5]),
        .Q(I6[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(I5[6]),
        .Q(I6[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(I5[7]),
        .Q(I6[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(I5[8]),
        .Q(I6[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \I6_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(I5[9]),
        .Q(I6[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[16]),
        .Q(Q1[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[26]),
        .Q(Q1[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[27]),
        .Q(Q1[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[28]),
        .Q(Q1[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[29]),
        .Q(Q1[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[30]),
        .Q(Q1[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[31]),
        .Q(Q1[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[17]),
        .Q(Q1[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[18]),
        .Q(Q1[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[19]),
        .Q(Q1[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[20]),
        .Q(Q1[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[21]),
        .Q(Q1[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[22]),
        .Q(Q1[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[23]),
        .Q(Q1[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[24]),
        .Q(Q1[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q1_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(s_axis_tdata[25]),
        .Q(Q1[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[0]),
        .Q(\Q2_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[10]),
        .Q(\Q2_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[11]),
        .Q(\Q2_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[12]),
        .Q(\Q2_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[13]),
        .Q(\Q2_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[14]),
        .Q(\Q2_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[15]),
        .Q(total_Q50),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[1]),
        .Q(\Q2_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[2]),
        .Q(\Q2_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[3]),
        .Q(\Q2_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[4]),
        .Q(\Q2_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[5]),
        .Q(\Q2_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[6]),
        .Q(\Q2_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[7]),
        .Q(\Q2_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[8]),
        .Q(\Q2_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q2_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(Q1[9]),
        .Q(\Q2_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[0] ),
        .Q(\Q3_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[10] ),
        .Q(\Q3_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[11] ),
        .Q(\Q3_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[12] ),
        .Q(\Q3_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[13] ),
        .Q(\Q3_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[14] ),
        .Q(\Q3_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(total_Q50),
        .Q(total_Q30),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[1] ),
        .Q(\Q3_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[2] ),
        .Q(\Q3_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[3] ),
        .Q(\Q3_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[4] ),
        .Q(\Q3_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[5] ),
        .Q(\Q3_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[6] ),
        .Q(\Q3_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[7] ),
        .Q(\Q3_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[8] ),
        .Q(\Q3_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q3_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(\Q2_reg_n_0_[9] ),
        .Q(\Q3_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[0] ),
        .Q(\Q4_reg_n_0_[0] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[10] ),
        .Q(\Q4_reg_n_0_[10] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[11] ),
        .Q(\Q4_reg_n_0_[11] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[12] ),
        .Q(\Q4_reg_n_0_[12] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[13] ),
        .Q(\Q4_reg_n_0_[13] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[14] ),
        .Q(\Q4_reg_n_0_[14] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(total_Q30),
        .Q(total_Q20),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[1] ),
        .Q(\Q4_reg_n_0_[1] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[2] ),
        .Q(\Q4_reg_n_0_[2] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[3] ),
        .Q(\Q4_reg_n_0_[3] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[4] ),
        .Q(\Q4_reg_n_0_[4] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[5] ),
        .Q(\Q4_reg_n_0_[5] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[6] ),
        .Q(\Q4_reg_n_0_[6] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[7] ),
        .Q(\Q4_reg_n_0_[7] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[8] ),
        .Q(\Q4_reg_n_0_[8] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q4_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(\Q3_reg_n_0_[9] ),
        .Q(\Q4_reg_n_0_[9] ),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[0] ),
        .Q(Q5[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[10] ),
        .Q(Q5[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[11] ),
        .Q(Q5[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[12] ),
        .Q(Q5[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[13] ),
        .Q(Q5[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[14] ),
        .Q(Q5[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(total_Q20),
        .Q(Q5[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[1] ),
        .Q(Q5[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[2] ),
        .Q(Q5[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[3] ),
        .Q(Q5[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[4] ),
        .Q(Q5[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[5] ),
        .Q(Q5[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[6] ),
        .Q(Q5[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[7] ),
        .Q(Q5[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[8] ),
        .Q(Q5[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q5_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(\Q4_reg_n_0_[9] ),
        .Q(Q5[9]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[0] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[0]),
        .Q(Q6[0]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[10] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[10]),
        .Q(Q6[10]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[11] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[11]),
        .Q(Q6[11]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[12] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[12]),
        .Q(Q6[12]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[13] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[13]),
        .Q(Q6[13]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[14] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[14]),
        .Q(Q6[14]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[15] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[15]),
        .Q(Q6[15]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[1] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[1]),
        .Q(Q6[1]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[2] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[2]),
        .Q(Q6[2]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[3] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[3]),
        .Q(Q6[3]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[4] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[4]),
        .Q(Q6[4]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[5] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[5]),
        .Q(Q6[5]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[6] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[6]),
        .Q(Q6[6]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[7] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[7]),
        .Q(Q6[7]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[8] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[8]),
        .Q(Q6[8]),
        .R(\I1[15]_i_1_n_0 ));
  FDRE \Q6_reg[9] 
       (.C(aclk),
        .CE(I10),
        .D(Q5[9]),
        .Q(Q6[9]),
        .R(\I1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry_n_11),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[0]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_9),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[10]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_8),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[11]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__1_n_15),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[12]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__1_n_14),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[13]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__1_n_13),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_axis_tdata[14]_INST_0_i_1 
       (.I0(total_I__107_carry__2_n_12),
        .I1(total_I__107_carry__2_n_14),
        .I2(\m_axis_tdata[14]_INST_0_i_3_n_0 ),
        .I3(total_I__107_carry__2_n_13),
        .I4(total_I__107_carry__2_n_11),
        .I5(total_I__107_carry__2_n_10),
        .O(\m_axis_tdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[14]_INST_0_i_2 
       (.I0(total_I__107_carry__2_n_12),
        .I1(total_I__107_carry__2_n_14),
        .I2(\m_axis_tdata[14]_INST_0_i_4_n_0 ),
        .I3(total_I__107_carry__2_n_13),
        .I4(total_I__107_carry__2_n_11),
        .I5(total_I__107_carry__2_n_10),
        .O(\m_axis_tdata[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_axis_tdata[14]_INST_0_i_3 
       (.I0(total_I__107_carry__2_n_15),
        .I1(total_I__107_carry__1_n_9),
        .I2(total_I__107_carry__1_n_12),
        .I3(total_I__107_carry__1_n_11),
        .I4(total_I__107_carry__1_n_10),
        .I5(total_I__107_carry__1_n_8),
        .O(\m_axis_tdata[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[14]_INST_0_i_4 
       (.I0(total_I__107_carry__2_n_15),
        .I1(total_I__107_carry__1_n_9),
        .I2(total_I__107_carry__1_n_12),
        .I3(total_I__107_carry__1_n_11),
        .I4(total_I__107_carry__1_n_10),
        .I5(total_I__107_carry__1_n_8),
        .O(\m_axis_tdata[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry_n_11),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[16]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry_n_10),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[17]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry_n_9),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[18]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry_n_8),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[19]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry_n_10),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_15),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[20]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_14),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[21]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_13),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[22]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_12),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[23]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_11),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[24]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_10),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[25]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_9),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[26]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__0_n_8),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[27]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__1_n_15),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[28]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__1_n_14),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[29]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry_n_9),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[2]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(total_Q__107_carry__1_n_13),
        .I2(total_Q__107_carry__2_n_9),
        .I3(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[31]),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_axis_tdata[30]_INST_0_i_1 
       (.I0(total_Q__107_carry__2_n_12),
        .I1(total_Q__107_carry__2_n_14),
        .I2(\m_axis_tdata[30]_INST_0_i_3_n_0 ),
        .I3(total_Q__107_carry__2_n_13),
        .I4(total_Q__107_carry__2_n_11),
        .I5(total_Q__107_carry__2_n_10),
        .O(\m_axis_tdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[30]_INST_0_i_2 
       (.I0(total_Q__107_carry__2_n_12),
        .I1(total_Q__107_carry__2_n_14),
        .I2(\m_axis_tdata[30]_INST_0_i_4_n_0 ),
        .I3(total_Q__107_carry__2_n_13),
        .I4(total_Q__107_carry__2_n_11),
        .I5(total_Q__107_carry__2_n_10),
        .O(\m_axis_tdata[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_axis_tdata[30]_INST_0_i_3 
       (.I0(total_Q__107_carry__2_n_15),
        .I1(total_Q__107_carry__1_n_9),
        .I2(total_Q__107_carry__1_n_12),
        .I3(total_Q__107_carry__1_n_11),
        .I4(total_Q__107_carry__1_n_10),
        .I5(total_Q__107_carry__1_n_8),
        .O(\m_axis_tdata[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[30]_INST_0_i_4 
       (.I0(total_Q__107_carry__2_n_15),
        .I1(total_Q__107_carry__1_n_9),
        .I2(total_Q__107_carry__1_n_12),
        .I3(total_Q__107_carry__1_n_11),
        .I4(total_Q__107_carry__1_n_10),
        .I5(total_Q__107_carry__1_n_8),
        .O(\m_axis_tdata[30]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry_n_8),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_15),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_14),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[5]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_13),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_12),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[7]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_11),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[8]));
  LUT5 #(
    .INIT(32'h8080FFFC)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(total_I__107_carry__0_n_10),
        .I2(total_I__107_carry__2_n_9),
        .I3(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I4(m_axis_tdata[15]),
        .O(m_axis_tdata[9]));
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
       (.I0(I6[15]),
        .I1(total_I20),
        .I2(s_axis_tdata[15]),
        .O(total_I__0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry__0_i_10
       (.I0(I6[13]),
        .I1(\I4_reg_n_0_[13] ),
        .I2(s_axis_tdata[13]),
        .I3(s_axis_tdata[14]),
        .I4(\I4_reg_n_0_[14] ),
        .I5(I6[14]),
        .O(total_I__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry__0_i_11
       (.I0(I6[12]),
        .I1(\I4_reg_n_0_[12] ),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[13]),
        .I4(\I4_reg_n_0_[13] ),
        .I5(I6[13]),
        .O(total_I__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry__0_i_12
       (.I0(I6[11]),
        .I1(\I4_reg_n_0_[11] ),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[12]),
        .I4(\I4_reg_n_0_[12] ),
        .I5(I6[12]),
        .O(total_I__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry__0_i_13
       (.I0(I6[10]),
        .I1(\I4_reg_n_0_[10] ),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[11]),
        .I4(I6[11]),
        .I5(\I4_reg_n_0_[11] ),
        .O(total_I__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry__0_i_14
       (.I0(I6[9]),
        .I1(\I4_reg_n_0_[9] ),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[10]),
        .I4(I6[10]),
        .I5(\I4_reg_n_0_[10] ),
        .O(total_I__0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry__0_i_15
       (.I0(I6[8]),
        .I1(\I4_reg_n_0_[8] ),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(I6[9]),
        .I5(\I4_reg_n_0_[9] ),
        .O(total_I__0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry__0_i_16
       (.I0(I6[7]),
        .I1(\I4_reg_n_0_[7] ),
        .I2(s_axis_tdata[7]),
        .I3(s_axis_tdata[8]),
        .I4(I6[8]),
        .I5(\I4_reg_n_0_[8] ),
        .O(total_I__0_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_2
       (.I0(s_axis_tdata[13]),
        .I1(\I4_reg_n_0_[13] ),
        .I2(I6[13]),
        .O(total_I__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_3
       (.I0(s_axis_tdata[12]),
        .I1(\I4_reg_n_0_[12] ),
        .I2(I6[12]),
        .O(total_I__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_4
       (.I0(s_axis_tdata[11]),
        .I1(\I4_reg_n_0_[11] ),
        .I2(I6[11]),
        .O(total_I__0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_5
       (.I0(s_axis_tdata[10]),
        .I1(\I4_reg_n_0_[10] ),
        .I2(I6[10]),
        .O(total_I__0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_6
       (.I0(s_axis_tdata[9]),
        .I1(\I4_reg_n_0_[9] ),
        .I2(I6[9]),
        .O(total_I__0_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_7
       (.I0(s_axis_tdata[8]),
        .I1(\I4_reg_n_0_[8] ),
        .I2(I6[8]),
        .O(total_I__0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry__0_i_8
       (.I0(s_axis_tdata[7]),
        .I1(\I4_reg_n_0_[7] ),
        .I2(I6[7]),
        .O(total_I__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    total_I__0_carry__0_i_9
       (.I0(s_axis_tdata[15]),
        .I1(total_I20),
        .I2(I6[15]),
        .I3(I6[14]),
        .I4(\I4_reg_n_0_[14] ),
        .I5(s_axis_tdata[14]),
        .O(total_I__0_carry__0_i_9_n_0));
  CARRY8 total_I__0_carry__1
       (.CI(total_I__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_I__0_carry__1_CO_UNCONNECTED[7:2],total_I__0_carry__1_n_6,NLW_total_I__0_carry__1_CO_UNCONNECTED[0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_I__0_carry__1_i_1_n_0}),
        .O({NLW_total_I__0_carry__1_O_UNCONNECTED[7:1],total_I__0_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,total_I__0_carry__1_i_2_n_0}));
  LUT3 #(
    .INIT(8'h60)) 
    total_I__0_carry__1_i_1
       (.I0(total_I20),
        .I1(I6[15]),
        .I2(s_axis_tdata[15]),
        .O(total_I__0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hDB)) 
    total_I__0_carry__1_i_2
       (.I0(s_axis_tdata[15]),
        .I1(total_I20),
        .I2(I6[15]),
        .O(total_I__0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_1
       (.I0(s_axis_tdata[6]),
        .I1(\I4_reg_n_0_[6] ),
        .I2(I6[6]),
        .O(total_I__0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry_i_10
       (.I0(I6[4]),
        .I1(\I4_reg_n_0_[4] ),
        .I2(s_axis_tdata[4]),
        .I3(s_axis_tdata[5]),
        .I4(I6[5]),
        .I5(\I4_reg_n_0_[5] ),
        .O(total_I__0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry_i_11
       (.I0(I6[3]),
        .I1(\I4_reg_n_0_[3] ),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[4]),
        .I4(I6[4]),
        .I5(\I4_reg_n_0_[4] ),
        .O(total_I__0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry_i_12
       (.I0(I6[2]),
        .I1(\I4_reg_n_0_[2] ),
        .I2(s_axis_tdata[2]),
        .I3(s_axis_tdata[3]),
        .I4(I6[3]),
        .I5(\I4_reg_n_0_[3] ),
        .O(total_I__0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry_i_13
       (.I0(I6[1]),
        .I1(\I4_reg_n_0_[1] ),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[2]),
        .I4(\I4_reg_n_0_[2] ),
        .I5(I6[2]),
        .O(total_I__0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry_i_14
       (.I0(I6[0]),
        .I1(\I4_reg_n_0_[0] ),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[1]),
        .I4(\I4_reg_n_0_[1] ),
        .I5(I6[1]),
        .O(total_I__0_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__0_carry_i_15
       (.I0(s_axis_tdata[0]),
        .I1(\I4_reg_n_0_[0] ),
        .I2(I6[0]),
        .O(total_I__0_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_2
       (.I0(s_axis_tdata[5]),
        .I1(\I4_reg_n_0_[5] ),
        .I2(I6[5]),
        .O(total_I__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_3
       (.I0(s_axis_tdata[4]),
        .I1(\I4_reg_n_0_[4] ),
        .I2(I6[4]),
        .O(total_I__0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_4
       (.I0(s_axis_tdata[3]),
        .I1(\I4_reg_n_0_[3] ),
        .I2(I6[3]),
        .O(total_I__0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_5
       (.I0(s_axis_tdata[2]),
        .I1(\I4_reg_n_0_[2] ),
        .I2(I6[2]),
        .O(total_I__0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_6
       (.I0(s_axis_tdata[1]),
        .I1(\I4_reg_n_0_[1] ),
        .I2(I6[1]),
        .O(total_I__0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_I__0_carry_i_7
       (.I0(s_axis_tdata[0]),
        .I1(\I4_reg_n_0_[0] ),
        .I2(I6[0]),
        .O(total_I__0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry_i_8
       (.I0(I6[6]),
        .I1(\I4_reg_n_0_[6] ),
        .I2(s_axis_tdata[6]),
        .I3(s_axis_tdata[7]),
        .I4(I6[7]),
        .I5(\I4_reg_n_0_[7] ),
        .O(total_I__0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_I__0_carry_i_9
       (.I0(I6[5]),
        .I1(\I4_reg_n_0_[5] ),
        .I2(s_axis_tdata[5]),
        .I3(s_axis_tdata[6]),
        .I4(I6[6]),
        .I5(\I4_reg_n_0_[6] ),
        .O(total_I__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__107_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_I__107_carry_n_0,total_I__107_carry_n_1,total_I__107_carry_n_2,total_I__107_carry_n_3,total_I__107_carry_n_4,total_I__107_carry_n_5,total_I__107_carry_n_6,total_I__107_carry_n_7}),
        .DI({total_I__107_carry_i_1_n_0,total_I__107_carry_i_2_n_0,total_I__107_carry_i_3_n_0,total_I__107_carry_i_4_n_0,total_I__107_carry_i_5_n_0,\I2_reg_n_0_[1] ,total_I__0_carry_n_14,total_I__0_carry_n_15}),
        .O({total_I__107_carry_n_8,total_I__107_carry_n_9,total_I__107_carry_n_10,total_I__107_carry_n_11,NLW_total_I__107_carry_O_UNCONNECTED[3:0]}),
        .S({total_I__107_carry_i_6_n_0,total_I__107_carry_i_7_n_0,total_I__107_carry_i_8_n_0,total_I__107_carry_i_9_n_0,total_I__107_carry_i_10_n_0,total_I__107_carry_i_11_n_0,total_I__107_carry_i_12_n_0,total_I__107_carry_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__107_carry__0
       (.CI(total_I__107_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_I__107_carry__0_n_0,total_I__107_carry__0_n_1,total_I__107_carry__0_n_2,total_I__107_carry__0_n_3,total_I__107_carry__0_n_4,total_I__107_carry__0_n_5,total_I__107_carry__0_n_6,total_I__107_carry__0_n_7}),
        .DI({total_I__107_carry__0_i_1_n_0,total_I__107_carry__0_i_2_n_0,total_I__107_carry__0_i_3_n_0,total_I__107_carry__0_i_4_n_0,total_I__107_carry__0_i_5_n_0,total_I__107_carry__0_i_6_n_0,total_I__107_carry__0_i_7_n_0,total_I__107_carry__0_i_8_n_0}),
        .O({total_I__107_carry__0_n_8,total_I__107_carry__0_n_9,total_I__107_carry__0_n_10,total_I__107_carry__0_n_11,total_I__107_carry__0_n_12,total_I__107_carry__0_n_13,total_I__107_carry__0_n_14,total_I__107_carry__0_n_15}),
        .S({total_I__107_carry__0_i_9_n_0,total_I__107_carry__0_i_10_n_0,total_I__107_carry__0_i_11_n_0,total_I__107_carry__0_i_12_n_0,total_I__107_carry__0_i_13_n_0,total_I__107_carry__0_i_14_n_0,total_I__107_carry__0_i_15_n_0,total_I__107_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_1
       (.I0(\I2_reg_n_0_[11] ),
        .I1(total_I__0_carry__0_n_9),
        .I2(total_I__53_carry__0_n_11),
        .O(total_I__107_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_10
       (.I0(total_I__53_carry__0_n_12),
        .I1(total_I__0_carry__0_n_10),
        .I2(\I2_reg_n_0_[10] ),
        .I3(total_I__0_carry__0_n_9),
        .I4(total_I__53_carry__0_n_11),
        .I5(\I2_reg_n_0_[11] ),
        .O(total_I__107_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_11
       (.I0(total_I__53_carry__0_n_13),
        .I1(total_I__0_carry__0_n_11),
        .I2(\I2_reg_n_0_[9] ),
        .I3(total_I__0_carry__0_n_10),
        .I4(total_I__53_carry__0_n_12),
        .I5(\I2_reg_n_0_[10] ),
        .O(total_I__107_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_12
       (.I0(total_I__53_carry__0_n_14),
        .I1(total_I__0_carry__0_n_12),
        .I2(\I2_reg_n_0_[8] ),
        .I3(total_I__0_carry__0_n_11),
        .I4(total_I__53_carry__0_n_13),
        .I5(\I2_reg_n_0_[9] ),
        .O(total_I__107_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_13
       (.I0(total_I__53_carry__0_n_15),
        .I1(total_I__0_carry__0_n_13),
        .I2(\I2_reg_n_0_[7] ),
        .I3(total_I__0_carry__0_n_12),
        .I4(total_I__53_carry__0_n_14),
        .I5(\I2_reg_n_0_[8] ),
        .O(total_I__107_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_14
       (.I0(total_I__53_carry_n_8),
        .I1(total_I__0_carry__0_n_14),
        .I2(\I2_reg_n_0_[6] ),
        .I3(total_I__0_carry__0_n_13),
        .I4(total_I__53_carry__0_n_15),
        .I5(\I2_reg_n_0_[7] ),
        .O(total_I__107_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_15
       (.I0(total_I__53_carry_n_9),
        .I1(total_I__0_carry__0_n_15),
        .I2(\I2_reg_n_0_[5] ),
        .I3(total_I__0_carry__0_n_14),
        .I4(total_I__53_carry_n_8),
        .I5(\I2_reg_n_0_[6] ),
        .O(total_I__107_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_16
       (.I0(total_I__53_carry_n_10),
        .I1(total_I__0_carry_n_8),
        .I2(\I2_reg_n_0_[4] ),
        .I3(total_I__0_carry__0_n_15),
        .I4(total_I__53_carry_n_9),
        .I5(\I2_reg_n_0_[5] ),
        .O(total_I__107_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_2
       (.I0(\I2_reg_n_0_[10] ),
        .I1(total_I__0_carry__0_n_10),
        .I2(total_I__53_carry__0_n_12),
        .O(total_I__107_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_3
       (.I0(\I2_reg_n_0_[9] ),
        .I1(total_I__0_carry__0_n_11),
        .I2(total_I__53_carry__0_n_13),
        .O(total_I__107_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_4
       (.I0(\I2_reg_n_0_[8] ),
        .I1(total_I__0_carry__0_n_12),
        .I2(total_I__53_carry__0_n_14),
        .O(total_I__107_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_5
       (.I0(\I2_reg_n_0_[7] ),
        .I1(total_I__0_carry__0_n_13),
        .I2(total_I__53_carry__0_n_15),
        .O(total_I__107_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_6
       (.I0(\I2_reg_n_0_[6] ),
        .I1(total_I__0_carry__0_n_14),
        .I2(total_I__53_carry_n_8),
        .O(total_I__107_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_7
       (.I0(\I2_reg_n_0_[5] ),
        .I1(total_I__0_carry__0_n_15),
        .I2(total_I__53_carry_n_9),
        .O(total_I__107_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__0_i_8
       (.I0(\I2_reg_n_0_[4] ),
        .I1(total_I__0_carry_n_8),
        .I2(total_I__53_carry_n_10),
        .O(total_I__107_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__0_i_9
       (.I0(total_I__53_carry__0_n_11),
        .I1(total_I__0_carry__0_n_9),
        .I2(\I2_reg_n_0_[11] ),
        .I3(total_I__0_carry__0_n_8),
        .I4(total_I__53_carry__0_n_10),
        .I5(\I2_reg_n_0_[12] ),
        .O(total_I__107_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__107_carry__1
       (.CI(total_I__107_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({total_I__107_carry__1_n_0,total_I__107_carry__1_n_1,total_I__107_carry__1_n_2,total_I__107_carry__1_n_3,total_I__107_carry__1_n_4,total_I__107_carry__1_n_5,total_I__107_carry__1_n_6,total_I__107_carry__1_n_7}),
        .DI({total_I__107_carry__1_i_1_n_0,total_I__107_carry__1_i_2_n_0,total_I__107_carry__1_i_3_n_0,total_I__107_carry__1_i_4_n_0,total_I__107_carry__1_i_5_n_0,total_I__107_carry__1_i_6_n_0,total_I__107_carry__1_i_7_n_0,total_I__107_carry__1_i_8_n_0}),
        .O({total_I__107_carry__1_n_8,total_I__107_carry__1_n_9,total_I__107_carry__1_n_10,total_I__107_carry__1_n_11,total_I__107_carry__1_n_12,total_I__107_carry__1_n_13,total_I__107_carry__1_n_14,total_I__107_carry__1_n_15}),
        .S({1'b1,1'b1,total_I__107_carry__1_i_9_n_0,total_I__107_carry__1_i_10_n_0,total_I__107_carry__1_i_11_n_0,total_I__107_carry__1_i_12_n_0,total_I__107_carry__1_i_13_n_0,total_I__107_carry__1_i_14_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__1_i_1
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h363C)) 
    total_I__107_carry__1_i_10
       (.I0(total_I__53_carry__1_n_15),
        .I1(total_I__53_carry__1_n_5),
        .I2(total_I__53_carry__1_n_14),
        .I3(total_I__0_carry__1_n_6),
        .O(total_I__107_carry__1_i_10_n_0));
  LUT4 #(
    .INIT(16'hD42B)) 
    total_I__107_carry__1_i_11
       (.I0(total_I50),
        .I1(total_I__53_carry__1_n_15),
        .I2(total_I__0_carry__1_n_6),
        .I3(total_I__53_carry__1_n_14),
        .O(total_I__107_carry__1_i_11_n_0));
  LUT5 #(
    .INIT(32'h96666669)) 
    total_I__107_carry__1_i_12
       (.I0(total_I__53_carry__1_n_15),
        .I1(total_I50),
        .I2(total_I__0_carry__1_n_6),
        .I3(total_I__53_carry__0_n_8),
        .I4(\I2_reg_n_0_[14] ),
        .O(total_I__107_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    total_I__107_carry__1_i_13
       (.I0(total_I__53_carry__0_n_9),
        .I1(total_I__0_carry__1_n_15),
        .I2(\I2_reg_n_0_[13] ),
        .I3(total_I__0_carry__1_n_6),
        .I4(total_I__53_carry__0_n_8),
        .I5(\I2_reg_n_0_[14] ),
        .O(total_I__107_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry__1_i_14
       (.I0(total_I__53_carry__0_n_10),
        .I1(total_I__0_carry__0_n_8),
        .I2(\I2_reg_n_0_[12] ),
        .I3(total_I__0_carry__1_n_15),
        .I4(total_I__53_carry__0_n_9),
        .I5(\I2_reg_n_0_[13] ),
        .O(total_I__107_carry__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__1_i_2
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h83)) 
    total_I__107_carry__1_i_3
       (.I0(total_I__53_carry__1_n_14),
        .I1(total_I__0_carry__1_n_6),
        .I2(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h62)) 
    total_I__107_carry__1_i_4
       (.I0(total_I__53_carry__1_n_14),
        .I1(total_I__0_carry__1_n_6),
        .I2(total_I__53_carry__1_n_15),
        .O(total_I__107_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    total_I__107_carry__1_i_5
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_15),
        .I2(total_I50),
        .O(total_I__107_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    total_I__107_carry__1_i_6
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_15),
        .I2(total_I50),
        .O(total_I__107_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__1_i_7
       (.I0(\I2_reg_n_0_[13] ),
        .I1(total_I__0_carry__1_n_15),
        .I2(total_I__53_carry__0_n_9),
        .O(total_I__107_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry__1_i_8
       (.I0(\I2_reg_n_0_[12] ),
        .I1(total_I__0_carry__0_n_8),
        .I2(total_I__53_carry__0_n_10),
        .O(total_I__107_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    total_I__107_carry__1_i_9
       (.I0(total_I__53_carry__1_n_14),
        .I1(total_I__0_carry__1_n_6),
        .I2(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_I__107_carry__2
       (.CI(total_I__107_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_I__107_carry__2_CO_UNCONNECTED[7],total_I__107_carry__2_n_1,total_I__107_carry__2_n_2,total_I__107_carry__2_n_3,total_I__107_carry__2_n_4,total_I__107_carry__2_n_5,total_I__107_carry__2_n_6,total_I__107_carry__2_n_7}),
        .DI({1'b0,total_I__107_carry__2_i_1_n_0,total_I__107_carry__2_i_2_n_0,total_I__107_carry__2_i_3_n_0,total_I__107_carry__2_i_4_n_0,total_I__107_carry__2_i_5_n_0,total_I__107_carry__2_i_6_n_0,total_I__107_carry__2_i_7_n_0}),
        .O({m_axis_tdata[15],total_I__107_carry__2_n_9,total_I__107_carry__2_n_10,total_I__107_carry__2_n_11,total_I__107_carry__2_n_12,total_I__107_carry__2_n_13,total_I__107_carry__2_n_14,total_I__107_carry__2_n_15}),
        .S({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__2_i_1
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__2_i_2
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__2_i_3
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__2_i_4
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__2_i_5
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__2_i_6
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_I__107_carry__2_i_7
       (.I0(total_I__0_carry__1_n_6),
        .I1(total_I__53_carry__1_n_5),
        .O(total_I__107_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry_i_1
       (.I0(\I2_reg_n_0_[3] ),
        .I1(total_I__0_carry_n_9),
        .I2(total_I__53_carry_n_11),
        .O(total_I__107_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    total_I__107_carry_i_10
       (.I0(total_I__53_carry_n_14),
        .I1(total_I__0_carry_n_12),
        .I2(\I2_reg_n_0_[0] ),
        .I3(total_I__53_carry_n_15),
        .I4(total_I__0_carry_n_13),
        .O(total_I__107_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__107_carry_i_11
       (.I0(\I2_reg_n_0_[1] ),
        .I1(total_I__0_carry_n_13),
        .I2(total_I__53_carry_n_15),
        .O(total_I__107_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    total_I__107_carry_i_12
       (.I0(\I2_reg_n_0_[1] ),
        .I1(total_I__0_carry_n_14),
        .O(total_I__107_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_I__107_carry_i_13
       (.I0(total_I__0_carry_n_15),
        .I1(\I2_reg_n_0_[0] ),
        .O(total_I__107_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry_i_2
       (.I0(\I2_reg_n_0_[2] ),
        .I1(total_I__0_carry_n_10),
        .I2(total_I__53_carry_n_12),
        .O(total_I__107_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry_i_3
       (.I0(\I2_reg_n_0_[1] ),
        .I1(total_I__0_carry_n_11),
        .I2(total_I__53_carry_n_13),
        .O(total_I__107_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__107_carry_i_4
       (.I0(\I2_reg_n_0_[0] ),
        .I1(total_I__0_carry_n_12),
        .I2(total_I__53_carry_n_14),
        .O(total_I__107_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__107_carry_i_5
       (.I0(\I2_reg_n_0_[0] ),
        .I1(total_I__0_carry_n_12),
        .I2(total_I__53_carry_n_14),
        .O(total_I__107_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry_i_6
       (.I0(total_I__53_carry_n_11),
        .I1(total_I__0_carry_n_9),
        .I2(\I2_reg_n_0_[3] ),
        .I3(total_I__0_carry_n_8),
        .I4(total_I__53_carry_n_10),
        .I5(\I2_reg_n_0_[4] ),
        .O(total_I__107_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry_i_7
       (.I0(total_I__53_carry_n_12),
        .I1(total_I__0_carry_n_10),
        .I2(\I2_reg_n_0_[2] ),
        .I3(total_I__0_carry_n_9),
        .I4(total_I__53_carry_n_11),
        .I5(\I2_reg_n_0_[3] ),
        .O(total_I__107_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry_i_8
       (.I0(total_I__53_carry_n_13),
        .I1(total_I__0_carry_n_11),
        .I2(\I2_reg_n_0_[1] ),
        .I3(total_I__0_carry_n_10),
        .I4(total_I__53_carry_n_12),
        .I5(\I2_reg_n_0_[2] ),
        .O(total_I__107_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__107_carry_i_9
       (.I0(total_I__53_carry_n_14),
        .I1(total_I__0_carry_n_12),
        .I2(\I2_reg_n_0_[0] ),
        .I3(total_I__0_carry_n_11),
        .I4(total_I__53_carry_n_13),
        .I5(\I2_reg_n_0_[1] ),
        .O(total_I__107_carry_i_9_n_0));
  CARRY8 total_I__53_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_I__53_carry_n_0,total_I__53_carry_n_1,total_I__53_carry_n_2,total_I__53_carry_n_3,total_I__53_carry_n_4,total_I__53_carry_n_5,total_I__53_carry_n_6,total_I__53_carry_n_7}),
        .DI({total_I__53_carry_i_1_n_0,total_I__53_carry_i_2_n_0,total_I__53_carry_i_3_n_0,total_I__53_carry_i_4_n_0,total_I__53_carry_i_5_n_0,\I4_reg_n_0_[1] ,\I4_reg_n_0_[0] ,1'b0}),
        .O({total_I__53_carry_n_8,total_I__53_carry_n_9,total_I__53_carry_n_10,total_I__53_carry_n_11,total_I__53_carry_n_12,total_I__53_carry_n_13,total_I__53_carry_n_14,total_I__53_carry_n_15}),
        .S({total_I__53_carry_i_6_n_0,total_I__53_carry_i_7_n_0,total_I__53_carry_i_8_n_0,total_I__53_carry_i_9_n_0,total_I__53_carry_i_10_n_0,total_I__53_carry_i_11_n_0,total_I__53_carry_i_12_n_0,\I2_reg_n_0_[2] }));
  CARRY8 total_I__53_carry__0
       (.CI(total_I__53_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_I__53_carry__0_n_0,total_I__53_carry__0_n_1,total_I__53_carry__0_n_2,total_I__53_carry__0_n_3,total_I__53_carry__0_n_4,total_I__53_carry__0_n_5,total_I__53_carry__0_n_6,total_I__53_carry__0_n_7}),
        .DI({total_I__53_carry__0_i_1_n_0,total_I__53_carry__0_i_2_n_0,total_I__53_carry__0_i_3_n_0,total_I__53_carry__0_i_4_n_0,total_I__53_carry__0_i_5_n_0,total_I__53_carry__0_i_6_n_0,total_I__53_carry__0_i_7_n_0,total_I__53_carry__0_i_8_n_0}),
        .O({total_I__53_carry__0_n_8,total_I__53_carry__0_n_9,total_I__53_carry__0_n_10,total_I__53_carry__0_n_11,total_I__53_carry__0_n_12,total_I__53_carry__0_n_13,total_I__53_carry__0_n_14,total_I__53_carry__0_n_15}),
        .S({total_I__53_carry__0_i_9_n_0,total_I__53_carry__0_i_10_n_0,total_I__53_carry__0_i_11_n_0,total_I__53_carry__0_i_12_n_0,total_I__53_carry__0_i_13_n_0,total_I__53_carry__0_i_14_n_0,total_I__53_carry__0_i_15_n_0,total_I__53_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'hA251)) 
    total_I__53_carry__0_i_1
       (.I0(\I4_reg_n_0_[13] ),
        .I1(total_I50),
        .I2(\I3_reg_n_0_[11] ),
        .I3(\I3_reg_n_0_[12] ),
        .O(total_I__53_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h24DBDB24)) 
    total_I__53_carry__0_i_10
       (.I0(\I4_reg_n_0_[12] ),
        .I1(total_I50),
        .I2(\I3_reg_n_0_[11] ),
        .I3(\I3_reg_n_0_[12] ),
        .I4(\I4_reg_n_0_[13] ),
        .O(total_I__53_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    total_I__53_carry__0_i_11
       (.I0(\I4_reg_n_0_[12] ),
        .I1(\I3_reg_n_0_[11] ),
        .I2(total_I50),
        .I3(\I2_reg_n_0_[14] ),
        .I4(\I3_reg_n_0_[10] ),
        .I5(\I4_reg_n_0_[11] ),
        .O(total_I__53_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry__0_i_12
       (.I0(\I2_reg_n_0_[13] ),
        .I1(\I3_reg_n_0_[9] ),
        .I2(\I4_reg_n_0_[10] ),
        .I3(\I2_reg_n_0_[14] ),
        .I4(\I3_reg_n_0_[10] ),
        .I5(\I4_reg_n_0_[11] ),
        .O(total_I__53_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry__0_i_13
       (.I0(\I2_reg_n_0_[12] ),
        .I1(\I3_reg_n_0_[8] ),
        .I2(\I4_reg_n_0_[9] ),
        .I3(\I2_reg_n_0_[13] ),
        .I4(\I3_reg_n_0_[9] ),
        .I5(\I4_reg_n_0_[10] ),
        .O(total_I__53_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry__0_i_14
       (.I0(\I2_reg_n_0_[11] ),
        .I1(\I3_reg_n_0_[7] ),
        .I2(\I4_reg_n_0_[8] ),
        .I3(\I2_reg_n_0_[12] ),
        .I4(\I3_reg_n_0_[8] ),
        .I5(\I4_reg_n_0_[9] ),
        .O(total_I__53_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry__0_i_15
       (.I0(\I2_reg_n_0_[10] ),
        .I1(\I3_reg_n_0_[6] ),
        .I2(\I4_reg_n_0_[7] ),
        .I3(\I2_reg_n_0_[11] ),
        .I4(\I3_reg_n_0_[7] ),
        .I5(\I4_reg_n_0_[8] ),
        .O(total_I__53_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry__0_i_16
       (.I0(\I2_reg_n_0_[9] ),
        .I1(\I3_reg_n_0_[5] ),
        .I2(\I4_reg_n_0_[6] ),
        .I3(\I2_reg_n_0_[10] ),
        .I4(\I3_reg_n_0_[6] ),
        .I5(\I4_reg_n_0_[7] ),
        .O(total_I__53_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    total_I__53_carry__0_i_2
       (.I0(total_I50),
        .I1(\I3_reg_n_0_[11] ),
        .I2(\I4_reg_n_0_[12] ),
        .O(total_I__53_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__53_carry__0_i_3
       (.I0(total_I50),
        .I1(\I3_reg_n_0_[11] ),
        .I2(\I4_reg_n_0_[12] ),
        .O(total_I__53_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_4
       (.I0(\I4_reg_n_0_[10] ),
        .I1(\I3_reg_n_0_[9] ),
        .I2(\I2_reg_n_0_[13] ),
        .O(total_I__53_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_5
       (.I0(\I4_reg_n_0_[9] ),
        .I1(\I3_reg_n_0_[8] ),
        .I2(\I2_reg_n_0_[12] ),
        .O(total_I__53_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_6
       (.I0(\I4_reg_n_0_[8] ),
        .I1(\I3_reg_n_0_[7] ),
        .I2(\I2_reg_n_0_[11] ),
        .O(total_I__53_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_7
       (.I0(\I4_reg_n_0_[7] ),
        .I1(\I3_reg_n_0_[6] ),
        .I2(\I2_reg_n_0_[10] ),
        .O(total_I__53_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry__0_i_8
       (.I0(\I4_reg_n_0_[6] ),
        .I1(\I3_reg_n_0_[5] ),
        .I2(\I2_reg_n_0_[9] ),
        .O(total_I__53_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hB44B0FF00FF04BB4)) 
    total_I__53_carry__0_i_9
       (.I0(\I3_reg_n_0_[11] ),
        .I1(total_I50),
        .I2(\I3_reg_n_0_[13] ),
        .I3(\I4_reg_n_0_[14] ),
        .I4(\I3_reg_n_0_[12] ),
        .I5(\I4_reg_n_0_[13] ),
        .O(total_I__53_carry__0_i_9_n_0));
  CARRY8 total_I__53_carry__1
       (.CI(total_I__53_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_I__53_carry__1_CO_UNCONNECTED[7:3],total_I__53_carry__1_n_5,NLW_total_I__53_carry__1_CO_UNCONNECTED[1],total_I__53_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_I__53_carry__1_i_1_n_0,total_I__53_carry__1_i_2_n_0}),
        .O({NLW_total_I__53_carry__1_O_UNCONNECTED[7:2],total_I__53_carry__1_n_14,total_I__53_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,total_I__53_carry__1_i_3_n_0,total_I__53_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'hFD54)) 
    total_I__53_carry__1_i_1
       (.I0(total_I20),
        .I1(\I4_reg_n_0_[14] ),
        .I2(\I3_reg_n_0_[13] ),
        .I3(\I3_reg_n_0_[14] ),
        .O(total_I__53_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hC382)) 
    total_I__53_carry__1_i_2
       (.I0(\I4_reg_n_0_[13] ),
        .I1(\I3_reg_n_0_[13] ),
        .I2(\I4_reg_n_0_[14] ),
        .I3(\I3_reg_n_0_[12] ),
        .O(total_I__53_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hA8FE5701)) 
    total_I__53_carry__1_i_3
       (.I0(\I3_reg_n_0_[14] ),
        .I1(\I3_reg_n_0_[13] ),
        .I2(\I4_reg_n_0_[14] ),
        .I3(total_I20),
        .I4(total_I30),
        .O(total_I__53_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE0011FFE1FFEE001)) 
    total_I__53_carry__1_i_4
       (.I0(\I3_reg_n_0_[12] ),
        .I1(\I4_reg_n_0_[13] ),
        .I2(\I4_reg_n_0_[14] ),
        .I3(\I3_reg_n_0_[13] ),
        .I4(\I3_reg_n_0_[14] ),
        .I5(total_I20),
        .O(total_I__53_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_1
       (.I0(\I4_reg_n_0_[5] ),
        .I1(\I3_reg_n_0_[4] ),
        .I2(\I2_reg_n_0_[8] ),
        .O(total_I__53_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    total_I__53_carry_i_10
       (.I0(\I2_reg_n_0_[5] ),
        .I1(\I3_reg_n_0_[1] ),
        .I2(\I4_reg_n_0_[2] ),
        .I3(\I2_reg_n_0_[4] ),
        .I4(\I3_reg_n_0_[0] ),
        .O(total_I__53_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__53_carry_i_11
       (.I0(\I2_reg_n_0_[4] ),
        .I1(\I3_reg_n_0_[0] ),
        .I2(\I4_reg_n_0_[1] ),
        .O(total_I__53_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_I__53_carry_i_12
       (.I0(\I4_reg_n_0_[0] ),
        .I1(\I2_reg_n_0_[3] ),
        .O(total_I__53_carry_i_12_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_2
       (.I0(\I4_reg_n_0_[4] ),
        .I1(\I3_reg_n_0_[3] ),
        .I2(\I2_reg_n_0_[7] ),
        .O(total_I__53_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_3
       (.I0(\I4_reg_n_0_[3] ),
        .I1(\I3_reg_n_0_[2] ),
        .I2(\I2_reg_n_0_[6] ),
        .O(total_I__53_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_I__53_carry_i_4
       (.I0(\I2_reg_n_0_[5] ),
        .I1(\I3_reg_n_0_[1] ),
        .I2(\I4_reg_n_0_[2] ),
        .O(total_I__53_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_I__53_carry_i_5
       (.I0(\I4_reg_n_0_[2] ),
        .I1(\I3_reg_n_0_[1] ),
        .I2(\I2_reg_n_0_[5] ),
        .O(total_I__53_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry_i_6
       (.I0(\I2_reg_n_0_[8] ),
        .I1(\I3_reg_n_0_[4] ),
        .I2(\I4_reg_n_0_[5] ),
        .I3(\I2_reg_n_0_[9] ),
        .I4(\I3_reg_n_0_[5] ),
        .I5(\I4_reg_n_0_[6] ),
        .O(total_I__53_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry_i_7
       (.I0(\I2_reg_n_0_[7] ),
        .I1(\I3_reg_n_0_[3] ),
        .I2(\I4_reg_n_0_[4] ),
        .I3(\I2_reg_n_0_[8] ),
        .I4(\I3_reg_n_0_[4] ),
        .I5(\I4_reg_n_0_[5] ),
        .O(total_I__53_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry_i_8
       (.I0(\I2_reg_n_0_[6] ),
        .I1(\I3_reg_n_0_[2] ),
        .I2(\I4_reg_n_0_[3] ),
        .I3(\I2_reg_n_0_[7] ),
        .I4(\I3_reg_n_0_[3] ),
        .I5(\I4_reg_n_0_[4] ),
        .O(total_I__53_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_I__53_carry_i_9
       (.I0(\I4_reg_n_0_[2] ),
        .I1(\I3_reg_n_0_[1] ),
        .I2(\I2_reg_n_0_[5] ),
        .I3(\I2_reg_n_0_[6] ),
        .I4(\I3_reg_n_0_[2] ),
        .I5(\I4_reg_n_0_[3] ),
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
        .I1(total_Q20),
        .I2(Q6[15]),
        .O(total_Q__0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry__0_i_10
       (.I0(Q6[13]),
        .I1(\Q4_reg_n_0_[13] ),
        .I2(s_axis_tdata[29]),
        .I3(Q6[14]),
        .I4(\Q4_reg_n_0_[14] ),
        .I5(s_axis_tdata[30]),
        .O(total_Q__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry__0_i_11
       (.I0(Q6[12]),
        .I1(\Q4_reg_n_0_[12] ),
        .I2(s_axis_tdata[28]),
        .I3(Q6[13]),
        .I4(\Q4_reg_n_0_[13] ),
        .I5(s_axis_tdata[29]),
        .O(total_Q__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry__0_i_12
       (.I0(Q6[11]),
        .I1(\Q4_reg_n_0_[11] ),
        .I2(s_axis_tdata[27]),
        .I3(Q6[12]),
        .I4(\Q4_reg_n_0_[12] ),
        .I5(s_axis_tdata[28]),
        .O(total_Q__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry__0_i_13
       (.I0(Q6[10]),
        .I1(\Q4_reg_n_0_[10] ),
        .I2(s_axis_tdata[26]),
        .I3(Q6[11]),
        .I4(s_axis_tdata[27]),
        .I5(\Q4_reg_n_0_[11] ),
        .O(total_Q__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry__0_i_14
       (.I0(Q6[9]),
        .I1(\Q4_reg_n_0_[9] ),
        .I2(s_axis_tdata[25]),
        .I3(Q6[10]),
        .I4(s_axis_tdata[26]),
        .I5(\Q4_reg_n_0_[10] ),
        .O(total_Q__0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry__0_i_15
       (.I0(Q6[8]),
        .I1(\Q4_reg_n_0_[8] ),
        .I2(s_axis_tdata[24]),
        .I3(Q6[9]),
        .I4(s_axis_tdata[25]),
        .I5(\Q4_reg_n_0_[9] ),
        .O(total_Q__0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry__0_i_16
       (.I0(Q6[7]),
        .I1(\Q4_reg_n_0_[7] ),
        .I2(s_axis_tdata[23]),
        .I3(Q6[8]),
        .I4(s_axis_tdata[24]),
        .I5(\Q4_reg_n_0_[8] ),
        .O(total_Q__0_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_2
       (.I0(s_axis_tdata[29]),
        .I1(\Q4_reg_n_0_[13] ),
        .I2(Q6[13]),
        .O(total_Q__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_3
       (.I0(s_axis_tdata[28]),
        .I1(\Q4_reg_n_0_[12] ),
        .I2(Q6[12]),
        .O(total_Q__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_4
       (.I0(s_axis_tdata[27]),
        .I1(\Q4_reg_n_0_[11] ),
        .I2(Q6[11]),
        .O(total_Q__0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_5
       (.I0(s_axis_tdata[26]),
        .I1(\Q4_reg_n_0_[10] ),
        .I2(Q6[10]),
        .O(total_Q__0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_6
       (.I0(s_axis_tdata[25]),
        .I1(\Q4_reg_n_0_[9] ),
        .I2(Q6[9]),
        .O(total_Q__0_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_7
       (.I0(s_axis_tdata[24]),
        .I1(\Q4_reg_n_0_[8] ),
        .I2(Q6[8]),
        .O(total_Q__0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry__0_i_8
       (.I0(s_axis_tdata[23]),
        .I1(\Q4_reg_n_0_[7] ),
        .I2(Q6[7]),
        .O(total_Q__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    total_Q__0_carry__0_i_9
       (.I0(Q6[15]),
        .I1(total_Q20),
        .I2(s_axis_tdata[31]),
        .I3(Q6[14]),
        .I4(\Q4_reg_n_0_[14] ),
        .I5(s_axis_tdata[30]),
        .O(total_Q__0_carry__0_i_9_n_0));
  CARRY8 total_Q__0_carry__1
       (.CI(total_Q__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_Q__0_carry__1_CO_UNCONNECTED[7:2],total_Q__0_carry__1_n_6,NLW_total_Q__0_carry__1_CO_UNCONNECTED[0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_Q__0_carry__1_i_1_n_0}),
        .O({NLW_total_Q__0_carry__1_O_UNCONNECTED[7:1],total_Q__0_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,total_Q__0_carry__1_i_2_n_0}));
  LUT3 #(
    .INIT(8'h60)) 
    total_Q__0_carry__1_i_1
       (.I0(total_Q20),
        .I1(Q6[15]),
        .I2(s_axis_tdata[31]),
        .O(total_Q__0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hDB)) 
    total_Q__0_carry__1_i_2
       (.I0(s_axis_tdata[31]),
        .I1(total_Q20),
        .I2(Q6[15]),
        .O(total_Q__0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_1
       (.I0(s_axis_tdata[22]),
        .I1(\Q4_reg_n_0_[6] ),
        .I2(Q6[6]),
        .O(total_Q__0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry_i_10
       (.I0(Q6[4]),
        .I1(\Q4_reg_n_0_[4] ),
        .I2(s_axis_tdata[20]),
        .I3(Q6[5]),
        .I4(s_axis_tdata[21]),
        .I5(\Q4_reg_n_0_[5] ),
        .O(total_Q__0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry_i_11
       (.I0(Q6[3]),
        .I1(\Q4_reg_n_0_[3] ),
        .I2(s_axis_tdata[19]),
        .I3(Q6[4]),
        .I4(s_axis_tdata[20]),
        .I5(\Q4_reg_n_0_[4] ),
        .O(total_Q__0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry_i_12
       (.I0(Q6[2]),
        .I1(\Q4_reg_n_0_[2] ),
        .I2(s_axis_tdata[18]),
        .I3(Q6[3]),
        .I4(s_axis_tdata[19]),
        .I5(\Q4_reg_n_0_[3] ),
        .O(total_Q__0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry_i_13
       (.I0(Q6[1]),
        .I1(\Q4_reg_n_0_[1] ),
        .I2(s_axis_tdata[17]),
        .I3(Q6[2]),
        .I4(\Q4_reg_n_0_[2] ),
        .I5(s_axis_tdata[18]),
        .O(total_Q__0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry_i_14
       (.I0(s_axis_tdata[16]),
        .I1(\Q4_reg_n_0_[0] ),
        .I2(Q6[0]),
        .I3(Q6[1]),
        .I4(\Q4_reg_n_0_[1] ),
        .I5(s_axis_tdata[17]),
        .O(total_Q__0_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__0_carry_i_15
       (.I0(s_axis_tdata[16]),
        .I1(\Q4_reg_n_0_[0] ),
        .I2(Q6[0]),
        .O(total_Q__0_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_2
       (.I0(s_axis_tdata[21]),
        .I1(\Q4_reg_n_0_[5] ),
        .I2(Q6[5]),
        .O(total_Q__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_3
       (.I0(s_axis_tdata[20]),
        .I1(\Q4_reg_n_0_[4] ),
        .I2(Q6[4]),
        .O(total_Q__0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_4
       (.I0(s_axis_tdata[19]),
        .I1(\Q4_reg_n_0_[3] ),
        .I2(Q6[3]),
        .O(total_Q__0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_5
       (.I0(s_axis_tdata[18]),
        .I1(\Q4_reg_n_0_[2] ),
        .I2(Q6[2]),
        .O(total_Q__0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_6
       (.I0(s_axis_tdata[17]),
        .I1(\Q4_reg_n_0_[1] ),
        .I2(Q6[1]),
        .O(total_Q__0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    total_Q__0_carry_i_7
       (.I0(Q6[0]),
        .I1(\Q4_reg_n_0_[0] ),
        .I2(s_axis_tdata[16]),
        .O(total_Q__0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry_i_8
       (.I0(Q6[6]),
        .I1(\Q4_reg_n_0_[6] ),
        .I2(s_axis_tdata[22]),
        .I3(Q6[7]),
        .I4(s_axis_tdata[23]),
        .I5(\Q4_reg_n_0_[7] ),
        .O(total_Q__0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    total_Q__0_carry_i_9
       (.I0(Q6[5]),
        .I1(\Q4_reg_n_0_[5] ),
        .I2(s_axis_tdata[21]),
        .I3(Q6[6]),
        .I4(s_axis_tdata[22]),
        .I5(\Q4_reg_n_0_[6] ),
        .O(total_Q__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__107_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_Q__107_carry_n_0,total_Q__107_carry_n_1,total_Q__107_carry_n_2,total_Q__107_carry_n_3,total_Q__107_carry_n_4,total_Q__107_carry_n_5,total_Q__107_carry_n_6,total_Q__107_carry_n_7}),
        .DI({total_Q__107_carry_i_1_n_0,total_Q__107_carry_i_2_n_0,total_Q__107_carry_i_3_n_0,total_Q__107_carry_i_4_n_0,total_Q__107_carry_i_5_n_0,\Q2_reg_n_0_[1] ,total_Q__0_carry_n_14,total_Q__0_carry_n_15}),
        .O({total_Q__107_carry_n_8,total_Q__107_carry_n_9,total_Q__107_carry_n_10,total_Q__107_carry_n_11,NLW_total_Q__107_carry_O_UNCONNECTED[3:0]}),
        .S({total_Q__107_carry_i_6_n_0,total_Q__107_carry_i_7_n_0,total_Q__107_carry_i_8_n_0,total_Q__107_carry_i_9_n_0,total_Q__107_carry_i_10_n_0,total_Q__107_carry_i_11_n_0,total_Q__107_carry_i_12_n_0,total_Q__107_carry_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__107_carry__0
       (.CI(total_Q__107_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_Q__107_carry__0_n_0,total_Q__107_carry__0_n_1,total_Q__107_carry__0_n_2,total_Q__107_carry__0_n_3,total_Q__107_carry__0_n_4,total_Q__107_carry__0_n_5,total_Q__107_carry__0_n_6,total_Q__107_carry__0_n_7}),
        .DI({total_Q__107_carry__0_i_1_n_0,total_Q__107_carry__0_i_2_n_0,total_Q__107_carry__0_i_3_n_0,total_Q__107_carry__0_i_4_n_0,total_Q__107_carry__0_i_5_n_0,total_Q__107_carry__0_i_6_n_0,total_Q__107_carry__0_i_7_n_0,total_Q__107_carry__0_i_8_n_0}),
        .O({total_Q__107_carry__0_n_8,total_Q__107_carry__0_n_9,total_Q__107_carry__0_n_10,total_Q__107_carry__0_n_11,total_Q__107_carry__0_n_12,total_Q__107_carry__0_n_13,total_Q__107_carry__0_n_14,total_Q__107_carry__0_n_15}),
        .S({total_Q__107_carry__0_i_9_n_0,total_Q__107_carry__0_i_10_n_0,total_Q__107_carry__0_i_11_n_0,total_Q__107_carry__0_i_12_n_0,total_Q__107_carry__0_i_13_n_0,total_Q__107_carry__0_i_14_n_0,total_Q__107_carry__0_i_15_n_0,total_Q__107_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_1
       (.I0(\Q2_reg_n_0_[11] ),
        .I1(total_Q__53_carry__0_n_11),
        .I2(total_Q__0_carry__0_n_9),
        .O(total_Q__107_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_10
       (.I0(total_Q__0_carry__0_n_10),
        .I1(total_Q__53_carry__0_n_12),
        .I2(\Q2_reg_n_0_[10] ),
        .I3(total_Q__0_carry__0_n_9),
        .I4(total_Q__53_carry__0_n_11),
        .I5(\Q2_reg_n_0_[11] ),
        .O(total_Q__107_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_11
       (.I0(total_Q__0_carry__0_n_11),
        .I1(total_Q__53_carry__0_n_13),
        .I2(\Q2_reg_n_0_[9] ),
        .I3(total_Q__0_carry__0_n_10),
        .I4(total_Q__53_carry__0_n_12),
        .I5(\Q2_reg_n_0_[10] ),
        .O(total_Q__107_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_12
       (.I0(total_Q__0_carry__0_n_12),
        .I1(total_Q__53_carry__0_n_14),
        .I2(\Q2_reg_n_0_[8] ),
        .I3(total_Q__0_carry__0_n_11),
        .I4(total_Q__53_carry__0_n_13),
        .I5(\Q2_reg_n_0_[9] ),
        .O(total_Q__107_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_13
       (.I0(total_Q__0_carry__0_n_13),
        .I1(total_Q__53_carry__0_n_15),
        .I2(\Q2_reg_n_0_[7] ),
        .I3(total_Q__0_carry__0_n_12),
        .I4(total_Q__53_carry__0_n_14),
        .I5(\Q2_reg_n_0_[8] ),
        .O(total_Q__107_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_14
       (.I0(total_Q__0_carry__0_n_14),
        .I1(total_Q__53_carry_n_8),
        .I2(\Q2_reg_n_0_[6] ),
        .I3(total_Q__0_carry__0_n_13),
        .I4(total_Q__53_carry__0_n_15),
        .I5(\Q2_reg_n_0_[7] ),
        .O(total_Q__107_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_15
       (.I0(total_Q__0_carry__0_n_15),
        .I1(total_Q__53_carry_n_9),
        .I2(\Q2_reg_n_0_[5] ),
        .I3(total_Q__0_carry__0_n_14),
        .I4(total_Q__53_carry_n_8),
        .I5(\Q2_reg_n_0_[6] ),
        .O(total_Q__107_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_16
       (.I0(total_Q__0_carry_n_8),
        .I1(total_Q__53_carry_n_10),
        .I2(\Q2_reg_n_0_[4] ),
        .I3(total_Q__0_carry__0_n_15),
        .I4(total_Q__53_carry_n_9),
        .I5(\Q2_reg_n_0_[5] ),
        .O(total_Q__107_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_2
       (.I0(\Q2_reg_n_0_[10] ),
        .I1(total_Q__53_carry__0_n_12),
        .I2(total_Q__0_carry__0_n_10),
        .O(total_Q__107_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_3
       (.I0(\Q2_reg_n_0_[9] ),
        .I1(total_Q__53_carry__0_n_13),
        .I2(total_Q__0_carry__0_n_11),
        .O(total_Q__107_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_4
       (.I0(\Q2_reg_n_0_[8] ),
        .I1(total_Q__53_carry__0_n_14),
        .I2(total_Q__0_carry__0_n_12),
        .O(total_Q__107_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_5
       (.I0(\Q2_reg_n_0_[7] ),
        .I1(total_Q__53_carry__0_n_15),
        .I2(total_Q__0_carry__0_n_13),
        .O(total_Q__107_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_6
       (.I0(\Q2_reg_n_0_[6] ),
        .I1(total_Q__53_carry_n_8),
        .I2(total_Q__0_carry__0_n_14),
        .O(total_Q__107_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_7
       (.I0(\Q2_reg_n_0_[5] ),
        .I1(total_Q__53_carry_n_9),
        .I2(total_Q__0_carry__0_n_15),
        .O(total_Q__107_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__0_i_8
       (.I0(\Q2_reg_n_0_[4] ),
        .I1(total_Q__53_carry_n_10),
        .I2(total_Q__0_carry_n_8),
        .O(total_Q__107_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__0_i_9
       (.I0(total_Q__0_carry__0_n_9),
        .I1(total_Q__53_carry__0_n_11),
        .I2(\Q2_reg_n_0_[11] ),
        .I3(total_Q__0_carry__0_n_8),
        .I4(total_Q__53_carry__0_n_10),
        .I5(\Q2_reg_n_0_[12] ),
        .O(total_Q__107_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__107_carry__1
       (.CI(total_Q__107_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({total_Q__107_carry__1_n_0,total_Q__107_carry__1_n_1,total_Q__107_carry__1_n_2,total_Q__107_carry__1_n_3,total_Q__107_carry__1_n_4,total_Q__107_carry__1_n_5,total_Q__107_carry__1_n_6,total_Q__107_carry__1_n_7}),
        .DI({total_Q__107_carry__1_i_1_n_0,total_Q__107_carry__1_i_2_n_0,total_Q__107_carry__1_i_3_n_0,total_Q__107_carry__1_i_4_n_0,total_Q__107_carry__1_i_5_n_0,total_Q__107_carry__1_i_6_n_0,total_Q__107_carry__1_i_7_n_0,total_Q__107_carry__1_i_8_n_0}),
        .O({total_Q__107_carry__1_n_8,total_Q__107_carry__1_n_9,total_Q__107_carry__1_n_10,total_Q__107_carry__1_n_11,total_Q__107_carry__1_n_12,total_Q__107_carry__1_n_13,total_Q__107_carry__1_n_14,total_Q__107_carry__1_n_15}),
        .S({1'b1,1'b1,total_Q__107_carry__1_i_9_n_0,total_Q__107_carry__1_i_10_n_0,total_Q__107_carry__1_i_11_n_0,total_Q__107_carry__1_i_12_n_0,total_Q__107_carry__1_i_13_n_0,total_Q__107_carry__1_i_14_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__1_i_1
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h363C)) 
    total_Q__107_carry__1_i_10
       (.I0(total_Q__53_carry__1_n_15),
        .I1(total_Q__53_carry__1_n_5),
        .I2(total_Q__53_carry__1_n_14),
        .I3(total_Q__0_carry__1_n_6),
        .O(total_Q__107_carry__1_i_10_n_0));
  LUT4 #(
    .INIT(16'hD42B)) 
    total_Q__107_carry__1_i_11
       (.I0(total_Q50),
        .I1(total_Q__53_carry__1_n_15),
        .I2(total_Q__0_carry__1_n_6),
        .I3(total_Q__53_carry__1_n_14),
        .O(total_Q__107_carry__1_i_11_n_0));
  LUT5 #(
    .INIT(32'h96666669)) 
    total_Q__107_carry__1_i_12
       (.I0(total_Q__53_carry__1_n_15),
        .I1(total_Q50),
        .I2(total_Q__0_carry__1_n_6),
        .I3(total_Q__53_carry__0_n_8),
        .I4(\Q2_reg_n_0_[14] ),
        .O(total_Q__107_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    total_Q__107_carry__1_i_13
       (.I0(total_Q__0_carry__1_n_15),
        .I1(total_Q__53_carry__0_n_9),
        .I2(\Q2_reg_n_0_[13] ),
        .I3(total_Q__0_carry__1_n_6),
        .I4(total_Q__53_carry__0_n_8),
        .I5(\Q2_reg_n_0_[14] ),
        .O(total_Q__107_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry__1_i_14
       (.I0(total_Q__0_carry__0_n_8),
        .I1(total_Q__53_carry__0_n_10),
        .I2(\Q2_reg_n_0_[12] ),
        .I3(total_Q__0_carry__1_n_15),
        .I4(total_Q__53_carry__0_n_9),
        .I5(\Q2_reg_n_0_[13] ),
        .O(total_Q__107_carry__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__1_i_2
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h83)) 
    total_Q__107_carry__1_i_3
       (.I0(total_Q__53_carry__1_n_14),
        .I1(total_Q__0_carry__1_n_6),
        .I2(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h62)) 
    total_Q__107_carry__1_i_4
       (.I0(total_Q__53_carry__1_n_14),
        .I1(total_Q__0_carry__1_n_6),
        .I2(total_Q__53_carry__1_n_15),
        .O(total_Q__107_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    total_Q__107_carry__1_i_5
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_15),
        .I2(total_Q50),
        .O(total_Q__107_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    total_Q__107_carry__1_i_6
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_15),
        .I2(total_Q50),
        .O(total_Q__107_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__1_i_7
       (.I0(\Q2_reg_n_0_[13] ),
        .I1(total_Q__53_carry__0_n_9),
        .I2(total_Q__0_carry__1_n_15),
        .O(total_Q__107_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry__1_i_8
       (.I0(\Q2_reg_n_0_[12] ),
        .I1(total_Q__53_carry__0_n_10),
        .I2(total_Q__0_carry__0_n_8),
        .O(total_Q__107_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    total_Q__107_carry__1_i_9
       (.I0(total_Q__53_carry__1_n_14),
        .I1(total_Q__0_carry__1_n_6),
        .I2(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 total_Q__107_carry__2
       (.CI(total_Q__107_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_Q__107_carry__2_CO_UNCONNECTED[7],total_Q__107_carry__2_n_1,total_Q__107_carry__2_n_2,total_Q__107_carry__2_n_3,total_Q__107_carry__2_n_4,total_Q__107_carry__2_n_5,total_Q__107_carry__2_n_6,total_Q__107_carry__2_n_7}),
        .DI({1'b0,total_Q__107_carry__2_i_1_n_0,total_Q__107_carry__2_i_2_n_0,total_Q__107_carry__2_i_3_n_0,total_Q__107_carry__2_i_4_n_0,total_Q__107_carry__2_i_5_n_0,total_Q__107_carry__2_i_6_n_0,total_Q__107_carry__2_i_7_n_0}),
        .O({m_axis_tdata[31],total_Q__107_carry__2_n_9,total_Q__107_carry__2_n_10,total_Q__107_carry__2_n_11,total_Q__107_carry__2_n_12,total_Q__107_carry__2_n_13,total_Q__107_carry__2_n_14,total_Q__107_carry__2_n_15}),
        .S({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__2_i_1
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__2_i_2
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__2_i_3
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__2_i_4
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__2_i_5
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__2_i_6
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    total_Q__107_carry__2_i_7
       (.I0(total_Q__0_carry__1_n_6),
        .I1(total_Q__53_carry__1_n_5),
        .O(total_Q__107_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry_i_1
       (.I0(\Q2_reg_n_0_[3] ),
        .I1(total_Q__53_carry_n_11),
        .I2(total_Q__0_carry_n_9),
        .O(total_Q__107_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    total_Q__107_carry_i_10
       (.I0(total_Q__0_carry_n_12),
        .I1(total_Q__53_carry_n_14),
        .I2(\Q2_reg_n_0_[0] ),
        .I3(total_Q__0_carry_n_13),
        .I4(total_Q__53_carry_n_15),
        .O(total_Q__107_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__107_carry_i_11
       (.I0(\Q2_reg_n_0_[1] ),
        .I1(total_Q__53_carry_n_15),
        .I2(total_Q__0_carry_n_13),
        .O(total_Q__107_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    total_Q__107_carry_i_12
       (.I0(\Q2_reg_n_0_[1] ),
        .I1(total_Q__0_carry_n_14),
        .O(total_Q__107_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_Q__107_carry_i_13
       (.I0(total_Q__0_carry_n_15),
        .I1(\Q2_reg_n_0_[0] ),
        .O(total_Q__107_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry_i_2
       (.I0(\Q2_reg_n_0_[2] ),
        .I1(total_Q__53_carry_n_12),
        .I2(total_Q__0_carry_n_10),
        .O(total_Q__107_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry_i_3
       (.I0(\Q2_reg_n_0_[1] ),
        .I1(total_Q__53_carry_n_13),
        .I2(total_Q__0_carry_n_11),
        .O(total_Q__107_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__107_carry_i_4
       (.I0(total_Q__0_carry_n_12),
        .I1(total_Q__53_carry_n_14),
        .I2(\Q2_reg_n_0_[0] ),
        .O(total_Q__107_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__107_carry_i_5
       (.I0(\Q2_reg_n_0_[0] ),
        .I1(total_Q__53_carry_n_14),
        .I2(total_Q__0_carry_n_12),
        .O(total_Q__107_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry_i_6
       (.I0(total_Q__0_carry_n_9),
        .I1(total_Q__53_carry_n_11),
        .I2(\Q2_reg_n_0_[3] ),
        .I3(total_Q__0_carry_n_8),
        .I4(total_Q__53_carry_n_10),
        .I5(\Q2_reg_n_0_[4] ),
        .O(total_Q__107_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry_i_7
       (.I0(total_Q__0_carry_n_10),
        .I1(total_Q__53_carry_n_12),
        .I2(\Q2_reg_n_0_[2] ),
        .I3(total_Q__0_carry_n_9),
        .I4(total_Q__53_carry_n_11),
        .I5(\Q2_reg_n_0_[3] ),
        .O(total_Q__107_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry_i_8
       (.I0(total_Q__0_carry_n_11),
        .I1(total_Q__53_carry_n_13),
        .I2(\Q2_reg_n_0_[1] ),
        .I3(total_Q__0_carry_n_10),
        .I4(total_Q__53_carry_n_12),
        .I5(\Q2_reg_n_0_[2] ),
        .O(total_Q__107_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__107_carry_i_9
       (.I0(\Q2_reg_n_0_[0] ),
        .I1(total_Q__53_carry_n_14),
        .I2(total_Q__0_carry_n_12),
        .I3(total_Q__0_carry_n_11),
        .I4(total_Q__53_carry_n_13),
        .I5(\Q2_reg_n_0_[1] ),
        .O(total_Q__107_carry_i_9_n_0));
  CARRY8 total_Q__53_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({total_Q__53_carry_n_0,total_Q__53_carry_n_1,total_Q__53_carry_n_2,total_Q__53_carry_n_3,total_Q__53_carry_n_4,total_Q__53_carry_n_5,total_Q__53_carry_n_6,total_Q__53_carry_n_7}),
        .DI({total_Q__53_carry_i_1_n_0,total_Q__53_carry_i_2_n_0,total_Q__53_carry_i_3_n_0,total_Q__53_carry_i_4_n_0,total_Q__53_carry_i_5_n_0,\Q4_reg_n_0_[1] ,\Q4_reg_n_0_[0] ,1'b0}),
        .O({total_Q__53_carry_n_8,total_Q__53_carry_n_9,total_Q__53_carry_n_10,total_Q__53_carry_n_11,total_Q__53_carry_n_12,total_Q__53_carry_n_13,total_Q__53_carry_n_14,total_Q__53_carry_n_15}),
        .S({total_Q__53_carry_i_6_n_0,total_Q__53_carry_i_7_n_0,total_Q__53_carry_i_8_n_0,total_Q__53_carry_i_9_n_0,total_Q__53_carry_i_10_n_0,total_Q__53_carry_i_11_n_0,total_Q__53_carry_i_12_n_0,\Q2_reg_n_0_[2] }));
  CARRY8 total_Q__53_carry__0
       (.CI(total_Q__53_carry_n_0),
        .CI_TOP(1'b0),
        .CO({total_Q__53_carry__0_n_0,total_Q__53_carry__0_n_1,total_Q__53_carry__0_n_2,total_Q__53_carry__0_n_3,total_Q__53_carry__0_n_4,total_Q__53_carry__0_n_5,total_Q__53_carry__0_n_6,total_Q__53_carry__0_n_7}),
        .DI({total_Q__53_carry__0_i_1_n_0,total_Q__53_carry__0_i_2_n_0,total_Q__53_carry__0_i_3_n_0,total_Q__53_carry__0_i_4_n_0,total_Q__53_carry__0_i_5_n_0,total_Q__53_carry__0_i_6_n_0,total_Q__53_carry__0_i_7_n_0,total_Q__53_carry__0_i_8_n_0}),
        .O({total_Q__53_carry__0_n_8,total_Q__53_carry__0_n_9,total_Q__53_carry__0_n_10,total_Q__53_carry__0_n_11,total_Q__53_carry__0_n_12,total_Q__53_carry__0_n_13,total_Q__53_carry__0_n_14,total_Q__53_carry__0_n_15}),
        .S({total_Q__53_carry__0_i_9_n_0,total_Q__53_carry__0_i_10_n_0,total_Q__53_carry__0_i_11_n_0,total_Q__53_carry__0_i_12_n_0,total_Q__53_carry__0_i_13_n_0,total_Q__53_carry__0_i_14_n_0,total_Q__53_carry__0_i_15_n_0,total_Q__53_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'hA251)) 
    total_Q__53_carry__0_i_1
       (.I0(\Q4_reg_n_0_[13] ),
        .I1(total_Q50),
        .I2(\Q3_reg_n_0_[11] ),
        .I3(\Q3_reg_n_0_[12] ),
        .O(total_Q__53_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h24DBDB24)) 
    total_Q__53_carry__0_i_10
       (.I0(\Q4_reg_n_0_[12] ),
        .I1(total_Q50),
        .I2(\Q3_reg_n_0_[11] ),
        .I3(\Q3_reg_n_0_[12] ),
        .I4(\Q4_reg_n_0_[13] ),
        .O(total_Q__53_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    total_Q__53_carry__0_i_11
       (.I0(\Q4_reg_n_0_[12] ),
        .I1(total_Q50),
        .I2(\Q3_reg_n_0_[11] ),
        .I3(\Q4_reg_n_0_[11] ),
        .I4(\Q3_reg_n_0_[10] ),
        .I5(\Q2_reg_n_0_[14] ),
        .O(total_Q__53_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry__0_i_12
       (.I0(\Q4_reg_n_0_[10] ),
        .I1(\Q3_reg_n_0_[9] ),
        .I2(\Q2_reg_n_0_[13] ),
        .I3(\Q2_reg_n_0_[14] ),
        .I4(\Q3_reg_n_0_[10] ),
        .I5(\Q4_reg_n_0_[11] ),
        .O(total_Q__53_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry__0_i_13
       (.I0(\Q4_reg_n_0_[9] ),
        .I1(\Q3_reg_n_0_[8] ),
        .I2(\Q2_reg_n_0_[12] ),
        .I3(\Q2_reg_n_0_[13] ),
        .I4(\Q3_reg_n_0_[9] ),
        .I5(\Q4_reg_n_0_[10] ),
        .O(total_Q__53_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry__0_i_14
       (.I0(\Q4_reg_n_0_[8] ),
        .I1(\Q3_reg_n_0_[7] ),
        .I2(\Q2_reg_n_0_[11] ),
        .I3(\Q2_reg_n_0_[12] ),
        .I4(\Q3_reg_n_0_[8] ),
        .I5(\Q4_reg_n_0_[9] ),
        .O(total_Q__53_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry__0_i_15
       (.I0(\Q4_reg_n_0_[7] ),
        .I1(\Q3_reg_n_0_[6] ),
        .I2(\Q2_reg_n_0_[10] ),
        .I3(\Q2_reg_n_0_[11] ),
        .I4(\Q3_reg_n_0_[7] ),
        .I5(\Q4_reg_n_0_[8] ),
        .O(total_Q__53_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry__0_i_16
       (.I0(\Q4_reg_n_0_[6] ),
        .I1(\Q3_reg_n_0_[5] ),
        .I2(\Q2_reg_n_0_[9] ),
        .I3(\Q2_reg_n_0_[10] ),
        .I4(\Q3_reg_n_0_[6] ),
        .I5(\Q4_reg_n_0_[7] ),
        .O(total_Q__53_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    total_Q__53_carry__0_i_2
       (.I0(\Q3_reg_n_0_[11] ),
        .I1(total_Q50),
        .I2(\Q4_reg_n_0_[12] ),
        .O(total_Q__53_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__53_carry__0_i_3
       (.I0(\Q3_reg_n_0_[11] ),
        .I1(total_Q50),
        .I2(\Q4_reg_n_0_[12] ),
        .O(total_Q__53_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_4
       (.I0(\Q2_reg_n_0_[13] ),
        .I1(\Q3_reg_n_0_[9] ),
        .I2(\Q4_reg_n_0_[10] ),
        .O(total_Q__53_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_5
       (.I0(\Q2_reg_n_0_[12] ),
        .I1(\Q3_reg_n_0_[8] ),
        .I2(\Q4_reg_n_0_[9] ),
        .O(total_Q__53_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_6
       (.I0(\Q2_reg_n_0_[11] ),
        .I1(\Q3_reg_n_0_[7] ),
        .I2(\Q4_reg_n_0_[8] ),
        .O(total_Q__53_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_7
       (.I0(\Q2_reg_n_0_[10] ),
        .I1(\Q3_reg_n_0_[6] ),
        .I2(\Q4_reg_n_0_[7] ),
        .O(total_Q__53_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry__0_i_8
       (.I0(\Q2_reg_n_0_[9] ),
        .I1(\Q3_reg_n_0_[5] ),
        .I2(\Q4_reg_n_0_[6] ),
        .O(total_Q__53_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hB44B0FF00FF04BB4)) 
    total_Q__53_carry__0_i_9
       (.I0(\Q3_reg_n_0_[11] ),
        .I1(total_Q50),
        .I2(\Q3_reg_n_0_[13] ),
        .I3(\Q4_reg_n_0_[14] ),
        .I4(\Q3_reg_n_0_[12] ),
        .I5(\Q4_reg_n_0_[13] ),
        .O(total_Q__53_carry__0_i_9_n_0));
  CARRY8 total_Q__53_carry__1
       (.CI(total_Q__53_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_total_Q__53_carry__1_CO_UNCONNECTED[7:3],total_Q__53_carry__1_n_5,NLW_total_Q__53_carry__1_CO_UNCONNECTED[1],total_Q__53_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,total_Q__53_carry__1_i_1_n_0,total_Q__53_carry__1_i_2_n_0}),
        .O({NLW_total_Q__53_carry__1_O_UNCONNECTED[7:2],total_Q__53_carry__1_n_14,total_Q__53_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,total_Q__53_carry__1_i_3_n_0,total_Q__53_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'hA8FE)) 
    total_Q__53_carry__1_i_1
       (.I0(\Q3_reg_n_0_[14] ),
        .I1(\Q4_reg_n_0_[14] ),
        .I2(\Q3_reg_n_0_[13] ),
        .I3(total_Q20),
        .O(total_Q__53_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hC382)) 
    total_Q__53_carry__1_i_2
       (.I0(\Q4_reg_n_0_[13] ),
        .I1(\Q3_reg_n_0_[13] ),
        .I2(\Q4_reg_n_0_[14] ),
        .I3(\Q3_reg_n_0_[12] ),
        .O(total_Q__53_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hFD5402AB)) 
    total_Q__53_carry__1_i_3
       (.I0(total_Q20),
        .I1(\Q3_reg_n_0_[13] ),
        .I2(\Q4_reg_n_0_[14] ),
        .I3(\Q3_reg_n_0_[14] ),
        .I4(total_Q30),
        .O(total_Q__53_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE01F01FE1FE0FE01)) 
    total_Q__53_carry__1_i_4
       (.I0(\Q3_reg_n_0_[12] ),
        .I1(\Q4_reg_n_0_[13] ),
        .I2(\Q3_reg_n_0_[13] ),
        .I3(total_Q20),
        .I4(\Q4_reg_n_0_[14] ),
        .I5(\Q3_reg_n_0_[14] ),
        .O(total_Q__53_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_1
       (.I0(\Q2_reg_n_0_[8] ),
        .I1(\Q3_reg_n_0_[4] ),
        .I2(\Q4_reg_n_0_[5] ),
        .O(total_Q__53_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    total_Q__53_carry_i_10
       (.I0(\Q2_reg_n_0_[5] ),
        .I1(\Q3_reg_n_0_[1] ),
        .I2(\Q4_reg_n_0_[2] ),
        .I3(\Q3_reg_n_0_[0] ),
        .I4(\Q2_reg_n_0_[4] ),
        .O(total_Q__53_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__53_carry_i_11
       (.I0(\Q2_reg_n_0_[4] ),
        .I1(\Q3_reg_n_0_[0] ),
        .I2(\Q4_reg_n_0_[1] ),
        .O(total_Q__53_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    total_Q__53_carry_i_12
       (.I0(\Q4_reg_n_0_[0] ),
        .I1(\Q2_reg_n_0_[3] ),
        .O(total_Q__53_carry_i_12_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_2
       (.I0(\Q2_reg_n_0_[7] ),
        .I1(\Q3_reg_n_0_[3] ),
        .I2(\Q4_reg_n_0_[4] ),
        .O(total_Q__53_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_3
       (.I0(\Q2_reg_n_0_[6] ),
        .I1(\Q3_reg_n_0_[2] ),
        .I2(\Q4_reg_n_0_[3] ),
        .O(total_Q__53_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    total_Q__53_carry_i_4
       (.I0(\Q2_reg_n_0_[5] ),
        .I1(\Q3_reg_n_0_[1] ),
        .I2(\Q4_reg_n_0_[2] ),
        .O(total_Q__53_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    total_Q__53_carry_i_5
       (.I0(\Q4_reg_n_0_[2] ),
        .I1(\Q3_reg_n_0_[1] ),
        .I2(\Q2_reg_n_0_[5] ),
        .O(total_Q__53_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry_i_6
       (.I0(\Q4_reg_n_0_[5] ),
        .I1(\Q3_reg_n_0_[4] ),
        .I2(\Q2_reg_n_0_[8] ),
        .I3(\Q2_reg_n_0_[9] ),
        .I4(\Q3_reg_n_0_[5] ),
        .I5(\Q4_reg_n_0_[6] ),
        .O(total_Q__53_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry_i_7
       (.I0(\Q4_reg_n_0_[4] ),
        .I1(\Q3_reg_n_0_[3] ),
        .I2(\Q2_reg_n_0_[7] ),
        .I3(\Q2_reg_n_0_[8] ),
        .I4(\Q3_reg_n_0_[4] ),
        .I5(\Q4_reg_n_0_[5] ),
        .O(total_Q__53_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry_i_8
       (.I0(\Q4_reg_n_0_[3] ),
        .I1(\Q3_reg_n_0_[2] ),
        .I2(\Q2_reg_n_0_[6] ),
        .I3(\Q2_reg_n_0_[7] ),
        .I4(\Q3_reg_n_0_[3] ),
        .I5(\Q4_reg_n_0_[4] ),
        .O(total_Q__53_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    total_Q__53_carry_i_9
       (.I0(\Q4_reg_n_0_[2] ),
        .I1(\Q3_reg_n_0_[1] ),
        .I2(\Q2_reg_n_0_[5] ),
        .I3(\Q2_reg_n_0_[6] ),
        .I4(\Q3_reg_n_0_[2] ),
        .I5(\Q4_reg_n_0_[3] ),
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
