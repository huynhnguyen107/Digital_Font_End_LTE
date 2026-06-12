-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jun 12 09:33:26 2026
-- Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/FPGA/Vivaldo
--               Project/Digital_Font_End_LTE/Downlink/DPD/fpga/dpd.gen/sources_1/bd/duc_cfr_dpd/ip/duc_cfr_dpd_dpd_0_0/duc_cfr_dpd_dpd_0_0_stub.vhdl}
-- Design      : duc_cfr_dpd_dpd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity duc_cfr_dpd_dpd_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    debug0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug4 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end duc_cfr_dpd_dpd_0_0;

architecture stub of duc_cfr_dpd_dpd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tdata[31:0],s_axis_tkeep[3:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,m_axis_tdata[31:0],m_axis_tkeep[3:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,debug0[31:0],debug1[31:0],debug2[31:0],debug3[31:0],debug4[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dpd,Vivado 2022.2";
begin
end;
