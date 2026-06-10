-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jun  9 17:24:39 2026
-- Host        : LAPTOP-CHCSI1R5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ duc_cfr_dpd_halfband_fir_1_0_sim_netlist.vhdl
-- Design      : duc_cfr_dpd_halfband_fir_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_halfband_fir is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_halfband_fir;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_halfband_fir is
  signal \I1[15]_i_1_n_0\ : STD_LOGIC;
  signal \I1[15]_i_2_n_0\ : STD_LOGIC;
  signal \I1_reg_n_0_[0]\ : STD_LOGIC;
  signal \I1_reg_n_0_[10]\ : STD_LOGIC;
  signal \I1_reg_n_0_[11]\ : STD_LOGIC;
  signal \I1_reg_n_0_[12]\ : STD_LOGIC;
  signal \I1_reg_n_0_[13]\ : STD_LOGIC;
  signal \I1_reg_n_0_[14]\ : STD_LOGIC;
  signal \I1_reg_n_0_[15]\ : STD_LOGIC;
  signal \I1_reg_n_0_[1]\ : STD_LOGIC;
  signal \I1_reg_n_0_[2]\ : STD_LOGIC;
  signal \I1_reg_n_0_[3]\ : STD_LOGIC;
  signal \I1_reg_n_0_[4]\ : STD_LOGIC;
  signal \I1_reg_n_0_[5]\ : STD_LOGIC;
  signal \I1_reg_n_0_[6]\ : STD_LOGIC;
  signal \I1_reg_n_0_[7]\ : STD_LOGIC;
  signal \I1_reg_n_0_[8]\ : STD_LOGIC;
  signal \I1_reg_n_0_[9]\ : STD_LOGIC;
  signal \I2_reg_n_0_[0]\ : STD_LOGIC;
  signal \I2_reg_n_0_[10]\ : STD_LOGIC;
  signal \I2_reg_n_0_[11]\ : STD_LOGIC;
  signal \I2_reg_n_0_[12]\ : STD_LOGIC;
  signal \I2_reg_n_0_[13]\ : STD_LOGIC;
  signal \I2_reg_n_0_[14]\ : STD_LOGIC;
  signal \I2_reg_n_0_[1]\ : STD_LOGIC;
  signal \I2_reg_n_0_[2]\ : STD_LOGIC;
  signal \I2_reg_n_0_[3]\ : STD_LOGIC;
  signal \I2_reg_n_0_[4]\ : STD_LOGIC;
  signal \I2_reg_n_0_[5]\ : STD_LOGIC;
  signal \I2_reg_n_0_[6]\ : STD_LOGIC;
  signal \I2_reg_n_0_[7]\ : STD_LOGIC;
  signal \I2_reg_n_0_[8]\ : STD_LOGIC;
  signal \I2_reg_n_0_[9]\ : STD_LOGIC;
  signal \I4_reg_n_0_[0]\ : STD_LOGIC;
  signal \I4_reg_n_0_[10]\ : STD_LOGIC;
  signal \I4_reg_n_0_[11]\ : STD_LOGIC;
  signal \I4_reg_n_0_[12]\ : STD_LOGIC;
  signal \I4_reg_n_0_[13]\ : STD_LOGIC;
  signal \I4_reg_n_0_[14]\ : STD_LOGIC;
  signal \I4_reg_n_0_[1]\ : STD_LOGIC;
  signal \I4_reg_n_0_[2]\ : STD_LOGIC;
  signal \I4_reg_n_0_[3]\ : STD_LOGIC;
  signal \I4_reg_n_0_[4]\ : STD_LOGIC;
  signal \I4_reg_n_0_[5]\ : STD_LOGIC;
  signal \I4_reg_n_0_[6]\ : STD_LOGIC;
  signal \I4_reg_n_0_[7]\ : STD_LOGIC;
  signal \I4_reg_n_0_[8]\ : STD_LOGIC;
  signal \I4_reg_n_0_[9]\ : STD_LOGIC;
  signal I5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal I6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Q1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Q2_reg_n_0_[0]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[10]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[11]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[12]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[13]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[14]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[1]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[2]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[3]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[4]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[5]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[6]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[7]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[8]\ : STD_LOGIC;
  signal \Q2_reg_n_0_[9]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[0]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[10]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[11]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[12]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[13]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[14]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[1]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[2]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[3]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[4]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[5]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[6]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[7]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[8]\ : STD_LOGIC;
  signal \Q4_reg_n_0_[9]\ : STD_LOGIC;
  signal Q5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Q6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal total_I20 : STD_LOGIC;
  signal total_I3 : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal total_I50 : STD_LOGIC;
  signal \total_I__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_1\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_10\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_11\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_12\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_13\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_14\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_15\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_2\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_3\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_4\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_5\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_6\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_7\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_8\ : STD_LOGIC;
  signal \total_I__0_carry__0_n_9\ : STD_LOGIC;
  signal \total_I__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \total_I__0_carry__1_n_15\ : STD_LOGIC;
  signal \total_I__0_carry__1_n_6\ : STD_LOGIC;
  signal \total_I__0_carry_i_10_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_13_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_14_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_15_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_n_0\ : STD_LOGIC;
  signal \total_I__0_carry_n_1\ : STD_LOGIC;
  signal \total_I__0_carry_n_10\ : STD_LOGIC;
  signal \total_I__0_carry_n_11\ : STD_LOGIC;
  signal \total_I__0_carry_n_12\ : STD_LOGIC;
  signal \total_I__0_carry_n_13\ : STD_LOGIC;
  signal \total_I__0_carry_n_14\ : STD_LOGIC;
  signal \total_I__0_carry_n_15\ : STD_LOGIC;
  signal \total_I__0_carry_n_2\ : STD_LOGIC;
  signal \total_I__0_carry_n_3\ : STD_LOGIC;
  signal \total_I__0_carry_n_4\ : STD_LOGIC;
  signal \total_I__0_carry_n_5\ : STD_LOGIC;
  signal \total_I__0_carry_n_6\ : STD_LOGIC;
  signal \total_I__0_carry_n_7\ : STD_LOGIC;
  signal \total_I__0_carry_n_8\ : STD_LOGIC;
  signal \total_I__0_carry_n_9\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_1\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_2\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_3\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_4\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_5\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_6\ : STD_LOGIC;
  signal \total_I__105_carry__0_n_7\ : STD_LOGIC;
  signal \total_I__105_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \total_I__105_carry__1_n_5\ : STD_LOGIC;
  signal \total_I__105_carry__1_n_6\ : STD_LOGIC;
  signal \total_I__105_carry__1_n_7\ : STD_LOGIC;
  signal \total_I__105_carry_i_10_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_11_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_12_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_13_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_1_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_2_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_3_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_4_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_5_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_6_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_7_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_8_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_i_9_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_n_0\ : STD_LOGIC;
  signal \total_I__105_carry_n_1\ : STD_LOGIC;
  signal \total_I__105_carry_n_2\ : STD_LOGIC;
  signal \total_I__105_carry_n_3\ : STD_LOGIC;
  signal \total_I__105_carry_n_4\ : STD_LOGIC;
  signal \total_I__105_carry_n_5\ : STD_LOGIC;
  signal \total_I__105_carry_n_6\ : STD_LOGIC;
  signal \total_I__105_carry_n_7\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_1\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_10\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_11\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_12\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_13\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_14\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_15\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_2\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_3\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_4\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_5\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_6\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_7\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_8\ : STD_LOGIC;
  signal \total_I__53_carry__0_n_9\ : STD_LOGIC;
  signal \total_I__53_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \total_I__53_carry__1_n_14\ : STD_LOGIC;
  signal \total_I__53_carry__1_n_15\ : STD_LOGIC;
  signal \total_I__53_carry__1_n_7\ : STD_LOGIC;
  signal \total_I__53_carry_i_10_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_11_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_12_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_1_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_2_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_3_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_4_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_5_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_6_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_7_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_8_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_i_9_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_n_0\ : STD_LOGIC;
  signal \total_I__53_carry_n_1\ : STD_LOGIC;
  signal \total_I__53_carry_n_10\ : STD_LOGIC;
  signal \total_I__53_carry_n_11\ : STD_LOGIC;
  signal \total_I__53_carry_n_12\ : STD_LOGIC;
  signal \total_I__53_carry_n_13\ : STD_LOGIC;
  signal \total_I__53_carry_n_14\ : STD_LOGIC;
  signal \total_I__53_carry_n_15\ : STD_LOGIC;
  signal \total_I__53_carry_n_2\ : STD_LOGIC;
  signal \total_I__53_carry_n_3\ : STD_LOGIC;
  signal \total_I__53_carry_n_4\ : STD_LOGIC;
  signal \total_I__53_carry_n_5\ : STD_LOGIC;
  signal \total_I__53_carry_n_6\ : STD_LOGIC;
  signal \total_I__53_carry_n_7\ : STD_LOGIC;
  signal \total_I__53_carry_n_8\ : STD_LOGIC;
  signal \total_I__53_carry_n_9\ : STD_LOGIC;
  signal total_Q20 : STD_LOGIC;
  signal total_Q3 : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal total_Q50 : STD_LOGIC;
  signal \total_Q__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_1\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_10\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_11\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_12\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_13\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_14\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_15\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_2\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_3\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_4\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_5\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_6\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_7\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_8\ : STD_LOGIC;
  signal \total_Q__0_carry__0_n_9\ : STD_LOGIC;
  signal \total_Q__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry__1_n_15\ : STD_LOGIC;
  signal \total_Q__0_carry__1_n_6\ : STD_LOGIC;
  signal \total_Q__0_carry_i_10_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_12_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_13_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_14_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_15_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_i_9_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_n_0\ : STD_LOGIC;
  signal \total_Q__0_carry_n_1\ : STD_LOGIC;
  signal \total_Q__0_carry_n_10\ : STD_LOGIC;
  signal \total_Q__0_carry_n_11\ : STD_LOGIC;
  signal \total_Q__0_carry_n_12\ : STD_LOGIC;
  signal \total_Q__0_carry_n_13\ : STD_LOGIC;
  signal \total_Q__0_carry_n_14\ : STD_LOGIC;
  signal \total_Q__0_carry_n_15\ : STD_LOGIC;
  signal \total_Q__0_carry_n_2\ : STD_LOGIC;
  signal \total_Q__0_carry_n_3\ : STD_LOGIC;
  signal \total_Q__0_carry_n_4\ : STD_LOGIC;
  signal \total_Q__0_carry_n_5\ : STD_LOGIC;
  signal \total_Q__0_carry_n_6\ : STD_LOGIC;
  signal \total_Q__0_carry_n_7\ : STD_LOGIC;
  signal \total_Q__0_carry_n_8\ : STD_LOGIC;
  signal \total_Q__0_carry_n_9\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_1\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_2\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_3\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_4\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_5\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_6\ : STD_LOGIC;
  signal \total_Q__105_carry__0_n_7\ : STD_LOGIC;
  signal \total_Q__105_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry__1_n_5\ : STD_LOGIC;
  signal \total_Q__105_carry__1_n_6\ : STD_LOGIC;
  signal \total_Q__105_carry__1_n_7\ : STD_LOGIC;
  signal \total_Q__105_carry_i_10_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_11_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_12_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_13_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_4_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_5_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_6_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_7_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_8_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_i_9_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_n_0\ : STD_LOGIC;
  signal \total_Q__105_carry_n_1\ : STD_LOGIC;
  signal \total_Q__105_carry_n_2\ : STD_LOGIC;
  signal \total_Q__105_carry_n_3\ : STD_LOGIC;
  signal \total_Q__105_carry_n_4\ : STD_LOGIC;
  signal \total_Q__105_carry_n_5\ : STD_LOGIC;
  signal \total_Q__105_carry_n_6\ : STD_LOGIC;
  signal \total_Q__105_carry_n_7\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_1\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_10\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_11\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_12\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_13\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_14\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_15\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_2\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_3\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_4\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_5\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_6\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_7\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_8\ : STD_LOGIC;
  signal \total_Q__53_carry__0_n_9\ : STD_LOGIC;
  signal \total_Q__53_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry__1_n_14\ : STD_LOGIC;
  signal \total_Q__53_carry__1_n_15\ : STD_LOGIC;
  signal \total_Q__53_carry__1_n_7\ : STD_LOGIC;
  signal \total_Q__53_carry_i_10_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_11_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_12_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_1_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_2_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_3_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_4_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_5_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_6_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_7_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_8_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_i_9_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_n_0\ : STD_LOGIC;
  signal \total_Q__53_carry_n_1\ : STD_LOGIC;
  signal \total_Q__53_carry_n_10\ : STD_LOGIC;
  signal \total_Q__53_carry_n_11\ : STD_LOGIC;
  signal \total_Q__53_carry_n_12\ : STD_LOGIC;
  signal \total_Q__53_carry_n_13\ : STD_LOGIC;
  signal \total_Q__53_carry_n_14\ : STD_LOGIC;
  signal \total_Q__53_carry_n_15\ : STD_LOGIC;
  signal \total_Q__53_carry_n_2\ : STD_LOGIC;
  signal \total_Q__53_carry_n_3\ : STD_LOGIC;
  signal \total_Q__53_carry_n_4\ : STD_LOGIC;
  signal \total_Q__53_carry_n_5\ : STD_LOGIC;
  signal \total_Q__53_carry_n_6\ : STD_LOGIC;
  signal \total_Q__53_carry_n_7\ : STD_LOGIC;
  signal \total_Q__53_carry_n_8\ : STD_LOGIC;
  signal \total_Q__53_carry_n_9\ : STD_LOGIC;
  signal \NLW_total_I__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_total_I__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_total_I__105_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_total_I__105_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_total_I__105_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_total_I__53_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_total_I__53_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_total_Q__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_total_Q__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_total_Q__105_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_total_Q__105_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_total_Q__105_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_total_Q__53_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_total_Q__53_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute HLUTNM : string;
  attribute HLUTNM of \total_I__0_carry__0_i_11\ : label is "lutpair12";
  attribute HLUTNM of \total_I__0_carry__0_i_12\ : label is "lutpair11";
  attribute HLUTNM of \total_I__0_carry__0_i_13\ : label is "lutpair10";
  attribute HLUTNM of \total_I__0_carry__0_i_14\ : label is "lutpair9";
  attribute HLUTNM of \total_I__0_carry__0_i_15\ : label is "lutpair8";
  attribute HLUTNM of \total_I__0_carry__0_i_16\ : label is "lutpair7";
  attribute HLUTNM of \total_I__0_carry__0_i_2\ : label is "lutpair12";
  attribute HLUTNM of \total_I__0_carry__0_i_3\ : label is "lutpair11";
  attribute HLUTNM of \total_I__0_carry__0_i_4\ : label is "lutpair10";
  attribute HLUTNM of \total_I__0_carry__0_i_5\ : label is "lutpair9";
  attribute HLUTNM of \total_I__0_carry__0_i_6\ : label is "lutpair8";
  attribute HLUTNM of \total_I__0_carry__0_i_7\ : label is "lutpair7";
  attribute HLUTNM of \total_I__0_carry__0_i_8\ : label is "lutpair6";
  attribute HLUTNM of \total_I__0_carry_i_1\ : label is "lutpair5";
  attribute HLUTNM of \total_I__0_carry_i_10\ : label is "lutpair4";
  attribute HLUTNM of \total_I__0_carry_i_11\ : label is "lutpair3";
  attribute HLUTNM of \total_I__0_carry_i_12\ : label is "lutpair2";
  attribute HLUTNM of \total_I__0_carry_i_13\ : label is "lutpair1";
  attribute HLUTNM of \total_I__0_carry_i_14\ : label is "lutpair0";
  attribute HLUTNM of \total_I__0_carry_i_15\ : label is "lutpair72";
  attribute HLUTNM of \total_I__0_carry_i_2\ : label is "lutpair4";
  attribute HLUTNM of \total_I__0_carry_i_3\ : label is "lutpair3";
  attribute HLUTNM of \total_I__0_carry_i_4\ : label is "lutpair2";
  attribute HLUTNM of \total_I__0_carry_i_5\ : label is "lutpair1";
  attribute HLUTNM of \total_I__0_carry_i_6\ : label is "lutpair0";
  attribute HLUTNM of \total_I__0_carry_i_7\ : label is "lutpair72";
  attribute HLUTNM of \total_I__0_carry_i_8\ : label is "lutpair6";
  attribute HLUTNM of \total_I__0_carry_i_9\ : label is "lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \total_I__105_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \total_I__105_carry__0\ : label is 35;
  attribute HLUTNM of \total_I__105_carry__0_i_1\ : label is "lutpair33";
  attribute HLUTNM of \total_I__105_carry__0_i_10\ : label is "lutpair33";
  attribute HLUTNM of \total_I__105_carry__0_i_11\ : label is "lutpair32";
  attribute HLUTNM of \total_I__105_carry__0_i_12\ : label is "lutpair31";
  attribute HLUTNM of \total_I__105_carry__0_i_13\ : label is "lutpair30";
  attribute HLUTNM of \total_I__105_carry__0_i_14\ : label is "lutpair29";
  attribute HLUTNM of \total_I__105_carry__0_i_15\ : label is "lutpair28";
  attribute HLUTNM of \total_I__105_carry__0_i_16\ : label is "lutpair27";
  attribute HLUTNM of \total_I__105_carry__0_i_2\ : label is "lutpair32";
  attribute HLUTNM of \total_I__105_carry__0_i_3\ : label is "lutpair31";
  attribute HLUTNM of \total_I__105_carry__0_i_4\ : label is "lutpair30";
  attribute HLUTNM of \total_I__105_carry__0_i_5\ : label is "lutpair29";
  attribute HLUTNM of \total_I__105_carry__0_i_6\ : label is "lutpair28";
  attribute HLUTNM of \total_I__105_carry__0_i_7\ : label is "lutpair27";
  attribute HLUTNM of \total_I__105_carry__0_i_8\ : label is "lutpair26";
  attribute HLUTNM of \total_I__105_carry__0_i_9\ : label is "lutpair34";
  attribute ADDER_THRESHOLD of \total_I__105_carry__1\ : label is 35;
  attribute HLUTNM of \total_I__105_carry__1_i_2\ : label is "lutpair35";
  attribute HLUTNM of \total_I__105_carry__1_i_3\ : label is "lutpair34";
  attribute HLUTNM of \total_I__105_carry__1_i_7\ : label is "lutpair35";
  attribute HLUTNM of \total_I__105_carry_i_1\ : label is "lutpair25";
  attribute HLUTNM of \total_I__105_carry_i_10\ : label is "lutpair22";
  attribute HLUTNM of \total_I__105_carry_i_2\ : label is "lutpair24";
  attribute HLUTNM of \total_I__105_carry_i_3\ : label is "lutpair23";
  attribute HLUTNM of \total_I__105_carry_i_4\ : label is "lutpair22";
  attribute HLUTNM of \total_I__105_carry_i_6\ : label is "lutpair26";
  attribute HLUTNM of \total_I__105_carry_i_7\ : label is "lutpair25";
  attribute HLUTNM of \total_I__105_carry_i_8\ : label is "lutpair24";
  attribute HLUTNM of \total_I__105_carry_i_9\ : label is "lutpair23";
  attribute ADDER_THRESHOLD of \total_I__53_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \total_I__53_carry__0\ : label is 35;
  attribute HLUTNM of \total_I__53_carry__0_i_13\ : label is "lutpair21";
  attribute HLUTNM of \total_I__53_carry__0_i_14\ : label is "lutpair20";
  attribute HLUTNM of \total_I__53_carry__0_i_15\ : label is "lutpair19";
  attribute HLUTNM of \total_I__53_carry__0_i_16\ : label is "lutpair18";
  attribute HLUTNM of \total_I__53_carry__0_i_4\ : label is "lutpair21";
  attribute HLUTNM of \total_I__53_carry__0_i_5\ : label is "lutpair20";
  attribute HLUTNM of \total_I__53_carry__0_i_6\ : label is "lutpair19";
  attribute HLUTNM of \total_I__53_carry__0_i_7\ : label is "lutpair18";
  attribute HLUTNM of \total_I__53_carry__0_i_8\ : label is "lutpair17";
  attribute ADDER_THRESHOLD of \total_I__53_carry__1\ : label is 35;
  attribute HLUTNM of \total_I__53_carry_i_1\ : label is "lutpair16";
  attribute HLUTNM of \total_I__53_carry_i_10\ : label is "lutpair13";
  attribute HLUTNM of \total_I__53_carry_i_2\ : label is "lutpair15";
  attribute HLUTNM of \total_I__53_carry_i_3\ : label is "lutpair14";
  attribute HLUTNM of \total_I__53_carry_i_4\ : label is "lutpair13";
  attribute HLUTNM of \total_I__53_carry_i_6\ : label is "lutpair17";
  attribute HLUTNM of \total_I__53_carry_i_7\ : label is "lutpair16";
  attribute HLUTNM of \total_I__53_carry_i_8\ : label is "lutpair15";
  attribute HLUTNM of \total_I__53_carry_i_9\ : label is "lutpair14";
  attribute HLUTNM of \total_Q__0_carry__0_i_11\ : label is "lutpair48";
  attribute HLUTNM of \total_Q__0_carry__0_i_12\ : label is "lutpair47";
  attribute HLUTNM of \total_Q__0_carry__0_i_13\ : label is "lutpair46";
  attribute HLUTNM of \total_Q__0_carry__0_i_14\ : label is "lutpair45";
  attribute HLUTNM of \total_Q__0_carry__0_i_15\ : label is "lutpair44";
  attribute HLUTNM of \total_Q__0_carry__0_i_16\ : label is "lutpair43";
  attribute HLUTNM of \total_Q__0_carry__0_i_2\ : label is "lutpair48";
  attribute HLUTNM of \total_Q__0_carry__0_i_3\ : label is "lutpair47";
  attribute HLUTNM of \total_Q__0_carry__0_i_4\ : label is "lutpair46";
  attribute HLUTNM of \total_Q__0_carry__0_i_5\ : label is "lutpair45";
  attribute HLUTNM of \total_Q__0_carry__0_i_6\ : label is "lutpair44";
  attribute HLUTNM of \total_Q__0_carry__0_i_7\ : label is "lutpair43";
  attribute HLUTNM of \total_Q__0_carry__0_i_8\ : label is "lutpair42";
  attribute HLUTNM of \total_Q__0_carry_i_1\ : label is "lutpair41";
  attribute HLUTNM of \total_Q__0_carry_i_10\ : label is "lutpair40";
  attribute HLUTNM of \total_Q__0_carry_i_11\ : label is "lutpair39";
  attribute HLUTNM of \total_Q__0_carry_i_12\ : label is "lutpair38";
  attribute HLUTNM of \total_Q__0_carry_i_13\ : label is "lutpair37";
  attribute HLUTNM of \total_Q__0_carry_i_14\ : label is "lutpair36";
  attribute HLUTNM of \total_Q__0_carry_i_15\ : label is "lutpair73";
  attribute HLUTNM of \total_Q__0_carry_i_2\ : label is "lutpair40";
  attribute HLUTNM of \total_Q__0_carry_i_3\ : label is "lutpair39";
  attribute HLUTNM of \total_Q__0_carry_i_4\ : label is "lutpair38";
  attribute HLUTNM of \total_Q__0_carry_i_5\ : label is "lutpair37";
  attribute HLUTNM of \total_Q__0_carry_i_6\ : label is "lutpair36";
  attribute HLUTNM of \total_Q__0_carry_i_7\ : label is "lutpair73";
  attribute HLUTNM of \total_Q__0_carry_i_8\ : label is "lutpair42";
  attribute HLUTNM of \total_Q__0_carry_i_9\ : label is "lutpair41";
  attribute ADDER_THRESHOLD of \total_Q__105_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \total_Q__105_carry__0\ : label is 35;
  attribute HLUTNM of \total_Q__105_carry__0_i_1\ : label is "lutpair69";
  attribute HLUTNM of \total_Q__105_carry__0_i_10\ : label is "lutpair69";
  attribute HLUTNM of \total_Q__105_carry__0_i_11\ : label is "lutpair68";
  attribute HLUTNM of \total_Q__105_carry__0_i_12\ : label is "lutpair67";
  attribute HLUTNM of \total_Q__105_carry__0_i_13\ : label is "lutpair66";
  attribute HLUTNM of \total_Q__105_carry__0_i_14\ : label is "lutpair65";
  attribute HLUTNM of \total_Q__105_carry__0_i_15\ : label is "lutpair64";
  attribute HLUTNM of \total_Q__105_carry__0_i_16\ : label is "lutpair63";
  attribute HLUTNM of \total_Q__105_carry__0_i_2\ : label is "lutpair68";
  attribute HLUTNM of \total_Q__105_carry__0_i_3\ : label is "lutpair67";
  attribute HLUTNM of \total_Q__105_carry__0_i_4\ : label is "lutpair66";
  attribute HLUTNM of \total_Q__105_carry__0_i_5\ : label is "lutpair65";
  attribute HLUTNM of \total_Q__105_carry__0_i_6\ : label is "lutpair64";
  attribute HLUTNM of \total_Q__105_carry__0_i_7\ : label is "lutpair63";
  attribute HLUTNM of \total_Q__105_carry__0_i_8\ : label is "lutpair62";
  attribute HLUTNM of \total_Q__105_carry__0_i_9\ : label is "lutpair70";
  attribute ADDER_THRESHOLD of \total_Q__105_carry__1\ : label is 35;
  attribute HLUTNM of \total_Q__105_carry__1_i_2\ : label is "lutpair71";
  attribute HLUTNM of \total_Q__105_carry__1_i_3\ : label is "lutpair70";
  attribute HLUTNM of \total_Q__105_carry__1_i_7\ : label is "lutpair71";
  attribute HLUTNM of \total_Q__105_carry_i_1\ : label is "lutpair61";
  attribute HLUTNM of \total_Q__105_carry_i_10\ : label is "lutpair58";
  attribute HLUTNM of \total_Q__105_carry_i_2\ : label is "lutpair60";
  attribute HLUTNM of \total_Q__105_carry_i_3\ : label is "lutpair59";
  attribute HLUTNM of \total_Q__105_carry_i_4\ : label is "lutpair58";
  attribute HLUTNM of \total_Q__105_carry_i_6\ : label is "lutpair62";
  attribute HLUTNM of \total_Q__105_carry_i_7\ : label is "lutpair61";
  attribute HLUTNM of \total_Q__105_carry_i_8\ : label is "lutpair60";
  attribute HLUTNM of \total_Q__105_carry_i_9\ : label is "lutpair59";
  attribute ADDER_THRESHOLD of \total_Q__53_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \total_Q__53_carry__0\ : label is 35;
  attribute HLUTNM of \total_Q__53_carry__0_i_13\ : label is "lutpair57";
  attribute HLUTNM of \total_Q__53_carry__0_i_14\ : label is "lutpair56";
  attribute HLUTNM of \total_Q__53_carry__0_i_15\ : label is "lutpair55";
  attribute HLUTNM of \total_Q__53_carry__0_i_16\ : label is "lutpair54";
  attribute HLUTNM of \total_Q__53_carry__0_i_4\ : label is "lutpair57";
  attribute HLUTNM of \total_Q__53_carry__0_i_5\ : label is "lutpair56";
  attribute HLUTNM of \total_Q__53_carry__0_i_6\ : label is "lutpair55";
  attribute HLUTNM of \total_Q__53_carry__0_i_7\ : label is "lutpair54";
  attribute HLUTNM of \total_Q__53_carry__0_i_8\ : label is "lutpair53";
  attribute ADDER_THRESHOLD of \total_Q__53_carry__1\ : label is 35;
  attribute HLUTNM of \total_Q__53_carry_i_1\ : label is "lutpair52";
  attribute HLUTNM of \total_Q__53_carry_i_10\ : label is "lutpair49";
  attribute HLUTNM of \total_Q__53_carry_i_2\ : label is "lutpair51";
  attribute HLUTNM of \total_Q__53_carry_i_3\ : label is "lutpair50";
  attribute HLUTNM of \total_Q__53_carry_i_4\ : label is "lutpair49";
  attribute HLUTNM of \total_Q__53_carry_i_6\ : label is "lutpair53";
  attribute HLUTNM of \total_Q__53_carry_i_7\ : label is "lutpair52";
  attribute HLUTNM of \total_Q__53_carry_i_8\ : label is "lutpair51";
  attribute HLUTNM of \total_Q__53_carry_i_9\ : label is "lutpair50";
begin
\I1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => s_axis_tlast,
      I3 => aresetn,
      O => \I1[15]_i_1_n_0\
    );
\I1[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => \I1[15]_i_2_n_0\
    );
\I1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => \I1_reg_n_0_[0]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(10),
      Q => \I1_reg_n_0_[10]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(11),
      Q => \I1_reg_n_0_[11]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(12),
      Q => \I1_reg_n_0_[12]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(13),
      Q => \I1_reg_n_0_[13]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(14),
      Q => \I1_reg_n_0_[14]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(15),
      Q => \I1_reg_n_0_[15]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => \I1_reg_n_0_[1]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(2),
      Q => \I1_reg_n_0_[2]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(3),
      Q => \I1_reg_n_0_[3]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(4),
      Q => \I1_reg_n_0_[4]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(5),
      Q => \I1_reg_n_0_[5]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(6),
      Q => \I1_reg_n_0_[6]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(7),
      Q => \I1_reg_n_0_[7]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(8),
      Q => \I1_reg_n_0_[8]\,
      R => \I1[15]_i_1_n_0\
    );
\I1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(9),
      Q => \I1_reg_n_0_[9]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[0]\,
      Q => \I2_reg_n_0_[0]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[10]\,
      Q => \I2_reg_n_0_[10]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[11]\,
      Q => \I2_reg_n_0_[11]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[12]\,
      Q => \I2_reg_n_0_[12]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[13]\,
      Q => \I2_reg_n_0_[13]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[14]\,
      Q => \I2_reg_n_0_[14]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[15]\,
      Q => total_I50,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[1]\,
      Q => \I2_reg_n_0_[1]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[2]\,
      Q => \I2_reg_n_0_[2]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[3]\,
      Q => \I2_reg_n_0_[3]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[4]\,
      Q => \I2_reg_n_0_[4]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[5]\,
      Q => \I2_reg_n_0_[5]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[6]\,
      Q => \I2_reg_n_0_[6]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[7]\,
      Q => \I2_reg_n_0_[7]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[8]\,
      Q => \I2_reg_n_0_[8]\,
      R => \I1[15]_i_1_n_0\
    );
\I2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I1_reg_n_0_[9]\,
      Q => \I2_reg_n_0_[9]\,
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[0]\,
      Q => total_I3(4),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[10]\,
      Q => total_I3(14),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[11]\,
      Q => total_I3(15),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[12]\,
      Q => total_I3(16),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[13]\,
      Q => total_I3(17),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[14]\,
      Q => total_I3(18),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I50,
      Q => total_I3(19),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[1]\,
      Q => total_I3(5),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[2]\,
      Q => total_I3(6),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[3]\,
      Q => total_I3(7),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[4]\,
      Q => total_I3(8),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[5]\,
      Q => total_I3(9),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[6]\,
      Q => total_I3(10),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[7]\,
      Q => total_I3(11),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[8]\,
      Q => total_I3(12),
      R => \I1[15]_i_1_n_0\
    );
\I3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I2_reg_n_0_[9]\,
      Q => total_I3(13),
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(4),
      Q => \I4_reg_n_0_[0]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(14),
      Q => \I4_reg_n_0_[10]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(15),
      Q => \I4_reg_n_0_[11]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(16),
      Q => \I4_reg_n_0_[12]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(17),
      Q => \I4_reg_n_0_[13]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(18),
      Q => \I4_reg_n_0_[14]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(19),
      Q => total_I20,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(5),
      Q => \I4_reg_n_0_[1]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(6),
      Q => \I4_reg_n_0_[2]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(7),
      Q => \I4_reg_n_0_[3]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(8),
      Q => \I4_reg_n_0_[4]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(9),
      Q => \I4_reg_n_0_[5]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(10),
      Q => \I4_reg_n_0_[6]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(11),
      Q => \I4_reg_n_0_[7]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(12),
      Q => \I4_reg_n_0_[8]\,
      R => \I1[15]_i_1_n_0\
    );
\I4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I3(13),
      Q => \I4_reg_n_0_[9]\,
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[0]\,
      Q => I5(0),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[10]\,
      Q => I5(10),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[11]\,
      Q => I5(11),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[12]\,
      Q => I5(12),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[13]\,
      Q => I5(13),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[14]\,
      Q => I5(14),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_I20,
      Q => I5(15),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[1]\,
      Q => I5(1),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[2]\,
      Q => I5(2),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[3]\,
      Q => I5(3),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[4]\,
      Q => I5(4),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[5]\,
      Q => I5(5),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[6]\,
      Q => I5(6),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[7]\,
      Q => I5(7),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[8]\,
      Q => I5(8),
      R => \I1[15]_i_1_n_0\
    );
\I5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \I4_reg_n_0_[9]\,
      Q => I5(9),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(0),
      Q => I6(0),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(10),
      Q => I6(10),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(11),
      Q => I6(11),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(12),
      Q => I6(12),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(13),
      Q => I6(13),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(14),
      Q => I6(14),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(15),
      Q => I6(15),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(1),
      Q => I6(1),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(2),
      Q => I6(2),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(3),
      Q => I6(3),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(4),
      Q => I6(4),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(5),
      Q => I6(5),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(6),
      Q => I6(6),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(7),
      Q => I6(7),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(8),
      Q => I6(8),
      R => \I1[15]_i_1_n_0\
    );
\I6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => I5(9),
      Q => I6(9),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(16),
      Q => Q1(0),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(26),
      Q => Q1(10),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(27),
      Q => Q1(11),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(28),
      Q => Q1(12),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(29),
      Q => Q1(13),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(30),
      Q => Q1(14),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(31),
      Q => Q1(15),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(17),
      Q => Q1(1),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(18),
      Q => Q1(2),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(19),
      Q => Q1(3),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(20),
      Q => Q1(4),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(21),
      Q => Q1(5),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(22),
      Q => Q1(6),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(23),
      Q => Q1(7),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(24),
      Q => Q1(8),
      R => \I1[15]_i_1_n_0\
    );
\Q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => s_axis_tdata(25),
      Q => Q1(9),
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(0),
      Q => \Q2_reg_n_0_[0]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(10),
      Q => \Q2_reg_n_0_[10]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(11),
      Q => \Q2_reg_n_0_[11]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(12),
      Q => \Q2_reg_n_0_[12]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(13),
      Q => \Q2_reg_n_0_[13]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(14),
      Q => \Q2_reg_n_0_[14]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(15),
      Q => total_Q50,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(1),
      Q => \Q2_reg_n_0_[1]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(2),
      Q => \Q2_reg_n_0_[2]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(3),
      Q => \Q2_reg_n_0_[3]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(4),
      Q => \Q2_reg_n_0_[4]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(5),
      Q => \Q2_reg_n_0_[5]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(6),
      Q => \Q2_reg_n_0_[6]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(7),
      Q => \Q2_reg_n_0_[7]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(8),
      Q => \Q2_reg_n_0_[8]\,
      R => \I1[15]_i_1_n_0\
    );
\Q2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q1(9),
      Q => \Q2_reg_n_0_[9]\,
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[0]\,
      Q => total_Q3(4),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[10]\,
      Q => total_Q3(14),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[11]\,
      Q => total_Q3(15),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[12]\,
      Q => total_Q3(16),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[13]\,
      Q => total_Q3(17),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[14]\,
      Q => total_Q3(18),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q50,
      Q => total_Q3(19),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[1]\,
      Q => total_Q3(5),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[2]\,
      Q => total_Q3(6),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[3]\,
      Q => total_Q3(7),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[4]\,
      Q => total_Q3(8),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[5]\,
      Q => total_Q3(9),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[6]\,
      Q => total_Q3(10),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[7]\,
      Q => total_Q3(11),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[8]\,
      Q => total_Q3(12),
      R => \I1[15]_i_1_n_0\
    );
\Q3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q2_reg_n_0_[9]\,
      Q => total_Q3(13),
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(4),
      Q => \Q4_reg_n_0_[0]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(14),
      Q => \Q4_reg_n_0_[10]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(15),
      Q => \Q4_reg_n_0_[11]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(16),
      Q => \Q4_reg_n_0_[12]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(17),
      Q => \Q4_reg_n_0_[13]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(18),
      Q => \Q4_reg_n_0_[14]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(19),
      Q => total_Q20,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(5),
      Q => \Q4_reg_n_0_[1]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(6),
      Q => \Q4_reg_n_0_[2]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(7),
      Q => \Q4_reg_n_0_[3]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(8),
      Q => \Q4_reg_n_0_[4]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(9),
      Q => \Q4_reg_n_0_[5]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(10),
      Q => \Q4_reg_n_0_[6]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(11),
      Q => \Q4_reg_n_0_[7]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(12),
      Q => \Q4_reg_n_0_[8]\,
      R => \I1[15]_i_1_n_0\
    );
\Q4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q3(13),
      Q => \Q4_reg_n_0_[9]\,
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[0]\,
      Q => Q5(0),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[10]\,
      Q => Q5(10),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[11]\,
      Q => Q5(11),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[12]\,
      Q => Q5(12),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[13]\,
      Q => Q5(13),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[14]\,
      Q => Q5(14),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => total_Q20,
      Q => Q5(15),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[1]\,
      Q => Q5(1),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[2]\,
      Q => Q5(2),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[3]\,
      Q => Q5(3),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[4]\,
      Q => Q5(4),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[5]\,
      Q => Q5(5),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[6]\,
      Q => Q5(6),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[7]\,
      Q => Q5(7),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[8]\,
      Q => Q5(8),
      R => \I1[15]_i_1_n_0\
    );
\Q5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => \Q4_reg_n_0_[9]\,
      Q => Q5(9),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(0),
      Q => Q6(0),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(10),
      Q => Q6(10),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(11),
      Q => Q6(11),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(12),
      Q => Q6(12),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(13),
      Q => Q6(13),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(14),
      Q => Q6(14),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(15),
      Q => Q6(15),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(1),
      Q => Q6(1),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(2),
      Q => Q6(2),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(3),
      Q => Q6(3),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(4),
      Q => Q6(4),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(5),
      Q => Q6(5),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(6),
      Q => Q6(6),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(7),
      Q => Q6(7),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(8),
      Q => Q6(8),
      R => \I1[15]_i_1_n_0\
    );
\Q6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \I1[15]_i_2_n_0\,
      D => Q5(9),
      Q => Q6(9),
      R => \I1[15]_i_1_n_0\
    );
\total_I__0_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \total_I__0_carry_n_0\,
      CO(6) => \total_I__0_carry_n_1\,
      CO(5) => \total_I__0_carry_n_2\,
      CO(4) => \total_I__0_carry_n_3\,
      CO(3) => \total_I__0_carry_n_4\,
      CO(2) => \total_I__0_carry_n_5\,
      CO(1) => \total_I__0_carry_n_6\,
      CO(0) => \total_I__0_carry_n_7\,
      DI(7) => \total_I__0_carry_i_1_n_0\,
      DI(6) => \total_I__0_carry_i_2_n_0\,
      DI(5) => \total_I__0_carry_i_3_n_0\,
      DI(4) => \total_I__0_carry_i_4_n_0\,
      DI(3) => \total_I__0_carry_i_5_n_0\,
      DI(2) => \total_I__0_carry_i_6_n_0\,
      DI(1) => \total_I__0_carry_i_7_n_0\,
      DI(0) => '0',
      O(7) => \total_I__0_carry_n_8\,
      O(6) => \total_I__0_carry_n_9\,
      O(5) => \total_I__0_carry_n_10\,
      O(4) => \total_I__0_carry_n_11\,
      O(3) => \total_I__0_carry_n_12\,
      O(2) => \total_I__0_carry_n_13\,
      O(1) => \total_I__0_carry_n_14\,
      O(0) => \total_I__0_carry_n_15\,
      S(7) => \total_I__0_carry_i_8_n_0\,
      S(6) => \total_I__0_carry_i_9_n_0\,
      S(5) => \total_I__0_carry_i_10_n_0\,
      S(4) => \total_I__0_carry_i_11_n_0\,
      S(3) => \total_I__0_carry_i_12_n_0\,
      S(2) => \total_I__0_carry_i_13_n_0\,
      S(1) => \total_I__0_carry_i_14_n_0\,
      S(0) => \total_I__0_carry_i_15_n_0\
    );
\total_I__0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_I__0_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \total_I__0_carry__0_n_0\,
      CO(6) => \total_I__0_carry__0_n_1\,
      CO(5) => \total_I__0_carry__0_n_2\,
      CO(4) => \total_I__0_carry__0_n_3\,
      CO(3) => \total_I__0_carry__0_n_4\,
      CO(2) => \total_I__0_carry__0_n_5\,
      CO(1) => \total_I__0_carry__0_n_6\,
      CO(0) => \total_I__0_carry__0_n_7\,
      DI(7) => \total_I__0_carry__0_i_1_n_0\,
      DI(6) => \total_I__0_carry__0_i_2_n_0\,
      DI(5) => \total_I__0_carry__0_i_3_n_0\,
      DI(4) => \total_I__0_carry__0_i_4_n_0\,
      DI(3) => \total_I__0_carry__0_i_5_n_0\,
      DI(2) => \total_I__0_carry__0_i_6_n_0\,
      DI(1) => \total_I__0_carry__0_i_7_n_0\,
      DI(0) => \total_I__0_carry__0_i_8_n_0\,
      O(7) => \total_I__0_carry__0_n_8\,
      O(6) => \total_I__0_carry__0_n_9\,
      O(5) => \total_I__0_carry__0_n_10\,
      O(4) => \total_I__0_carry__0_n_11\,
      O(3) => \total_I__0_carry__0_n_12\,
      O(2) => \total_I__0_carry__0_n_13\,
      O(1) => \total_I__0_carry__0_n_14\,
      O(0) => \total_I__0_carry__0_n_15\,
      S(7) => \total_I__0_carry__0_i_9_n_0\,
      S(6) => \total_I__0_carry__0_i_10_n_0\,
      S(5) => \total_I__0_carry__0_i_11_n_0\,
      S(4) => \total_I__0_carry__0_i_12_n_0\,
      S(3) => \total_I__0_carry__0_i_13_n_0\,
      S(2) => \total_I__0_carry__0_i_14_n_0\,
      S(1) => \total_I__0_carry__0_i_15_n_0\,
      S(0) => \total_I__0_carry__0_i_16_n_0\
    );
\total_I__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => I6(15),
      I2 => total_I20,
      O => \total_I__0_carry__0_i_1_n_0\
    );
\total_I__0_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__0_carry__0_i_2_n_0\,
      I1 => I6(14),
      I2 => \I4_reg_n_0_[14]\,
      I3 => s_axis_tdata(14),
      O => \total_I__0_carry__0_i_10_n_0\
    );
\total_I__0_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(13),
      I1 => \I4_reg_n_0_[13]\,
      I2 => s_axis_tdata(13),
      I3 => \total_I__0_carry__0_i_3_n_0\,
      O => \total_I__0_carry__0_i_11_n_0\
    );
\total_I__0_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(12),
      I1 => \I4_reg_n_0_[12]\,
      I2 => s_axis_tdata(12),
      I3 => \total_I__0_carry__0_i_4_n_0\,
      O => \total_I__0_carry__0_i_12_n_0\
    );
\total_I__0_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(11),
      I1 => \I4_reg_n_0_[11]\,
      I2 => s_axis_tdata(11),
      I3 => \total_I__0_carry__0_i_5_n_0\,
      O => \total_I__0_carry__0_i_13_n_0\
    );
\total_I__0_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(10),
      I1 => \I4_reg_n_0_[10]\,
      I2 => s_axis_tdata(10),
      I3 => \total_I__0_carry__0_i_6_n_0\,
      O => \total_I__0_carry__0_i_14_n_0\
    );
\total_I__0_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(9),
      I1 => \I4_reg_n_0_[9]\,
      I2 => s_axis_tdata(9),
      I3 => \total_I__0_carry__0_i_7_n_0\,
      O => \total_I__0_carry__0_i_15_n_0\
    );
\total_I__0_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(8),
      I1 => \I4_reg_n_0_[8]\,
      I2 => s_axis_tdata(8),
      I3 => \total_I__0_carry__0_i_8_n_0\,
      O => \total_I__0_carry__0_i_16_n_0\
    );
\total_I__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(13),
      I1 => \I4_reg_n_0_[13]\,
      I2 => s_axis_tdata(13),
      O => \total_I__0_carry__0_i_2_n_0\
    );
\total_I__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(12),
      I1 => \I4_reg_n_0_[12]\,
      I2 => s_axis_tdata(12),
      O => \total_I__0_carry__0_i_3_n_0\
    );
\total_I__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(11),
      I1 => \I4_reg_n_0_[11]\,
      I2 => s_axis_tdata(11),
      O => \total_I__0_carry__0_i_4_n_0\
    );
\total_I__0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(10),
      I1 => \I4_reg_n_0_[10]\,
      I2 => s_axis_tdata(10),
      O => \total_I__0_carry__0_i_5_n_0\
    );
\total_I__0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(9),
      I1 => \I4_reg_n_0_[9]\,
      I2 => s_axis_tdata(9),
      O => \total_I__0_carry__0_i_6_n_0\
    );
\total_I__0_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(8),
      I1 => \I4_reg_n_0_[8]\,
      I2 => s_axis_tdata(8),
      O => \total_I__0_carry__0_i_7_n_0\
    );
\total_I__0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(7),
      I1 => \I4_reg_n_0_[7]\,
      I2 => s_axis_tdata(7),
      O => \total_I__0_carry__0_i_8_n_0\
    );
\total_I__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => I6(15),
      I2 => total_I20,
      I3 => s_axis_tdata(14),
      I4 => \I4_reg_n_0_[14]\,
      I5 => I6(14),
      O => \total_I__0_carry__0_i_9_n_0\
    );
\total_I__0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_I__0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_total_I__0_carry__1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \total_I__0_carry__1_n_6\,
      CO(0) => \NLW_total_I__0_carry__1_CO_UNCONNECTED\(0),
      DI(7 downto 1) => B"0000000",
      DI(0) => \total_I__0_carry__1_i_1_n_0\,
      O(7 downto 1) => \NLW_total_I__0_carry__1_O_UNCONNECTED\(7 downto 1),
      O(0) => \total_I__0_carry__1_n_15\,
      S(7 downto 1) => B"0000001",
      S(0) => \total_I__0_carry__1_i_2_n_0\
    );
\total_I__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => total_I20,
      I2 => I6(15),
      O => \total_I__0_carry__1_i_1_n_0\
    );
\total_I__0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DB"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => total_I20,
      I2 => I6(15),
      O => \total_I__0_carry__1_i_2_n_0\
    );
\total_I__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(6),
      I1 => \I4_reg_n_0_[6]\,
      I2 => s_axis_tdata(6),
      O => \total_I__0_carry_i_1_n_0\
    );
\total_I__0_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(5),
      I1 => \I4_reg_n_0_[5]\,
      I2 => s_axis_tdata(5),
      I3 => \total_I__0_carry_i_3_n_0\,
      O => \total_I__0_carry_i_10_n_0\
    );
\total_I__0_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(4),
      I1 => \I4_reg_n_0_[4]\,
      I2 => s_axis_tdata(4),
      I3 => \total_I__0_carry_i_4_n_0\,
      O => \total_I__0_carry_i_11_n_0\
    );
\total_I__0_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(3),
      I1 => \I4_reg_n_0_[3]\,
      I2 => s_axis_tdata(3),
      I3 => \total_I__0_carry_i_5_n_0\,
      O => \total_I__0_carry_i_12_n_0\
    );
\total_I__0_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(2),
      I1 => \I4_reg_n_0_[2]\,
      I2 => s_axis_tdata(2),
      I3 => \total_I__0_carry_i_6_n_0\,
      O => \total_I__0_carry_i_13_n_0\
    );
\total_I__0_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(1),
      I1 => \I4_reg_n_0_[1]\,
      I2 => s_axis_tdata(1),
      I3 => \total_I__0_carry_i_7_n_0\,
      O => \total_I__0_carry_i_14_n_0\
    );
\total_I__0_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => I6(0),
      I1 => \I4_reg_n_0_[0]\,
      I2 => s_axis_tdata(0),
      O => \total_I__0_carry_i_15_n_0\
    );
\total_I__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(5),
      I1 => \I4_reg_n_0_[5]\,
      I2 => s_axis_tdata(5),
      O => \total_I__0_carry_i_2_n_0\
    );
\total_I__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(4),
      I1 => \I4_reg_n_0_[4]\,
      I2 => s_axis_tdata(4),
      O => \total_I__0_carry_i_3_n_0\
    );
\total_I__0_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(3),
      I1 => \I4_reg_n_0_[3]\,
      I2 => s_axis_tdata(3),
      O => \total_I__0_carry_i_4_n_0\
    );
\total_I__0_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(2),
      I1 => \I4_reg_n_0_[2]\,
      I2 => s_axis_tdata(2),
      O => \total_I__0_carry_i_5_n_0\
    );
\total_I__0_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(1),
      I1 => \I4_reg_n_0_[1]\,
      I2 => s_axis_tdata(1),
      O => \total_I__0_carry_i_6_n_0\
    );
\total_I__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => I6(0),
      I1 => \I4_reg_n_0_[0]\,
      I2 => s_axis_tdata(0),
      O => \total_I__0_carry_i_7_n_0\
    );
\total_I__0_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(7),
      I1 => \I4_reg_n_0_[7]\,
      I2 => s_axis_tdata(7),
      I3 => \total_I__0_carry_i_1_n_0\,
      O => \total_I__0_carry_i_8_n_0\
    );
\total_I__0_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => I6(6),
      I1 => \I4_reg_n_0_[6]\,
      I2 => s_axis_tdata(6),
      I3 => \total_I__0_carry_i_2_n_0\,
      O => \total_I__0_carry_i_9_n_0\
    );
\total_I__105_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \total_I__105_carry_n_0\,
      CO(6) => \total_I__105_carry_n_1\,
      CO(5) => \total_I__105_carry_n_2\,
      CO(4) => \total_I__105_carry_n_3\,
      CO(3) => \total_I__105_carry_n_4\,
      CO(2) => \total_I__105_carry_n_5\,
      CO(1) => \total_I__105_carry_n_6\,
      CO(0) => \total_I__105_carry_n_7\,
      DI(7) => \total_I__105_carry_i_1_n_0\,
      DI(6) => \total_I__105_carry_i_2_n_0\,
      DI(5) => \total_I__105_carry_i_3_n_0\,
      DI(4) => \total_I__105_carry_i_4_n_0\,
      DI(3) => \total_I__105_carry_i_5_n_0\,
      DI(2) => \I2_reg_n_0_[1]\,
      DI(1) => \total_I__0_carry_n_14\,
      DI(0) => \total_I__0_carry_n_15\,
      O(7 downto 4) => m_axis_tdata(3 downto 0),
      O(3 downto 0) => \NLW_total_I__105_carry_O_UNCONNECTED\(3 downto 0),
      S(7) => \total_I__105_carry_i_6_n_0\,
      S(6) => \total_I__105_carry_i_7_n_0\,
      S(5) => \total_I__105_carry_i_8_n_0\,
      S(4) => \total_I__105_carry_i_9_n_0\,
      S(3) => \total_I__105_carry_i_10_n_0\,
      S(2) => \total_I__105_carry_i_11_n_0\,
      S(1) => \total_I__105_carry_i_12_n_0\,
      S(0) => \total_I__105_carry_i_13_n_0\
    );
\total_I__105_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_I__105_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \total_I__105_carry__0_n_0\,
      CO(6) => \total_I__105_carry__0_n_1\,
      CO(5) => \total_I__105_carry__0_n_2\,
      CO(4) => \total_I__105_carry__0_n_3\,
      CO(3) => \total_I__105_carry__0_n_4\,
      CO(2) => \total_I__105_carry__0_n_5\,
      CO(1) => \total_I__105_carry__0_n_6\,
      CO(0) => \total_I__105_carry__0_n_7\,
      DI(7) => \total_I__105_carry__0_i_1_n_0\,
      DI(6) => \total_I__105_carry__0_i_2_n_0\,
      DI(5) => \total_I__105_carry__0_i_3_n_0\,
      DI(4) => \total_I__105_carry__0_i_4_n_0\,
      DI(3) => \total_I__105_carry__0_i_5_n_0\,
      DI(2) => \total_I__105_carry__0_i_6_n_0\,
      DI(1) => \total_I__105_carry__0_i_7_n_0\,
      DI(0) => \total_I__105_carry__0_i_8_n_0\,
      O(7 downto 0) => m_axis_tdata(11 downto 4),
      S(7) => \total_I__105_carry__0_i_9_n_0\,
      S(6) => \total_I__105_carry__0_i_10_n_0\,
      S(5) => \total_I__105_carry__0_i_11_n_0\,
      S(4) => \total_I__105_carry__0_i_12_n_0\,
      S(3) => \total_I__105_carry__0_i_13_n_0\,
      S(2) => \total_I__105_carry__0_i_14_n_0\,
      S(1) => \total_I__105_carry__0_i_15_n_0\,
      S(0) => \total_I__105_carry__0_i_16_n_0\
    );
\total_I__105_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry__0_n_11\,
      I1 => \total_I__0_carry__0_n_9\,
      I2 => \I2_reg_n_0_[11]\,
      O => \total_I__105_carry__0_i_1_n_0\
    );
\total_I__105_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_n_11\,
      I1 => \total_I__0_carry__0_n_9\,
      I2 => \I2_reg_n_0_[11]\,
      I3 => \total_I__105_carry__0_i_2_n_0\,
      O => \total_I__105_carry__0_i_10_n_0\
    );
\total_I__105_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_n_12\,
      I1 => \total_I__0_carry__0_n_10\,
      I2 => \I2_reg_n_0_[10]\,
      I3 => \total_I__105_carry__0_i_3_n_0\,
      O => \total_I__105_carry__0_i_11_n_0\
    );
\total_I__105_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_n_13\,
      I1 => \total_I__0_carry__0_n_11\,
      I2 => \I2_reg_n_0_[9]\,
      I3 => \total_I__105_carry__0_i_4_n_0\,
      O => \total_I__105_carry__0_i_12_n_0\
    );
\total_I__105_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_n_14\,
      I1 => \total_I__0_carry__0_n_12\,
      I2 => \I2_reg_n_0_[8]\,
      I3 => \total_I__105_carry__0_i_5_n_0\,
      O => \total_I__105_carry__0_i_13_n_0\
    );
\total_I__105_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_n_15\,
      I1 => \total_I__0_carry__0_n_13\,
      I2 => \I2_reg_n_0_[7]\,
      I3 => \total_I__105_carry__0_i_6_n_0\,
      O => \total_I__105_carry__0_i_14_n_0\
    );
\total_I__105_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry_n_8\,
      I1 => \total_I__0_carry__0_n_14\,
      I2 => \I2_reg_n_0_[6]\,
      I3 => \total_I__105_carry__0_i_7_n_0\,
      O => \total_I__105_carry__0_i_15_n_0\
    );
\total_I__105_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry_n_9\,
      I1 => \total_I__0_carry__0_n_15\,
      I2 => \I2_reg_n_0_[5]\,
      I3 => \total_I__105_carry__0_i_8_n_0\,
      O => \total_I__105_carry__0_i_16_n_0\
    );
\total_I__105_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry__0_n_12\,
      I1 => \total_I__0_carry__0_n_10\,
      I2 => \I2_reg_n_0_[10]\,
      O => \total_I__105_carry__0_i_2_n_0\
    );
\total_I__105_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry__0_n_13\,
      I1 => \total_I__0_carry__0_n_11\,
      I2 => \I2_reg_n_0_[9]\,
      O => \total_I__105_carry__0_i_3_n_0\
    );
\total_I__105_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry__0_n_14\,
      I1 => \total_I__0_carry__0_n_12\,
      I2 => \I2_reg_n_0_[8]\,
      O => \total_I__105_carry__0_i_4_n_0\
    );
\total_I__105_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry__0_n_15\,
      I1 => \total_I__0_carry__0_n_13\,
      I2 => \I2_reg_n_0_[7]\,
      O => \total_I__105_carry__0_i_5_n_0\
    );
\total_I__105_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry_n_8\,
      I1 => \total_I__0_carry__0_n_14\,
      I2 => \I2_reg_n_0_[6]\,
      O => \total_I__105_carry__0_i_6_n_0\
    );
\total_I__105_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry_n_9\,
      I1 => \total_I__0_carry__0_n_15\,
      I2 => \I2_reg_n_0_[5]\,
      O => \total_I__105_carry__0_i_7_n_0\
    );
\total_I__105_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry_n_10\,
      I1 => \total_I__0_carry_n_8\,
      I2 => \I2_reg_n_0_[4]\,
      O => \total_I__105_carry__0_i_8_n_0\
    );
\total_I__105_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_n_10\,
      I1 => \total_I__0_carry__0_n_8\,
      I2 => \I2_reg_n_0_[12]\,
      I3 => \total_I__105_carry__0_i_1_n_0\,
      O => \total_I__105_carry__0_i_9_n_0\
    );
\total_I__105_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_I__105_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_total_I__105_carry__1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \total_I__105_carry__1_n_5\,
      CO(1) => \total_I__105_carry__1_n_6\,
      CO(0) => \total_I__105_carry__1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => \total_I__105_carry__1_i_1_n_0\,
      DI(1) => \total_I__105_carry__1_i_2_n_0\,
      DI(0) => \total_I__105_carry__1_i_3_n_0\,
      O(7 downto 4) => \NLW_total_I__105_carry__1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => m_axis_tdata(15 downto 12),
      S(7 downto 4) => B"0000",
      S(3) => \total_I__105_carry__1_i_4_n_0\,
      S(2) => \total_I__105_carry__1_i_5_n_0\,
      S(1) => \total_I__105_carry__1_i_6_n_0\,
      S(0) => \total_I__105_carry__1_i_7_n_0\
    );
\total_I__105_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => total_I50,
      I1 => \total_I__0_carry__1_n_6\,
      I2 => \total_I__53_carry__1_n_15\,
      O => \total_I__105_carry__1_i_1_n_0\
    );
\total_I__105_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry__0_n_9\,
      I1 => \total_I__0_carry__1_n_15\,
      I2 => \I2_reg_n_0_[13]\,
      O => \total_I__105_carry__1_i_2_n_0\
    );
\total_I__105_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry__0_n_10\,
      I1 => \total_I__0_carry__0_n_8\,
      I2 => \I2_reg_n_0_[12]\,
      O => \total_I__105_carry__1_i_3_n_0\
    );
\total_I__105_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D24B"
    )
        port map (
      I0 => total_I50,
      I1 => \total_I__0_carry__1_n_6\,
      I2 => \total_I__53_carry__1_n_14\,
      I3 => \total_I__53_carry__1_n_15\,
      O => \total_I__105_carry__1_i_4_n_0\
    );
\total_I__105_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666669"
    )
        port map (
      I0 => total_I50,
      I1 => \total_I__53_carry__1_n_15\,
      I2 => \I2_reg_n_0_[14]\,
      I3 => \total_I__53_carry__0_n_8\,
      I4 => \total_I__0_carry__1_n_6\,
      O => \total_I__105_carry__1_i_5_n_0\
    );
\total_I__105_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \total_I__105_carry__1_i_2_n_0\,
      I1 => \total_I__0_carry__1_n_6\,
      I2 => \total_I__53_carry__0_n_8\,
      I3 => \I2_reg_n_0_[14]\,
      O => \total_I__105_carry__1_i_6_n_0\
    );
\total_I__105_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_n_9\,
      I1 => \total_I__0_carry__1_n_15\,
      I2 => \I2_reg_n_0_[13]\,
      I3 => \total_I__105_carry__1_i_3_n_0\,
      O => \total_I__105_carry__1_i_7_n_0\
    );
\total_I__105_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry_n_11\,
      I1 => \total_I__0_carry_n_9\,
      I2 => \I2_reg_n_0_[3]\,
      O => \total_I__105_carry_i_1_n_0\
    );
\total_I__105_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \total_I__53_carry_n_14\,
      I1 => \total_I__0_carry_n_12\,
      I2 => \I2_reg_n_0_[0]\,
      I3 => \total_I__0_carry_n_13\,
      I4 => \total_I__53_carry_n_15\,
      O => \total_I__105_carry_i_10_n_0\
    );
\total_I__105_carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \I2_reg_n_0_[1]\,
      I1 => \total_I__53_carry_n_15\,
      I2 => \total_I__0_carry_n_13\,
      O => \total_I__105_carry_i_11_n_0\
    );
\total_I__105_carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \I2_reg_n_0_[1]\,
      I1 => \total_I__0_carry_n_14\,
      O => \total_I__105_carry_i_12_n_0\
    );
\total_I__105_carry_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_I__0_carry_n_15\,
      I1 => \I2_reg_n_0_[0]\,
      O => \total_I__105_carry_i_13_n_0\
    );
\total_I__105_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry_n_12\,
      I1 => \total_I__0_carry_n_10\,
      I2 => \I2_reg_n_0_[2]\,
      O => \total_I__105_carry_i_2_n_0\
    );
\total_I__105_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry_n_13\,
      I1 => \total_I__0_carry_n_11\,
      I2 => \I2_reg_n_0_[1]\,
      O => \total_I__105_carry_i_3_n_0\
    );
\total_I__105_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_I__53_carry_n_14\,
      I1 => \total_I__0_carry_n_12\,
      I2 => \I2_reg_n_0_[0]\,
      O => \total_I__105_carry_i_4_n_0\
    );
\total_I__105_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \I2_reg_n_0_[0]\,
      I1 => \total_I__53_carry_n_14\,
      I2 => \total_I__0_carry_n_12\,
      O => \total_I__105_carry_i_5_n_0\
    );
\total_I__105_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry_n_10\,
      I1 => \total_I__0_carry_n_8\,
      I2 => \I2_reg_n_0_[4]\,
      I3 => \total_I__105_carry_i_1_n_0\,
      O => \total_I__105_carry_i_6_n_0\
    );
\total_I__105_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry_n_11\,
      I1 => \total_I__0_carry_n_9\,
      I2 => \I2_reg_n_0_[3]\,
      I3 => \total_I__105_carry_i_2_n_0\,
      O => \total_I__105_carry_i_7_n_0\
    );
\total_I__105_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry_n_12\,
      I1 => \total_I__0_carry_n_10\,
      I2 => \I2_reg_n_0_[2]\,
      I3 => \total_I__105_carry_i_3_n_0\,
      O => \total_I__105_carry_i_8_n_0\
    );
\total_I__105_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry_n_13\,
      I1 => \total_I__0_carry_n_11\,
      I2 => \I2_reg_n_0_[1]\,
      I3 => \total_I__105_carry_i_4_n_0\,
      O => \total_I__105_carry_i_9_n_0\
    );
\total_I__53_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \total_I__53_carry_n_0\,
      CO(6) => \total_I__53_carry_n_1\,
      CO(5) => \total_I__53_carry_n_2\,
      CO(4) => \total_I__53_carry_n_3\,
      CO(3) => \total_I__53_carry_n_4\,
      CO(2) => \total_I__53_carry_n_5\,
      CO(1) => \total_I__53_carry_n_6\,
      CO(0) => \total_I__53_carry_n_7\,
      DI(7) => \total_I__53_carry_i_1_n_0\,
      DI(6) => \total_I__53_carry_i_2_n_0\,
      DI(5) => \total_I__53_carry_i_3_n_0\,
      DI(4) => \total_I__53_carry_i_4_n_0\,
      DI(3) => \total_I__53_carry_i_5_n_0\,
      DI(2) => \I4_reg_n_0_[1]\,
      DI(1) => \I4_reg_n_0_[0]\,
      DI(0) => '0',
      O(7) => \total_I__53_carry_n_8\,
      O(6) => \total_I__53_carry_n_9\,
      O(5) => \total_I__53_carry_n_10\,
      O(4) => \total_I__53_carry_n_11\,
      O(3) => \total_I__53_carry_n_12\,
      O(2) => \total_I__53_carry_n_13\,
      O(1) => \total_I__53_carry_n_14\,
      O(0) => \total_I__53_carry_n_15\,
      S(7) => \total_I__53_carry_i_6_n_0\,
      S(6) => \total_I__53_carry_i_7_n_0\,
      S(5) => \total_I__53_carry_i_8_n_0\,
      S(4) => \total_I__53_carry_i_9_n_0\,
      S(3) => \total_I__53_carry_i_10_n_0\,
      S(2) => \total_I__53_carry_i_11_n_0\,
      S(1) => \total_I__53_carry_i_12_n_0\,
      S(0) => \I2_reg_n_0_[2]\
    );
\total_I__53_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_I__53_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \total_I__53_carry__0_n_0\,
      CO(6) => \total_I__53_carry__0_n_1\,
      CO(5) => \total_I__53_carry__0_n_2\,
      CO(4) => \total_I__53_carry__0_n_3\,
      CO(3) => \total_I__53_carry__0_n_4\,
      CO(2) => \total_I__53_carry__0_n_5\,
      CO(1) => \total_I__53_carry__0_n_6\,
      CO(0) => \total_I__53_carry__0_n_7\,
      DI(7) => \total_I__53_carry__0_i_1_n_0\,
      DI(6) => \total_I__53_carry__0_i_2_n_0\,
      DI(5) => \total_I__53_carry__0_i_3_n_0\,
      DI(4) => \total_I__53_carry__0_i_4_n_0\,
      DI(3) => \total_I__53_carry__0_i_5_n_0\,
      DI(2) => \total_I__53_carry__0_i_6_n_0\,
      DI(1) => \total_I__53_carry__0_i_7_n_0\,
      DI(0) => \total_I__53_carry__0_i_8_n_0\,
      O(7) => \total_I__53_carry__0_n_8\,
      O(6) => \total_I__53_carry__0_n_9\,
      O(5) => \total_I__53_carry__0_n_10\,
      O(4) => \total_I__53_carry__0_n_11\,
      O(3) => \total_I__53_carry__0_n_12\,
      O(2) => \total_I__53_carry__0_n_13\,
      O(1) => \total_I__53_carry__0_n_14\,
      O(0) => \total_I__53_carry__0_n_15\,
      S(7) => \total_I__53_carry__0_i_9_n_0\,
      S(6) => \total_I__53_carry__0_i_10_n_0\,
      S(5) => \total_I__53_carry__0_i_11_n_0\,
      S(4) => \total_I__53_carry__0_i_12_n_0\,
      S(3) => \total_I__53_carry__0_i_13_n_0\,
      S(2) => \total_I__53_carry__0_i_14_n_0\,
      S(1) => \total_I__53_carry__0_i_15_n_0\,
      S(0) => \total_I__53_carry__0_i_16_n_0\
    );
\total_I__53_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => total_I50,
      I1 => total_I3(15),
      I2 => total_I3(16),
      I3 => \I4_reg_n_0_[13]\,
      O => \total_I__53_carry__0_i_1_n_0\
    );
\total_I__53_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C69963C"
    )
        port map (
      I0 => \I4_reg_n_0_[12]\,
      I1 => \I4_reg_n_0_[13]\,
      I2 => total_I3(16),
      I3 => total_I3(15),
      I4 => total_I50,
      O => \total_I__53_carry__0_i_10_n_0\
    );
\total_I__53_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \I4_reg_n_0_[12]\,
      I1 => total_I3(15),
      I2 => total_I50,
      I3 => \I4_reg_n_0_[11]\,
      I4 => total_I3(14),
      I5 => \I2_reg_n_0_[14]\,
      O => \total_I__53_carry__0_i_11_n_0\
    );
\total_I__53_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_I__53_carry__0_i_4_n_0\,
      I1 => total_I3(14),
      I2 => \I2_reg_n_0_[14]\,
      I3 => \I4_reg_n_0_[11]\,
      O => \total_I__53_carry__0_i_12_n_0\
    );
\total_I__53_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[13]\,
      I1 => total_I3(13),
      I2 => \I4_reg_n_0_[10]\,
      I3 => \total_I__53_carry__0_i_5_n_0\,
      O => \total_I__53_carry__0_i_13_n_0\
    );
\total_I__53_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[12]\,
      I1 => total_I3(12),
      I2 => \I4_reg_n_0_[9]\,
      I3 => \total_I__53_carry__0_i_6_n_0\,
      O => \total_I__53_carry__0_i_14_n_0\
    );
\total_I__53_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[11]\,
      I1 => total_I3(11),
      I2 => \I4_reg_n_0_[8]\,
      I3 => \total_I__53_carry__0_i_7_n_0\,
      O => \total_I__53_carry__0_i_15_n_0\
    );
\total_I__53_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[10]\,
      I1 => total_I3(10),
      I2 => \I4_reg_n_0_[7]\,
      I3 => \total_I__53_carry__0_i_8_n_0\,
      O => \total_I__53_carry__0_i_16_n_0\
    );
\total_I__53_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \I4_reg_n_0_[12]\,
      I1 => total_I50,
      I2 => total_I3(15),
      O => \total_I__53_carry__0_i_2_n_0\
    );
\total_I__53_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => total_I50,
      I1 => total_I3(15),
      I2 => \I4_reg_n_0_[12]\,
      O => \total_I__53_carry__0_i_3_n_0\
    );
\total_I__53_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[13]\,
      I1 => total_I3(13),
      I2 => \I4_reg_n_0_[10]\,
      O => \total_I__53_carry__0_i_4_n_0\
    );
\total_I__53_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[12]\,
      I1 => total_I3(12),
      I2 => \I4_reg_n_0_[9]\,
      O => \total_I__53_carry__0_i_5_n_0\
    );
\total_I__53_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[11]\,
      I1 => total_I3(11),
      I2 => \I4_reg_n_0_[8]\,
      O => \total_I__53_carry__0_i_6_n_0\
    );
\total_I__53_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[10]\,
      I1 => total_I3(10),
      I2 => \I4_reg_n_0_[7]\,
      O => \total_I__53_carry__0_i_7_n_0\
    );
\total_I__53_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[9]\,
      I1 => total_I3(9),
      I2 => \I4_reg_n_0_[6]\,
      O => \total_I__53_carry__0_i_8_n_0\
    );
\total_I__53_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44B0FF00FF04BB4"
    )
        port map (
      I0 => total_I3(15),
      I1 => total_I50,
      I2 => \I4_reg_n_0_[14]\,
      I3 => total_I3(17),
      I4 => \I4_reg_n_0_[13]\,
      I5 => total_I3(16),
      O => \total_I__53_carry__0_i_9_n_0\
    );
\total_I__53_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_I__53_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_total_I__53_carry__1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \total_I__53_carry__1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \total_I__53_carry__1_i_1_n_0\,
      O(7 downto 2) => \NLW_total_I__53_carry__1_O_UNCONNECTED\(7 downto 2),
      O(1) => \total_I__53_carry__1_n_14\,
      O(0) => \total_I__53_carry__1_n_15\,
      S(7 downto 2) => B"000000",
      S(1) => \total_I__53_carry__1_i_2_n_0\,
      S(0) => \total_I__53_carry__1_i_3_n_0\
    );
\total_I__53_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => total_I3(16),
      I1 => \I4_reg_n_0_[13]\,
      I2 => total_I3(17),
      I3 => \I4_reg_n_0_[14]\,
      O => \total_I__53_carry__1_i_1_n_0\
    );
\total_I__53_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FE1F01"
    )
        port map (
      I0 => \I4_reg_n_0_[14]\,
      I1 => total_I3(17),
      I2 => total_I3(18),
      I3 => total_I20,
      I4 => total_I3(19),
      O => \total_I__53_carry__1_i_2_n_0\
    );
\total_I__53_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \I4_reg_n_0_[13]\,
      I1 => total_I3(16),
      I2 => total_I20,
      I3 => total_I3(18),
      I4 => \I4_reg_n_0_[14]\,
      I5 => total_I3(17),
      O => \total_I__53_carry__1_i_3_n_0\
    );
\total_I__53_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[8]\,
      I1 => total_I3(8),
      I2 => \I4_reg_n_0_[5]\,
      O => \total_I__53_carry_i_1_n_0\
    );
\total_I__53_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \I2_reg_n_0_[5]\,
      I1 => total_I3(5),
      I2 => \I4_reg_n_0_[2]\,
      I3 => total_I3(4),
      I4 => \I2_reg_n_0_[4]\,
      O => \total_I__53_carry_i_10_n_0\
    );
\total_I__53_carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \I2_reg_n_0_[4]\,
      I1 => total_I3(4),
      I2 => \I4_reg_n_0_[1]\,
      O => \total_I__53_carry_i_11_n_0\
    );
\total_I__53_carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \I4_reg_n_0_[0]\,
      I1 => \I2_reg_n_0_[3]\,
      O => \total_I__53_carry_i_12_n_0\
    );
\total_I__53_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[7]\,
      I1 => total_I3(7),
      I2 => \I4_reg_n_0_[4]\,
      O => \total_I__53_carry_i_2_n_0\
    );
\total_I__53_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[6]\,
      I1 => total_I3(6),
      I2 => \I4_reg_n_0_[3]\,
      O => \total_I__53_carry_i_3_n_0\
    );
\total_I__53_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \I2_reg_n_0_[5]\,
      I1 => total_I3(5),
      I2 => \I4_reg_n_0_[2]\,
      O => \total_I__53_carry_i_4_n_0\
    );
\total_I__53_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \I4_reg_n_0_[2]\,
      I1 => \I2_reg_n_0_[5]\,
      I2 => total_I3(5),
      O => \total_I__53_carry_i_5_n_0\
    );
\total_I__53_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[9]\,
      I1 => total_I3(9),
      I2 => \I4_reg_n_0_[6]\,
      I3 => \total_I__53_carry_i_1_n_0\,
      O => \total_I__53_carry_i_6_n_0\
    );
\total_I__53_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[8]\,
      I1 => total_I3(8),
      I2 => \I4_reg_n_0_[5]\,
      I3 => \total_I__53_carry_i_2_n_0\,
      O => \total_I__53_carry_i_7_n_0\
    );
\total_I__53_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[7]\,
      I1 => total_I3(7),
      I2 => \I4_reg_n_0_[4]\,
      I3 => \total_I__53_carry_i_3_n_0\,
      O => \total_I__53_carry_i_8_n_0\
    );
\total_I__53_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \I2_reg_n_0_[6]\,
      I1 => total_I3(6),
      I2 => \I4_reg_n_0_[3]\,
      I3 => \total_I__53_carry_i_4_n_0\,
      O => \total_I__53_carry_i_9_n_0\
    );
\total_Q__0_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \total_Q__0_carry_n_0\,
      CO(6) => \total_Q__0_carry_n_1\,
      CO(5) => \total_Q__0_carry_n_2\,
      CO(4) => \total_Q__0_carry_n_3\,
      CO(3) => \total_Q__0_carry_n_4\,
      CO(2) => \total_Q__0_carry_n_5\,
      CO(1) => \total_Q__0_carry_n_6\,
      CO(0) => \total_Q__0_carry_n_7\,
      DI(7) => \total_Q__0_carry_i_1_n_0\,
      DI(6) => \total_Q__0_carry_i_2_n_0\,
      DI(5) => \total_Q__0_carry_i_3_n_0\,
      DI(4) => \total_Q__0_carry_i_4_n_0\,
      DI(3) => \total_Q__0_carry_i_5_n_0\,
      DI(2) => \total_Q__0_carry_i_6_n_0\,
      DI(1) => \total_Q__0_carry_i_7_n_0\,
      DI(0) => '0',
      O(7) => \total_Q__0_carry_n_8\,
      O(6) => \total_Q__0_carry_n_9\,
      O(5) => \total_Q__0_carry_n_10\,
      O(4) => \total_Q__0_carry_n_11\,
      O(3) => \total_Q__0_carry_n_12\,
      O(2) => \total_Q__0_carry_n_13\,
      O(1) => \total_Q__0_carry_n_14\,
      O(0) => \total_Q__0_carry_n_15\,
      S(7) => \total_Q__0_carry_i_8_n_0\,
      S(6) => \total_Q__0_carry_i_9_n_0\,
      S(5) => \total_Q__0_carry_i_10_n_0\,
      S(4) => \total_Q__0_carry_i_11_n_0\,
      S(3) => \total_Q__0_carry_i_12_n_0\,
      S(2) => \total_Q__0_carry_i_13_n_0\,
      S(1) => \total_Q__0_carry_i_14_n_0\,
      S(0) => \total_Q__0_carry_i_15_n_0\
    );
\total_Q__0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_Q__0_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \total_Q__0_carry__0_n_0\,
      CO(6) => \total_Q__0_carry__0_n_1\,
      CO(5) => \total_Q__0_carry__0_n_2\,
      CO(4) => \total_Q__0_carry__0_n_3\,
      CO(3) => \total_Q__0_carry__0_n_4\,
      CO(2) => \total_Q__0_carry__0_n_5\,
      CO(1) => \total_Q__0_carry__0_n_6\,
      CO(0) => \total_Q__0_carry__0_n_7\,
      DI(7) => \total_Q__0_carry__0_i_1_n_0\,
      DI(6) => \total_Q__0_carry__0_i_2_n_0\,
      DI(5) => \total_Q__0_carry__0_i_3_n_0\,
      DI(4) => \total_Q__0_carry__0_i_4_n_0\,
      DI(3) => \total_Q__0_carry__0_i_5_n_0\,
      DI(2) => \total_Q__0_carry__0_i_6_n_0\,
      DI(1) => \total_Q__0_carry__0_i_7_n_0\,
      DI(0) => \total_Q__0_carry__0_i_8_n_0\,
      O(7) => \total_Q__0_carry__0_n_8\,
      O(6) => \total_Q__0_carry__0_n_9\,
      O(5) => \total_Q__0_carry__0_n_10\,
      O(4) => \total_Q__0_carry__0_n_11\,
      O(3) => \total_Q__0_carry__0_n_12\,
      O(2) => \total_Q__0_carry__0_n_13\,
      O(1) => \total_Q__0_carry__0_n_14\,
      O(0) => \total_Q__0_carry__0_n_15\,
      S(7) => \total_Q__0_carry__0_i_9_n_0\,
      S(6) => \total_Q__0_carry__0_i_10_n_0\,
      S(5) => \total_Q__0_carry__0_i_11_n_0\,
      S(4) => \total_Q__0_carry__0_i_12_n_0\,
      S(3) => \total_Q__0_carry__0_i_13_n_0\,
      S(2) => \total_Q__0_carry__0_i_14_n_0\,
      S(1) => \total_Q__0_carry__0_i_15_n_0\,
      S(0) => \total_Q__0_carry__0_i_16_n_0\
    );
\total_Q__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => Q6(15),
      I2 => total_Q20,
      O => \total_Q__0_carry__0_i_1_n_0\
    );
\total_Q__0_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__0_carry__0_i_2_n_0\,
      I1 => Q6(14),
      I2 => \Q4_reg_n_0_[14]\,
      I3 => s_axis_tdata(30),
      O => \total_Q__0_carry__0_i_10_n_0\
    );
\total_Q__0_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(13),
      I1 => \Q4_reg_n_0_[13]\,
      I2 => s_axis_tdata(29),
      I3 => \total_Q__0_carry__0_i_3_n_0\,
      O => \total_Q__0_carry__0_i_11_n_0\
    );
\total_Q__0_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(12),
      I1 => \Q4_reg_n_0_[12]\,
      I2 => s_axis_tdata(28),
      I3 => \total_Q__0_carry__0_i_4_n_0\,
      O => \total_Q__0_carry__0_i_12_n_0\
    );
\total_Q__0_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(11),
      I1 => \Q4_reg_n_0_[11]\,
      I2 => s_axis_tdata(27),
      I3 => \total_Q__0_carry__0_i_5_n_0\,
      O => \total_Q__0_carry__0_i_13_n_0\
    );
\total_Q__0_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(10),
      I1 => \Q4_reg_n_0_[10]\,
      I2 => s_axis_tdata(26),
      I3 => \total_Q__0_carry__0_i_6_n_0\,
      O => \total_Q__0_carry__0_i_14_n_0\
    );
\total_Q__0_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(9),
      I1 => \Q4_reg_n_0_[9]\,
      I2 => s_axis_tdata(25),
      I3 => \total_Q__0_carry__0_i_7_n_0\,
      O => \total_Q__0_carry__0_i_15_n_0\
    );
\total_Q__0_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(8),
      I1 => \Q4_reg_n_0_[8]\,
      I2 => s_axis_tdata(24),
      I3 => \total_Q__0_carry__0_i_8_n_0\,
      O => \total_Q__0_carry__0_i_16_n_0\
    );
\total_Q__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(13),
      I1 => \Q4_reg_n_0_[13]\,
      I2 => s_axis_tdata(29),
      O => \total_Q__0_carry__0_i_2_n_0\
    );
\total_Q__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(12),
      I1 => \Q4_reg_n_0_[12]\,
      I2 => s_axis_tdata(28),
      O => \total_Q__0_carry__0_i_3_n_0\
    );
\total_Q__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(11),
      I1 => \Q4_reg_n_0_[11]\,
      I2 => s_axis_tdata(27),
      O => \total_Q__0_carry__0_i_4_n_0\
    );
\total_Q__0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(10),
      I1 => \Q4_reg_n_0_[10]\,
      I2 => s_axis_tdata(26),
      O => \total_Q__0_carry__0_i_5_n_0\
    );
\total_Q__0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(9),
      I1 => \Q4_reg_n_0_[9]\,
      I2 => s_axis_tdata(25),
      O => \total_Q__0_carry__0_i_6_n_0\
    );
\total_Q__0_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(8),
      I1 => \Q4_reg_n_0_[8]\,
      I2 => s_axis_tdata(24),
      O => \total_Q__0_carry__0_i_7_n_0\
    );
\total_Q__0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(7),
      I1 => \Q4_reg_n_0_[7]\,
      I2 => s_axis_tdata(23),
      O => \total_Q__0_carry__0_i_8_n_0\
    );
\total_Q__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => Q6(15),
      I2 => total_Q20,
      I3 => s_axis_tdata(30),
      I4 => \Q4_reg_n_0_[14]\,
      I5 => Q6(14),
      O => \total_Q__0_carry__0_i_9_n_0\
    );
\total_Q__0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_Q__0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_total_Q__0_carry__1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \total_Q__0_carry__1_n_6\,
      CO(0) => \NLW_total_Q__0_carry__1_CO_UNCONNECTED\(0),
      DI(7 downto 1) => B"0000000",
      DI(0) => \total_Q__0_carry__1_i_1_n_0\,
      O(7 downto 1) => \NLW_total_Q__0_carry__1_O_UNCONNECTED\(7 downto 1),
      O(0) => \total_Q__0_carry__1_n_15\,
      S(7 downto 1) => B"0000001",
      S(0) => \total_Q__0_carry__1_i_2_n_0\
    );
\total_Q__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => total_Q20,
      I2 => Q6(15),
      O => \total_Q__0_carry__1_i_1_n_0\
    );
\total_Q__0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DB"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => total_Q20,
      I2 => Q6(15),
      O => \total_Q__0_carry__1_i_2_n_0\
    );
\total_Q__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(6),
      I1 => \Q4_reg_n_0_[6]\,
      I2 => s_axis_tdata(22),
      O => \total_Q__0_carry_i_1_n_0\
    );
\total_Q__0_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(5),
      I1 => \Q4_reg_n_0_[5]\,
      I2 => s_axis_tdata(21),
      I3 => \total_Q__0_carry_i_3_n_0\,
      O => \total_Q__0_carry_i_10_n_0\
    );
\total_Q__0_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(4),
      I1 => \Q4_reg_n_0_[4]\,
      I2 => s_axis_tdata(20),
      I3 => \total_Q__0_carry_i_4_n_0\,
      O => \total_Q__0_carry_i_11_n_0\
    );
\total_Q__0_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(3),
      I1 => \Q4_reg_n_0_[3]\,
      I2 => s_axis_tdata(19),
      I3 => \total_Q__0_carry_i_5_n_0\,
      O => \total_Q__0_carry_i_12_n_0\
    );
\total_Q__0_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(2),
      I1 => \Q4_reg_n_0_[2]\,
      I2 => s_axis_tdata(18),
      I3 => \total_Q__0_carry_i_6_n_0\,
      O => \total_Q__0_carry_i_13_n_0\
    );
\total_Q__0_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(1),
      I1 => \Q4_reg_n_0_[1]\,
      I2 => s_axis_tdata(17),
      I3 => \total_Q__0_carry_i_7_n_0\,
      O => \total_Q__0_carry_i_14_n_0\
    );
\total_Q__0_carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q6(0),
      I1 => \Q4_reg_n_0_[0]\,
      I2 => s_axis_tdata(16),
      O => \total_Q__0_carry_i_15_n_0\
    );
\total_Q__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(5),
      I1 => \Q4_reg_n_0_[5]\,
      I2 => s_axis_tdata(21),
      O => \total_Q__0_carry_i_2_n_0\
    );
\total_Q__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(4),
      I1 => \Q4_reg_n_0_[4]\,
      I2 => s_axis_tdata(20),
      O => \total_Q__0_carry_i_3_n_0\
    );
\total_Q__0_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(3),
      I1 => \Q4_reg_n_0_[3]\,
      I2 => s_axis_tdata(19),
      O => \total_Q__0_carry_i_4_n_0\
    );
\total_Q__0_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(2),
      I1 => \Q4_reg_n_0_[2]\,
      I2 => s_axis_tdata(18),
      O => \total_Q__0_carry_i_5_n_0\
    );
\total_Q__0_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(1),
      I1 => \Q4_reg_n_0_[1]\,
      I2 => s_axis_tdata(17),
      O => \total_Q__0_carry_i_6_n_0\
    );
\total_Q__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Q6(0),
      I1 => \Q4_reg_n_0_[0]\,
      I2 => s_axis_tdata(16),
      O => \total_Q__0_carry_i_7_n_0\
    );
\total_Q__0_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(7),
      I1 => \Q4_reg_n_0_[7]\,
      I2 => s_axis_tdata(23),
      I3 => \total_Q__0_carry_i_1_n_0\,
      O => \total_Q__0_carry_i_8_n_0\
    );
\total_Q__0_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q6(6),
      I1 => \Q4_reg_n_0_[6]\,
      I2 => s_axis_tdata(22),
      I3 => \total_Q__0_carry_i_2_n_0\,
      O => \total_Q__0_carry_i_9_n_0\
    );
\total_Q__105_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \total_Q__105_carry_n_0\,
      CO(6) => \total_Q__105_carry_n_1\,
      CO(5) => \total_Q__105_carry_n_2\,
      CO(4) => \total_Q__105_carry_n_3\,
      CO(3) => \total_Q__105_carry_n_4\,
      CO(2) => \total_Q__105_carry_n_5\,
      CO(1) => \total_Q__105_carry_n_6\,
      CO(0) => \total_Q__105_carry_n_7\,
      DI(7) => \total_Q__105_carry_i_1_n_0\,
      DI(6) => \total_Q__105_carry_i_2_n_0\,
      DI(5) => \total_Q__105_carry_i_3_n_0\,
      DI(4) => \total_Q__105_carry_i_4_n_0\,
      DI(3) => \total_Q__105_carry_i_5_n_0\,
      DI(2) => \Q2_reg_n_0_[1]\,
      DI(1) => \total_Q__0_carry_n_14\,
      DI(0) => \total_Q__0_carry_n_15\,
      O(7 downto 4) => m_axis_tdata(19 downto 16),
      O(3 downto 0) => \NLW_total_Q__105_carry_O_UNCONNECTED\(3 downto 0),
      S(7) => \total_Q__105_carry_i_6_n_0\,
      S(6) => \total_Q__105_carry_i_7_n_0\,
      S(5) => \total_Q__105_carry_i_8_n_0\,
      S(4) => \total_Q__105_carry_i_9_n_0\,
      S(3) => \total_Q__105_carry_i_10_n_0\,
      S(2) => \total_Q__105_carry_i_11_n_0\,
      S(1) => \total_Q__105_carry_i_12_n_0\,
      S(0) => \total_Q__105_carry_i_13_n_0\
    );
\total_Q__105_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_Q__105_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \total_Q__105_carry__0_n_0\,
      CO(6) => \total_Q__105_carry__0_n_1\,
      CO(5) => \total_Q__105_carry__0_n_2\,
      CO(4) => \total_Q__105_carry__0_n_3\,
      CO(3) => \total_Q__105_carry__0_n_4\,
      CO(2) => \total_Q__105_carry__0_n_5\,
      CO(1) => \total_Q__105_carry__0_n_6\,
      CO(0) => \total_Q__105_carry__0_n_7\,
      DI(7) => \total_Q__105_carry__0_i_1_n_0\,
      DI(6) => \total_Q__105_carry__0_i_2_n_0\,
      DI(5) => \total_Q__105_carry__0_i_3_n_0\,
      DI(4) => \total_Q__105_carry__0_i_4_n_0\,
      DI(3) => \total_Q__105_carry__0_i_5_n_0\,
      DI(2) => \total_Q__105_carry__0_i_6_n_0\,
      DI(1) => \total_Q__105_carry__0_i_7_n_0\,
      DI(0) => \total_Q__105_carry__0_i_8_n_0\,
      O(7 downto 0) => m_axis_tdata(27 downto 20),
      S(7) => \total_Q__105_carry__0_i_9_n_0\,
      S(6) => \total_Q__105_carry__0_i_10_n_0\,
      S(5) => \total_Q__105_carry__0_i_11_n_0\,
      S(4) => \total_Q__105_carry__0_i_12_n_0\,
      S(3) => \total_Q__105_carry__0_i_13_n_0\,
      S(2) => \total_Q__105_carry__0_i_14_n_0\,
      S(1) => \total_Q__105_carry__0_i_15_n_0\,
      S(0) => \total_Q__105_carry__0_i_16_n_0\
    );
\total_Q__105_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_11\,
      I1 => \total_Q__0_carry__0_n_9\,
      I2 => \Q2_reg_n_0_[11]\,
      O => \total_Q__105_carry__0_i_1_n_0\
    );
\total_Q__105_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_11\,
      I1 => \total_Q__0_carry__0_n_9\,
      I2 => \Q2_reg_n_0_[11]\,
      I3 => \total_Q__105_carry__0_i_2_n_0\,
      O => \total_Q__105_carry__0_i_10_n_0\
    );
\total_Q__105_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_12\,
      I1 => \total_Q__0_carry__0_n_10\,
      I2 => \Q2_reg_n_0_[10]\,
      I3 => \total_Q__105_carry__0_i_3_n_0\,
      O => \total_Q__105_carry__0_i_11_n_0\
    );
\total_Q__105_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_13\,
      I1 => \total_Q__0_carry__0_n_11\,
      I2 => \Q2_reg_n_0_[9]\,
      I3 => \total_Q__105_carry__0_i_4_n_0\,
      O => \total_Q__105_carry__0_i_12_n_0\
    );
\total_Q__105_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_14\,
      I1 => \total_Q__0_carry__0_n_12\,
      I2 => \Q2_reg_n_0_[8]\,
      I3 => \total_Q__105_carry__0_i_5_n_0\,
      O => \total_Q__105_carry__0_i_13_n_0\
    );
\total_Q__105_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_15\,
      I1 => \total_Q__0_carry__0_n_13\,
      I2 => \Q2_reg_n_0_[7]\,
      I3 => \total_Q__105_carry__0_i_6_n_0\,
      O => \total_Q__105_carry__0_i_14_n_0\
    );
\total_Q__105_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry_n_8\,
      I1 => \total_Q__0_carry__0_n_14\,
      I2 => \Q2_reg_n_0_[6]\,
      I3 => \total_Q__105_carry__0_i_7_n_0\,
      O => \total_Q__105_carry__0_i_15_n_0\
    );
\total_Q__105_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry_n_9\,
      I1 => \total_Q__0_carry__0_n_15\,
      I2 => \Q2_reg_n_0_[5]\,
      I3 => \total_Q__105_carry__0_i_8_n_0\,
      O => \total_Q__105_carry__0_i_16_n_0\
    );
\total_Q__105_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_12\,
      I1 => \total_Q__0_carry__0_n_10\,
      I2 => \Q2_reg_n_0_[10]\,
      O => \total_Q__105_carry__0_i_2_n_0\
    );
\total_Q__105_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_13\,
      I1 => \total_Q__0_carry__0_n_11\,
      I2 => \Q2_reg_n_0_[9]\,
      O => \total_Q__105_carry__0_i_3_n_0\
    );
\total_Q__105_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_14\,
      I1 => \total_Q__0_carry__0_n_12\,
      I2 => \Q2_reg_n_0_[8]\,
      O => \total_Q__105_carry__0_i_4_n_0\
    );
\total_Q__105_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_15\,
      I1 => \total_Q__0_carry__0_n_13\,
      I2 => \Q2_reg_n_0_[7]\,
      O => \total_Q__105_carry__0_i_5_n_0\
    );
\total_Q__105_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry_n_8\,
      I1 => \total_Q__0_carry__0_n_14\,
      I2 => \Q2_reg_n_0_[6]\,
      O => \total_Q__105_carry__0_i_6_n_0\
    );
\total_Q__105_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry_n_9\,
      I1 => \total_Q__0_carry__0_n_15\,
      I2 => \Q2_reg_n_0_[5]\,
      O => \total_Q__105_carry__0_i_7_n_0\
    );
\total_Q__105_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry_n_10\,
      I1 => \total_Q__0_carry_n_8\,
      I2 => \Q2_reg_n_0_[4]\,
      O => \total_Q__105_carry__0_i_8_n_0\
    );
\total_Q__105_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_10\,
      I1 => \total_Q__0_carry__0_n_8\,
      I2 => \Q2_reg_n_0_[12]\,
      I3 => \total_Q__105_carry__0_i_1_n_0\,
      O => \total_Q__105_carry__0_i_9_n_0\
    );
\total_Q__105_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_Q__105_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_total_Q__105_carry__1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \total_Q__105_carry__1_n_5\,
      CO(1) => \total_Q__105_carry__1_n_6\,
      CO(0) => \total_Q__105_carry__1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => \total_Q__105_carry__1_i_1_n_0\,
      DI(1) => \total_Q__105_carry__1_i_2_n_0\,
      DI(0) => \total_Q__105_carry__1_i_3_n_0\,
      O(7 downto 4) => \NLW_total_Q__105_carry__1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => m_axis_tdata(31 downto 28),
      S(7 downto 4) => B"0000",
      S(3) => \total_Q__105_carry__1_i_4_n_0\,
      S(2) => \total_Q__105_carry__1_i_5_n_0\,
      S(1) => \total_Q__105_carry__1_i_6_n_0\,
      S(0) => \total_Q__105_carry__1_i_7_n_0\
    );
\total_Q__105_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => total_Q50,
      I1 => \total_Q__0_carry__1_n_6\,
      I2 => \total_Q__53_carry__1_n_15\,
      O => \total_Q__105_carry__1_i_1_n_0\
    );
\total_Q__105_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_9\,
      I1 => \total_Q__0_carry__1_n_15\,
      I2 => \Q2_reg_n_0_[13]\,
      O => \total_Q__105_carry__1_i_2_n_0\
    );
\total_Q__105_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_10\,
      I1 => \total_Q__0_carry__0_n_8\,
      I2 => \Q2_reg_n_0_[12]\,
      O => \total_Q__105_carry__1_i_3_n_0\
    );
\total_Q__105_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D24B"
    )
        port map (
      I0 => total_Q50,
      I1 => \total_Q__0_carry__1_n_6\,
      I2 => \total_Q__53_carry__1_n_14\,
      I3 => \total_Q__53_carry__1_n_15\,
      O => \total_Q__105_carry__1_i_4_n_0\
    );
\total_Q__105_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666669"
    )
        port map (
      I0 => total_Q50,
      I1 => \total_Q__53_carry__1_n_15\,
      I2 => \Q2_reg_n_0_[14]\,
      I3 => \total_Q__53_carry__0_n_8\,
      I4 => \total_Q__0_carry__1_n_6\,
      O => \total_Q__105_carry__1_i_5_n_0\
    );
\total_Q__105_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \total_Q__105_carry__1_i_2_n_0\,
      I1 => \total_Q__0_carry__1_n_6\,
      I2 => \total_Q__53_carry__0_n_8\,
      I3 => \Q2_reg_n_0_[14]\,
      O => \total_Q__105_carry__1_i_6_n_0\
    );
\total_Q__105_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_n_9\,
      I1 => \total_Q__0_carry__1_n_15\,
      I2 => \Q2_reg_n_0_[13]\,
      I3 => \total_Q__105_carry__1_i_3_n_0\,
      O => \total_Q__105_carry__1_i_7_n_0\
    );
\total_Q__105_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry_n_11\,
      I1 => \total_Q__0_carry_n_9\,
      I2 => \Q2_reg_n_0_[3]\,
      O => \total_Q__105_carry_i_1_n_0\
    );
\total_Q__105_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \total_Q__53_carry_n_14\,
      I1 => \total_Q__0_carry_n_12\,
      I2 => \Q2_reg_n_0_[0]\,
      I3 => \total_Q__0_carry_n_13\,
      I4 => \total_Q__53_carry_n_15\,
      O => \total_Q__105_carry_i_10_n_0\
    );
\total_Q__105_carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Q2_reg_n_0_[1]\,
      I1 => \total_Q__53_carry_n_15\,
      I2 => \total_Q__0_carry_n_13\,
      O => \total_Q__105_carry_i_11_n_0\
    );
\total_Q__105_carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Q2_reg_n_0_[1]\,
      I1 => \total_Q__0_carry_n_14\,
      O => \total_Q__105_carry_i_12_n_0\
    );
\total_Q__105_carry_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_Q__0_carry_n_15\,
      I1 => \Q2_reg_n_0_[0]\,
      O => \total_Q__105_carry_i_13_n_0\
    );
\total_Q__105_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry_n_12\,
      I1 => \total_Q__0_carry_n_10\,
      I2 => \Q2_reg_n_0_[2]\,
      O => \total_Q__105_carry_i_2_n_0\
    );
\total_Q__105_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry_n_13\,
      I1 => \total_Q__0_carry_n_11\,
      I2 => \Q2_reg_n_0_[1]\,
      O => \total_Q__105_carry_i_3_n_0\
    );
\total_Q__105_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \total_Q__53_carry_n_14\,
      I1 => \total_Q__0_carry_n_12\,
      I2 => \Q2_reg_n_0_[0]\,
      O => \total_Q__105_carry_i_4_n_0\
    );
\total_Q__105_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Q2_reg_n_0_[0]\,
      I1 => \total_Q__53_carry_n_14\,
      I2 => \total_Q__0_carry_n_12\,
      O => \total_Q__105_carry_i_5_n_0\
    );
\total_Q__105_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry_n_10\,
      I1 => \total_Q__0_carry_n_8\,
      I2 => \Q2_reg_n_0_[4]\,
      I3 => \total_Q__105_carry_i_1_n_0\,
      O => \total_Q__105_carry_i_6_n_0\
    );
\total_Q__105_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry_n_11\,
      I1 => \total_Q__0_carry_n_9\,
      I2 => \Q2_reg_n_0_[3]\,
      I3 => \total_Q__105_carry_i_2_n_0\,
      O => \total_Q__105_carry_i_7_n_0\
    );
\total_Q__105_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry_n_12\,
      I1 => \total_Q__0_carry_n_10\,
      I2 => \Q2_reg_n_0_[2]\,
      I3 => \total_Q__105_carry_i_3_n_0\,
      O => \total_Q__105_carry_i_8_n_0\
    );
\total_Q__105_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry_n_13\,
      I1 => \total_Q__0_carry_n_11\,
      I2 => \Q2_reg_n_0_[1]\,
      I3 => \total_Q__105_carry_i_4_n_0\,
      O => \total_Q__105_carry_i_9_n_0\
    );
\total_Q__53_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \total_Q__53_carry_n_0\,
      CO(6) => \total_Q__53_carry_n_1\,
      CO(5) => \total_Q__53_carry_n_2\,
      CO(4) => \total_Q__53_carry_n_3\,
      CO(3) => \total_Q__53_carry_n_4\,
      CO(2) => \total_Q__53_carry_n_5\,
      CO(1) => \total_Q__53_carry_n_6\,
      CO(0) => \total_Q__53_carry_n_7\,
      DI(7) => \total_Q__53_carry_i_1_n_0\,
      DI(6) => \total_Q__53_carry_i_2_n_0\,
      DI(5) => \total_Q__53_carry_i_3_n_0\,
      DI(4) => \total_Q__53_carry_i_4_n_0\,
      DI(3) => \total_Q__53_carry_i_5_n_0\,
      DI(2) => \Q4_reg_n_0_[1]\,
      DI(1) => \Q4_reg_n_0_[0]\,
      DI(0) => '0',
      O(7) => \total_Q__53_carry_n_8\,
      O(6) => \total_Q__53_carry_n_9\,
      O(5) => \total_Q__53_carry_n_10\,
      O(4) => \total_Q__53_carry_n_11\,
      O(3) => \total_Q__53_carry_n_12\,
      O(2) => \total_Q__53_carry_n_13\,
      O(1) => \total_Q__53_carry_n_14\,
      O(0) => \total_Q__53_carry_n_15\,
      S(7) => \total_Q__53_carry_i_6_n_0\,
      S(6) => \total_Q__53_carry_i_7_n_0\,
      S(5) => \total_Q__53_carry_i_8_n_0\,
      S(4) => \total_Q__53_carry_i_9_n_0\,
      S(3) => \total_Q__53_carry_i_10_n_0\,
      S(2) => \total_Q__53_carry_i_11_n_0\,
      S(1) => \total_Q__53_carry_i_12_n_0\,
      S(0) => \Q2_reg_n_0_[2]\
    );
\total_Q__53_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_Q__53_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \total_Q__53_carry__0_n_0\,
      CO(6) => \total_Q__53_carry__0_n_1\,
      CO(5) => \total_Q__53_carry__0_n_2\,
      CO(4) => \total_Q__53_carry__0_n_3\,
      CO(3) => \total_Q__53_carry__0_n_4\,
      CO(2) => \total_Q__53_carry__0_n_5\,
      CO(1) => \total_Q__53_carry__0_n_6\,
      CO(0) => \total_Q__53_carry__0_n_7\,
      DI(7) => \total_Q__53_carry__0_i_1_n_0\,
      DI(6) => \total_Q__53_carry__0_i_2_n_0\,
      DI(5) => \total_Q__53_carry__0_i_3_n_0\,
      DI(4) => \total_Q__53_carry__0_i_4_n_0\,
      DI(3) => \total_Q__53_carry__0_i_5_n_0\,
      DI(2) => \total_Q__53_carry__0_i_6_n_0\,
      DI(1) => \total_Q__53_carry__0_i_7_n_0\,
      DI(0) => \total_Q__53_carry__0_i_8_n_0\,
      O(7) => \total_Q__53_carry__0_n_8\,
      O(6) => \total_Q__53_carry__0_n_9\,
      O(5) => \total_Q__53_carry__0_n_10\,
      O(4) => \total_Q__53_carry__0_n_11\,
      O(3) => \total_Q__53_carry__0_n_12\,
      O(2) => \total_Q__53_carry__0_n_13\,
      O(1) => \total_Q__53_carry__0_n_14\,
      O(0) => \total_Q__53_carry__0_n_15\,
      S(7) => \total_Q__53_carry__0_i_9_n_0\,
      S(6) => \total_Q__53_carry__0_i_10_n_0\,
      S(5) => \total_Q__53_carry__0_i_11_n_0\,
      S(4) => \total_Q__53_carry__0_i_12_n_0\,
      S(3) => \total_Q__53_carry__0_i_13_n_0\,
      S(2) => \total_Q__53_carry__0_i_14_n_0\,
      S(1) => \total_Q__53_carry__0_i_15_n_0\,
      S(0) => \total_Q__53_carry__0_i_16_n_0\
    );
\total_Q__53_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => total_Q50,
      I1 => total_Q3(15),
      I2 => total_Q3(16),
      I3 => \Q4_reg_n_0_[13]\,
      O => \total_Q__53_carry__0_i_1_n_0\
    );
\total_Q__53_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C69963C"
    )
        port map (
      I0 => \Q4_reg_n_0_[12]\,
      I1 => \Q4_reg_n_0_[13]\,
      I2 => total_Q3(16),
      I3 => total_Q3(15),
      I4 => total_Q50,
      O => \total_Q__53_carry__0_i_10_n_0\
    );
\total_Q__53_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \Q4_reg_n_0_[12]\,
      I1 => total_Q3(15),
      I2 => total_Q50,
      I3 => \Q4_reg_n_0_[11]\,
      I4 => total_Q3(14),
      I5 => \Q2_reg_n_0_[14]\,
      O => \total_Q__53_carry__0_i_11_n_0\
    );
\total_Q__53_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \total_Q__53_carry__0_i_4_n_0\,
      I1 => total_Q3(14),
      I2 => \Q2_reg_n_0_[14]\,
      I3 => \Q4_reg_n_0_[11]\,
      O => \total_Q__53_carry__0_i_12_n_0\
    );
\total_Q__53_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[13]\,
      I1 => total_Q3(13),
      I2 => \Q4_reg_n_0_[10]\,
      I3 => \total_Q__53_carry__0_i_5_n_0\,
      O => \total_Q__53_carry__0_i_13_n_0\
    );
\total_Q__53_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[12]\,
      I1 => total_Q3(12),
      I2 => \Q4_reg_n_0_[9]\,
      I3 => \total_Q__53_carry__0_i_6_n_0\,
      O => \total_Q__53_carry__0_i_14_n_0\
    );
\total_Q__53_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[11]\,
      I1 => total_Q3(11),
      I2 => \Q4_reg_n_0_[8]\,
      I3 => \total_Q__53_carry__0_i_7_n_0\,
      O => \total_Q__53_carry__0_i_15_n_0\
    );
\total_Q__53_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[10]\,
      I1 => total_Q3(10),
      I2 => \Q4_reg_n_0_[7]\,
      I3 => \total_Q__53_carry__0_i_8_n_0\,
      O => \total_Q__53_carry__0_i_16_n_0\
    );
\total_Q__53_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \Q4_reg_n_0_[12]\,
      I1 => total_Q50,
      I2 => total_Q3(15),
      O => \total_Q__53_carry__0_i_2_n_0\
    );
\total_Q__53_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => total_Q50,
      I1 => total_Q3(15),
      I2 => \Q4_reg_n_0_[12]\,
      O => \total_Q__53_carry__0_i_3_n_0\
    );
\total_Q__53_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[13]\,
      I1 => total_Q3(13),
      I2 => \Q4_reg_n_0_[10]\,
      O => \total_Q__53_carry__0_i_4_n_0\
    );
\total_Q__53_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[12]\,
      I1 => total_Q3(12),
      I2 => \Q4_reg_n_0_[9]\,
      O => \total_Q__53_carry__0_i_5_n_0\
    );
\total_Q__53_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[11]\,
      I1 => total_Q3(11),
      I2 => \Q4_reg_n_0_[8]\,
      O => \total_Q__53_carry__0_i_6_n_0\
    );
\total_Q__53_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[10]\,
      I1 => total_Q3(10),
      I2 => \Q4_reg_n_0_[7]\,
      O => \total_Q__53_carry__0_i_7_n_0\
    );
\total_Q__53_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[9]\,
      I1 => total_Q3(9),
      I2 => \Q4_reg_n_0_[6]\,
      O => \total_Q__53_carry__0_i_8_n_0\
    );
\total_Q__53_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44B0FF00FF04BB4"
    )
        port map (
      I0 => total_Q3(15),
      I1 => total_Q50,
      I2 => \Q4_reg_n_0_[14]\,
      I3 => total_Q3(17),
      I4 => \Q4_reg_n_0_[13]\,
      I5 => total_Q3(16),
      O => \total_Q__53_carry__0_i_9_n_0\
    );
\total_Q__53_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_Q__53_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_total_Q__53_carry__1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \total_Q__53_carry__1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \total_Q__53_carry__1_i_1_n_0\,
      O(7 downto 2) => \NLW_total_Q__53_carry__1_O_UNCONNECTED\(7 downto 2),
      O(1) => \total_Q__53_carry__1_n_14\,
      O(0) => \total_Q__53_carry__1_n_15\,
      S(7 downto 2) => B"000000",
      S(1) => \total_Q__53_carry__1_i_2_n_0\,
      S(0) => \total_Q__53_carry__1_i_3_n_0\
    );
\total_Q__53_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => total_Q3(16),
      I1 => \Q4_reg_n_0_[13]\,
      I2 => total_Q3(17),
      I3 => \Q4_reg_n_0_[14]\,
      O => \total_Q__53_carry__1_i_1_n_0\
    );
\total_Q__53_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FE1F01"
    )
        port map (
      I0 => \Q4_reg_n_0_[14]\,
      I1 => total_Q3(17),
      I2 => total_Q3(18),
      I3 => total_Q20,
      I4 => total_Q3(19),
      O => \total_Q__53_carry__1_i_2_n_0\
    );
\total_Q__53_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \Q4_reg_n_0_[13]\,
      I1 => total_Q3(16),
      I2 => total_Q20,
      I3 => total_Q3(18),
      I4 => \Q4_reg_n_0_[14]\,
      I5 => total_Q3(17),
      O => \total_Q__53_carry__1_i_3_n_0\
    );
\total_Q__53_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[8]\,
      I1 => total_Q3(8),
      I2 => \Q4_reg_n_0_[5]\,
      O => \total_Q__53_carry_i_1_n_0\
    );
\total_Q__53_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \Q2_reg_n_0_[5]\,
      I1 => total_Q3(5),
      I2 => \Q4_reg_n_0_[2]\,
      I3 => total_Q3(4),
      I4 => \Q2_reg_n_0_[4]\,
      O => \total_Q__53_carry_i_10_n_0\
    );
\total_Q__53_carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Q2_reg_n_0_[4]\,
      I1 => total_Q3(4),
      I2 => \Q4_reg_n_0_[1]\,
      O => \total_Q__53_carry_i_11_n_0\
    );
\total_Q__53_carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Q4_reg_n_0_[0]\,
      I1 => \Q2_reg_n_0_[3]\,
      O => \total_Q__53_carry_i_12_n_0\
    );
\total_Q__53_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[7]\,
      I1 => total_Q3(7),
      I2 => \Q4_reg_n_0_[4]\,
      O => \total_Q__53_carry_i_2_n_0\
    );
\total_Q__53_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[6]\,
      I1 => total_Q3(6),
      I2 => \Q4_reg_n_0_[3]\,
      O => \total_Q__53_carry_i_3_n_0\
    );
\total_Q__53_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Q2_reg_n_0_[5]\,
      I1 => total_Q3(5),
      I2 => \Q4_reg_n_0_[2]\,
      O => \total_Q__53_carry_i_4_n_0\
    );
\total_Q__53_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Q4_reg_n_0_[2]\,
      I1 => \Q2_reg_n_0_[5]\,
      I2 => total_Q3(5),
      O => \total_Q__53_carry_i_5_n_0\
    );
\total_Q__53_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[9]\,
      I1 => total_Q3(9),
      I2 => \Q4_reg_n_0_[6]\,
      I3 => \total_Q__53_carry_i_1_n_0\,
      O => \total_Q__53_carry_i_6_n_0\
    );
\total_Q__53_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[8]\,
      I1 => total_Q3(8),
      I2 => \Q4_reg_n_0_[5]\,
      I3 => \total_Q__53_carry_i_2_n_0\,
      O => \total_Q__53_carry_i_7_n_0\
    );
\total_Q__53_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[7]\,
      I1 => total_Q3(7),
      I2 => \Q4_reg_n_0_[4]\,
      I3 => \total_Q__53_carry_i_3_n_0\,
      O => \total_Q__53_carry_i_8_n_0\
    );
\total_Q__53_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Q2_reg_n_0_[6]\,
      I1 => total_Q3(6),
      I2 => \Q4_reg_n_0_[3]\,
      I3 => \total_Q__53_carry_i_4_n_0\,
      O => \total_Q__53_carry_i_9_n_0\
    );
end STRUCTURE;
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "duc_cfr_dpd_halfband_fir_1_0,halfband_fir,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "halfband_fir,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tkeep\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN duc_cfr_dpd_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_dpd_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96968727, PHASE 0.0, CLK_DOMAIN duc_cfr_dpd_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_halfband_fir
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => \^m_axis_tready\,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => \^s_axis_tlast\,
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
