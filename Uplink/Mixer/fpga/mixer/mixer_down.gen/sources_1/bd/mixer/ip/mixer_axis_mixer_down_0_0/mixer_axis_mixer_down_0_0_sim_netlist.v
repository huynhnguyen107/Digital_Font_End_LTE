// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun 15 11:05:14 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/FPGA/Vivaldo
//               Project/Digital_Font_End_LTE/Uplink/Mixer/fpga/mixer/mixer_down.gen/sources_1/bd/mixer/ip/mixer_axis_mixer_down_0_0/mixer_axis_mixer_down_0_0_sim_netlist.v}
// Design      : mixer_axis_mixer_down_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mixer_axis_mixer_down_0_0,axis_mixer_down,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_mixer_down,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mixer_axis_mixer_down_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mixer_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN mixer_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN mixer_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_inst_s_axis_tready_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tkeep_UNCONNECTED;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign s_axis_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* WIDTH = "32" *) 
  mixer_axis_mixer_down_0_0_axis_mixer_down inst
       (.aclk(aclk),
        .aresetn(1'b0),
        .m_axis_tdata(NLW_inst_m_axis_tdata_UNCONNECTED[31:0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tvalid(NLW_inst_m_axis_tvalid_UNCONNECTED),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_mixer_down" *) (* WIDTH = "32" *) 
module mixer_axis_mixer_down_0_0_axis_mixer_down
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
  input aclk;
  input aresetn;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;

  wire \<const0> ;
  wire aclk;
  wire NLW_mixer_cmpy_0_m_axis_dout_tvalid_UNCONNECTED;
  wire [79:0]NLW_mixer_cmpy_0_m_axis_dout_tdata_UNCONNECTED;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign s_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "mixer_cmpy_0,cmpy_v6_0_21,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cmpy_v6_0_21,Vivado 2022.2" *) 
  mixer_axis_mixer_down_0_0_mixer_cmpy_0 mixer_cmpy_0
       (.aclk(aclk),
        .aclken(1'b1),
        .m_axis_dout_tdata(NLW_mixer_cmpy_0_m_axis_dout_tdata_UNCONNECTED[79:0]),
        .m_axis_dout_tvalid(NLW_mixer_cmpy_0_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_a_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_a_tvalid(1'b1),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tvalid(1'b1));
endmodule

(* CHECK_LICENSE_TYPE = "mixer_cmpy_0,cmpy_v6_0_21,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mixer_cmpy_0" *) 
(* X_CORE_INFO = "cmpy_v6_0_21,Vivado 2022.2" *) 
module mixer_axis_mixer_down_0_0_mixer_cmpy_0
   (aclk,
    aclken,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL:S_AXIS_B:S_AXIS_A:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [31:0]s_axis_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [79:0]m_axis_dout_tdata;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire s_axis_a_tvalid;
  wire s_axis_b_tvalid;
  wire NLW_U0_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_ctrl_tready_UNCONNECTED;
  wire [79:0]NLW_U0_m_axis_dout_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_dout_tuser_UNCONNECTED;

  assign m_axis_dout_tdata[79] = \<const0> ;
  assign m_axis_dout_tdata[78] = \<const0> ;
  assign m_axis_dout_tdata[77] = \<const0> ;
  assign m_axis_dout_tdata[76] = \<const0> ;
  assign m_axis_dout_tdata[75] = \<const0> ;
  assign m_axis_dout_tdata[74] = \<const0> ;
  assign m_axis_dout_tdata[73] = \<const0> ;
  assign m_axis_dout_tdata[72] = \<const0> ;
  assign m_axis_dout_tdata[71] = \<const0> ;
  assign m_axis_dout_tdata[70] = \<const0> ;
  assign m_axis_dout_tdata[69] = \<const0> ;
  assign m_axis_dout_tdata[68] = \<const0> ;
  assign m_axis_dout_tdata[67] = \<const0> ;
  assign m_axis_dout_tdata[66] = \<const0> ;
  assign m_axis_dout_tdata[65] = \<const0> ;
  assign m_axis_dout_tdata[64] = \<const0> ;
  assign m_axis_dout_tdata[63] = \<const0> ;
  assign m_axis_dout_tdata[62] = \<const0> ;
  assign m_axis_dout_tdata[61] = \<const0> ;
  assign m_axis_dout_tdata[60] = \<const0> ;
  assign m_axis_dout_tdata[59] = \<const0> ;
  assign m_axis_dout_tdata[58] = \<const0> ;
  assign m_axis_dout_tdata[57] = \<const0> ;
  assign m_axis_dout_tdata[56] = \<const0> ;
  assign m_axis_dout_tdata[55] = \<const0> ;
  assign m_axis_dout_tdata[54] = \<const0> ;
  assign m_axis_dout_tdata[53] = \<const0> ;
  assign m_axis_dout_tdata[52] = \<const0> ;
  assign m_axis_dout_tdata[51] = \<const0> ;
  assign m_axis_dout_tdata[50] = \<const0> ;
  assign m_axis_dout_tdata[49] = \<const0> ;
  assign m_axis_dout_tdata[48] = \<const0> ;
  assign m_axis_dout_tdata[47] = \<const0> ;
  assign m_axis_dout_tdata[46] = \<const0> ;
  assign m_axis_dout_tdata[45] = \<const0> ;
  assign m_axis_dout_tdata[44] = \<const0> ;
  assign m_axis_dout_tdata[43] = \<const0> ;
  assign m_axis_dout_tdata[42] = \<const0> ;
  assign m_axis_dout_tdata[41] = \<const0> ;
  assign m_axis_dout_tdata[40] = \<const0> ;
  assign m_axis_dout_tdata[39] = \<const0> ;
  assign m_axis_dout_tdata[38] = \<const0> ;
  assign m_axis_dout_tdata[37] = \<const0> ;
  assign m_axis_dout_tdata[36] = \<const0> ;
  assign m_axis_dout_tdata[35] = \<const0> ;
  assign m_axis_dout_tdata[34] = \<const0> ;
  assign m_axis_dout_tdata[33] = \<const0> ;
  assign m_axis_dout_tdata[32] = \<const0> ;
  assign m_axis_dout_tdata[31] = \<const0> ;
  assign m_axis_dout_tdata[30] = \<const0> ;
  assign m_axis_dout_tdata[29] = \<const0> ;
  assign m_axis_dout_tdata[28] = \<const0> ;
  assign m_axis_dout_tdata[27] = \<const0> ;
  assign m_axis_dout_tdata[26] = \<const0> ;
  assign m_axis_dout_tdata[25] = \<const0> ;
  assign m_axis_dout_tdata[24] = \<const0> ;
  assign m_axis_dout_tdata[23] = \<const0> ;
  assign m_axis_dout_tdata[22] = \<const0> ;
  assign m_axis_dout_tdata[21] = \<const0> ;
  assign m_axis_dout_tdata[20] = \<const0> ;
  assign m_axis_dout_tdata[19] = \<const0> ;
  assign m_axis_dout_tdata[18] = \<const0> ;
  assign m_axis_dout_tdata[17] = \<const0> ;
  assign m_axis_dout_tdata[16] = \<const0> ;
  assign m_axis_dout_tdata[15] = \<const0> ;
  assign m_axis_dout_tdata[14] = \<const0> ;
  assign m_axis_dout_tdata[13] = \<const0> ;
  assign m_axis_dout_tdata[12] = \<const0> ;
  assign m_axis_dout_tdata[11] = \<const0> ;
  assign m_axis_dout_tdata[10] = \<const0> ;
  assign m_axis_dout_tdata[9] = \<const0> ;
  assign m_axis_dout_tdata[8] = \<const0> ;
  assign m_axis_dout_tdata[7] = \<const0> ;
  assign m_axis_dout_tdata[6] = \<const0> ;
  assign m_axis_dout_tdata[5] = \<const0> ;
  assign m_axis_dout_tdata[4] = \<const0> ;
  assign m_axis_dout_tdata[3] = \<const0> ;
  assign m_axis_dout_tdata[2] = \<const0> ;
  assign m_axis_dout_tdata[1] = \<const0> ;
  assign m_axis_dout_tdata[0] = \<const0> ;
  assign m_axis_dout_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_WIDTH = "16" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_S_AXIS_A_TLAST = "0" *) 
  (* C_HAS_S_AXIS_A_TUSER = "0" *) 
  (* C_HAS_S_AXIS_B_TLAST = "0" *) 
  (* C_HAS_S_AXIS_B_TUSER = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TLAST = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TUSER = "0" *) 
  (* C_LATENCY = "6" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "80" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_WIDTH = "33" *) 
  (* C_S_AXIS_A_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_A_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_B_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_B_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_CTRL_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_CTRL_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICE = "xck26" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* HAS_NEGATE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* ROUND = "0" *) 
  (* SINGLE_OUTPUT = "0" *) 
  (* USE_DSP_CASCADES = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mixer_axis_mixer_down_0_0_cmpy_v6_0_21 U0
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(1'b1),
        .m_axis_dout_tdata(NLW_U0_m_axis_dout_tdata_UNCONNECTED[79:0]),
        .m_axis_dout_tlast(NLW_U0_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_U0_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(NLW_U0_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_a_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_ctrl_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_ctrl_tlast(1'b0),
        .s_axis_ctrl_tready(NLW_U0_s_axis_ctrl_tready_UNCONNECTED),
        .s_axis_ctrl_tuser(1'b0),
        .s_axis_ctrl_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QATQQ2xpetxKVKRkdei0WH4+d88xDQTZ96d3QiimCCYZRyl5pcxgQogMoHQ7XfcJVpZp11YTjiQh
zi7WE3/e3qcY7lQjw+tuWzDrLa3g3POI/g2Sx6fRuCK8HpYtNK50G6tb0sy1qOtkpsz9GEN7iWR2
ixDkkBBpoPL5DNcDJ1U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uSdGEdtTWMaflrulOgBmPtsqZI2TStoBfNj0H+YWevHZzXoNB01BHcILboPZidwOHhmTDOu5H3QX
jGl4HX1mmQNSj2Y1ovItDHGIXQulOprDq48JjkAhW60MWdJwI+YZcgRLTXnewhOiJbNWzzCsPzhi
xe1+7sF3KRZDgQBCTe6DCeCbLHRO7pDRazrfZHR6+p/wAM2Cmz8cXzRnFJzDh89yNHgxR1Gti/6I
56Ppsv6vPszNftV+mdvyj24x/BcjC+NaZOR16IJE3hZzU5tFZQdXOjTrdX+NvLjHmCBR8iZ7B8fP
pG+8PrdQ+SHO78yyz81966aCGYXcIybWwHADfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B79ZwL9cS/YKnimAdJKP3l6fgxCgf1HejA31WDiQjNg4qW3ndIbkaKcvX08kYB8E0jaWUEn0DG4F
R86ryX5OnS9QbxMFRbSg8cYQV7AAorgMVHkLgPKJY4/K1gW7Z5Oc3iv9opTthobfNUApBFy9vCL0
QqTdYqf3TSuaYOfhSmI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ch/uV/xoKUUu4ZyE2CBzQTjhft3T6YdQ1WSjM7+t1xyshe/qDuey/LNJEo5iUvplm6VnsdVajP4o
nxcyuCSGK5JpWwOCJVt+OJdMttstghFIhPA7PipHnhNSCA0+39zHj6FSYrnwe7I2kme08aFUgBGk
Asz2lxoEnDLTDgOfdkofno0/wtzCpWtn2cSQARsG7LxMGkFkH1TdGd7tNdhAMHAyQd32W3DD5Iqq
g17+7MqKC7b4v3h9D5NZcSOWDwhdGuZTsmU4eecbqvHp+kV5Q4xe9u81Gt3NekiE3bsvyvO3Bdn+
c5fK8I3VB0qJW02MLe0QslYraToavxbZayFH6A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ndc5SZOBWfurPfWn4Fd7d9DDro7YrfCFFwlchlLg9WtSBQAFXjrgd/OgURO2cfaVg9MiUBHKGGus
u6tJe0iaxFxEBXG7QGyEVz2TRF3/LCDsGvUSaCHz4lV/WZxn2jIBkWeOIlW5c+S8upcuiDxj8jtw
hN58BawWnK0cN+HqeuffV8DM3cajVwdkmAjt4sBTOsqDw3vUDTwQrHsEbF61oUSeDzTn5XKGOVpx
Tz/lk0X2KwM5I/isGG3p8zn1/YgooX1sHFnhZZStMyPSWosGGy+kO/MZQv3LGyhjLZG+PMbAfuXc
uoDWCcZJGjX6aXy0NXc2cM1U98+fO2LzPLajfw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sxsGPlT+o44ZdwfDEmqZGIBt80Zfub3SjjDY3NTBVgpIH4KO5UpoUBnrfPfPq4so0pPqb6MiLhgw
qowOT+LbVIv2goDldHM5PcVl7PQHLhH9ruO1NpoATQBHA5bld0pauBxqKyc+YfnnCKKDkZUoG5v6
vIPwQYlVpOB2DBpgbx+PNG3yvfUpsvDMmqtvTG+kQrffidnIfckjZvX747CAt7icNkY9dlKYll4Y
f5FP/NgCncX6Tu7RjOItqx4pFGTEtLetVgCfPjCZbmHma324XBNToAWka136Ig49tLHdVV3Tm/t/
xICddHPw9QE9FE5T4xfrl6xUM5YqQiJ9r/1GlA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BlToUhA79uC4HRzrumO/L+pS+EH4JSnQE5S4SBjpLuuw/gV+FsR/BvPDHsiMC5A/15UDUPbZsj7S
lBTMj6IQ7nGz9hoerXukYlqs7Mmd1D6ENHIJl6SQfeJfKBIUL3pKeJ/gWtLlYOKL1fXc14XUsuaZ
fEqrCO9KXWEoyKYV9QrbD12tmAPjEWuZYkVoCqUG/oLsye7btZZN9sNbnHspKGG42GRlNd0edG0G
LRuLZudsBo+m34qy/shWg9HV5UJ4zpz+stQVtnxm3QGqvRvK8RX9kN9vfSal+hNFKsBOldHDDqbA
M+JFLZ+wZd3MQ8kJtg0OKR6xtrHvocGNuylmpA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
IsYETfrgvh+gmJSZoN6TfRKrfXrc+VBqbQoNwchevIR0HlxTPOOb3sq2Pw2WBVdJinTai6i7QZNZ
rpoAXmx0Ms3pt+AQ75ckmUkUqTJrGOGVvG/XN5WyRmApgKlgmbXHM0Eoro8QJZ3fpzS4f/zRNnMk
je8Fd8ESm6+WPZd1/jAxn1JMZolrz87PcpvL68+AJRKpijWvqGDq9hq44N4+1TC2eFL+S1LlSnRX
Acz7+U1UdASGYyM9av0Vzr66QlNex01FiLjjFasU5ohHZDwySdOa2AYzNV4TDRFcP+NHcjWNwJ1R
ySTfPNIfJo+D9/IJT4WxIlrUJeN94xCzJhHOigGaa5m5XzoJEO8fgthEv49V8ExM9SxCUKu32l+j
x1hLMkgnoJI/R5E/kA9rrt/3dl1NQN/A2qHwPEyX1B26Mfs6kIMSSJ2lWyNXZCTMoW/DiiHBfbzo
LLwyxDpbzIl6Dvfx6XKW2w5mpC5xx07n8q9O7nlYCMYCfqouUYA/YJMw

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hZ540Lm93ol6HSKSlTVPgDSle8LLPLejHpNm3dThQedYk09PEbKQdlNTFYnseNga48Pb0ByFUkkO
4+CURnqureK/3eozCmOPaFybcPtz37IqefOdrqlQYhr8x7uhZCV/p/7p7L8MGW/8FpiwBylAobV3
+yWCiNWGakVAXotyoQmiaEzDOFcDLqiUuaOQEbOz/k3QwEsynWxh7sAw0lhQE4mzsfsoTip/+cUO
Rols+Bbj5TRwX8mA9mG5VvSJ7nn5auWun8b7z6M0EcHbU5zz0WH1ymegl+KnQJrhDB+YeB8JDhLP
RV+fiD65RnUwFbQh40j3zWFuXSNDcQ7XOpyavw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E53b2GlZS4f34CbUzuVRQW/5oj+8J+E3PsNgL8wTv6YGaDe3pFQhtUo5okAhUohIkazkBGAVEWXK
7U4+IBpJB6Z4RroIOIP9GJ2ykvuD34rCWzxTscF36opoZYrHRCBVv9xY3fn70ltEp2sCSB33fJi9
pMJWOIp7jxZDCmQON6IbFP94c3mvFPHKBE5RSWFqhz+WhhkeIJNAJM8Law1IJSNkdj0ZQnqU5KRq
i7NZT+YiMwtA87vr6ITAbC0yBveRRb48IEuDRgp2aOvsDr80QeA2UBydKYT29vFLKdavakGYAXsp
5AmPIdzWcJQ+OjN9orsC8GCY7iFyZWhNZgxgzA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H5gRlRHCXoqMauY3TRLVrZxMWDXHqdifYyY6xTQZhWUDXlJg5n4JM8oSvFvPi61kFQl+a43tCrUv
aOHo+ZgRzFVB2GEFKppaNB4R65BzekFSNPzYhBcFH5vW3WN+JPCHuD/hyCCk0RhPr95adRwlUlBq
Yh/sL70db0GFSGBcqQYb9ZlRxTBo3EmgZFr9APgRHMfm2Bam14jj+ofCeHejHcVfrIhfrnTGhetj
EL0sJDlcNVxl8VsFauhubCVSysf9N6+3QenU3aG/wxUd2c6MfLNVfV4/6SuxrJpes3UfcCiTJ56x
bBMkZDj3pY2+Y7BGYK8gFxbqJNHh+8aA7VZwAg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16736)
`pragma protect data_block
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
`pragma protect end_protected
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
