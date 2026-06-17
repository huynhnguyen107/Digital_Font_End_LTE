// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jun 17 09:54:37 2026
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

  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  (* WIDTH = "32" *) 
  mixer_axis_mixer_down_0_0_axis_mixer_down inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
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

  wire aclk;
  wire aresetn;
  wire [69:14]data_80;
  wire [31:30]env;
  wire [31:0]if_signal;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mixer_cmpy_0_i_3_n_0;
  wire p_0_in;
  wire [1:1]p_1_in;
  wire phase;
  wire \phase_reg_n_0_[0] ;
  wire \phase_reg_n_0_[1] ;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire timming1_n_2;
  wire timming1_n_3;
  wire timming2_n_0;
  wire timming2_n_1;
  wire timming2_n_2;
  wire timming2_n_3;
  wire timming3_n_0;
  wire NLW_mixer_cmpy_0_m_axis_dout_tvalid_UNCONNECTED;
  wire [79:0]NLW_mixer_cmpy_0_m_axis_dout_tdata_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB0)) 
    \if_signal[31]_i_1 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .I2(s_axis_tvalid),
        .O(phase));
  FDRE \if_signal_reg[0] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[0]),
        .Q(if_signal[0]),
        .R(p_0_in));
  FDRE \if_signal_reg[10] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[10]),
        .Q(if_signal[10]),
        .R(p_0_in));
  FDRE \if_signal_reg[11] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[11]),
        .Q(if_signal[11]),
        .R(p_0_in));
  FDRE \if_signal_reg[12] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[12]),
        .Q(if_signal[12]),
        .R(p_0_in));
  FDRE \if_signal_reg[13] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[13]),
        .Q(if_signal[13]),
        .R(p_0_in));
  FDRE \if_signal_reg[14] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[14]),
        .Q(if_signal[14]),
        .R(p_0_in));
  FDRE \if_signal_reg[15] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[15]),
        .Q(if_signal[15]),
        .R(p_0_in));
  FDRE \if_signal_reg[16] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[16]),
        .Q(if_signal[16]),
        .R(p_0_in));
  FDRE \if_signal_reg[17] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[17]),
        .Q(if_signal[17]),
        .R(p_0_in));
  FDRE \if_signal_reg[18] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[18]),
        .Q(if_signal[18]),
        .R(p_0_in));
  FDRE \if_signal_reg[19] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[19]),
        .Q(if_signal[19]),
        .R(p_0_in));
  FDRE \if_signal_reg[1] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[1]),
        .Q(if_signal[1]),
        .R(p_0_in));
  FDRE \if_signal_reg[20] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[20]),
        .Q(if_signal[20]),
        .R(p_0_in));
  FDRE \if_signal_reg[21] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[21]),
        .Q(if_signal[21]),
        .R(p_0_in));
  FDRE \if_signal_reg[22] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[22]),
        .Q(if_signal[22]),
        .R(p_0_in));
  FDRE \if_signal_reg[23] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[23]),
        .Q(if_signal[23]),
        .R(p_0_in));
  FDRE \if_signal_reg[24] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[24]),
        .Q(if_signal[24]),
        .R(p_0_in));
  FDRE \if_signal_reg[25] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[25]),
        .Q(if_signal[25]),
        .R(p_0_in));
  FDRE \if_signal_reg[26] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[26]),
        .Q(if_signal[26]),
        .R(p_0_in));
  FDRE \if_signal_reg[27] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[27]),
        .Q(if_signal[27]),
        .R(p_0_in));
  FDRE \if_signal_reg[28] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[28]),
        .Q(if_signal[28]),
        .R(p_0_in));
  FDRE \if_signal_reg[29] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[29]),
        .Q(if_signal[29]),
        .R(p_0_in));
  FDRE \if_signal_reg[2] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[2]),
        .Q(if_signal[2]),
        .R(p_0_in));
  FDRE \if_signal_reg[30] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[30]),
        .Q(if_signal[30]),
        .R(p_0_in));
  FDRE \if_signal_reg[31] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[31]),
        .Q(if_signal[31]),
        .R(p_0_in));
  FDRE \if_signal_reg[3] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[3]),
        .Q(if_signal[3]),
        .R(p_0_in));
  FDRE \if_signal_reg[4] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[4]),
        .Q(if_signal[4]),
        .R(p_0_in));
  FDRE \if_signal_reg[5] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[5]),
        .Q(if_signal[5]),
        .R(p_0_in));
  FDRE \if_signal_reg[6] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[6]),
        .Q(if_signal[6]),
        .R(p_0_in));
  FDRE \if_signal_reg[7] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[7]),
        .Q(if_signal[7]),
        .R(p_0_in));
  FDRE \if_signal_reg[8] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[8]),
        .Q(if_signal[8]),
        .R(p_0_in));
  FDRE \if_signal_reg[9] 
       (.C(aclk),
        .CE(phase),
        .D(s_axis_tdata[9]),
        .Q(if_signal[9]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[14]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[24]),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[25]),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[26]),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[27]),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[28]),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[29]),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[54]),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[55]),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[56]),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[57]),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[15]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[58]),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[59]),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[60]),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[61]),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[24] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[62]),
        .Q(m_axis_tdata[24]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[25] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[63]),
        .Q(m_axis_tdata[25]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[26] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[64]),
        .Q(m_axis_tdata[26]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[27] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[65]),
        .Q(m_axis_tdata[27]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[28] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[66]),
        .Q(m_axis_tdata[28]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[29] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[67]),
        .Q(m_axis_tdata[29]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[16]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[30] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[68]),
        .Q(m_axis_tdata[30]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[31] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[69]),
        .Q(m_axis_tdata[31]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[17]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[18]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[19]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[20]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[21]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[22]),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(data_80[23]),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  FDRE \m_axis_tkeep_reg[0] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(timming2_n_3),
        .Q(m_axis_tkeep[0]),
        .R(p_0_in));
  FDRE \m_axis_tkeep_reg[1] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(timming2_n_2),
        .Q(m_axis_tkeep[1]),
        .R(p_0_in));
  FDRE \m_axis_tkeep_reg[2] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(timming2_n_1),
        .Q(m_axis_tkeep[2]),
        .R(p_0_in));
  FDRE \m_axis_tkeep_reg[3] 
       (.C(aclk),
        .CE(s_axis_tready),
        .D(timming2_n_0),
        .Q(m_axis_tkeep[3]),
        .R(p_0_in));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(s_axis_tready),
        .D(timming3_n_0),
        .Q(m_axis_tlast),
        .R(p_0_in));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(s_axis_tready),
        .D(timming1_n_3),
        .Q(m_axis_tvalid),
        .R(p_0_in));
  (* CHECK_LICENSE_TYPE = "mixer_cmpy_0,cmpy_v6_0_21,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cmpy_v6_0_21,Vivado 2022.2" *) 
  mixer_axis_mixer_down_0_0_mixer_cmpy_0 mixer_cmpy_0
       (.aclk(aclk),
        .aclken(s_axis_tready),
        .m_axis_dout_tdata({NLW_mixer_cmpy_0_m_axis_dout_tdata_UNCONNECTED[79:70],data_80,NLW_mixer_cmpy_0_m_axis_dout_tdata_UNCONNECTED[13:0]}),
        .m_axis_dout_tvalid(NLW_mixer_cmpy_0_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_a_tdata(if_signal),
        .s_axis_a_tvalid(1'b1),
        .s_axis_b_tdata({env,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mixer_cmpy_0_i_3_n_0,\phase_reg_n_0_[0] ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tvalid(1'b1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    mixer_cmpy_0_i_1
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[0] ),
        .O(env[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    mixer_cmpy_0_i_2
       (.I0(\phase_reg_n_0_[0] ),
        .O(env[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mixer_cmpy_0_i_3
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase_reg_n_0_[1] ),
        .O(mixer_cmpy_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase[1]_i_1 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase_reg_n_0_[1] ),
        .O(p_1_in));
  FDRE \phase_reg[0] 
       (.C(aclk),
        .CE(phase),
        .D(env[30]),
        .Q(\phase_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \phase_reg[1] 
       (.C(aclk),
        .CE(phase),
        .D(p_1_in),
        .Q(\phase_reg_n_0_[1] ),
        .R(p_0_in));
  mixer_axis_mixer_down_0_0_timming timming1
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_0(s_axis_tready),
        .\mem_reg[6][0]_timming1_mem_reg_r_5_0 (timming1_n_3),
        .mem_reg_r_5_0(timming1_n_2),
        .mem_reg_r_6(m_axis_tvalid),
        .p_0_in(p_0_in),
        .s_axis_tvalid(s_axis_tvalid));
  mixer_axis_mixer_down_0_0_timming__parameterized0 timming2
       (.aclk(aclk),
        .\m_axis_tkeep_reg[3] (timming1_n_2),
        .m_axis_tready(m_axis_tready),
        .\mem_reg[6][0]_timming1_mem_reg_r_5_0 (timming2_n_3),
        .\mem_reg[6][0]_timming1_mem_reg_r_5_1 (m_axis_tvalid),
        .\mem_reg[6][1]_timming1_mem_reg_r_5_0 (timming2_n_2),
        .\mem_reg[6][2]_timming1_mem_reg_r_5_0 (timming2_n_1),
        .\mem_reg[6][3]_timming1_mem_reg_r_5_0 (timming2_n_0),
        .\mem_reg[6][3]_timming1_mem_reg_r_5_1 (s_axis_tready),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tvalid(s_axis_tvalid));
  mixer_axis_mixer_down_0_0_timming_0 timming3
       (.aclk(aclk),
        .m_axis_tlast_reg(timming1_n_2),
        .m_axis_tready(m_axis_tready),
        .\mem_reg[6][0]_timming1_mem_reg_r_5_0 (timming3_n_0),
        .\mem_reg[6][0]_timming1_mem_reg_r_5_1 (s_axis_tready),
        .\mem_reg[6][0]_timming1_mem_reg_r_5_2 (m_axis_tvalid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
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
  wire [69:14]\^m_axis_dout_tdata ;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
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
  assign m_axis_dout_tdata[69:54] = \^m_axis_dout_tdata [69:54];
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
  assign m_axis_dout_tdata[29:14] = \^m_axis_dout_tdata [29:14];
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
        .m_axis_dout_tdata({NLW_U0_m_axis_dout_tdata_UNCONNECTED[79:70],\^m_axis_dout_tdata ,NLW_U0_m_axis_dout_tdata_UNCONNECTED[13:0]}),
        .m_axis_dout_tlast(NLW_U0_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_U0_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(NLW_U0_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({s_axis_b_tdata[31:30],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_b_tdata[15:14],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* ORIG_REF_NAME = "timming" *) 
module mixer_axis_mixer_down_0_0_timming
   (p_0_in,
    m_axis_tready_0,
    mem_reg_r_5_0,
    \mem_reg[6][0]_timming1_mem_reg_r_5_0 ,
    aclk,
    s_axis_tvalid,
    aresetn,
    m_axis_tready,
    mem_reg_r_6);
  output p_0_in;
  output m_axis_tready_0;
  output mem_reg_r_5_0;
  output \mem_reg[6][0]_timming1_mem_reg_r_5_0 ;
  input aclk;
  input s_axis_tvalid;
  input aresetn;
  input m_axis_tready;
  input mem_reg_r_6;

  wire aclk;
  wire aresetn;
  wire m_axis_tready;
  wire m_axis_tready_0;
  wire \mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_0 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ;
  wire mem_reg_r_0_n_0;
  wire mem_reg_r_1_n_0;
  wire mem_reg_r_2_n_0;
  wire mem_reg_r_3_n_0;
  wire mem_reg_r_4_n_0;
  wire mem_reg_r_5_0;
  wire mem_reg_r_6;
  wire mem_reg_r_n_0;
  wire p_0_in;
  wire s_axis_tvalid;

  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[31]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  (* srl_bus_name = "inst/\timming1/mem_reg[5] " *) 
  (* srl_name = "inst/\timming1/mem_reg[5][0]_srl6___timming1_mem_reg_r_4 " *) 
  SRL16E \mem_reg[5][0]_srl6___timming1_mem_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(m_axis_tready_0),
        .CLK(aclk),
        .D(s_axis_tvalid),
        .Q(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ));
  FDRE \mem_reg[6][0]_timming1_mem_reg_r_5 
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ),
        .Q(\mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_gate
       (.I0(\mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ),
        .I1(mem_reg_r_5_0),
        .O(\mem_reg[6][0]_timming1_mem_reg_r_5_0 ));
  FDRE mem_reg_r
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(1'b1),
        .Q(mem_reg_r_n_0),
        .R(p_0_in));
  FDRE mem_reg_r_0
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(mem_reg_r_n_0),
        .Q(mem_reg_r_0_n_0),
        .R(p_0_in));
  FDRE mem_reg_r_1
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(mem_reg_r_0_n_0),
        .Q(mem_reg_r_1_n_0),
        .R(p_0_in));
  FDRE mem_reg_r_2
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(mem_reg_r_1_n_0),
        .Q(mem_reg_r_2_n_0),
        .R(p_0_in));
  FDRE mem_reg_r_3
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(mem_reg_r_2_n_0),
        .Q(mem_reg_r_3_n_0),
        .R(p_0_in));
  FDRE mem_reg_r_4
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(mem_reg_r_3_n_0),
        .Q(mem_reg_r_4_n_0),
        .R(p_0_in));
  FDRE mem_reg_r_5
       (.C(aclk),
        .CE(m_axis_tready_0),
        .D(mem_reg_r_4_n_0),
        .Q(mem_reg_r_5_0),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_tready_INST_0
       (.I0(m_axis_tready),
        .I1(mem_reg_r_6),
        .O(m_axis_tready_0));
endmodule

(* ORIG_REF_NAME = "timming" *) 
module mixer_axis_mixer_down_0_0_timming_0
   (\mem_reg[6][0]_timming1_mem_reg_r_5_0 ,
    \mem_reg[6][0]_timming1_mem_reg_r_5_1 ,
    aclk,
    m_axis_tlast_reg,
    s_axis_tlast,
    m_axis_tready,
    \mem_reg[6][0]_timming1_mem_reg_r_5_2 ,
    s_axis_tvalid);
  output \mem_reg[6][0]_timming1_mem_reg_r_5_0 ;
  input \mem_reg[6][0]_timming1_mem_reg_r_5_1 ;
  input aclk;
  input m_axis_tlast_reg;
  input s_axis_tlast;
  input m_axis_tready;
  input \mem_reg[6][0]_timming1_mem_reg_r_5_2 ;
  input s_axis_tvalid;

  wire a0;
  wire aclk;
  wire m_axis_tlast_reg;
  wire m_axis_tready;
  wire \mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_0 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_1 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_2 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  (* srl_bus_name = "inst/\timming3/mem_reg[5] " *) 
  (* srl_name = "inst/\timming3/mem_reg[5][0]_srl6___timming1_mem_reg_r_4 " *) 
  SRL16E \mem_reg[5][0]_srl6___timming1_mem_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\mem_reg[6][0]_timming1_mem_reg_r_5_1 ),
        .CLK(aclk),
        .D(a0),
        .Q(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ));
  LUT4 #(
    .INIT(16'h8A00)) 
    \mem_reg[5][0]_srl6___timming1_mem_reg_r_4_i_1__0 
       (.I0(s_axis_tlast),
        .I1(m_axis_tready),
        .I2(\mem_reg[6][0]_timming1_mem_reg_r_5_2 ),
        .I3(s_axis_tvalid),
        .O(a0));
  FDRE \mem_reg[6][0]_timming1_mem_reg_r_5 
       (.C(aclk),
        .CE(\mem_reg[6][0]_timming1_mem_reg_r_5_1 ),
        .D(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ),
        .Q(\mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_gate
       (.I0(\mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ),
        .I1(m_axis_tlast_reg),
        .O(\mem_reg[6][0]_timming1_mem_reg_r_5_0 ));
endmodule

(* ORIG_REF_NAME = "timming" *) 
module mixer_axis_mixer_down_0_0_timming__parameterized0
   (\mem_reg[6][3]_timming1_mem_reg_r_5_0 ,
    \mem_reg[6][2]_timming1_mem_reg_r_5_0 ,
    \mem_reg[6][1]_timming1_mem_reg_r_5_0 ,
    \mem_reg[6][0]_timming1_mem_reg_r_5_0 ,
    \mem_reg[6][3]_timming1_mem_reg_r_5_1 ,
    aclk,
    \m_axis_tkeep_reg[3] ,
    m_axis_tready,
    \mem_reg[6][0]_timming1_mem_reg_r_5_1 ,
    s_axis_tvalid,
    s_axis_tkeep);
  output \mem_reg[6][3]_timming1_mem_reg_r_5_0 ;
  output \mem_reg[6][2]_timming1_mem_reg_r_5_0 ;
  output \mem_reg[6][1]_timming1_mem_reg_r_5_0 ;
  output \mem_reg[6][0]_timming1_mem_reg_r_5_0 ;
  input \mem_reg[6][3]_timming1_mem_reg_r_5_1 ;
  input aclk;
  input \m_axis_tkeep_reg[3] ;
  input m_axis_tready;
  input \mem_reg[6][0]_timming1_mem_reg_r_5_1 ;
  input s_axis_tvalid;
  input [3:0]s_axis_tkeep;

  wire aclk;
  wire \m_axis_tkeep_reg[3] ;
  wire m_axis_tready;
  wire \mem_reg[5][0]_srl6___timming1_mem_reg_r_4_i_1_n_0 ;
  wire \mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ;
  wire \mem_reg[5][1]_srl6___timming1_mem_reg_r_4_i_1_n_0 ;
  wire \mem_reg[5][1]_srl6___timming1_mem_reg_r_4_n_0 ;
  wire \mem_reg[5][2]_srl6___timming1_mem_reg_r_4_i_1_n_0 ;
  wire \mem_reg[5][2]_srl6___timming1_mem_reg_r_4_n_0 ;
  wire \mem_reg[5][3]_srl6___timming1_mem_reg_r_4_i_1_n_0 ;
  wire \mem_reg[5][3]_srl6___timming1_mem_reg_r_4_n_0 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_0 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_1 ;
  wire \mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ;
  wire \mem_reg[6][1]_timming1_mem_reg_r_5_0 ;
  wire \mem_reg[6][1]_timming1_mem_reg_r_5_n_0 ;
  wire \mem_reg[6][2]_timming1_mem_reg_r_5_0 ;
  wire \mem_reg[6][2]_timming1_mem_reg_r_5_n_0 ;
  wire \mem_reg[6][3]_timming1_mem_reg_r_5_0 ;
  wire \mem_reg[6][3]_timming1_mem_reg_r_5_1 ;
  wire \mem_reg[6][3]_timming1_mem_reg_r_5_n_0 ;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tvalid;

  (* srl_bus_name = "inst/\timming2/mem_reg[5] " *) 
  (* srl_name = "inst/\timming2/mem_reg[5][0]_srl6___timming1_mem_reg_r_4 " *) 
  SRL16E \mem_reg[5][0]_srl6___timming1_mem_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .CLK(aclk),
        .D(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_i_1_n_0 ),
        .Q(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \mem_reg[5][0]_srl6___timming1_mem_reg_r_4_i_1 
       (.I0(m_axis_tready),
        .I1(\mem_reg[6][0]_timming1_mem_reg_r_5_1 ),
        .I2(s_axis_tvalid),
        .I3(s_axis_tkeep[0]),
        .O(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_i_1_n_0 ));
  (* srl_bus_name = "inst/\timming2/mem_reg[5] " *) 
  (* srl_name = "inst/\timming2/mem_reg[5][1]_srl6___timming1_mem_reg_r_4 " *) 
  SRL16E \mem_reg[5][1]_srl6___timming1_mem_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .CLK(aclk),
        .D(\mem_reg[5][1]_srl6___timming1_mem_reg_r_4_i_1_n_0 ),
        .Q(\mem_reg[5][1]_srl6___timming1_mem_reg_r_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \mem_reg[5][1]_srl6___timming1_mem_reg_r_4_i_1 
       (.I0(m_axis_tready),
        .I1(\mem_reg[6][0]_timming1_mem_reg_r_5_1 ),
        .I2(s_axis_tvalid),
        .I3(s_axis_tkeep[1]),
        .O(\mem_reg[5][1]_srl6___timming1_mem_reg_r_4_i_1_n_0 ));
  (* srl_bus_name = "inst/\timming2/mem_reg[5] " *) 
  (* srl_name = "inst/\timming2/mem_reg[5][2]_srl6___timming1_mem_reg_r_4 " *) 
  SRL16E \mem_reg[5][2]_srl6___timming1_mem_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .CLK(aclk),
        .D(\mem_reg[5][2]_srl6___timming1_mem_reg_r_4_i_1_n_0 ),
        .Q(\mem_reg[5][2]_srl6___timming1_mem_reg_r_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \mem_reg[5][2]_srl6___timming1_mem_reg_r_4_i_1 
       (.I0(m_axis_tready),
        .I1(\mem_reg[6][0]_timming1_mem_reg_r_5_1 ),
        .I2(s_axis_tvalid),
        .I3(s_axis_tkeep[2]),
        .O(\mem_reg[5][2]_srl6___timming1_mem_reg_r_4_i_1_n_0 ));
  (* srl_bus_name = "inst/\timming2/mem_reg[5] " *) 
  (* srl_name = "inst/\timming2/mem_reg[5][3]_srl6___timming1_mem_reg_r_4 " *) 
  SRL16E \mem_reg[5][3]_srl6___timming1_mem_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .CLK(aclk),
        .D(\mem_reg[5][3]_srl6___timming1_mem_reg_r_4_i_1_n_0 ),
        .Q(\mem_reg[5][3]_srl6___timming1_mem_reg_r_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \mem_reg[5][3]_srl6___timming1_mem_reg_r_4_i_1 
       (.I0(m_axis_tready),
        .I1(\mem_reg[6][0]_timming1_mem_reg_r_5_1 ),
        .I2(s_axis_tvalid),
        .I3(s_axis_tkeep[3]),
        .O(\mem_reg[5][3]_srl6___timming1_mem_reg_r_4_i_1_n_0 ));
  FDRE \mem_reg[6][0]_timming1_mem_reg_r_5 
       (.C(aclk),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .D(\mem_reg[5][0]_srl6___timming1_mem_reg_r_4_n_0 ),
        .Q(\mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[6][1]_timming1_mem_reg_r_5 
       (.C(aclk),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .D(\mem_reg[5][1]_srl6___timming1_mem_reg_r_4_n_0 ),
        .Q(\mem_reg[6][1]_timming1_mem_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[6][2]_timming1_mem_reg_r_5 
       (.C(aclk),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .D(\mem_reg[5][2]_srl6___timming1_mem_reg_r_4_n_0 ),
        .Q(\mem_reg[6][2]_timming1_mem_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE \mem_reg[6][3]_timming1_mem_reg_r_5 
       (.C(aclk),
        .CE(\mem_reg[6][3]_timming1_mem_reg_r_5_1 ),
        .D(\mem_reg[5][3]_srl6___timming1_mem_reg_r_4_n_0 ),
        .Q(\mem_reg[6][3]_timming1_mem_reg_r_5_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_gate
       (.I0(\mem_reg[6][3]_timming1_mem_reg_r_5_n_0 ),
        .I1(\m_axis_tkeep_reg[3] ),
        .O(\mem_reg[6][3]_timming1_mem_reg_r_5_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_gate__0
       (.I0(\mem_reg[6][2]_timming1_mem_reg_r_5_n_0 ),
        .I1(\m_axis_tkeep_reg[3] ),
        .O(\mem_reg[6][2]_timming1_mem_reg_r_5_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_gate__1
       (.I0(\mem_reg[6][1]_timming1_mem_reg_r_5_n_0 ),
        .I1(\m_axis_tkeep_reg[3] ),
        .O(\mem_reg[6][1]_timming1_mem_reg_r_5_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_gate__2
       (.I0(\mem_reg[6][0]_timming1_mem_reg_r_5_n_0 ),
        .I1(\m_axis_tkeep_reg[3] ),
        .O(\mem_reg[6][0]_timming1_mem_reg_r_5_0 ));
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
iZiEN2sPZfAoW6w7NiRHGcVbo0INHUP95hNZHpre7CV36VXz88+GhMED6F0i4eVd5Ffwhi4lFW+w
MZzgx/hJi1ifQAAIfgiPPiUuy2vXXmyyES7cIPCeByycOs3AGhaDKRXJWExFC9bW91b0kTnRISTK
3Art8wChXi9eE+8AdNjBjjNXSoo/fqIIzWuQBTHzn0A84VBR45J3W1SQbuUCLYNaEl1XSjJSx+nl
zK08c7Y2CFQ/JSFHJnuwIktxegyZgZAuLbL4h4EaHcIOxjkNHD9BiH8s2S3F8OkJLKxdkpilLgyR
OyHGgNphIphnaCIiRje2omiWIpWtlDfvmFvT/w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3iOQo3ymg9l0RKxHfwXJIc52ssCO9J7mdyHC0/z95YJ/edNpFZy0jiYlaCnsc4CvSI+fhBRfgaVS
4HxLvQy6sMnmElOn5CDiMi48RJPDdDZTENr4UYv3M+KnYVUVkr3FFJuyiTOyAfNndWTUn6juYsLF
/+ejQtlO0E8i5HwbphzRxx2Q6jJobD9y2wzAXeI4/QoC9jCzGorkK0N5g4r1veom9mpvDQyPsXSE
SFbNrd75ymyjVCLwHK++wToPPoz7f1poHdRfrDB0SlqVHJXl0jxqRPeqNT7e0ZrikTf1de/mV3fq
BMP9d5LbqtAeQeC1cYjnqv3rahCKgjLEos82OA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79984)
`pragma protect data_block
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
vOpHMVOFIH4IK+/CfQ==
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
