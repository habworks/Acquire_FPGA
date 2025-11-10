-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Oct 24 11:31:10 2025
-- Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7_sim_netlist.vhdl
-- Design      : Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_core is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    ADC_CLK_reg_0 : out STD_LOGIC;
    IRQ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 26 downto 0 );
    ADC_CS_n : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 26 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s00_axi_rdata[27]\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s00_axi_rdata_11_sp_1 : in STD_LOGIC;
    s00_axi_rdata_3_sp_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    ADC_MISO_A : in STD_LOGIC;
    ADC_MISO_B : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_core is
  signal ADC_CLK_Delay_1_Clk : STD_LOGIC;
  signal ADC_CLK_i_1_n_0 : STD_LOGIC;
  signal \^adc_clk_reg_0\ : STD_LOGIC;
  signal ADC_Shift_A : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ClockDividerCount1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \ClockDividerCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \ClockDividerCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \ClockDividerCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \ClockDividerCount[3]_i_1_n_0\ : STD_LOGIC;
  signal \ClockDividerCount[3]_i_2_n_0\ : STD_LOGIC;
  signal \ClockDividerCount[3]_i_3_n_0\ : STD_LOGIC;
  signal \ClockDividerCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \ClockDividerCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \ClockDividerCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \ClockDividerCount_reg_n_0_[3]\ : STD_LOGIC;
  signal ContinuousConversion : STD_LOGIC;
  signal Continuous_Delay_1_Clk : STD_LOGIC;
  signal ConversionCount : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ConversionCount0_carry__0_n_0\ : STD_LOGIC;
  signal \ConversionCount0_carry__0_n_1\ : STD_LOGIC;
  signal \ConversionCount0_carry__0_n_2\ : STD_LOGIC;
  signal \ConversionCount0_carry__0_n_3\ : STD_LOGIC;
  signal \ConversionCount0_carry__1_n_2\ : STD_LOGIC;
  signal \ConversionCount0_carry__1_n_3\ : STD_LOGIC;
  signal ConversionCount0_carry_n_0 : STD_LOGIC;
  signal ConversionCount0_carry_n_1 : STD_LOGIC;
  signal ConversionCount0_carry_n_2 : STD_LOGIC;
  signal ConversionCount0_carry_n_3 : STD_LOGIC;
  signal \ConversionCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[10]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[11]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[11]_i_2_n_0\ : STD_LOGIC;
  signal \ConversionCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[3]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[4]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[5]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[6]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[7]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[8]_i_1_n_0\ : STD_LOGIC;
  signal \ConversionCount[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_State_reg_n_0_[0]\ : STD_LOGIC;
  signal \QuietCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \QuietCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \QuietCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \QuietCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \QuietCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \QuietCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal ShiftBitCount : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ShiftBitCount[4]_i_1_n_0\ : STD_LOGIC;
  signal \ShiftBitCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \ShiftBitCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \ShiftBitCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \ShiftBitCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \ShiftBitCount_reg_n_0_[4]\ : STD_LOGIC;
  signal SingleConversion : STD_LOGIC;
  signal Single_Delay_1_Clk : STD_LOGIC;
  signal State11_in : STD_LOGIC;
  signal \State1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \State1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \State1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal State2 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \State2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \State2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \State2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \State2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \State2_carry__0_n_0\ : STD_LOGIC;
  signal \State2_carry__0_n_1\ : STD_LOGIC;
  signal \State2_carry__0_n_2\ : STD_LOGIC;
  signal \State2_carry__0_n_3\ : STD_LOGIC;
  signal \State2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \State2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \State2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \State2_carry__1_n_2\ : STD_LOGIC;
  signal \State2_carry__1_n_3\ : STD_LOGIC;
  signal State2_carry_i_1_n_0 : STD_LOGIC;
  signal State2_carry_i_2_n_0 : STD_LOGIC;
  signal State2_carry_i_3_n_0 : STD_LOGIC;
  signal State2_carry_i_4_n_0 : STD_LOGIC;
  signal State2_carry_n_0 : STD_LOGIC;
  signal State2_carry_n_1 : STD_LOGIC;
  signal State2_carry_n_2 : STD_LOGIC;
  signal State2_carry_n_3 : STD_LOGIC;
  signal StatusBusy : STD_LOGIC;
  signal StatusBusy_0 : STD_LOGIC;
  signal StatusBusy_i_1_n_0 : STD_LOGIC;
  signal StatusBusy_i_2_n_0 : STD_LOGIC;
  signal \StatusDebug[0]_i_1_n_0\ : STD_LOGIC;
  signal \StatusDebug[1]_i_1_n_0\ : STD_LOGIC;
  signal \StatusDebug[2]_i_1_n_0\ : STD_LOGIC;
  signal \StatusDebug_reg_n_0_[0]\ : STD_LOGIC;
  signal \StatusDebug_reg_n_0_[1]\ : STD_LOGIC;
  signal \StatusDebug_reg_n_0_[2]\ : STD_LOGIC;
  signal StatusReady_i_1_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in14 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in_1 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_11_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_3_sn_1 : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_ClockDividerCount1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ClockDividerCount1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ClockDividerCount1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ClockDividerCount1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ConversionCount0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ConversionCount0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_State1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_State2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_State2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ADC_CS_n_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ClockDividerCount[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ClockDividerCount[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ClockDividerCount[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Continuous_Delay_1_Clk_i_1 : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ConversionCount0_carry : label is 35;
  attribute ADDER_THRESHOLD of \ConversionCount0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ConversionCount0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \ConversionCount[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ConversionCount[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ConversionCount[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ConversionCount[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ConversionCount[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ConversionCount[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ConversionCount[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ConversionCount[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ConversionCount[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ConversionCount[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ConversionCount[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ConversionCount[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_State[5]_i_2\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[0]\ : label is "iSTATE:000100,iSTATE0:100000,iSTATE1:010000,iSTATE2:001000,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[1]\ : label is "iSTATE:000100,iSTATE0:100000,iSTATE1:010000,iSTATE2:001000,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[2]\ : label is "iSTATE:000100,iSTATE0:100000,iSTATE1:010000,iSTATE2:001000,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[3]\ : label is "iSTATE:000100,iSTATE0:100000,iSTATE1:010000,iSTATE2:001000,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[4]\ : label is "iSTATE:000100,iSTATE0:100000,iSTATE1:010000,iSTATE2:001000,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[5]\ : label is "iSTATE:000100,iSTATE0:100000,iSTATE1:010000,iSTATE2:001000,iSTATE3:000010,iSTATE4:000001";
  attribute SOFT_HLUTNM of IRQ_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ShiftBitCount[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ShiftBitCount[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ShiftBitCount[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ShiftBitCount[3]_i_1\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of State2_carry : label is 35;
  attribute ADDER_THRESHOLD of \State2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \State2_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of StatusBusy_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \StatusDebug[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0_i_2\ : label is "soft_lutpair0";
begin
  ADC_CLK_reg_0 <= \^adc_clk_reg_0\;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
  s00_axi_rdata_11_sn_1 <= s00_axi_rdata_11_sp_1;
  s00_axi_rdata_3_sn_1 <= s00_axi_rdata_3_sp_1;
ADC_CLK_Delay_1_Clk_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \^adc_clk_reg_0\,
      Q => ADC_CLK_Delay_1_Clk
    );
ADC_CLK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFF1FFF00000"
    )
        port map (
      I0 => p_0_in_1,
      I1 => p_1_in,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I5 => \^adc_clk_reg_0\,
      O => ADC_CLK_i_1_n_0
    );
ADC_CLK_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
ADC_CLK_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => ADC_CLK_i_1_n_0,
      Q => \^adc_clk_reg_0\
    );
ADC_CS_n_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => p_0_in0_in,
      I2 => StatusBusy_0,
      I3 => p_1_in,
      O => ADC_CS_n
    );
\ADC_Shift_A[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => \^adc_clk_reg_0\,
      I2 => ADC_CLK_Delay_1_Clk,
      O => ADC_Shift_A
    );
\ADC_Shift_A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => ADC_MISO_A,
      Q => p_0_in(1)
    );
\ADC_Shift_A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(10),
      Q => p_0_in(11)
    );
\ADC_Shift_A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(11),
      Q => p_0_in(12)
    );
\ADC_Shift_A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(1),
      Q => p_0_in(2)
    );
\ADC_Shift_A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(2),
      Q => p_0_in(3)
    );
\ADC_Shift_A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(3),
      Q => p_0_in(4)
    );
\ADC_Shift_A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(4),
      Q => p_0_in(5)
    );
\ADC_Shift_A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(5),
      Q => p_0_in(6)
    );
\ADC_Shift_A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(6),
      Q => p_0_in(7)
    );
\ADC_Shift_A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(7),
      Q => p_0_in(8)
    );
\ADC_Shift_A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(8),
      Q => p_0_in(9)
    );
\ADC_Shift_A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(9),
      Q => p_0_in(10)
    );
\ADC_Shift_B_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => ADC_MISO_B,
      Q => \p_0_in__0\(1)
    );
\ADC_Shift_B_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(10),
      Q => \p_0_in__0\(11)
    );
\ADC_Shift_B_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(11),
      Q => \p_0_in__0\(12)
    );
\ADC_Shift_B_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(1),
      Q => \p_0_in__0\(2)
    );
\ADC_Shift_B_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(2),
      Q => \p_0_in__0\(3)
    );
\ADC_Shift_B_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(3),
      Q => \p_0_in__0\(4)
    );
\ADC_Shift_B_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(4),
      Q => \p_0_in__0\(5)
    );
\ADC_Shift_B_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(5),
      Q => \p_0_in__0\(6)
    );
\ADC_Shift_B_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(6),
      Q => \p_0_in__0\(7)
    );
\ADC_Shift_B_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(7),
      Q => \p_0_in__0\(8)
    );
\ADC_Shift_B_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(8),
      Q => \p_0_in__0\(9)
    );
\ADC_Shift_B_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ADC_Shift_A,
      CLR => \^s00_axi_aresetn_0\,
      D => \p_0_in__0\(9),
      Q => \p_0_in__0\(10)
    );
\ClockDividerCount1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ClockDividerCount1_inferred__0/i__carry_n_0\,
      CO(2) => \ClockDividerCount1_inferred__0/i__carry_n_1\,
      CO(1) => \ClockDividerCount1_inferred__0/i__carry_n_2\,
      CO(0) => \ClockDividerCount1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ClockDividerCount1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\ClockDividerCount1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ClockDividerCount1_inferred__0/i__carry_n_0\,
      CO(3) => \ClockDividerCount1_inferred__0/i__carry__0_n_0\,
      CO(2) => \ClockDividerCount1_inferred__0/i__carry__0_n_1\,
      CO(1) => \ClockDividerCount1_inferred__0/i__carry__0_n_2\,
      CO(0) => \ClockDividerCount1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ClockDividerCount1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\ClockDividerCount1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ClockDividerCount1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_ClockDividerCount1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      CO(1) => \ClockDividerCount1_inferred__0/i__carry__1_n_2\,
      CO(0) => \ClockDividerCount1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ClockDividerCount1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
\ClockDividerCount[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_1_in1_in,
      I2 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I3 => \ClockDividerCount_reg_n_0_[0]\,
      O => \ClockDividerCount[0]_i_1_n_0\
    );
\ClockDividerCount[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0E00"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_1_in1_in,
      I2 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I3 => \ClockDividerCount_reg_n_0_[1]\,
      I4 => \ClockDividerCount_reg_n_0_[0]\,
      O => \ClockDividerCount[1]_i_1_n_0\
    );
\ClockDividerCount[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054540054005400"
    )
        port map (
      I0 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I1 => p_1_in1_in,
      I2 => p_0_in0_in,
      I3 => \ClockDividerCount_reg_n_0_[2]\,
      I4 => \ClockDividerCount_reg_n_0_[0]\,
      I5 => \ClockDividerCount_reg_n_0_[1]\,
      O => \ClockDividerCount[2]_i_1_n_0\
    );
\ClockDividerCount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in_1,
      I2 => p_1_in1_in,
      I3 => p_0_in0_in,
      O => \ClockDividerCount[3]_i_1_n_0\
    );
\ClockDividerCount[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F80"
    )
        port map (
      I0 => \ClockDividerCount_reg_n_0_[1]\,
      I1 => \ClockDividerCount_reg_n_0_[0]\,
      I2 => \ClockDividerCount_reg_n_0_[2]\,
      I3 => \ClockDividerCount_reg_n_0_[3]\,
      I4 => \ClockDividerCount[3]_i_3_n_0\,
      I5 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      O => \ClockDividerCount[3]_i_2_n_0\
    );
\ClockDividerCount[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_1_in1_in,
      O => \ClockDividerCount[3]_i_3_n_0\
    );
\ClockDividerCount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ClockDividerCount[3]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ClockDividerCount[0]_i_1_n_0\,
      Q => \ClockDividerCount_reg_n_0_[0]\
    );
\ClockDividerCount_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ClockDividerCount[3]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ClockDividerCount[1]_i_1_n_0\,
      Q => \ClockDividerCount_reg_n_0_[1]\
    );
\ClockDividerCount_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ClockDividerCount[3]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ClockDividerCount[2]_i_1_n_0\,
      Q => \ClockDividerCount_reg_n_0_[2]\
    );
\ClockDividerCount_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ClockDividerCount[3]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ClockDividerCount[3]_i_2_n_0\,
      Q => \ClockDividerCount_reg_n_0_[3]\
    );
Continuous_Delay_1_Clk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => ContinuousConversion
    );
Continuous_Delay_1_Clk_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => ContinuousConversion,
      Q => Continuous_Delay_1_Clk
    );
ConversionCount0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ConversionCount0_carry_n_0,
      CO(2) => ConversionCount0_carry_n_1,
      CO(1) => ConversionCount0_carry_n_2,
      CO(0) => ConversionCount0_carry_n_3,
      CYINIT => ConversionCount(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in14(4 downto 1),
      S(3 downto 0) => ConversionCount(4 downto 1)
    );
\ConversionCount0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ConversionCount0_carry_n_0,
      CO(3) => \ConversionCount0_carry__0_n_0\,
      CO(2) => \ConversionCount0_carry__0_n_1\,
      CO(1) => \ConversionCount0_carry__0_n_2\,
      CO(0) => \ConversionCount0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in14(8 downto 5),
      S(3 downto 0) => ConversionCount(8 downto 5)
    );
\ConversionCount0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ConversionCount0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_ConversionCount0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ConversionCount0_carry__1_n_2\,
      CO(0) => \ConversionCount0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ConversionCount0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => in14(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => ConversionCount(11 downto 9)
    );
\ConversionCount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in,
      I1 => ConversionCount(0),
      O => \ConversionCount[0]_i_1_n_0\
    );
\ConversionCount[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(10),
      O => \ConversionCount[10]_i_1_n_0\
    );
\ConversionCount[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => \FSM_onehot_State[5]_i_5_n_0\,
      I1 => State11_in,
      I2 => Q(2),
      I3 => \FSM_onehot_State[5]_i_4_n_0\,
      O => \ConversionCount[11]_i_1_n_0\
    );
\ConversionCount[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(11),
      O => \ConversionCount[11]_i_2_n_0\
    );
\ConversionCount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(1),
      O => \ConversionCount[1]_i_1_n_0\
    );
\ConversionCount[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(2),
      O => \ConversionCount[2]_i_1_n_0\
    );
\ConversionCount[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(3),
      O => \ConversionCount[3]_i_1_n_0\
    );
\ConversionCount[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(4),
      O => \ConversionCount[4]_i_1_n_0\
    );
\ConversionCount[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(5),
      O => \ConversionCount[5]_i_1_n_0\
    );
\ConversionCount[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(6),
      O => \ConversionCount[6]_i_1_n_0\
    );
\ConversionCount[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(7),
      O => \ConversionCount[7]_i_1_n_0\
    );
\ConversionCount[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(8),
      O => \ConversionCount[8]_i_1_n_0\
    );
\ConversionCount[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => in14(9),
      O => \ConversionCount[9]_i_1_n_0\
    );
\ConversionCount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[0]_i_1_n_0\,
      Q => ConversionCount(0)
    );
\ConversionCount_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[10]_i_1_n_0\,
      Q => ConversionCount(10)
    );
\ConversionCount_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[11]_i_2_n_0\,
      Q => ConversionCount(11)
    );
\ConversionCount_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[1]_i_1_n_0\,
      Q => ConversionCount(1)
    );
\ConversionCount_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[2]_i_1_n_0\,
      Q => ConversionCount(2)
    );
\ConversionCount_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[3]_i_1_n_0\,
      Q => ConversionCount(3)
    );
\ConversionCount_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[4]_i_1_n_0\,
      Q => ConversionCount(4)
    );
\ConversionCount_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[5]_i_1_n_0\,
      Q => ConversionCount(5)
    );
\ConversionCount_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[6]_i_1_n_0\,
      Q => ConversionCount(6)
    );
\ConversionCount_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[7]_i_1_n_0\,
      Q => ConversionCount(7)
    );
\ConversionCount_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[8]_i_1_n_0\,
      Q => ConversionCount(8)
    );
\ConversionCount_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ConversionCount[11]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \ConversionCount[9]_i_1_n_0\,
      Q => ConversionCount(9)
    );
\FSM_onehot_State[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => p_1_in,
      I1 => Q(1),
      I2 => Q(2),
      I3 => State11_in,
      O => \FSM_onehot_State[0]_i_1_n_0\
    );
\FSM_onehot_State[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => State11_in,
      I3 => p_1_in,
      O => \FSM_onehot_State[1]_i_1_n_0\
    );
\FSM_onehot_State[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_1,
      I1 => \FSM_onehot_State_reg_n_0_[0]\,
      O => \FSM_onehot_State[2]_i_1_n_0\
    );
\FSM_onehot_State[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF40"
    )
        port map (
      I0 => \ShiftBitCount_reg_n_0_[4]\,
      I1 => \FSM_onehot_State[5]_i_2_n_0\,
      I2 => ADC_Shift_A,
      I3 => \FSM_onehot_State[5]_i_3_n_0\,
      I4 => \FSM_onehot_State[5]_i_4_n_0\,
      I5 => \FSM_onehot_State[5]_i_5_n_0\,
      O => \FSM_onehot_State[5]_i_1_n_0\
    );
\FSM_onehot_State[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \ShiftBitCount_reg_n_0_[3]\,
      I1 => \ShiftBitCount_reg_n_0_[2]\,
      I2 => \ShiftBitCount_reg_n_0_[0]\,
      I3 => \ShiftBitCount_reg_n_0_[1]\,
      O => \FSM_onehot_State[5]_i_2_n_0\
    );
\FSM_onehot_State[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF707070"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => \s00_axi_rdata[27]\(0),
      I2 => StatusBusy_0,
      I3 => p_0_in0_in,
      I4 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I5 => p_0_in_1,
      O => \FSM_onehot_State[5]_i_3_n_0\
    );
\FSM_onehot_State[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \QuietCnt_reg_n_0_[0]\,
      I1 => \QuietCnt_reg_n_0_[1]\,
      I2 => \QuietCnt_reg_n_0_[2]\,
      I3 => p_1_in,
      I4 => Q(1),
      O => \FSM_onehot_State[5]_i_4_n_0\
    );
\FSM_onehot_State[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"048C000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Single_Delay_1_Clk,
      I3 => Continuous_Delay_1_Clk,
      I4 => Q(0),
      I5 => \FSM_onehot_State_reg_n_0_[0]\,
      O => \FSM_onehot_State[5]_i_5_n_0\
    );
\FSM_onehot_State_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_State[5]_i_1_n_0\,
      D => \FSM_onehot_State[0]_i_1_n_0\,
      PRE => \^s00_axi_aresetn_0\,
      Q => \FSM_onehot_State_reg_n_0_[0]\
    );
\FSM_onehot_State_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_State[5]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \FSM_onehot_State[1]_i_1_n_0\,
      Q => p_0_in_1
    );
\FSM_onehot_State_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_State[5]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \FSM_onehot_State[2]_i_1_n_0\,
      Q => StatusBusy_0
    );
\FSM_onehot_State_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_State[5]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in0_in,
      Q => p_1_in
    );
\FSM_onehot_State_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_State[5]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in1_in,
      Q => p_0_in0_in
    );
\FSM_onehot_State_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_State[5]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => StatusBusy_0,
      Q => p_1_in1_in
    );
IRQ_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => \s00_axi_rdata[27]\(0),
      O => IRQ
    );
\QuietCnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70708FFF77770000"
    )
        port map (
      I0 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I1 => p_0_in0_in,
      I2 => \QuietCnt_reg_n_0_[2]\,
      I3 => \QuietCnt_reg_n_0_[1]\,
      I4 => \QuietCnt_reg_n_0_[0]\,
      I5 => p_1_in,
      O => \QuietCnt[0]_i_1_n_0\
    );
\QuietCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"708FFF0077007700"
    )
        port map (
      I0 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I1 => p_0_in0_in,
      I2 => \QuietCnt_reg_n_0_[2]\,
      I3 => \QuietCnt_reg_n_0_[1]\,
      I4 => \QuietCnt_reg_n_0_[0]\,
      I5 => p_1_in,
      O => \QuietCnt[1]_i_1_n_0\
    );
\QuietCnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF0F0F070707070"
    )
        port map (
      I0 => \ClockDividerCount1_inferred__0/i__carry__1_n_1\,
      I1 => p_0_in0_in,
      I2 => \QuietCnt_reg_n_0_[2]\,
      I3 => \QuietCnt_reg_n_0_[1]\,
      I4 => \QuietCnt_reg_n_0_[0]\,
      I5 => p_1_in,
      O => \QuietCnt[2]_i_1_n_0\
    );
\QuietCnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \QuietCnt[0]_i_1_n_0\,
      Q => \QuietCnt_reg_n_0_[0]\
    );
\QuietCnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \QuietCnt[1]_i_1_n_0\,
      Q => \QuietCnt_reg_n_0_[1]\
    );
\QuietCnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \QuietCnt[2]_i_1_n_0\,
      Q => \QuietCnt_reg_n_0_[2]\
    );
\ShiftBitCount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => \ShiftBitCount_reg_n_0_[0]\,
      O => ShiftBitCount(0)
    );
\ShiftBitCount[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => \ShiftBitCount_reg_n_0_[1]\,
      I2 => \ShiftBitCount_reg_n_0_[0]\,
      O => ShiftBitCount(1)
    );
\ShiftBitCount[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => \ShiftBitCount_reg_n_0_[0]\,
      I2 => \ShiftBitCount_reg_n_0_[1]\,
      I3 => \ShiftBitCount_reg_n_0_[2]\,
      O => ShiftBitCount(2)
    );
\ShiftBitCount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => \ShiftBitCount_reg_n_0_[1]\,
      I2 => \ShiftBitCount_reg_n_0_[0]\,
      I3 => \ShiftBitCount_reg_n_0_[2]\,
      I4 => \ShiftBitCount_reg_n_0_[3]\,
      O => ShiftBitCount(3)
    );
\ShiftBitCount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAEA"
    )
        port map (
      I0 => \FSM_onehot_State[5]_i_5_n_0\,
      I1 => p_1_in1_in,
      I2 => \^adc_clk_reg_0\,
      I3 => ADC_CLK_Delay_1_Clk,
      I4 => p_0_in_1,
      O => \ShiftBitCount[4]_i_1_n_0\
    );
\ShiftBitCount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => \ShiftBitCount_reg_n_0_[3]\,
      I2 => \ShiftBitCount_reg_n_0_[2]\,
      I3 => \ShiftBitCount_reg_n_0_[0]\,
      I4 => \ShiftBitCount_reg_n_0_[1]\,
      I5 => \ShiftBitCount_reg_n_0_[4]\,
      O => ShiftBitCount(4)
    );
\ShiftBitCount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ShiftBitCount[4]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => ShiftBitCount(0),
      Q => \ShiftBitCount_reg_n_0_[0]\
    );
\ShiftBitCount_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ShiftBitCount[4]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => ShiftBitCount(1),
      Q => \ShiftBitCount_reg_n_0_[1]\
    );
\ShiftBitCount_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ShiftBitCount[4]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => ShiftBitCount(2),
      Q => \ShiftBitCount_reg_n_0_[2]\
    );
\ShiftBitCount_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ShiftBitCount[4]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => ShiftBitCount(3),
      Q => \ShiftBitCount_reg_n_0_[3]\
    );
\ShiftBitCount_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ShiftBitCount[4]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => ShiftBitCount(4),
      Q => \ShiftBitCount_reg_n_0_[4]\
    );
Single_Delay_1_Clk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => SingleConversion
    );
Single_Delay_1_Clk_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => SingleConversion,
      Q => Single_Delay_1_Clk
    );
\State1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => State11_in,
      CO(2) => \State1_inferred__0/i__carry_n_1\,
      CO(1) => \State1_inferred__0/i__carry_n_2\,
      CO(0) => \State1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_State1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
State2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => State2_carry_n_0,
      CO(2) => State2_carry_n_1,
      CO(1) => State2_carry_n_2,
      CO(0) => State2_carry_n_3,
      CYINIT => Q(7),
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => State2(4 downto 1),
      S(3) => State2_carry_i_1_n_0,
      S(2) => State2_carry_i_2_n_0,
      S(1) => State2_carry_i_3_n_0,
      S(0) => State2_carry_i_4_n_0
    );
\State2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => State2_carry_n_0,
      CO(3) => \State2_carry__0_n_0\,
      CO(2) => \State2_carry__0_n_1\,
      CO(1) => \State2_carry__0_n_2\,
      CO(0) => \State2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => State2(8 downto 5),
      S(3) => \State2_carry__0_i_1_n_0\,
      S(2) => \State2_carry__0_i_2_n_0\,
      S(1) => \State2_carry__0_i_3_n_0\,
      S(0) => \State2_carry__0_i_4_n_0\
    );
\State2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      O => \State2_carry__0_i_1_n_0\
    );
\State2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(14),
      O => \State2_carry__0_i_2_n_0\
    );
\State2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      O => \State2_carry__0_i_3_n_0\
    );
\State2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(12),
      O => \State2_carry__0_i_4_n_0\
    );
\State2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \State2_carry__0_n_0\,
      CO(3 downto 2) => \NLW_State2_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \State2_carry__1_n_2\,
      CO(0) => \State2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Q(17 downto 16),
      O(3) => \NLW_State2_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => State2(11 downto 9),
      S(3) => '0',
      S(2) => \State2_carry__1_i_1_n_0\,
      S(1) => \State2_carry__1_i_2_n_0\,
      S(0) => \State2_carry__1_i_3_n_0\
    );
\State2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(18),
      O => \State2_carry__1_i_1_n_0\
    );
\State2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      O => \State2_carry__1_i_2_n_0\
    );
\State2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(16),
      O => \State2_carry__1_i_3_n_0\
    );
State2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(11),
      O => State2_carry_i_1_n_0
    );
State2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(10),
      O => State2_carry_i_2_n_0
    );
State2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => State2_carry_i_3_n_0
    );
State2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => State2_carry_i_4_n_0
    );
StatusBusy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEFFAAAAA200"
    )
        port map (
      I0 => StatusBusy_0,
      I1 => Q(2),
      I2 => State11_in,
      I3 => \FSM_onehot_State[5]_i_4_n_0\,
      I4 => StatusBusy_i_2_n_0,
      I5 => StatusBusy,
      O => StatusBusy_i_1_n_0
    );
StatusBusy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \FSM_onehot_State_reg_n_0_[0]\,
      I1 => slv_reg1(1),
      I2 => \s00_axi_rdata[27]\(0),
      I3 => StatusBusy_0,
      O => StatusBusy_i_2_n_0
    );
StatusBusy_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => StatusBusy_i_1_n_0,
      Q => StatusBusy
    );
\StatusDebug[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFECCC"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in_1,
      I2 => \FSM_onehot_State[5]_i_4_n_0\,
      I3 => Q(2),
      I4 => \StatusDebug_reg_n_0_[0]\,
      O => \StatusDebug[0]_i_1_n_0\
    );
\StatusDebug[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF8F0F0F0"
    )
        port map (
      I0 => State11_in,
      I1 => p_1_in,
      I2 => p_0_in_1,
      I3 => \FSM_onehot_State[5]_i_4_n_0\,
      I4 => Q(2),
      I5 => \StatusDebug_reg_n_0_[1]\,
      O => \StatusDebug[1]_i_1_n_0\
    );
\StatusDebug[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => p_0_in_1,
      I1 => \FSM_onehot_State[5]_i_4_n_0\,
      I2 => Q(2),
      I3 => \StatusDebug_reg_n_0_[2]\,
      O => \StatusDebug[2]_i_1_n_0\
    );
\StatusDebug_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \StatusDebug[0]_i_1_n_0\,
      Q => \StatusDebug_reg_n_0_[0]\
    );
\StatusDebug_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \StatusDebug[1]_i_1_n_0\,
      Q => \StatusDebug_reg_n_0_[1]\
    );
\StatusDebug_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \StatusDebug[2]_i_1_n_0\,
      Q => \StatusDebug_reg_n_0_[2]\
    );
StatusReady_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \s00_axi_rdata[27]\(1),
      I2 => slv_reg1(1),
      O => StatusReady_i_1_n_0
    );
StatusReady_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => StatusReady_i_1_n_0,
      Q => slv_reg1(1)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ConversionCount(9),
      I1 => State2(9),
      I2 => ConversionCount(10),
      I3 => State2(10),
      I4 => State2(11),
      I5 => ConversionCount(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ConversionCount(6),
      I1 => State2(6),
      I2 => ConversionCount(7),
      I3 => State2(7),
      I4 => State2(8),
      I5 => ConversionCount(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA85556"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      I4 => \ClockDividerCount_reg_n_0_[3]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ConversionCount(5),
      I1 => State2(5),
      I2 => ConversionCount(3),
      I3 => State2(3),
      I4 => State2(4),
      I5 => ConversionCount(4),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000422490090000"
    )
        port map (
      I0 => \ClockDividerCount_reg_n_0_[1]\,
      I1 => Q(4),
      I2 => \ClockDividerCount_reg_n_0_[2]\,
      I3 => Q(5),
      I4 => Q(3),
      I5 => \ClockDividerCount_reg_n_0_[0]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => Q(7),
      I1 => ConversionCount(0),
      I2 => ConversionCount(2),
      I3 => State2(2),
      I4 => ConversionCount(1),
      I5 => State2(1),
      O => \i__carry_i_4__0_n_0\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33003B08"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I4 => sel0(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \p_0_in__0\(1),
      I1 => p_0_in(1),
      I2 => sel0(1),
      I3 => StatusBusy,
      I4 => sel0(0),
      I5 => Q(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10001000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(9),
      I4 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I5 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBABB"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => Q(9),
      I4 => p_0_in(11),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0FEF"
    )
        port map (
      I0 => p_0_in_1,
      I1 => p_1_in,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \p_0_in__0\(11),
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A808"
    )
        port map (
      I0 => sel0(1),
      I1 => p_0_in(12),
      I2 => sel0(0),
      I3 => \p_0_in__0\(12),
      I4 => sel0(2),
      I5 => s00_axi_rdata_11_sn_1,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B0308000B0008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(10),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(11),
      I5 => \StatusDebug_reg_n_0_[0]\,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B000B03080008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(11),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => \StatusDebug_reg_n_0_[1]\,
      I5 => Q(12),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B0308000B0008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(12),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(13),
      I5 => \StatusDebug_reg_n_0_[2]\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B000B03080008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(13),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => ConversionCount(0),
      I5 => Q(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B000B03080008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(14),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => ConversionCount(1),
      I5 => Q(16),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B0308000B0008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(15),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(17),
      I5 => ConversionCount(2),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B0308000B0008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(16),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(18),
      I5 => ConversionCount(3),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33003B08"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(1),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I4 => sel0(0),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \p_0_in__0\(2),
      I1 => p_0_in(2),
      I2 => sel0(1),
      I3 => slv_reg1(1),
      I4 => sel0(0),
      I5 => Q(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B000B03080008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(17),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => ConversionCount(4),
      I5 => Q(19),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030B0800000B08"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(18),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(20),
      I4 => sel0(0),
      I5 => ConversionCount(5),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030B0800000B08"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(19),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(21),
      I4 => sel0(0),
      I5 => ConversionCount(6),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B000B03080008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(20),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => ConversionCount(7),
      I5 => Q(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030B0800000B08"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(21),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(23),
      I4 => sel0(0),
      I5 => ConversionCount(8),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B000B03080008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(22),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => ConversionCount(9),
      I5 => Q(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030B0800000B08"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(23),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(25),
      I4 => sel0(0),
      I5 => ConversionCount(10),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B000B03080008"
    )
        port map (
      I0 => \s00_axi_rdata[27]\(24),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => ConversionCount(11),
      I5 => Q(26),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(2),
      I4 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0CC00AA"
    )
        port map (
      I0 => Q(2),
      I1 => p_0_in(3),
      I2 => \p_0_in__0\(3),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A808"
    )
        port map (
      I0 => sel0(1),
      I1 => p_0_in(4),
      I2 => sel0(0),
      I3 => \p_0_in__0\(4),
      I4 => sel0(2),
      I5 => s00_axi_rdata_3_sn_1,
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(3),
      I4 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0CC00AA"
    )
        port map (
      I0 => Q(3),
      I1 => p_0_in(5),
      I2 => \p_0_in__0\(5),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(4),
      I4 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0CC00AA"
    )
        port map (
      I0 => Q(4),
      I1 => p_0_in(6),
      I2 => \p_0_in__0\(6),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(5),
      I4 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0CC00AA"
    )
        port map (
      I0 => Q(5),
      I1 => p_0_in(7),
      I2 => \p_0_in__0\(7),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(6),
      I4 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0CC00AA"
    )
        port map (
      I0 => Q(6),
      I1 => p_0_in(8),
      I2 => \p_0_in__0\(8),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10001000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(7),
      I4 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I5 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBABB"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => Q(7),
      I4 => p_0_in(9),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0F0EFFFFFFFF"
    )
        port map (
      I0 => p_0_in_1,
      I1 => p_0_in0_in,
      I2 => sel0(1),
      I3 => StatusBusy_0,
      I4 => \p_0_in__0\(9),
      I5 => sel0(0),
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10001000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \s00_axi_rdata[27]\(8),
      I4 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I5 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBABB"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => Q(8),
      I4 => p_0_in(10),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0FEF"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_1_in1_in,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \p_0_in__0\(10),
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    ADC_CLK_reg : out STD_LOGIC;
    IRQ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_CS_n : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADC_MISO_A : in STD_LOGIC;
    ADC_MISO_B : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI is
  signal ClockDivider_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal TotalConversions : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[9]\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal u_adc_core_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair14";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => u_adc_core_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => u_adc_core_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => u_adc_core_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => u_adc_core_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => state_read(0),
      I4 => state_read(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => u_adc_core_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => u_adc_core_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => u_adc_core_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => u_adc_core_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => u_adc_core_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF3838C3FF0000"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => u_adc_core_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => u_adc_core_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => u_adc_core_n_0
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220030"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[11]\,
      I1 => sel0(0),
      I2 => TotalConversions(3),
      I3 => sel0(1),
      I4 => sel0(2),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220030"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[15]\,
      I1 => sel0(0),
      I2 => TotalConversions(7),
      I3 => sel0(1),
      I4 => sel0(2),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030E000E"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \slv_reg4_reg_n_0_[28]\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \slv_reg4_reg_n_0_[29]\,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030E000E"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \slv_reg4_reg_n_0_[30]\,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030E000E"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \slv_reg4_reg_n_0_[31]\,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220030"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[3]\,
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[3]\,
      I3 => sel0(1),
      I4 => sel0(2),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => TotalConversions(2),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => TotalConversions(3),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => TotalConversions(4),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => TotalConversions(5),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => TotalConversions(6),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => TotalConversions(7),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => TotalConversions(8),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => TotalConversions(9),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => TotalConversions(10),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => TotalConversions(11),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => u_adc_core_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => ClockDivider_N(0),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => ClockDivider_N(1),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => ClockDivider_N(2),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => ClockDivider_N(3),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => TotalConversions(0),
      R => u_adc_core_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => TotalConversions(1),
      R => u_adc_core_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => s00_axi_awaddr(1),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      O => \slv_reg4[31]_i_2_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => u_adc_core_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg4_reg_n_0_[10]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg4_reg_n_0_[11]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg4_reg_n_0_[12]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg4_reg_n_0_[13]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg4_reg_n_0_[14]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg4_reg_n_0_[15]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg4_reg_n_0_[16]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg4_reg_n_0_[17]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg4_reg_n_0_[18]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg4_reg_n_0_[19]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => u_adc_core_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg4_reg_n_0_[20]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg4_reg_n_0_[21]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg4_reg_n_0_[22]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg4_reg_n_0_[23]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg4_reg_n_0_[24]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg4_reg_n_0_[25]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg4_reg_n_0_[26]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg4_reg_n_0_[27]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg4_reg_n_0_[28]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg4_reg_n_0_[29]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg4_reg_n_0_[2]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg4_reg_n_0_[30]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg4_reg_n_0_[31]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg4_reg_n_0_[3]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg4_reg_n_0_[4]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg4_reg_n_0_[5]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg4_reg_n_0_[6]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg4_reg_n_0_[7]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg4_reg_n_0_[8]\,
      R => u_adc_core_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg4_reg_n_0_[9]\,
      R => u_adc_core_n_0
    );
u_adc_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_core
     port map (
      ADC_CLK_reg_0 => ADC_CLK_reg,
      ADC_CS_n => ADC_CS_n,
      ADC_MISO_A => ADC_MISO_A,
      ADC_MISO_B => ADC_MISO_B,
      IRQ => IRQ,
      Q(26) => \slv_reg0_reg_n_0_[27]\,
      Q(25) => \slv_reg0_reg_n_0_[26]\,
      Q(24) => \slv_reg0_reg_n_0_[25]\,
      Q(23) => \slv_reg0_reg_n_0_[24]\,
      Q(22) => \slv_reg0_reg_n_0_[23]\,
      Q(21) => \slv_reg0_reg_n_0_[22]\,
      Q(20) => \slv_reg0_reg_n_0_[21]\,
      Q(19) => \slv_reg0_reg_n_0_[20]\,
      Q(18 downto 7) => TotalConversions(11 downto 0),
      Q(6 downto 3) => ClockDivider_N(3 downto 0),
      Q(2 downto 0) => slv_reg0(2 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => u_adc_core_n_0,
      s00_axi_rdata(26 downto 15) => s00_axi_rdata(27 downto 16),
      s00_axi_rdata(14 downto 0) => s00_axi_rdata(14 downto 0),
      \s00_axi_rdata[27]\(24) => \slv_reg4_reg_n_0_[27]\,
      \s00_axi_rdata[27]\(23) => \slv_reg4_reg_n_0_[26]\,
      \s00_axi_rdata[27]\(22) => \slv_reg4_reg_n_0_[25]\,
      \s00_axi_rdata[27]\(21) => \slv_reg4_reg_n_0_[24]\,
      \s00_axi_rdata[27]\(20) => \slv_reg4_reg_n_0_[23]\,
      \s00_axi_rdata[27]\(19) => \slv_reg4_reg_n_0_[22]\,
      \s00_axi_rdata[27]\(18) => \slv_reg4_reg_n_0_[21]\,
      \s00_axi_rdata[27]\(17) => \slv_reg4_reg_n_0_[20]\,
      \s00_axi_rdata[27]\(16) => \slv_reg4_reg_n_0_[19]\,
      \s00_axi_rdata[27]\(15) => \slv_reg4_reg_n_0_[18]\,
      \s00_axi_rdata[27]\(14) => \slv_reg4_reg_n_0_[17]\,
      \s00_axi_rdata[27]\(13) => \slv_reg4_reg_n_0_[16]\,
      \s00_axi_rdata[27]\(12) => \slv_reg4_reg_n_0_[14]\,
      \s00_axi_rdata[27]\(11) => \slv_reg4_reg_n_0_[13]\,
      \s00_axi_rdata[27]\(10) => \slv_reg4_reg_n_0_[12]\,
      \s00_axi_rdata[27]\(9) => \slv_reg4_reg_n_0_[10]\,
      \s00_axi_rdata[27]\(8) => \slv_reg4_reg_n_0_[9]\,
      \s00_axi_rdata[27]\(7) => \slv_reg4_reg_n_0_[8]\,
      \s00_axi_rdata[27]\(6) => \slv_reg4_reg_n_0_[7]\,
      \s00_axi_rdata[27]\(5) => \slv_reg4_reg_n_0_[6]\,
      \s00_axi_rdata[27]\(4) => \slv_reg4_reg_n_0_[5]\,
      \s00_axi_rdata[27]\(3) => \slv_reg4_reg_n_0_[4]\,
      \s00_axi_rdata[27]\(2) => \slv_reg4_reg_n_0_[2]\,
      \s00_axi_rdata[27]\(1 downto 0) => slv_reg4(1 downto 0),
      s00_axi_rdata_11_sp_1 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      s00_axi_rdata_3_sp_1 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0 is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    ADC_CLK_reg : out STD_LOGIC;
    IRQ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_CS_n : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADC_MISO_A : in STD_LOGIC;
    ADC_MISO_B : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0 is
begin
imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI
     port map (
      ADC_CLK_reg => ADC_CLK_reg,
      ADC_CS_n => ADC_CS_n,
      ADC_MISO_A => ADC_MISO_A,
      ADC_MISO_B => ADC_MISO_B,
      IRQ => IRQ,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ADC_SCLK : out STD_LOGIC;
    ADC_CS_n : out STD_LOGIC;
    ADC_MISO_A : in STD_LOGIC;
    ADC_MISO_B : in STD_LOGIC;
    IRQ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7,imr_adc_7476a_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "imr_adc_7476a_v1_0,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of IRQ : signal is "xilinx.com:signal:interrupt:1.0 Interrupt INTERRUPT";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of IRQ : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of IRQ : signal is "XIL_INTERFACENAME Interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF S00_AXI, FREQ_TOLERANCE_HZ -1, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, compatible IMR,IMR_ADC_7476A_V1_0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0
     port map (
      ADC_CLK_reg => ADC_SCLK,
      ADC_CS_n => ADC_CS_n,
      ADC_MISO_A => ADC_MISO_A,
      ADC_MISO_B => ADC_MISO_B,
      IRQ => IRQ,
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
