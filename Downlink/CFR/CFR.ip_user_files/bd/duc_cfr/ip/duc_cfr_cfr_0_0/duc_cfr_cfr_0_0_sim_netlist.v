// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jun  2 21:06:38 2026
// Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/FPGA/Vivaldo
//               Project/Digital_Font_End_LTE/Downlink/CFR/CFR.gen/sources_1/bd/duc_cfr/ip/duc_cfr_cfr_0_0/duc_cfr_cfr_0_0_sim_netlist.v}
// Design      : duc_cfr_cfr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "duc_cfr_cfr_0_0,cfr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cfr,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module duc_cfr_cfr_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN duc_cfr_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire \inst/m_axis_tdata24_out ;
  wire \inst/m_axis_tdata2__15 ;
  wire \inst/m_axis_tdata31_out ;
  wire \inst/m_axis_tdata36_out ;
  wire [31:0]m_axis_tdata;
  wire \m_axis_tdata[15]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_6_n_0 ;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tkeep[3:0] = s_axis_tkeep;
  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\inst/m_axis_tdata36_out ),
        .I1(s_axis_tdata[0]),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\inst/m_axis_tdata24_out ),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(s_axis_tdata[10]),
        .O(m_axis_tdata[10]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\inst/m_axis_tdata24_out ),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(s_axis_tdata[11]),
        .O(m_axis_tdata[11]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(s_axis_tdata[12]),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[12]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(s_axis_tdata[13]),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[13]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\inst/m_axis_tdata24_out ),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(s_axis_tdata[14]),
        .O(m_axis_tdata[14]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(s_axis_tdata[15]),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[15]));
  LUT5 #(
    .INIT(32'h0000AA2A)) 
    \m_axis_tdata[15]_INST_0_i_1 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[15]_INST_0_i_3_n_0 ),
        .I4(s_axis_tdata[14]),
        .O(\inst/m_axis_tdata36_out ));
  LUT6 #(
    .INIT(64'h00000000AAAAA888)) 
    \m_axis_tdata[15]_INST_0_i_2 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[15]_INST_0_i_4_n_0 ),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[12]),
        .I5(s_axis_tdata[15]),
        .O(\inst/m_axis_tdata24_out ));
  LUT5 #(
    .INIT(32'h000000F7)) 
    \m_axis_tdata[15]_INST_0_i_3 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[9]),
        .I2(\m_axis_tdata[15]_INST_0_i_5_n_0 ),
        .I3(s_axis_tdata[11]),
        .I4(s_axis_tdata[10]),
        .O(\m_axis_tdata[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8888888)) 
    \m_axis_tdata[15]_INST_0_i_4 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[15]_INST_0_i_6_n_0 ),
        .I4(s_axis_tdata[6]),
        .I5(s_axis_tdata[8]),
        .O(\m_axis_tdata[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000777F)) 
    \m_axis_tdata[15]_INST_0_i_5 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tdata[7]),
        .I5(s_axis_tdata[6]),
        .O(\m_axis_tdata[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \m_axis_tdata[15]_INST_0_i_6 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[3]),
        .I5(s_axis_tdata[5]),
        .O(\m_axis_tdata[15]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\inst/m_axis_tdata31_out ),
        .I1(s_axis_tdata[16]),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[16]));
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\inst/m_axis_tdata31_out ),
        .I1(s_axis_tdata[17]),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[17]));
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\inst/m_axis_tdata2__15 ),
        .I1(s_axis_tdata[18]),
        .I2(\inst/m_axis_tdata31_out ),
        .O(m_axis_tdata[18]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\inst/m_axis_tdata2__15 ),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(s_axis_tdata[19]),
        .O(m_axis_tdata[19]));
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\inst/m_axis_tdata36_out ),
        .I1(s_axis_tdata[1]),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[1]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(s_axis_tdata[20]),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[20]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(s_axis_tdata[21]),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[21]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\inst/m_axis_tdata2__15 ),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(s_axis_tdata[22]),
        .O(m_axis_tdata[22]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\inst/m_axis_tdata2__15 ),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(s_axis_tdata[23]),
        .O(m_axis_tdata[23]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(s_axis_tdata[24]),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[24]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(s_axis_tdata[25]),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[25]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\inst/m_axis_tdata2__15 ),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(s_axis_tdata[26]),
        .O(m_axis_tdata[26]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\inst/m_axis_tdata2__15 ),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(s_axis_tdata[27]),
        .O(m_axis_tdata[27]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(s_axis_tdata[28]),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[28]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(s_axis_tdata[29]),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[29]));
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\inst/m_axis_tdata24_out ),
        .I1(s_axis_tdata[2]),
        .I2(\inst/m_axis_tdata36_out ),
        .O(m_axis_tdata[2]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\inst/m_axis_tdata2__15 ),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(s_axis_tdata[30]),
        .O(m_axis_tdata[30]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(s_axis_tdata[31]),
        .I1(\inst/m_axis_tdata31_out ),
        .I2(\inst/m_axis_tdata2__15 ),
        .O(m_axis_tdata[31]));
  LUT5 #(
    .INIT(32'h0000AA2A)) 
    \m_axis_tdata[31]_INST_0_i_1 
       (.I0(s_axis_tdata[31]),
        .I1(s_axis_tdata[28]),
        .I2(s_axis_tdata[29]),
        .I3(\m_axis_tdata[31]_INST_0_i_3_n_0 ),
        .I4(s_axis_tdata[30]),
        .O(\inst/m_axis_tdata31_out ));
  LUT6 #(
    .INIT(64'h00000000AAAAA888)) 
    \m_axis_tdata[31]_INST_0_i_2 
       (.I0(s_axis_tdata[30]),
        .I1(s_axis_tdata[29]),
        .I2(\m_axis_tdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axis_tdata[26]),
        .I4(s_axis_tdata[28]),
        .I5(s_axis_tdata[31]),
        .O(\inst/m_axis_tdata2__15 ));
  LUT5 #(
    .INIT(32'h000000F7)) 
    \m_axis_tdata[31]_INST_0_i_3 
       (.I0(s_axis_tdata[24]),
        .I1(s_axis_tdata[25]),
        .I2(\m_axis_tdata[31]_INST_0_i_5_n_0 ),
        .I3(s_axis_tdata[27]),
        .I4(s_axis_tdata[26]),
        .O(\m_axis_tdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8888888)) 
    \m_axis_tdata[31]_INST_0_i_4 
       (.I0(s_axis_tdata[27]),
        .I1(s_axis_tdata[25]),
        .I2(s_axis_tdata[23]),
        .I3(\m_axis_tdata[31]_INST_0_i_6_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(s_axis_tdata[24]),
        .O(\m_axis_tdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000777F)) 
    \m_axis_tdata[31]_INST_0_i_5 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[23]),
        .I5(s_axis_tdata[22]),
        .O(\m_axis_tdata[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAAA)) 
    \m_axis_tdata[31]_INST_0_i_6 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[21]),
        .O(\m_axis_tdata[31]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\inst/m_axis_tdata24_out ),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(s_axis_tdata[3]),
        .O(m_axis_tdata[3]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[4]),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[4]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[5]),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[5]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\inst/m_axis_tdata24_out ),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(s_axis_tdata[6]),
        .O(m_axis_tdata[6]));
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\inst/m_axis_tdata24_out ),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(s_axis_tdata[7]),
        .O(m_axis_tdata[7]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(s_axis_tdata[8]),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[8]));
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(s_axis_tdata[9]),
        .I1(\inst/m_axis_tdata36_out ),
        .I2(\inst/m_axis_tdata24_out ),
        .O(m_axis_tdata[9]));
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
