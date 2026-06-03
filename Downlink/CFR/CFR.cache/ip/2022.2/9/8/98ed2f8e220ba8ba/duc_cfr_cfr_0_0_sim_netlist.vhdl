-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jun  2 21:06:38 2026
-- Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ duc_cfr_cfr_0_0_sim_netlist.vhdl
-- Design      : duc_cfr_cfr_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "duc_cfr_cfr_0_0,cfr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cfr,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \inst/m_axis_tdata24_out\ : STD_LOGIC;
  signal \inst/m_axis_tdata2__15\ : STD_LOGIC;
  signal \inst/m_axis_tdata31_out\ : STD_LOGIC;
  signal \inst/m_axis_tdata36_out\ : STD_LOGIC;
  signal \m_axis_tdata[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tkeep\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN duc_cfr_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tkeep\(3 downto 0) <= s_axis_tkeep(3 downto 0);
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tkeep(3 downto 0) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tlast <= \^s_axis_tlast\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inst/m_axis_tdata36_out\,
      I1 => s_axis_tdata(0),
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata24_out\,
      I1 => \inst/m_axis_tdata36_out\,
      I2 => s_axis_tdata(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata24_out\,
      I1 => \inst/m_axis_tdata36_out\,
      I2 => s_axis_tdata(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \inst/m_axis_tdata36_out\,
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \inst/m_axis_tdata36_out\,
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata24_out\,
      I1 => \inst/m_axis_tdata36_out\,
      I2 => s_axis_tdata(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \inst/m_axis_tdata36_out\,
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA2A"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[15]_INST_0_i_3_n_0\,
      I4 => s_axis_tdata(14),
      O => \inst/m_axis_tdata36_out\
    );
\m_axis_tdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA888"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[15]_INST_0_i_4_n_0\,
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(12),
      I5 => s_axis_tdata(15),
      O => \inst/m_axis_tdata24_out\
    );
\m_axis_tdata[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F7"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => s_axis_tdata(9),
      I2 => \m_axis_tdata[15]_INST_0_i_5_n_0\,
      I3 => s_axis_tdata(11),
      I4 => s_axis_tdata(10),
      O => \m_axis_tdata[15]_INST_0_i_3_n_0\
    );
\m_axis_tdata[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(9),
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[15]_INST_0_i_6_n_0\,
      I4 => s_axis_tdata(6),
      I5 => s_axis_tdata(8),
      O => \m_axis_tdata[15]_INST_0_i_4_n_0\
    );
\m_axis_tdata[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000777F"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(2),
      I4 => s_axis_tdata(7),
      I5 => s_axis_tdata(6),
      O => \m_axis_tdata[15]_INST_0_i_5_n_0\
    );
\m_axis_tdata[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(2),
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(3),
      I5 => s_axis_tdata(5),
      O => \m_axis_tdata[15]_INST_0_i_6_n_0\
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inst/m_axis_tdata31_out\,
      I1 => s_axis_tdata(16),
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inst/m_axis_tdata31_out\,
      I1 => s_axis_tdata(17),
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \inst/m_axis_tdata2__15\,
      I1 => s_axis_tdata(18),
      I2 => \inst/m_axis_tdata31_out\,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata2__15\,
      I1 => \inst/m_axis_tdata31_out\,
      I2 => s_axis_tdata(19),
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inst/m_axis_tdata36_out\,
      I1 => s_axis_tdata(1),
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \inst/m_axis_tdata31_out\,
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \inst/m_axis_tdata31_out\,
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata2__15\,
      I1 => \inst/m_axis_tdata31_out\,
      I2 => s_axis_tdata(22),
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata2__15\,
      I1 => \inst/m_axis_tdata31_out\,
      I2 => s_axis_tdata(23),
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => \inst/m_axis_tdata31_out\,
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => \inst/m_axis_tdata31_out\,
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata2__15\,
      I1 => \inst/m_axis_tdata31_out\,
      I2 => s_axis_tdata(26),
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata2__15\,
      I1 => \inst/m_axis_tdata31_out\,
      I2 => s_axis_tdata(27),
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => \inst/m_axis_tdata31_out\,
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => \inst/m_axis_tdata31_out\,
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \inst/m_axis_tdata24_out\,
      I1 => s_axis_tdata(2),
      I2 => \inst/m_axis_tdata36_out\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata2__15\,
      I1 => \inst/m_axis_tdata31_out\,
      I2 => s_axis_tdata(30),
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => \inst/m_axis_tdata31_out\,
      I2 => \inst/m_axis_tdata2__15\,
      O => m_axis_tdata(31)
    );
\m_axis_tdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA2A"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => s_axis_tdata(28),
      I2 => s_axis_tdata(29),
      I3 => \m_axis_tdata[31]_INST_0_i_3_n_0\,
      I4 => s_axis_tdata(30),
      O => \inst/m_axis_tdata31_out\
    );
\m_axis_tdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA888"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => s_axis_tdata(29),
      I2 => \m_axis_tdata[31]_INST_0_i_4_n_0\,
      I3 => s_axis_tdata(26),
      I4 => s_axis_tdata(28),
      I5 => s_axis_tdata(31),
      O => \inst/m_axis_tdata2__15\
    );
\m_axis_tdata[31]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F7"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => s_axis_tdata(25),
      I2 => \m_axis_tdata[31]_INST_0_i_5_n_0\,
      I3 => s_axis_tdata(27),
      I4 => s_axis_tdata(26),
      O => \m_axis_tdata[31]_INST_0_i_3_n_0\
    );
\m_axis_tdata[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => s_axis_tdata(25),
      I2 => s_axis_tdata(23),
      I3 => \m_axis_tdata[31]_INST_0_i_6_n_0\,
      I4 => s_axis_tdata(22),
      I5 => s_axis_tdata(24),
      O => \m_axis_tdata[31]_INST_0_i_4_n_0\
    );
\m_axis_tdata[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000777F"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(23),
      I5 => s_axis_tdata(22),
      O => \m_axis_tdata[31]_INST_0_i_5_n_0\
    );
\m_axis_tdata[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(18),
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(21),
      O => \m_axis_tdata[31]_INST_0_i_6_n_0\
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata24_out\,
      I1 => \inst/m_axis_tdata36_out\,
      I2 => s_axis_tdata(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \inst/m_axis_tdata36_out\,
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \inst/m_axis_tdata36_out\,
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata24_out\,
      I1 => \inst/m_axis_tdata36_out\,
      I2 => s_axis_tdata(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \inst/m_axis_tdata24_out\,
      I1 => \inst/m_axis_tdata36_out\,
      I2 => s_axis_tdata(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \inst/m_axis_tdata36_out\,
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \inst/m_axis_tdata36_out\,
      I2 => \inst/m_axis_tdata24_out\,
      O => m_axis_tdata(9)
    );
end STRUCTURE;
