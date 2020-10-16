-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Oct 13 14:49:10 2020
-- Host        : nyengele-NUC8i7HNK running 64-bit Ubuntu 20.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/nyengele/aha/fpga_builder/apps/conv_3_3/conv_3_3/conv_3_3.srcs/sources_1/bd/conv_3_3/ip/conv_3_3_conv_3_3_0_0/conv_3_3_conv_3_3_0_0_sim_netlist.vhdl
-- Design      : conv_3_3_conv_3_3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg is
  port (
    \SRL_SIG_reg[0][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \odata_reg[0]\ : in STD_LOGIC;
    \odata_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    operator_int_1_U0_ap_continue : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    operator_int_1_U0_ap_start : in STD_LOGIC;
    \SRL_SIG_reg[0][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg : entity is "fifo_w16_d2_A_shiftReg";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \SRL_SIG_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][9]\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\SRL_SIG[0][15]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => operator_int_1_U0_ap_continue,
      I1 => ap_done_reg,
      I2 => operator_int_1_U0_ap_start,
      O => \^e\(0)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(0),
      Q => \SRL_SIG_reg_n_0_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(10),
      Q => \SRL_SIG_reg_n_0_[0][10]\,
      R => '0'
    );
\SRL_SIG_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(11),
      Q => \SRL_SIG_reg_n_0_[0][11]\,
      R => '0'
    );
\SRL_SIG_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(12),
      Q => \SRL_SIG_reg_n_0_[0][12]\,
      R => '0'
    );
\SRL_SIG_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(13),
      Q => \SRL_SIG_reg_n_0_[0][13]\,
      R => '0'
    );
\SRL_SIG_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(14),
      Q => \SRL_SIG_reg_n_0_[0][14]\,
      R => '0'
    );
\SRL_SIG_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(15),
      Q => \SRL_SIG_reg_n_0_[0][15]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(1),
      Q => \SRL_SIG_reg_n_0_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(2),
      Q => \SRL_SIG_reg_n_0_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(3),
      Q => \SRL_SIG_reg_n_0_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(4),
      Q => \SRL_SIG_reg_n_0_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(5),
      Q => \SRL_SIG_reg_n_0_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(6),
      Q => \SRL_SIG_reg_n_0_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(7),
      Q => \SRL_SIG_reg_n_0_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(8),
      Q => \SRL_SIG_reg_n_0_[0][8]\,
      R => '0'
    );
\SRL_SIG_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg[0][15]_1\(9),
      Q => \SRL_SIG_reg_n_0_[0][9]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][0]\,
      Q => \SRL_SIG_reg_n_0_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][10]\,
      Q => \SRL_SIG_reg_n_0_[1][10]\,
      R => '0'
    );
\SRL_SIG_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][11]\,
      Q => \SRL_SIG_reg_n_0_[1][11]\,
      R => '0'
    );
\SRL_SIG_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][12]\,
      Q => \SRL_SIG_reg_n_0_[1][12]\,
      R => '0'
    );
\SRL_SIG_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][13]\,
      Q => \SRL_SIG_reg_n_0_[1][13]\,
      R => '0'
    );
\SRL_SIG_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][14]\,
      Q => \SRL_SIG_reg_n_0_[1][14]\,
      R => '0'
    );
\SRL_SIG_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][15]\,
      Q => \SRL_SIG_reg_n_0_[1][15]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][1]\,
      Q => \SRL_SIG_reg_n_0_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][2]\,
      Q => \SRL_SIG_reg_n_0_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][3]\,
      Q => \SRL_SIG_reg_n_0_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][4]\,
      Q => \SRL_SIG_reg_n_0_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][5]\,
      Q => \SRL_SIG_reg_n_0_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][6]\,
      Q => \SRL_SIG_reg_n_0_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][7]\,
      Q => \SRL_SIG_reg_n_0_[1][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][8]\,
      Q => \SRL_SIG_reg_n_0_[1][8]\,
      R => '0'
    );
\SRL_SIG_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][9]\,
      Q => \SRL_SIG_reg_n_0_[1][9]\,
      R => '0'
    );
\ireg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][0]\,
      O => D(0)
    );
\ireg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][10]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][10]\,
      O => D(10)
    );
\ireg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][11]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][11]\,
      O => D(11)
    );
\ireg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][12]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][12]\,
      O => D(12)
    );
\ireg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][13]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][13]\,
      O => D(13)
    );
\ireg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][14]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][14]\,
      O => D(14)
    );
\ireg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][15]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][15]\,
      O => D(15)
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][1]\,
      O => D(1)
    );
\ireg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][2]\,
      O => D(2)
    );
\ireg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][3]\,
      O => D(3)
    );
\ireg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][4]\,
      O => D(4)
    );
\ireg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][5]\,
      O => D(5)
    );
\ireg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][6]\,
      O => D(6)
    );
\ireg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][7]\,
      O => D(7)
    );
\ireg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][8]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][8]\,
      O => D(8)
    );
\ireg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][9]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][9]\,
      O => D(9)
    );
\odata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][0]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(0),
      O => \SRL_SIG_reg[0][15]_0\(0)
    );
\odata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][10]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][10]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(10),
      O => \SRL_SIG_reg[0][15]_0\(10)
    );
\odata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][11]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][11]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(11),
      O => \SRL_SIG_reg[0][15]_0\(11)
    );
\odata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][12]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][12]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(12),
      O => \SRL_SIG_reg[0][15]_0\(12)
    );
\odata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][13]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][13]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(13),
      O => \SRL_SIG_reg[0][15]_0\(13)
    );
\odata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][14]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][14]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(14),
      O => \SRL_SIG_reg[0][15]_0\(14)
    );
\odata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][15]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][15]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(15),
      O => \SRL_SIG_reg[0][15]_0\(15)
    );
\odata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][1]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(1),
      O => \SRL_SIG_reg[0][15]_0\(1)
    );
\odata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][2]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(2),
      O => \SRL_SIG_reg[0][15]_0\(2)
    );
\odata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][3]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(3),
      O => \SRL_SIG_reg[0][15]_0\(3)
    );
\odata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][4]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(4),
      O => \SRL_SIG_reg[0][15]_0\(4)
    );
\odata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][5]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(5),
      O => \SRL_SIG_reg[0][15]_0\(5)
    );
\odata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][6]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(6),
      O => \SRL_SIG_reg[0][15]_0\(6)
    );
\odata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][7]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(7),
      O => \SRL_SIG_reg[0][15]_0\(7)
    );
\odata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][8]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][8]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(8),
      O => \SRL_SIG_reg[0][15]_0\(8)
    );
\odata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][9]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][9]\,
      I4 => \odata_reg[0]\,
      I5 => \odata_reg[15]\(9),
      O => \SRL_SIG_reg[0][15]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_6 : entity is "fifo_w16_d2_A_shiftReg";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_6;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_6 is
  signal \SRL_SIG_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \SRL_SIG_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
\SRL_SIG[0][0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(0),
      O => D(0)
    );
\SRL_SIG[0][10]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(10),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(10),
      O => D(10)
    );
\SRL_SIG[0][11]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(11),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(11),
      O => D(11)
    );
\SRL_SIG[0][12]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(12),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(12),
      O => D(12)
    );
\SRL_SIG[0][13]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(13),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(13),
      O => D(13)
    );
\SRL_SIG[0][14]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(14),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(14),
      O => D(14)
    );
\SRL_SIG[0][15]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(15),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(15),
      O => D(15)
    );
\SRL_SIG[0][1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(1),
      O => D(1)
    );
\SRL_SIG[0][2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(2),
      O => D(2)
    );
\SRL_SIG[0][3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(3),
      O => D(3)
    );
\SRL_SIG[0][4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(4),
      O => D(4)
    );
\SRL_SIG[0][5]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(5),
      O => D(5)
    );
\SRL_SIG[0][6]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(6),
      O => D(6)
    );
\SRL_SIG[0][7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(7),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(7),
      O => D(7)
    );
\SRL_SIG[0][8]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(8),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(8),
      O => D(8)
    );
\SRL_SIG[0][9]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(9),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(9),
      O => D(9)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(0),
      Q => \SRL_SIG_reg[0]\(0),
      R => '0'
    );
\SRL_SIG_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(10),
      Q => \SRL_SIG_reg[0]\(10),
      R => '0'
    );
\SRL_SIG_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(11),
      Q => \SRL_SIG_reg[0]\(11),
      R => '0'
    );
\SRL_SIG_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(12),
      Q => \SRL_SIG_reg[0]\(12),
      R => '0'
    );
\SRL_SIG_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(13),
      Q => \SRL_SIG_reg[0]\(13),
      R => '0'
    );
\SRL_SIG_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(14),
      Q => \SRL_SIG_reg[0]\(14),
      R => '0'
    );
\SRL_SIG_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(15),
      Q => \SRL_SIG_reg[0]\(15),
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(1),
      Q => \SRL_SIG_reg[0]\(1),
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(2),
      Q => \SRL_SIG_reg[0]\(2),
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(3),
      Q => \SRL_SIG_reg[0]\(3),
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(4),
      Q => \SRL_SIG_reg[0]\(4),
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(5),
      Q => \SRL_SIG_reg[0]\(5),
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(6),
      Q => \SRL_SIG_reg[0]\(6),
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(7),
      Q => \SRL_SIG_reg[0]\(7),
      R => '0'
    );
\SRL_SIG_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(8),
      Q => \SRL_SIG_reg[0]\(8),
      R => '0'
    );
\SRL_SIG_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][15]_0\(9),
      Q => \SRL_SIG_reg[0]\(9),
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(0),
      Q => \SRL_SIG_reg[1]\(0),
      R => '0'
    );
\SRL_SIG_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(10),
      Q => \SRL_SIG_reg[1]\(10),
      R => '0'
    );
\SRL_SIG_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(11),
      Q => \SRL_SIG_reg[1]\(11),
      R => '0'
    );
\SRL_SIG_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(12),
      Q => \SRL_SIG_reg[1]\(12),
      R => '0'
    );
\SRL_SIG_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(13),
      Q => \SRL_SIG_reg[1]\(13),
      R => '0'
    );
\SRL_SIG_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(14),
      Q => \SRL_SIG_reg[1]\(14),
      R => '0'
    );
\SRL_SIG_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(15),
      Q => \SRL_SIG_reg[1]\(15),
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(1),
      Q => \SRL_SIG_reg[1]\(1),
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(2),
      Q => \SRL_SIG_reg[1]\(2),
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(3),
      Q => \SRL_SIG_reg[1]\(3),
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(4),
      Q => \SRL_SIG_reg[1]\(4),
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(5),
      Q => \SRL_SIG_reg[1]\(5),
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(6),
      Q => \SRL_SIG_reg[1]\(6),
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(7),
      Q => \SRL_SIG_reg[1]\(7),
      R => '0'
    );
\SRL_SIG_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(8),
      Q => \SRL_SIG_reg[1]\(8),
      R => '0'
    );
\SRL_SIG_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0]\(9),
      Q => \SRL_SIG_reg[1]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_7 is
  port (
    shiftReg_ce : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \SRL_SIG_reg[0][0]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][1]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][2]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][3]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][4]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][5]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][6]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][7]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][8]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][9]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][10]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][11]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][12]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][13]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][14]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][15]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][15]_1\ : in STD_LOGIC;
    ap_done_reg_0 : in STD_LOGIC;
    arg_out_data_values_s_empty_n : in STD_LOGIC;
    read_1_U0_ap_start : in STD_LOGIC;
    hw_uint_16_val_V_preg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \SRL_SIG_reg[0][15]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[0][15]_3\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_7 : entity is "fifo_w16_d2_A_shiftReg";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_7;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_7 is
  signal \SRL_SIG_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \^shiftreg_ce\ : STD_LOGIC;
begin
  shiftReg_ce <= \^shiftreg_ce\;
\SRL_SIG[0][0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(0),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][0]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][0]\,
      O => D(0)
    );
\SRL_SIG[0][10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(10),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][10]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][10]\,
      O => D(10)
    );
\SRL_SIG[0][11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(11),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][11]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][11]\,
      O => D(11)
    );
\SRL_SIG[0][12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(12),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][12]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][12]\,
      O => D(12)
    );
\SRL_SIG[0][13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(13),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][13]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][13]\,
      O => D(13)
    );
\SRL_SIG[0][14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(14),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][14]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][14]\,
      O => D(14)
    );
\SRL_SIG[0][15]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => \SRL_SIG_reg[0][15]_1\,
      I1 => ap_done_reg_0,
      I2 => arg_out_data_values_s_empty_n,
      I3 => read_1_U0_ap_start,
      O => \^shiftreg_ce\
    );
\SRL_SIG[0][15]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(15),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][15]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][15]\,
      O => D(15)
    );
\SRL_SIG[0][1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(1),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][1]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][1]\,
      O => D(1)
    );
\SRL_SIG[0][2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(2),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][2]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][2]\,
      O => D(2)
    );
\SRL_SIG[0][3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(3),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][3]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][3]\,
      O => D(3)
    );
\SRL_SIG[0][4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(4),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][4]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][4]\,
      O => D(4)
    );
\SRL_SIG[0][5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(5),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][5]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][5]\,
      O => D(5)
    );
\SRL_SIG[0][6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(6),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][6]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][6]\,
      O => D(6)
    );
\SRL_SIG[0][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(7),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][7]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][7]\,
      O => D(7)
    );
\SRL_SIG[0][8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(8),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][8]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][8]\,
      O => D(8)
    );
\SRL_SIG[0][9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B888B8B8"
    )
        port map (
      I0 => hw_uint_16_val_V_preg(9),
      I1 => \SRL_SIG_reg[0][15]_2\,
      I2 => \SRL_SIG_reg_n_0_[0][9]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \SRL_SIG_reg_n_0_[1][9]\,
      O => D(9)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(0),
      Q => \SRL_SIG_reg_n_0_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(10),
      Q => \SRL_SIG_reg_n_0_[0][10]\,
      R => '0'
    );
\SRL_SIG_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(11),
      Q => \SRL_SIG_reg_n_0_[0][11]\,
      R => '0'
    );
\SRL_SIG_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(12),
      Q => \SRL_SIG_reg_n_0_[0][12]\,
      R => '0'
    );
\SRL_SIG_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(13),
      Q => \SRL_SIG_reg_n_0_[0][13]\,
      R => '0'
    );
\SRL_SIG_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(14),
      Q => \SRL_SIG_reg_n_0_[0][14]\,
      R => '0'
    );
\SRL_SIG_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(15),
      Q => \SRL_SIG_reg_n_0_[0][15]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(1),
      Q => \SRL_SIG_reg_n_0_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(2),
      Q => \SRL_SIG_reg_n_0_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(3),
      Q => \SRL_SIG_reg_n_0_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(4),
      Q => \SRL_SIG_reg_n_0_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(5),
      Q => \SRL_SIG_reg_n_0_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(6),
      Q => \SRL_SIG_reg_n_0_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(7),
      Q => \SRL_SIG_reg_n_0_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(8),
      Q => \SRL_SIG_reg_n_0_[0][8]\,
      R => '0'
    );
\SRL_SIG_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg[0][15]_3\(9),
      Q => \SRL_SIG_reg_n_0_[0][9]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][0]\,
      Q => \SRL_SIG_reg_n_0_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][10]\,
      Q => \SRL_SIG_reg_n_0_[1][10]\,
      R => '0'
    );
\SRL_SIG_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][11]\,
      Q => \SRL_SIG_reg_n_0_[1][11]\,
      R => '0'
    );
\SRL_SIG_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][12]\,
      Q => \SRL_SIG_reg_n_0_[1][12]\,
      R => '0'
    );
\SRL_SIG_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][13]\,
      Q => \SRL_SIG_reg_n_0_[1][13]\,
      R => '0'
    );
\SRL_SIG_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][14]\,
      Q => \SRL_SIG_reg_n_0_[1][14]\,
      R => '0'
    );
\SRL_SIG_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][15]\,
      Q => \SRL_SIG_reg_n_0_[1][15]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][1]\,
      Q => \SRL_SIG_reg_n_0_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][2]\,
      Q => \SRL_SIG_reg_n_0_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][3]\,
      Q => \SRL_SIG_reg_n_0_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][4]\,
      Q => \SRL_SIG_reg_n_0_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][5]\,
      Q => \SRL_SIG_reg_n_0_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][6]\,
      Q => \SRL_SIG_reg_n_0_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][7]\,
      Q => \SRL_SIG_reg_n_0_[1][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][8]\,
      Q => \SRL_SIG_reg_n_0_[1][8]\,
      R => '0'
    );
\SRL_SIG_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \SRL_SIG_reg_n_0_[0][9]\,
      Q => \SRL_SIG_reg_n_0_[1][9]\,
      R => '0'
    );
\hw_uint_16_val_V_preg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][0]\,
      O => \SRL_SIG_reg[0][0]_0\
    );
\hw_uint_16_val_V_preg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][10]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][10]\,
      O => \SRL_SIG_reg[0][10]_0\
    );
\hw_uint_16_val_V_preg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][11]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][11]\,
      O => \SRL_SIG_reg[0][11]_0\
    );
\hw_uint_16_val_V_preg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][12]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][12]\,
      O => \SRL_SIG_reg[0][12]_0\
    );
\hw_uint_16_val_V_preg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][13]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][13]\,
      O => \SRL_SIG_reg[0][13]_0\
    );
\hw_uint_16_val_V_preg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][14]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][14]\,
      O => \SRL_SIG_reg[0][14]_0\
    );
\hw_uint_16_val_V_preg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][15]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][15]\,
      O => \SRL_SIG_reg[0][15]_0\
    );
\hw_uint_16_val_V_preg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][1]\,
      O => \SRL_SIG_reg[0][1]_0\
    );
\hw_uint_16_val_V_preg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][2]\,
      O => \SRL_SIG_reg[0][2]_0\
    );
\hw_uint_16_val_V_preg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][3]\,
      O => \SRL_SIG_reg[0][3]_0\
    );
\hw_uint_16_val_V_preg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][4]\,
      O => \SRL_SIG_reg[0][4]_0\
    );
\hw_uint_16_val_V_preg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][5]\,
      O => \SRL_SIG_reg[0][5]_0\
    );
\hw_uint_16_val_V_preg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][6]\,
      O => \SRL_SIG_reg[0][6]_0\
    );
\hw_uint_16_val_V_preg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][7]\,
      O => \SRL_SIG_reg[0][7]_0\
    );
\hw_uint_16_val_V_preg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][8]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][8]\,
      O => \SRL_SIG_reg[0][8]_0\
    );
\hw_uint_16_val_V_preg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][9]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][9]\,
      O => \SRL_SIG_reg[0][9]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_8 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \SRL_SIG_reg[0][0]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][1]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][2]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][3]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][4]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][5]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][6]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][7]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][8]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][9]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][10]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][11]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][12]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][13]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][14]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[0][15]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[0][15]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][1]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][2]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][3]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][4]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][5]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][6]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][7]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][8]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][9]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][10]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][11]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][12]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][13]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][14]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][15]_2\ : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_8 : entity is "fifo_w16_d2_A_shiftReg";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_8;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_8 is
  signal \SRL_SIG_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][9]\ : STD_LOGIC;
begin
\SRL_SIG[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][0]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][0]_1\,
      O => D(0)
    );
\SRL_SIG[0][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][10]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][10]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][10]_1\,
      O => D(10)
    );
\SRL_SIG[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][11]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][11]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][11]_1\,
      O => D(11)
    );
\SRL_SIG[0][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][12]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][12]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][12]_1\,
      O => D(12)
    );
\SRL_SIG[0][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][13]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][13]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][13]_1\,
      O => D(13)
    );
\SRL_SIG[0][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][14]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][14]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][14]_1\,
      O => D(14)
    );
\SRL_SIG[0][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][15]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][15]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][15]_2\,
      O => D(15)
    );
\SRL_SIG[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][1]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][1]_1\,
      O => D(1)
    );
\SRL_SIG[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][2]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][2]_1\,
      O => D(2)
    );
\SRL_SIG[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][3]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][3]_1\,
      O => D(3)
    );
\SRL_SIG[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][4]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][4]_1\,
      O => D(4)
    );
\SRL_SIG[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][5]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][5]_1\,
      O => D(5)
    );
\SRL_SIG[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][6]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][6]_1\,
      O => D(6)
    );
\SRL_SIG[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][7]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][7]_1\,
      O => D(7)
    );
\SRL_SIG[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][8]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][8]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][8]_1\,
      O => D(8)
    );
\SRL_SIG[0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][9]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][9]\,
      I4 => \SRL_SIG_reg[0][15]_1\,
      I5 => \SRL_SIG_reg[0][9]_1\,
      O => D(9)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(0),
      Q => \SRL_SIG_reg_n_0_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(10),
      Q => \SRL_SIG_reg_n_0_[0][10]\,
      R => '0'
    );
\SRL_SIG_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(11),
      Q => \SRL_SIG_reg_n_0_[0][11]\,
      R => '0'
    );
\SRL_SIG_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(12),
      Q => \SRL_SIG_reg_n_0_[0][12]\,
      R => '0'
    );
\SRL_SIG_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(13),
      Q => \SRL_SIG_reg_n_0_[0][13]\,
      R => '0'
    );
\SRL_SIG_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(14),
      Q => \SRL_SIG_reg_n_0_[0][14]\,
      R => '0'
    );
\SRL_SIG_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(15),
      Q => \SRL_SIG_reg_n_0_[0][15]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(1),
      Q => \SRL_SIG_reg_n_0_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(2),
      Q => \SRL_SIG_reg_n_0_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(3),
      Q => \SRL_SIG_reg_n_0_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(4),
      Q => \SRL_SIG_reg_n_0_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(5),
      Q => \SRL_SIG_reg_n_0_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(6),
      Q => \SRL_SIG_reg_n_0_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(7),
      Q => \SRL_SIG_reg_n_0_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(8),
      Q => \SRL_SIG_reg_n_0_[0][8]\,
      R => '0'
    );
\SRL_SIG_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => data(9),
      Q => \SRL_SIG_reg_n_0_[0][9]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][0]\,
      Q => \SRL_SIG_reg_n_0_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][10]\,
      Q => \SRL_SIG_reg_n_0_[1][10]\,
      R => '0'
    );
\SRL_SIG_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][11]\,
      Q => \SRL_SIG_reg_n_0_[1][11]\,
      R => '0'
    );
\SRL_SIG_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][12]\,
      Q => \SRL_SIG_reg_n_0_[1][12]\,
      R => '0'
    );
\SRL_SIG_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][13]\,
      Q => \SRL_SIG_reg_n_0_[1][13]\,
      R => '0'
    );
\SRL_SIG_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][14]\,
      Q => \SRL_SIG_reg_n_0_[1][14]\,
      R => '0'
    );
\SRL_SIG_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][15]\,
      Q => \SRL_SIG_reg_n_0_[1][15]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][1]\,
      Q => \SRL_SIG_reg_n_0_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][2]\,
      Q => \SRL_SIG_reg_n_0_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][3]\,
      Q => \SRL_SIG_reg_n_0_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][4]\,
      Q => \SRL_SIG_reg_n_0_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][5]\,
      Q => \SRL_SIG_reg_n_0_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][6]\,
      Q => \SRL_SIG_reg_n_0_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][7]\,
      Q => \SRL_SIG_reg_n_0_[1][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][8]\,
      Q => \SRL_SIG_reg_n_0_[1][8]\,
      R => '0'
    );
\SRL_SIG_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][9]\,
      Q => \SRL_SIG_reg_n_0_[1][9]\,
      R => '0'
    );
\ap_return_preg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][0]\,
      O => \SRL_SIG_reg[0][0]_0\
    );
\ap_return_preg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][10]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][10]\,
      O => \SRL_SIG_reg[0][10]_0\
    );
\ap_return_preg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][11]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][11]\,
      O => \SRL_SIG_reg[0][11]_0\
    );
\ap_return_preg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][12]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][12]\,
      O => \SRL_SIG_reg[0][12]_0\
    );
\ap_return_preg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][13]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][13]\,
      O => \SRL_SIG_reg[0][13]_0\
    );
\ap_return_preg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][14]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][14]\,
      O => \SRL_SIG_reg[0][14]_0\
    );
\ap_return_preg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][15]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][15]\,
      O => \SRL_SIG_reg[0][15]_0\
    );
\ap_return_preg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][1]\,
      O => \SRL_SIG_reg[0][1]_0\
    );
\ap_return_preg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][2]\,
      O => \SRL_SIG_reg[0][2]_0\
    );
\ap_return_preg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][3]\,
      O => \SRL_SIG_reg[0][3]_0\
    );
\ap_return_preg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][4]\,
      O => \SRL_SIG_reg[0][4]_0\
    );
\ap_return_preg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][5]\,
      O => \SRL_SIG_reg[0][5]_0\
    );
\ap_return_preg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][6]\,
      O => \SRL_SIG_reg[0][6]_0\
    );
\ap_return_preg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][7]\,
      O => \SRL_SIG_reg[0][7]_0\
    );
\ap_return_preg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][8]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][8]\,
      O => \SRL_SIG_reg[0][8]_0\
    );
\ap_return_preg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][9]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][9]\,
      O => \SRL_SIG_reg[0][9]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_9 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arg_in0_hwstream_val_full_n : in STD_LOGIC;
    write_U0_ap_start : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    start_for_unoptimized_conv_3_3_U0_full_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_9 : entity is "fifo_w16_d2_A_shiftReg";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_9;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_9 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \SRL_SIG_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][9]\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\SRL_SIG[0][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => arg_in0_hwstream_val_full_n,
      I1 => write_U0_ap_start,
      I2 => start_once_reg,
      I3 => start_for_unoptimized_conv_3_3_U0_full_n,
      O => \^e\(0)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(0),
      Q => \SRL_SIG_reg_n_0_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(10),
      Q => \SRL_SIG_reg_n_0_[0][10]\,
      R => '0'
    );
\SRL_SIG_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(11),
      Q => \SRL_SIG_reg_n_0_[0][11]\,
      R => '0'
    );
\SRL_SIG_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(12),
      Q => \SRL_SIG_reg_n_0_[0][12]\,
      R => '0'
    );
\SRL_SIG_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(13),
      Q => \SRL_SIG_reg_n_0_[0][13]\,
      R => '0'
    );
\SRL_SIG_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(14),
      Q => \SRL_SIG_reg_n_0_[0][14]\,
      R => '0'
    );
\SRL_SIG_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(15),
      Q => \SRL_SIG_reg_n_0_[0][15]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(1),
      Q => \SRL_SIG_reg_n_0_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(2),
      Q => \SRL_SIG_reg_n_0_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(3),
      Q => \SRL_SIG_reg_n_0_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(4),
      Q => \SRL_SIG_reg_n_0_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(5),
      Q => \SRL_SIG_reg_n_0_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(6),
      Q => \SRL_SIG_reg_n_0_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(7),
      Q => \SRL_SIG_reg_n_0_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(8),
      Q => \SRL_SIG_reg_n_0_[0][8]\,
      R => '0'
    );
\SRL_SIG_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => D(9),
      Q => \SRL_SIG_reg_n_0_[0][9]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][0]\,
      Q => \SRL_SIG_reg_n_0_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][10]\,
      Q => \SRL_SIG_reg_n_0_[1][10]\,
      R => '0'
    );
\SRL_SIG_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][11]\,
      Q => \SRL_SIG_reg_n_0_[1][11]\,
      R => '0'
    );
\SRL_SIG_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][12]\,
      Q => \SRL_SIG_reg_n_0_[1][12]\,
      R => '0'
    );
\SRL_SIG_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][13]\,
      Q => \SRL_SIG_reg_n_0_[1][13]\,
      R => '0'
    );
\SRL_SIG_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][14]\,
      Q => \SRL_SIG_reg_n_0_[1][14]\,
      R => '0'
    );
\SRL_SIG_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][15]\,
      Q => \SRL_SIG_reg_n_0_[1][15]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][1]\,
      Q => \SRL_SIG_reg_n_0_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][2]\,
      Q => \SRL_SIG_reg_n_0_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][3]\,
      Q => \SRL_SIG_reg_n_0_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][4]\,
      Q => \SRL_SIG_reg_n_0_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][5]\,
      Q => \SRL_SIG_reg_n_0_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][6]\,
      Q => \SRL_SIG_reg_n_0_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][7]\,
      Q => \SRL_SIG_reg_n_0_[1][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][8]\,
      Q => \SRL_SIG_reg_n_0_[1][8]\,
      R => '0'
    );
\SRL_SIG_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \SRL_SIG_reg_n_0_[0][9]\,
      Q => \SRL_SIG_reg_n_0_[1][9]\,
      R => '0'
    );
ram_reg_bram_0_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][7]\,
      O => d0(7)
    );
ram_reg_bram_0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][6]\,
      O => d0(6)
    );
ram_reg_bram_0_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][5]\,
      O => d0(5)
    );
ram_reg_bram_0_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][4]\,
      O => d0(4)
    );
ram_reg_bram_0_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][3]\,
      O => d0(3)
    );
ram_reg_bram_0_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][2]\,
      O => d0(2)
    );
ram_reg_bram_0_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][1]\,
      O => d0(1)
    );
ram_reg_bram_0_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][0]\,
      O => d0(0)
    );
ram_reg_bram_0_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][8]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][8]\,
      O => d0(8)
    );
ram_reg_bram_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][15]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][15]\,
      O => d0(15)
    );
ram_reg_bram_1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][14]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][14]\,
      O => d0(14)
    );
ram_reg_bram_1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][13]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][13]\,
      O => d0(13)
    );
ram_reg_bram_1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][12]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][12]\,
      O => d0(12)
    );
ram_reg_bram_1_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][11]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][11]\,
      O => d0(11)
    );
ram_reg_bram_1_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][10]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][10]\,
      O => d0(10)
    );
ram_reg_bram_1_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[0][9]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_0_[1][9]\,
      O => d0(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w1_d2_A is
  port (
    arg_out_tlast_values_full_n : out STD_LOGIC;
    arg_out_tlast_values_empty_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    read_U0_ap_start : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    arg_out_data_values_s_full_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w1_d2_A : entity is "fifo_w1_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w1_d2_A;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w1_d2_A is
  signal \^arg_out_tlast_values_empty_n\ : STD_LOGIC;
  signal \^arg_out_tlast_values_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__6_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__6_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
begin
  arg_out_tlast_values_empty_n <= \^arg_out_tlast_values_empty_n\;
  arg_out_tlast_values_full_n <= \^arg_out_tlast_values_full_n\;
\internal_empty_n_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_full_n_reg_0,
      I3 => shiftReg_ce,
      I4 => \^arg_out_tlast_values_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__6_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__6_n_0\,
      Q => \^arg_out_tlast_values_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^arg_out_tlast_values_full_n\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => shiftReg_ce,
      I5 => internal_full_n_reg_0,
      O => \internal_full_n_i_1__6_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__6_n_0\,
      Q => \^arg_out_tlast_values_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__4_n_0\
    );
\mOutPtr[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \^arg_out_tlast_values_empty_n\,
      I1 => read_U0_ap_start,
      I2 => ap_done_reg,
      I3 => \mOutPtr_reg[1]_0\,
      O => E(0)
    );
\mOutPtr[1]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080807F808080"
    )
        port map (
      I0 => arg_out_data_values_s_full_n,
      I1 => \^arg_out_tlast_values_full_n\,
      I2 => Q(0),
      I3 => \^arg_out_tlast_values_empty_n\,
      I4 => read_U0_ap_start,
      I5 => ap_done_reg,
      O => \mOutPtr[1]_i_1__5_n_0\
    );
\mOutPtr[1]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000EFFFEFFF1000"
    )
        port map (
      I0 => shiftReg_ce,
      I1 => ap_done_reg,
      I2 => read_U0_ap_start,
      I3 => \^arg_out_tlast_values_empty_n\,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__6_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__5_n_0\,
      D => \mOutPtr[0]_i_1__4_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__5_n_0\,
      D => \mOutPtr[1]_i_2__6_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_2 is
  port (
    read_U0_ap_continue : out STD_LOGIC;
    operator_int_U0_ap_start : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_done_reg_0 : in STD_LOGIC;
    arg_out_tlast_values_empty_n : in STD_LOGIC;
    read_U0_ap_start : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_2 : entity is "fifo_w1_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_2;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_2 is
  signal \internal_empty_n_i_1__7_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__7_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_2__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__9_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_3__3_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^operator_int_u0_ap_start\ : STD_LOGIC;
  signal \^read_u0_ap_continue\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__7\ : label is "soft_lutpair17";
begin
  operator_int_U0_ap_start <= \^operator_int_u0_ap_start\;
  read_U0_ap_continue <= \^read_u0_ap_continue\;
\internal_empty_n_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => ap_done_reg,
      I3 => \internal_full_n_i_2__0_n_0\,
      I4 => \^operator_int_u0_ap_start\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__7_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__7_n_0\,
      Q => \^operator_int_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5DDDDDDDDFFFF"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^read_u0_ap_continue\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => \internal_full_n_i_2__0_n_0\,
      I5 => internal_full_n_reg_0,
      O => \internal_full_n_i_1__7_n_0\
    );
\internal_full_n_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => \^read_u0_ap_continue\,
      I1 => ap_done_reg_0,
      I2 => arg_out_tlast_values_empty_n,
      I3 => read_U0_ap_start,
      O => \internal_full_n_i_2__0_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__7_n_0\,
      Q => \^read_u0_ap_continue\,
      R => '0'
    );
\mOutPtr[0]_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__5_n_0\
    );
\mOutPtr[1]_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F80007FFF800"
    )
        port map (
      I0 => read_U0_ap_start,
      I1 => arg_out_tlast_values_empty_n,
      I2 => ap_done_reg_0,
      I3 => \^read_u0_ap_continue\,
      I4 => \^operator_int_u0_ap_start\,
      I5 => ap_done_reg,
      O => \mOutPtr[1]_i_1__9_n_0\
    );
\mOutPtr[1]_i_2__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \mOutPtr[1]_i_3__3_n_0\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__7_n_0\
    );
\mOutPtr[1]_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000022222222222"
    )
        port map (
      I0 => \^operator_int_u0_ap_start\,
      I1 => ap_done_reg,
      I2 => read_U0_ap_start,
      I3 => arg_out_tlast_values_empty_n,
      I4 => ap_done_reg_0,
      I5 => \^read_u0_ap_continue\,
      O => \mOutPtr[1]_i_3__3_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__9_n_0\,
      D => \mOutPtr[0]_i_1__5_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__9_n_0\,
      D => \mOutPtr[1]_i_2__7_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_4 is
  port (
    val_assign_1_channel_empty_n : out STD_LOGIC;
    internal_full_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    operator_int_U0_ap_start : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_4 : entity is "fifo_w1_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_4;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_4 is
  signal \internal_empty_n_i_1__8_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__8_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_2__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__8_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal operator_int_U0_ap_continue : STD_LOGIC;
  signal \^val_assign_1_channel_empty_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_done_reg_i_1__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \internal_full_n_i_2__2\ : label is "soft_lutpair43";
begin
  val_assign_1_channel_empty_n <= \^val_assign_1_channel_empty_n\;
\ap_done_reg_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => operator_int_U0_ap_continue,
      I1 => ap_rst_n,
      I2 => ap_done_reg,
      I3 => operator_int_U0_ap_start,
      O => internal_full_n_reg_0
    );
\internal_empty_n_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_empty_n_reg_0,
      I3 => \internal_full_n_i_2__2_n_0\,
      I4 => \^val_assign_1_channel_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__8_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__8_n_0\,
      Q => \^val_assign_1_channel_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => operator_int_U0_ap_continue,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => \internal_full_n_i_2__2_n_0\,
      I5 => \mOutPtr_reg[1]_0\,
      O => \internal_full_n_i_1__8_n_0\
    );
\internal_full_n_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => operator_int_U0_ap_continue,
      I1 => ap_done_reg,
      I2 => operator_int_U0_ap_start,
      O => \internal_full_n_i_2__2_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__8_n_0\,
      Q => operator_int_U0_ap_continue,
      R => '0'
    );
\mOutPtr[0]_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__6_n_0\
    );
\mOutPtr[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E01FE0E0"
    )
        port map (
      I0 => operator_int_U0_ap_start,
      I1 => ap_done_reg,
      I2 => operator_int_U0_ap_continue,
      I3 => internal_empty_n_reg_0,
      I4 => \^val_assign_1_channel_empty_n\,
      O => \mOutPtr[1]_i_1__6_n_0\
    );
\mOutPtr[1]_i_2__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5700A8FFA8FF5700"
    )
        port map (
      I0 => operator_int_U0_ap_continue,
      I1 => ap_done_reg,
      I2 => operator_int_U0_ap_start,
      I3 => \mOutPtr_reg[1]_0\,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__8_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__6_n_0\,
      D => \mOutPtr[0]_i_1__6_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__6_n_0\,
      D => \mOutPtr[1]_i_2__8_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_ibuf is
  port (
    arg_in0_TREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[0]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_ibuf : entity is "ibuf";
end conv_3_3_conv_3_3_0_0_ibuf;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_ibuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ireg01_out : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arg_in0_TREADY_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata[10]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata[11]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[12]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[13]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[14]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[15]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[16]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata[2]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata[3]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata[4]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata[5]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata[6]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata[7]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata[8]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata[9]_i_1__0\ : label is "soft_lutpair6";
begin
  Q(0) <= \^q\(0);
arg_in0_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => D(16),
      I1 => \^q\(0),
      I2 => ap_rst_n,
      O => arg_in0_TREADY
    );
\ireg[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[0]_0\(0),
      I2 => \ireg_reg[0]_1\,
      O => ireg01_out
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(0),
      Q => \ireg_reg_n_0_[0]\,
      R => SR(0)
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(10),
      Q => \ireg_reg_n_0_[10]\,
      R => SR(0)
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(11),
      Q => \ireg_reg_n_0_[11]\,
      R => SR(0)
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(12),
      Q => \ireg_reg_n_0_[12]\,
      R => SR(0)
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(13),
      Q => \ireg_reg_n_0_[13]\,
      R => SR(0)
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(14),
      Q => \ireg_reg_n_0_[14]\,
      R => SR(0)
    );
\ireg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(15),
      Q => \ireg_reg_n_0_[15]\,
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(16),
      Q => \^q\(0),
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(1),
      Q => \ireg_reg_n_0_[1]\,
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(2),
      Q => \ireg_reg_n_0_[2]\,
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(3),
      Q => \ireg_reg_n_0_[3]\,
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(4),
      Q => \ireg_reg_n_0_[4]\,
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(5),
      Q => \ireg_reg_n_0_[5]\,
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(6),
      Q => \ireg_reg_n_0_[6]\,
      R => SR(0)
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(7),
      Q => \ireg_reg_n_0_[7]\,
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(8),
      Q => \ireg_reg_n_0_[8]\,
      R => SR(0)
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(9),
      Q => \ireg_reg_n_0_[9]\,
      R => SR(0)
    );
\odata[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[0]\,
      O => \ireg_reg[16]_0\(0)
    );
\odata[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(10),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[10]\,
      O => \ireg_reg[16]_0\(10)
    );
\odata[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(11),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[11]\,
      O => \ireg_reg[16]_0\(11)
    );
\odata[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(12),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[12]\,
      O => \ireg_reg[16]_0\(12)
    );
\odata[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(13),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[13]\,
      O => \ireg_reg[16]_0\(13)
    );
\odata[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(14),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[14]\,
      O => \ireg_reg[16]_0\(14)
    );
\odata[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(15),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[15]\,
      O => \ireg_reg[16]_0\(15)
    );
\odata[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => D(16),
      O => \ireg_reg[16]_0\(16)
    );
\odata[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[1]\,
      O => \ireg_reg[16]_0\(1)
    );
\odata[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[2]\,
      O => \ireg_reg[16]_0\(2)
    );
\odata[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(3),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[3]\,
      O => \ireg_reg[16]_0\(3)
    );
\odata[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(4),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[4]\,
      O => \ireg_reg[16]_0\(4)
    );
\odata[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(5),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[5]\,
      O => \ireg_reg[16]_0\(5)
    );
\odata[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(6),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[6]\,
      O => \ireg_reg[16]_0\(6)
    );
\odata[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(7),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[7]\,
      O => \ireg_reg[16]_0\(7)
    );
\odata[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(8),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[8]\,
      O => \ireg_reg[16]_0\(8)
    );
\odata[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(9),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[9]\,
      O => \ireg_reg[16]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_ibuf_11 is
  port (
    count : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_rst_n_2 : out STD_LOGIC;
    \ireg_reg[16]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arg_out_TREADY : in STD_LOGIC;
    \count_reg[1]\ : in STD_LOGIC;
    \count_reg[1]_0\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    val_assign_1_channel_empty_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    val_assign_channel_empty_n : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \ireg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_ibuf_11 : entity is "ibuf";
end conv_3_3_conv_3_3_0_0_ibuf_11;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_ibuf_11 is
  signal \^ap_rst_n_1\ : STD_LOGIC;
  signal \^ap_rst_n_2\ : STD_LOGIC;
  signal arg_out_TVALID_int : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal \^ireg_reg[16]_0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ireg[16]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[16]_i_1\ : label is "soft_lutpair2";
begin
  ap_rst_n_1 <= \^ap_rst_n_1\;
  ap_rst_n_2 <= \^ap_rst_n_2\;
  \ireg_reg[16]_0\(16 downto 0) <= \^ireg_reg[16]_0\(16 downto 0);
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F700F7FF"
    )
        port map (
      I0 => val_assign_channel_empty_n,
      I1 => val_assign_1_channel_empty_n,
      I2 => \^ireg_reg[16]_0\(16),
      I3 => Q(0),
      I4 => \^ap_rst_n_2\,
      O => \ap_CS_fsm_reg[0]\(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E222222"
    )
        port map (
      I0 => \^ap_rst_n_2\,
      I1 => Q(0),
      I2 => \^ireg_reg[16]_0\(16),
      I3 => val_assign_1_channel_empty_n,
      I4 => val_assign_channel_empty_n,
      O => \ap_CS_fsm_reg[0]\(1)
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA8080"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \count_reg[1]_0\,
      I2 => arg_out_TVALID_int,
      I3 => arg_out_TREADY,
      I4 => \count_reg[1]\,
      O => ap_rst_n_0
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => arg_out_TREADY,
      I1 => \count_reg[1]\,
      I2 => \count_reg[1]_0\,
      I3 => arg_out_TVALID_int,
      O => count(0)
    );
\ireg[16]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(16),
      I1 => \ireg_reg[0]_0\(0),
      I2 => arg_out_TREADY,
      O => ireg01_out
    );
\ireg[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(16),
      I1 => ap_rst_n,
      I2 => val_assign_1_channel_empty_n,
      I3 => Q(0),
      I4 => val_assign_channel_empty_n,
      O => arg_out_TVALID_int
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(0),
      Q => \^ireg_reg[16]_0\(0),
      R => SR(0)
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(10),
      Q => \^ireg_reg[16]_0\(10),
      R => SR(0)
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(11),
      Q => \^ireg_reg[16]_0\(11),
      R => SR(0)
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(12),
      Q => \^ireg_reg[16]_0\(12),
      R => SR(0)
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(13),
      Q => \^ireg_reg[16]_0\(13),
      R => SR(0)
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(14),
      Q => \^ireg_reg[16]_0\(14),
      R => SR(0)
    );
\ireg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(15),
      Q => \^ireg_reg[16]_0\(15),
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => arg_out_TVALID_int,
      Q => \^ireg_reg[16]_0\(16),
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(1),
      Q => \^ireg_reg[16]_0\(1),
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(2),
      Q => \^ireg_reg[16]_0\(2),
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(3),
      Q => \^ireg_reg[16]_0\(3),
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(4),
      Q => \^ireg_reg[16]_0\(4),
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(5),
      Q => \^ireg_reg[16]_0\(5),
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(6),
      Q => \^ireg_reg[16]_0\(6),
      R => SR(0)
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(7),
      Q => \^ireg_reg[16]_0\(7),
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(8),
      Q => \^ireg_reg[16]_0\(8),
      R => SR(0)
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(9),
      Q => \^ireg_reg[16]_0\(9),
      R => SR(0)
    );
\mOutPtr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA000000000000"
    )
        port map (
      I0 => val_assign_1_channel_empty_n,
      I1 => \count_reg[1]_0\,
      I2 => arg_out_TREADY,
      I3 => \count_reg[1]\,
      I4 => Q(1),
      I5 => \^ap_rst_n_1\,
      O => internal_empty_n_reg
    );
\mOutPtr[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFDFFFDFFFDF"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ireg_reg[16]_0\(16),
      I2 => Q(1),
      I3 => \count_reg[1]\,
      I4 => arg_out_TREADY,
      I5 => \count_reg[1]_0\,
      O => \^ap_rst_n_2\
    );
\mOutPtr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA000000000000"
    )
        port map (
      I0 => val_assign_channel_empty_n,
      I1 => \count_reg[1]_0\,
      I2 => arg_out_TREADY,
      I3 => \count_reg[1]\,
      I4 => Q(1),
      I5 => \^ap_rst_n_1\,
      O => internal_empty_n_reg_0
    );
\odata[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ireg_reg[16]_0\(16),
      O => \^ap_rst_n_1\
    );
\odata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => val_assign_channel_empty_n,
      I1 => Q(0),
      I2 => val_assign_1_channel_empty_n,
      I3 => \^ireg_reg[16]_0\(16),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_obuf is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    internal_full_n_reg : out STD_LOGIC;
    internal_full_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[16]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \odata_reg[16]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC;
    Block_proc75_U0_ap_continue : in STD_LOGIC;
    \SRL_SIG_reg[0][0]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][1]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][2]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][3]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][4]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][5]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][6]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][8]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][9]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][10]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][11]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][12]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][13]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][14]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][15]\ : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_obuf : entity is "obuf";
end conv_3_3_conv_3_3_0_0_obuf;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_obuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \odata[16]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][0]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SRL_SIG[0][15]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ap_done_reg_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ap_return_preg[15]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ireg[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__0\ : label is "soft_lutpair12";
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
  SR(0) <= \^sr\(0);
\SRL_SIG[0][0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][0]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(0),
      O => \ap_return_preg_reg[15]\(0)
    );
\SRL_SIG[0][10]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][10]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(10),
      O => \ap_return_preg_reg[15]\(10)
    );
\SRL_SIG[0][11]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][11]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(11),
      O => \ap_return_preg_reg[15]\(11)
    );
\SRL_SIG[0][12]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][12]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(12),
      O => \ap_return_preg_reg[15]\(12)
    );
\SRL_SIG[0][13]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][13]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(13),
      O => \ap_return_preg_reg[15]\(13)
    );
\SRL_SIG[0][14]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][14]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(14),
      O => \ap_return_preg_reg[15]\(14)
    );
\SRL_SIG[0][15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => Block_proc75_U0_ap_continue,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      O => internal_full_n_reg_0(0)
    );
\SRL_SIG[0][15]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][15]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(15),
      O => \ap_return_preg_reg[15]\(15)
    );
\SRL_SIG[0][1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][1]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(1),
      O => \ap_return_preg_reg[15]\(1)
    );
\SRL_SIG[0][2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][2]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(2),
      O => \ap_return_preg_reg[15]\(2)
    );
\SRL_SIG[0][3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][3]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(3),
      O => \ap_return_preg_reg[15]\(3)
    );
\SRL_SIG[0][4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][4]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(4),
      O => \ap_return_preg_reg[15]\(4)
    );
\SRL_SIG[0][5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][5]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(5),
      O => \ap_return_preg_reg[15]\(5)
    );
\SRL_SIG[0][6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][6]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(6),
      O => \ap_return_preg_reg[15]\(6)
    );
\SRL_SIG[0][7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(7),
      O => \ap_return_preg_reg[15]\(7)
    );
\SRL_SIG[0][8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][8]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(8),
      O => \ap_return_preg_reg[15]\(8)
    );
\SRL_SIG[0][9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0][9]\,
      I1 => \ireg_reg[0]\,
      I2 => \^q\(16),
      I3 => \^q\(9),
      O => \ap_return_preg_reg[15]\(9)
    );
ap_done_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => Block_proc75_U0_ap_continue,
      I1 => ap_rst_n,
      I2 => \ireg_reg[0]\,
      I3 => \^q\(16),
      O => internal_full_n_reg
    );
\ap_return_preg[15]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(16),
      I1 => \ireg_reg[0]\,
      O => \odata_reg[16]_0\
    );
\ireg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => \^q\(16),
      I1 => \ireg_reg[0]\,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \odata_reg[16]_1\(0)
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => shiftReg_ce,
      I1 => \^q\(16),
      I2 => \ireg_reg[0]\,
      I3 => Block_proc75_U0_ap_continue,
      O => E(0)
    );
\odata[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\odata[16]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ireg_reg[0]\,
      I1 => \^q\(16),
      O => \odata[16]_i_1__0_n_0\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\odata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\odata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[16]_i_1__0_n_0\,
      D => D(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_obuf_12 is
  port (
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_out_TREADY : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_obuf_12 : entity is "obuf";
end conv_3_3_conv_3_3_0_0_obuf_12;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_obuf_12 is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \odata[15]_i_2_n_0\ : STD_LOGIC;
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
\ireg[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(16),
      I1 => arg_out_TREADY,
      I2 => \ireg_reg[0]\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\odata[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => arg_out_TREADY,
      I1 => \^q\(16),
      O => \odata[15]_i_2_n_0\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(10),
      Q => \^q\(10),
      R => ap_rst_n_inv
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(11),
      Q => \^q\(11),
      R => ap_rst_n_inv
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(12),
      Q => \^q\(12),
      R => ap_rst_n_inv
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(13),
      Q => \^q\(13),
      R => ap_rst_n_inv
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(14),
      Q => \^q\(14),
      R => ap_rst_n_inv
    );
\odata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(15),
      Q => \^q\(15),
      R => ap_rst_n_inv
    );
\odata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(16),
      Q => \^q\(16),
      R => ap_rst_n_inv
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => ap_rst_n_inv
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => ap_rst_n_inv
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => ap_rst_n_inv
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => ap_rst_n_inv
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => ap_rst_n_inv
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => ap_rst_n_inv
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(7),
      Q => \^q\(7),
      R => ap_rst_n_inv
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => ap_rst_n_inv
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(9),
      Q => \^q\(9),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_operator_int is
  port (
    ap_done_reg : out STD_LOGIC;
    ap_done_reg_reg_0 : out STD_LOGIC;
    ap_done_reg_reg_1 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    operator_int_U0_ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_operator_int : entity is "operator_int";
end conv_3_3_conv_3_3_0_0_operator_int;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_operator_int is
  signal \^ap_done_reg\ : STD_LOGIC;
begin
  ap_done_reg <= \^ap_done_reg\;
ap_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_reg_reg_1,
      Q => \^ap_done_reg\,
      R => '0'
    );
internal_full_n_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_done_reg\,
      I1 => operator_int_U0_ap_start,
      O => ap_done_reg_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_operator_int_1 is
  port (
    ap_done_reg : out STD_LOGIC;
    ap_done_reg_reg_0 : out STD_LOGIC;
    hw_uint_16_val_V_preg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_done_reg_reg_1 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    operator_int_1_U0_ap_start : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[15]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[15]_1\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[14]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[13]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[12]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[11]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[10]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[9]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[8]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[7]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[6]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[5]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[4]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[3]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[2]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[1]_0\ : in STD_LOGIC;
    \hw_uint_16_val_V_preg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_operator_int_1 : entity is "operator_int_1";
end conv_3_3_conv_3_3_0_0_operator_int_1;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_operator_int_1 is
  signal \^ap_done_reg\ : STD_LOGIC;
begin
  ap_done_reg <= \^ap_done_reg\;
\SRL_SIG[0][15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_done_reg\,
      I1 => operator_int_1_U0_ap_start,
      O => ap_done_reg_reg_0
    );
ap_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_reg_reg_1,
      Q => \^ap_done_reg\,
      R => '0'
    );
\hw_uint_16_val_V_preg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[0]_0\,
      Q => hw_uint_16_val_V_preg(0),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[10]_0\,
      Q => hw_uint_16_val_V_preg(10),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[11]_0\,
      Q => hw_uint_16_val_V_preg(11),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[12]_0\,
      Q => hw_uint_16_val_V_preg(12),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[13]_0\,
      Q => hw_uint_16_val_V_preg(13),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[14]_0\,
      Q => hw_uint_16_val_V_preg(14),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[15]_1\,
      Q => hw_uint_16_val_V_preg(15),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[1]_0\,
      Q => hw_uint_16_val_V_preg(1),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[2]_0\,
      Q => hw_uint_16_val_V_preg(2),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[3]_0\,
      Q => hw_uint_16_val_V_preg(3),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[4]_0\,
      Q => hw_uint_16_val_V_preg(4),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[5]_0\,
      Q => hw_uint_16_val_V_preg(5),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[6]_0\,
      Q => hw_uint_16_val_V_preg(6),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[7]_0\,
      Q => hw_uint_16_val_V_preg(7),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[8]_0\,
      Q => hw_uint_16_val_V_preg(8),
      R => ap_rst_n_inv
    );
\hw_uint_16_val_V_preg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \hw_uint_16_val_V_preg_reg[15]_0\,
      D => \hw_uint_16_val_V_preg_reg[9]_0\,
      Q => hw_uint_16_val_V_preg(9),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_read_1 is
  port (
    ap_done_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_reg_reg_0 : out STD_LOGIC;
    \ap_return_preg_reg[15]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[14]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[13]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[12]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[11]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[10]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[9]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[8]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[7]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[6]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[5]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[4]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[3]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[2]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[1]_0\ : out STD_LOGIC;
    \ap_return_preg_reg[0]_0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    start_for_read_1_U0_full_n : in STD_LOGIC;
    start_for_read_U0_full_n : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    unoptimized_conv_3_3_U0_ap_start : in STD_LOGIC;
    arg_out_data_values_s_empty_n : in STD_LOGIC;
    read_1_U0_ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    read_1_U0_ap_continue : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    \ap_return_preg_reg[15]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[14]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[13]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[12]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[11]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[10]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[9]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[8]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[7]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[6]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[5]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[4]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[3]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[2]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[1]_1\ : in STD_LOGIC;
    \ap_return_preg_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_read_1 : entity is "read_1";
end conv_3_3_conv_3_3_0_0_read_1;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_read_1 is
  signal \^ap_done_reg\ : STD_LOGIC;
  signal \ap_done_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \^ap_done_reg_reg_0\ : STD_LOGIC;
begin
  ap_done_reg <= \^ap_done_reg\;
  ap_done_reg_reg_0 <= \^ap_done_reg_reg_0\;
\ap_done_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => \^ap_done_reg\,
      I1 => arg_out_data_values_s_empty_n,
      I2 => read_1_U0_ap_start,
      I3 => ap_rst_n,
      I4 => read_1_U0_ap_continue,
      O => \ap_done_reg_i_1__0_n_0\
    );
ap_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_reg_i_1__0_n_0\,
      Q => \^ap_done_reg\,
      R => '0'
    );
\ap_return_preg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^ap_done_reg\,
      I1 => read_1_U0_ap_start,
      I2 => arg_out_data_values_s_empty_n,
      O => \^ap_done_reg_reg_0\
    );
\ap_return_preg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[0]_1\,
      Q => \ap_return_preg_reg[0]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[10]_1\,
      Q => \ap_return_preg_reg[10]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[11]_1\,
      Q => \ap_return_preg_reg[11]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[12]_1\,
      Q => \ap_return_preg_reg[12]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[13]_1\,
      Q => \ap_return_preg_reg[13]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[14]_1\,
      Q => \ap_return_preg_reg[14]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[15]_1\,
      Q => \ap_return_preg_reg[15]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[1]_1\,
      Q => \ap_return_preg_reg[1]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[2]_1\,
      Q => \ap_return_preg_reg[2]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[3]_1\,
      Q => \ap_return_preg_reg[3]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[4]_1\,
      Q => \ap_return_preg_reg[4]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[5]_1\,
      Q => \ap_return_preg_reg[5]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[6]_1\,
      Q => \ap_return_preg_reg[6]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[7]_1\,
      Q => \ap_return_preg_reg[7]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[8]_1\,
      Q => \ap_return_preg_reg[8]_0\,
      R => ap_rst_n_inv
    );
\ap_return_preg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_done_reg_reg_0\,
      D => \ap_return_preg_reg[9]_1\,
      Q => \ap_return_preg_reg[9]_0\,
      R => ap_rst_n_inv
    );
\mOutPtr[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \^ap_done_reg_reg_0\,
      I1 => start_for_read_1_U0_full_n,
      I2 => start_for_read_U0_full_n,
      I3 => \mOutPtr_reg[1]\,
      I4 => unoptimized_conv_3_3_U0_ap_start,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_read_r is
  port (
    ap_done_reg : out STD_LOGIC;
    ap_done_reg_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    arg_out_tlast_values_empty_n : in STD_LOGIC;
    read_U0_ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    read_U0_ap_continue : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_read_r : entity is "read_r";
end conv_3_3_conv_3_3_0_0_read_r;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_read_r is
  signal \^ap_done_reg\ : STD_LOGIC;
  signal \ap_done_reg_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_done_reg_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \internal_full_n_i_2__1\ : label is "soft_lutpair18";
begin
  ap_done_reg <= \^ap_done_reg\;
\ap_done_reg_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => \^ap_done_reg\,
      I1 => arg_out_tlast_values_empty_n,
      I2 => read_U0_ap_start,
      I3 => ap_rst_n,
      I4 => read_U0_ap_continue,
      O => \ap_done_reg_i_1__1_n_0\
    );
ap_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_reg_i_1__1_n_0\,
      Q => \^ap_done_reg\,
      R => '0'
    );
\internal_full_n_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^ap_done_reg\,
      I1 => read_U0_ap_start,
      I2 => arg_out_tlast_values_empty_n,
      O => ap_done_reg_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_start_for_read_1_U0 is
  port (
    start_for_read_1_U0_full_n : out STD_LOGIC;
    read_1_U0_ap_start : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    arg_out_data_values_s_empty_n : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_start_for_read_1_U0 : entity is "start_for_read_1_U0";
end conv_3_3_conv_3_3_0_0_start_for_read_1_U0;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_start_for_read_1_U0 is
  signal \internal_empty_n_i_1__2_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^read_1_u0_ap_start\ : STD_LOGIC;
  signal \^start_for_read_1_u0_full_n\ : STD_LOGIC;
begin
  read_1_U0_ap_start <= \^read_1_u0_ap_start\;
  start_for_read_1_U0_full_n <= \^start_for_read_1_u0_full_n\;
\internal_empty_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_full_n_reg_1,
      I3 => internal_full_n_reg_0,
      I4 => \^read_1_u0_ap_start\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__2_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__2_n_0\,
      Q => \^read_1_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^start_for_read_1_u0_full_n\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => internal_full_n_reg_0,
      I5 => internal_full_n_reg_1,
      O => \internal_full_n_i_1__2_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__2_n_0\,
      Q => \^start_for_read_1_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__8_n_0\
    );
\mOutPtr[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000EFFFEFFF1000"
    )
        port map (
      I0 => internal_full_n_reg_0,
      I1 => ap_done_reg,
      I2 => \^read_1_u0_ap_start\,
      I3 => arg_out_data_values_s_empty_n,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__2_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__8_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2__2_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_start_for_read_U0 is
  port (
    start_for_read_U0_full_n : out STD_LOGIC;
    read_U0_ap_start : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    arg_out_tlast_values_empty_n : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_start_for_read_U0 : entity is "start_for_read_U0";
end conv_3_3_conv_3_3_0_0_start_for_read_U0;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_start_for_read_U0 is
  signal \internal_empty_n_i_1__3_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__9_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__3_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^read_u0_ap_start\ : STD_LOGIC;
  signal \^start_for_read_u0_full_n\ : STD_LOGIC;
begin
  read_U0_ap_start <= \^read_u0_ap_start\;
  start_for_read_U0_full_n <= \^start_for_read_u0_full_n\;
\internal_empty_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_full_n_reg_1,
      I3 => internal_full_n_reg_0,
      I4 => \^read_u0_ap_start\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__3_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__3_n_0\,
      Q => \^read_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^start_for_read_u0_full_n\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => internal_full_n_reg_0,
      I5 => internal_full_n_reg_1,
      O => \internal_full_n_i_1__3_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__3_n_0\,
      Q => \^start_for_read_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__9_n_0\
    );
\mOutPtr[1]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000EFFFEFFF1000"
    )
        port map (
      I0 => internal_full_n_reg_0,
      I1 => ap_done_reg,
      I2 => \^read_u0_ap_start\,
      I3 => arg_out_tlast_values_empty_n,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__3_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__9_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2__3_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_start_for_unoptimdEe is
  port (
    start_for_unoptimized_conv_3_3_U0_full_n : out STD_LOGIC;
    unoptimized_conv_3_3_U0_ap_start : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_full_n_reg_0 : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    write_U0_ap_start : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    internal_empty_n_reg_2 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    arg_in0_hwstream_val_full_n : in STD_LOGIC;
    \mOutPtr_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    internal_full_n_reg_1 : in STD_LOGIC;
    start_for_read_U0_full_n : in STD_LOGIC;
    start_for_read_1_U0_full_n : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_start_for_unoptimdEe : entity is "start_for_unoptimdEe";
end conv_3_3_conv_3_3_0_0_start_for_unoptimdEe;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_start_for_unoptimdEe is
  signal internal_empty_n_i_1_n_0 : STD_LOGIC;
  signal internal_full_n_i_1_n_0 : STD_LOGIC;
  signal \mOutPtr[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^start_for_unoptimized_conv_3_3_u0_full_n\ : STD_LOGIC;
  signal \^unoptimized_conv_3_3_u0_ap_start\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of start_once_reg_i_1 : label is "soft_lutpair19";
begin
  start_for_unoptimized_conv_3_3_U0_full_n <= \^start_for_unoptimized_conv_3_3_u0_full_n\;
  unoptimized_conv_3_3_U0_ap_start <= \^unoptimized_conv_3_3_u0_ap_start\;
internal_empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFF0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_empty_n_reg_1,
      I3 => internal_empty_n_reg_2,
      I4 => \^unoptimized_conv_3_3_u0_ap_start\,
      I5 => ap_rst_n,
      O => internal_empty_n_i_1_n_0
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_empty_n_i_1_n_0,
      Q => \^unoptimized_conv_3_3_u0_ap_start\,
      R => '0'
    );
internal_full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFA8AAFFFFFFFF"
    )
        port map (
      I0 => \^start_for_unoptimized_conv_3_3_u0_full_n\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => internal_empty_n_reg_2,
      I4 => \mOutPtr_reg[1]_0\,
      I5 => ap_rst_n,
      O => internal_full_n_i_1_n_0
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_full_n_i_1_n_0,
      Q => \^start_for_unoptimized_conv_3_3_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__7_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF202020"
    )
        port map (
      I0 => \^start_for_unoptimized_conv_3_3_u0_full_n\,
      I1 => start_once_reg,
      I2 => write_U0_ap_start,
      I3 => \^unoptimized_conv_3_3_u0_ap_start\,
      I4 => internal_empty_n_reg_1,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFFE000"
    )
        port map (
      I0 => \^start_for_unoptimized_conv_3_3_u0_full_n\,
      I1 => start_once_reg,
      I2 => write_U0_ap_start,
      I3 => arg_in0_hwstream_val_full_n,
      I4 => \mOutPtr_reg[1]_1\(0),
      O => E(0)
    );
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AA5D555D55A2AA"
    )
        port map (
      I0 => \mOutPtr_reg[1]_0\,
      I1 => write_U0_ap_start,
      I2 => start_once_reg,
      I3 => \^start_for_unoptimized_conv_3_3_u0_full_n\,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2_n_0\
    );
\mOutPtr[1]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^unoptimized_conv_3_3_u0_ap_start\,
      I1 => internal_full_n_reg_1,
      I2 => start_for_read_U0_full_n,
      I3 => start_for_read_1_U0_full_n,
      O => internal_empty_n_reg_0
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1_n_0\,
      D => \mOutPtr[0]_i_1__7_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1_n_0\,
      D => \mOutPtr[1]_i_2_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
start_once_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CEC"
    )
        port map (
      I0 => \^start_for_unoptimized_conv_3_3_u0_full_n\,
      I1 => start_once_reg,
      I2 => write_U0_ap_start,
      I3 => arg_in0_hwstream_val_full_n,
      O => internal_full_n_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb_ram is
  port (
    \hw_input_global_wrap_2_reg_186_reg[4]\ : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \hw_input_global_wrap_2_reg_186_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    q0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    C : out STD_LOGIC_VECTOR ( 1 downto 0 );
    q1 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ram_reg_bram_0_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_0_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_reg_bram_1_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_reg_bram_1_1 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_reg_bram_0_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_bram_1_2 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_1_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hw_input_global_wrap_7_reg_593_reg[9]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \hw_input_global_wrap_7_reg_593_reg[10]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_bram_0_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_0_4 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_reg_bram_0_5 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_1_4 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    arg_in0_hwstream_val_empty_n : in STD_LOGIC;
    ram_reg_bram_0_6 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \tmp_i231_reg_661_reg[13]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \add_ln58_reg_666_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    d0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb_ram : entity is "unoptimized_conv_bkb_ram";
end conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb_ram;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb_ram is
  signal \^c\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_22_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_23_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_i_24_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_i_12_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_i_13_n_0\ : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 11 downto 6 );
  signal \^hw_input_global_wrap_2_reg_186_reg[1]\ : STD_LOGIC;
  signal \^hw_input_global_wrap_2_reg_186_reg[4]\ : STD_LOGIC;
  signal \^hw_input_global_wrap_7_reg_593_reg[9]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal hw_input_global_wrap_address1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hw_input_global_wrap_ce0 : STD_LOGIC;
  signal hw_input_global_wrap_q1 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal p_0_in : STD_LOGIC;
  signal \^q0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^q1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal ram_reg_bram_0_i_10_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_11_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_12_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_13_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_14_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_37_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_38_n_3 : STD_LOGIC;
  signal ram_reg_bram_0_i_38_n_4 : STD_LOGIC;
  signal ram_reg_bram_0_i_38_n_5 : STD_LOGIC;
  signal ram_reg_bram_0_i_38_n_6 : STD_LOGIC;
  signal ram_reg_bram_0_i_38_n_7 : STD_LOGIC;
  signal ram_reg_bram_0_i_39_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_3_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_40_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_41_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_42_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_43_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_44_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_45_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_46_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_47_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_48_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_49_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_4_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_50_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_51_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_52_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_5_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_6_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_7_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_8_n_0 : STD_LOGIC;
  signal ram_reg_bram_0_i_9_n_0 : STD_LOGIC;
  signal NLW_ram_reg_bram_0_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_0_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ram_reg_bram_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_bram_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_ram_reg_bram_0_i_38_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_ram_reg_bram_0_i_38_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_bram_1_CASOUTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_1_CASOUTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_bram_1_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_bram_1_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_bram_1_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_bram_1_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_bram_1_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_ram_reg_bram_1_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal NLW_ram_reg_bram_1_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_bram_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_bram_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln187_reg_604[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry__0_i_16\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry__0_i_17\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry__0_i_18\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry__0_i_20\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry__0_i_21\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry__0_i_24\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry_i_12\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \add_ln58_2_fu_476_p2__2_carry_i_13\ : label is "soft_lutpair22";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_bram_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg_bram_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of ram_reg_bram_0 : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_bram_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_bram_0 : label is "unoptimized_conv_3_3_U0/hw_input_global_wrap_U/unoptimized_conv_bkb_ram_U/ram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_bram_0 : label is "RAM_TDP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg_bram_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg_bram_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg_bram_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg_bram_0 : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_bram_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_bram_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_bram_0 : label is 8;
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_37 : label is "soft_lutpair21";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ram_reg_bram_0_i_38 : label is 35;
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_42 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ram_reg_bram_0_i_51 : label is "soft_lutpair20";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg_bram_1 : label is "p0_d7";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg_bram_1 : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_bram_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of ram_reg_bram_1 : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of ram_reg_bram_1 : label is 65536;
  attribute RTL_RAM_NAME of ram_reg_bram_1 : label is "unoptimized_conv_3_3_U0/hw_input_global_wrap_U/unoptimized_conv_bkb_ram_U/ram";
  attribute RTL_RAM_TYPE of ram_reg_bram_1 : label is "RAM_TDP";
  attribute bram_addr_begin of ram_reg_bram_1 : label is 0;
  attribute bram_addr_end of ram_reg_bram_1 : label is 4095;
  attribute bram_slice_begin of ram_reg_bram_1 : label is 9;
  attribute bram_slice_end of ram_reg_bram_1 : label is 15;
  attribute ram_addr_begin of ram_reg_bram_1 : label is 0;
  attribute ram_addr_end of ram_reg_bram_1 : label is 4095;
  attribute ram_offset of ram_reg_bram_1 : label is 0;
  attribute ram_slice_begin of ram_reg_bram_1 : label is 9;
  attribute ram_slice_end of ram_reg_bram_1 : label is 15;
begin
  C(1 downto 0) <= \^c\(1 downto 0);
  D(0) <= \^d\(0);
  DI(3 downto 0) <= \^di\(3 downto 0);
  WEA(0) <= \^wea\(0);
  \hw_input_global_wrap_2_reg_186_reg[1]\ <= \^hw_input_global_wrap_2_reg_186_reg[1]\;
  \hw_input_global_wrap_2_reg_186_reg[4]\ <= \^hw_input_global_wrap_2_reg_186_reg[4]\;
  \hw_input_global_wrap_7_reg_593_reg[9]\(6 downto 0) <= \^hw_input_global_wrap_7_reg_593_reg[9]\(6 downto 0);
  q0(15 downto 0) <= \^q0\(15 downto 0);
  q1(13 downto 0) <= \^q1\(13 downto 0);
\add_ln187_reg_604[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => data4(5),
      I1 => data4(4),
      I2 => data4(2),
      I3 => data4(1),
      I4 => data4(3),
      O => \^d\(0)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(9),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0\,
      I2 => \^q0\(10),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(9),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(11),
      O => \^hw_input_global_wrap_7_reg_593_reg[9]\(6)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^hw_input_global_wrap_7_reg_593_reg[9]\(5),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(9),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(11),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(9),
      I5 => \^q0\(10),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(5)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^hw_input_global_wrap_7_reg_593_reg[9]\(4),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(8),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(10),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(8),
      I5 => \^q0\(9),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(4)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^hw_input_global_wrap_7_reg_593_reg[9]\(3),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(7),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(9),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(7),
      I5 => \^q0\(8),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(3)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^hw_input_global_wrap_7_reg_593_reg[9]\(2),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(6),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(8),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(6),
      I5 => \^q0\(7),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(2)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^hw_input_global_wrap_7_reg_593_reg[9]\(1),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(5),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(7),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(5),
      I5 => \^q0\(6),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(1)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^hw_input_global_wrap_7_reg_593_reg[9]\(0),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(4),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(6),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(4),
      I5 => \^q0\(5),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(0)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(11),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(12),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(10),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(10),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(11),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(9),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(9),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(10),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(8),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(8),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(9),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(7),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(8),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0\,
      I2 => \^q0\(9),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(8),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(10),
      O => \^hw_input_global_wrap_7_reg_593_reg[9]\(5)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(7),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(8),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(6),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(6),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(7),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(5),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(12),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(10),
      I2 => \^q0\(11),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_22_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(12),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(14),
      I2 => \^q0\(13),
      I3 => \add_ln58_reg_666_reg[15]\(11),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_23_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(12),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(13),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(11),
      O => \add_ln58_2_fu_476_p2__2_carry__0_i_24_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(7),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0\,
      I2 => \^q0\(8),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(7),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(9),
      O => \^hw_input_global_wrap_7_reg_593_reg[9]\(4)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(6),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0\,
      I2 => \^q0\(7),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(6),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(8),
      O => \^hw_input_global_wrap_7_reg_593_reg[9]\(3)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(5),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0\,
      I2 => \^q0\(6),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(5),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(7),
      O => \^hw_input_global_wrap_7_reg_593_reg[9]\(2)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(4),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0\,
      I2 => \^q0\(5),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(4),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(6),
      O => \^hw_input_global_wrap_7_reg_593_reg[9]\(1)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(3),
      I1 => \add_ln58_2_fu_476_p2__2_carry_i_13_n_0\,
      I2 => \^q0\(4),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(3),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(5),
      O => \^hw_input_global_wrap_7_reg_593_reg[9]\(0)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87E11E871E87781E"
    )
        port map (
      I0 => \add_ln58_2_fu_476_p2__2_carry__0_i_22_n_0\,
      I1 => \add_ln58_reg_666_reg[15]\(10),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_23_n_0\,
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(13),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(11),
      I5 => \^q0\(12),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(7)
    );
\add_ln58_2_fu_476_p2__2_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^hw_input_global_wrap_7_reg_593_reg[9]\(6),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_24_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(10),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(12),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(10),
      I5 => \^q0\(11),
      O => \hw_input_global_wrap_7_reg_593_reg[10]\(6)
    );
\add_ln58_2_fu_476_p2__2_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E888EEE8"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(2),
      I1 => \add_ln58_2_fu_476_p2__2_carry_i_12_n_0\,
      I2 => \^q0\(3),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(2),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(4),
      O => \^di\(3)
    );
\add_ln58_2_fu_476_p2__2_carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(2),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(0),
      I2 => \^q0\(1),
      O => S(1)
    );
\add_ln58_2_fu_476_p2__2_carry_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q0\(0),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(1),
      O => S(0)
    );
\add_ln58_2_fu_476_p2__2_carry_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(4),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(5),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(3),
      O => \add_ln58_2_fu_476_p2__2_carry_i_12_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(5),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(6),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(4),
      O => \add_ln58_2_fu_476_p2__2_carry_i_13_n_0\
    );
\add_ln58_2_fu_476_p2__2_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3288228822882"
    )
        port map (
      I0 => \add_ln58_reg_666_reg[15]\(1),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(2),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(4),
      I3 => \^q0\(3),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(0),
      I5 => \add_ln58_reg_666_reg[15]\(0),
      O => \^di\(2)
    );
\add_ln58_2_fu_476_p2__2_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00F0FF087787887"
    )
        port map (
      I0 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(0),
      I1 => \add_ln58_reg_666_reg[15]\(0),
      I2 => \add_ln58_reg_666_reg[15]\(1),
      I3 => \^q0\(3),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(4),
      I5 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(2),
      O => \^di\(1)
    );
\add_ln58_2_fu_476_p2__2_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q0\(2),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(3),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(1),
      O => \^di\(0)
    );
\add_ln58_2_fu_476_p2__2_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^di\(3),
      I1 => \add_ln58_2_fu_476_p2__2_carry_i_13_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(3),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(5),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(3),
      I5 => \^q0\(4),
      O => S(5)
    );
\add_ln58_2_fu_476_p2__2_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \^di\(2),
      I1 => \add_ln58_2_fu_476_p2__2_carry_i_12_n_0\,
      I2 => \add_ln58_reg_666_reg[15]\(2),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(4),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(2),
      I5 => \^q0\(3),
      O => S(4)
    );
\add_ln58_2_fu_476_p2__2_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A56"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q0\(2),
      I2 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(1),
      I3 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(3),
      O => S(3)
    );
\add_ln58_2_fu_476_p2__2_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669966969969669"
    )
        port map (
      I0 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(1),
      I1 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(3),
      I2 => \^q0\(2),
      I3 => \add_ln58_reg_666_reg[15]\(0),
      I4 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(0),
      I5 => \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(2),
      O => S(2)
    );
add_ln58_5_reg_676_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c\(0),
      I1 => \^q1\(0),
      O => \^c\(1)
    );
\add_ln58_fu_465_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(15),
      I1 => \add_ln58_reg_666_reg[15]\(15),
      O => ram_reg_bram_1_3(7)
    );
\add_ln58_fu_465_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(14),
      I1 => \add_ln58_reg_666_reg[15]\(14),
      O => ram_reg_bram_1_3(6)
    );
\add_ln58_fu_465_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(13),
      I1 => \add_ln58_reg_666_reg[15]\(13),
      O => ram_reg_bram_1_3(5)
    );
\add_ln58_fu_465_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(12),
      I1 => \add_ln58_reg_666_reg[15]\(12),
      O => ram_reg_bram_1_3(4)
    );
\add_ln58_fu_465_p2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(11),
      I1 => \add_ln58_reg_666_reg[15]\(11),
      O => ram_reg_bram_1_3(3)
    );
\add_ln58_fu_465_p2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(10),
      I1 => \add_ln58_reg_666_reg[15]\(10),
      O => ram_reg_bram_1_3(2)
    );
\add_ln58_fu_465_p2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(9),
      I1 => \add_ln58_reg_666_reg[15]\(9),
      O => ram_reg_bram_1_3(1)
    );
\add_ln58_fu_465_p2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(8),
      I1 => \add_ln58_reg_666_reg[15]\(8),
      O => ram_reg_bram_1_3(0)
    );
add_ln58_fu_465_p2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(7),
      I1 => \add_ln58_reg_666_reg[15]\(7),
      O => ram_reg_bram_0_3(7)
    );
add_ln58_fu_465_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(6),
      I1 => \add_ln58_reg_666_reg[15]\(6),
      O => ram_reg_bram_0_3(6)
    );
add_ln58_fu_465_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(5),
      I1 => \add_ln58_reg_666_reg[15]\(5),
      O => ram_reg_bram_0_3(5)
    );
add_ln58_fu_465_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(4),
      I1 => \add_ln58_reg_666_reg[15]\(4),
      O => ram_reg_bram_0_3(4)
    );
add_ln58_fu_465_p2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(3),
      I1 => \add_ln58_reg_666_reg[15]\(3),
      O => ram_reg_bram_0_3(3)
    );
add_ln58_fu_465_p2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(2),
      I1 => \add_ln58_reg_666_reg[15]\(2),
      O => ram_reg_bram_0_3(2)
    );
add_ln58_fu_465_p2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(1),
      I1 => \add_ln58_reg_666_reg[15]\(1),
      O => ram_reg_bram_0_3(1)
    );
add_ln58_fu_465_p2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q0\(0),
      I1 => \add_ln58_reg_666_reg[15]\(0),
      O => ram_reg_bram_0_3(0)
    );
\grp_fu_522_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(11),
      I1 => hw_input_global_wrap_q1(15),
      O => ram_reg_bram_1_1(6)
    );
\grp_fu_522_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(10),
      I1 => \^q1\(13),
      O => ram_reg_bram_1_1(5)
    );
\grp_fu_522_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(9),
      I1 => \^q1\(12),
      O => ram_reg_bram_1_1(4)
    );
\grp_fu_522_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(8),
      I1 => \^q1\(11),
      O => ram_reg_bram_1_1(3)
    );
\grp_fu_522_p2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(7),
      I1 => \^q1\(10),
      O => ram_reg_bram_1_1(2)
    );
\grp_fu_522_p2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(6),
      I1 => \^q1\(9),
      O => ram_reg_bram_1_1(1)
    );
\grp_fu_522_p2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(5),
      I1 => \^q1\(8),
      O => ram_reg_bram_1_1(0)
    );
grp_fu_522_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(4),
      I1 => \^q1\(7),
      O => ram_reg_bram_0_0(5)
    );
grp_fu_522_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(3),
      I1 => \^q1\(6),
      O => ram_reg_bram_0_0(4)
    );
grp_fu_522_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(2),
      I1 => \^q1\(5),
      O => ram_reg_bram_0_0(3)
    );
grp_fu_522_p2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(1),
      I1 => \^q1\(4),
      O => ram_reg_bram_0_0(2)
    );
grp_fu_522_p2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(0),
      I1 => \^q1\(3),
      O => ram_reg_bram_0_0(1)
    );
grp_fu_522_p2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^c\(0),
      I1 => \^q1\(2),
      O => ram_reg_bram_0_0(0)
    );
\grp_fu_530_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(10),
      I1 => hw_input_global_wrap_q1(15),
      O => ram_reg_bram_1_0(6)
    );
\grp_fu_530_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(9),
      I1 => \^q1\(13),
      O => ram_reg_bram_1_0(5)
    );
\grp_fu_530_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(8),
      I1 => \^q1\(12),
      O => ram_reg_bram_1_0(4)
    );
\grp_fu_530_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(7),
      I1 => \^q1\(11),
      O => ram_reg_bram_1_0(3)
    );
\grp_fu_530_p2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(6),
      I1 => \^q1\(10),
      O => ram_reg_bram_1_0(2)
    );
\grp_fu_530_p2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(5),
      I1 => \^q1\(9),
      O => ram_reg_bram_1_0(1)
    );
\grp_fu_530_p2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(4),
      I1 => \^q1\(8),
      O => ram_reg_bram_1_0(0)
    );
grp_fu_530_p2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(3),
      I1 => \^q1\(7),
      O => ram_reg_bram_0_1(4)
    );
grp_fu_530_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(2),
      I1 => \^q1\(6),
      O => ram_reg_bram_0_1(3)
    );
grp_fu_530_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(1),
      I1 => \^q1\(5),
      O => ram_reg_bram_0_1(2)
    );
grp_fu_530_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q1\(0),
      I1 => \^q1\(4),
      O => ram_reg_bram_0_1(1)
    );
grp_fu_530_p2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^c\(0),
      I1 => \^q1\(3),
      O => ram_reg_bram_0_1(0)
    );
\hw_input_global_wrap_1_reg_175[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^hw_input_global_wrap_2_reg_186_reg[1]\,
      I1 => ram_reg_bram_1_4(4),
      I2 => ram_reg_bram_1_4(6),
      I3 => ram_reg_bram_1_4(5),
      I4 => ram_reg_bram_0_4(0),
      O => \^hw_input_global_wrap_2_reg_186_reg[4]\
    );
ram_reg_bram_0: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14) => ram_reg_bram_0_i_3_n_0,
      ADDRARDADDR(13) => ram_reg_bram_0_i_4_n_0,
      ADDRARDADDR(12) => ram_reg_bram_0_i_5_n_0,
      ADDRARDADDR(11) => ram_reg_bram_0_i_6_n_0,
      ADDRARDADDR(10) => ram_reg_bram_0_i_7_n_0,
      ADDRARDADDR(9) => ram_reg_bram_0_i_8_n_0,
      ADDRARDADDR(8) => ram_reg_bram_0_i_9_n_0,
      ADDRARDADDR(7) => ram_reg_bram_0_i_10_n_0,
      ADDRARDADDR(6) => ram_reg_bram_0_i_11_n_0,
      ADDRARDADDR(5) => ram_reg_bram_0_i_12_n_0,
      ADDRARDADDR(4) => ram_reg_bram_0_i_13_n_0,
      ADDRARDADDR(3) => ram_reg_bram_0_i_14_n_0,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(14 downto 3) => hw_input_global_wrap_address1(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_ram_reg_bram_0_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_ram_reg_bram_0_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_ram_reg_bram_0_DBITERR_UNCONNECTED,
      DINADIN(31 downto 8) => B"000000000000000000000000",
      DINADIN(7 downto 0) => d0(7 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000000000000011111111",
      DINPADINP(3 downto 1) => B"000",
      DINPADINP(0) => d0(8),
      DINPBDINP(3 downto 0) => B"0001",
      DOUTADOUT(31 downto 8) => NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED(31 downto 8),
      DOUTADOUT(7 downto 0) => \^q0\(7 downto 0),
      DOUTBDOUT(31 downto 8) => NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED(31 downto 8),
      DOUTBDOUT(7 downto 1) => \^q1\(6 downto 0),
      DOUTBDOUT(0) => \^c\(0),
      DOUTPADOUTP(3 downto 1) => NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED(3 downto 1),
      DOUTPADOUTP(0) => \^q0\(8),
      DOUTPBDOUTP(3 downto 1) => NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(3 downto 1),
      DOUTPBDOUTP(0) => \^q1\(7),
      ECCPARITY(7 downto 0) => NLW_ram_reg_bram_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => hw_input_global_wrap_ce0,
      ENBWREN => p_0_in,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_ram_reg_bram_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_bram_0_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \^wea\(0),
      WEA(2) => \^wea\(0),
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(7 downto 0) => B"00000000"
    );
ram_reg_bram_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFFFFFFF"
    )
        port map (
      I0 => \^hw_input_global_wrap_2_reg_186_reg[4]\,
      I1 => arg_in0_hwstream_val_empty_n,
      I2 => ram_reg_bram_0_4(0),
      I3 => ram_reg_bram_0_4(2),
      I4 => ram_reg_bram_0_4(1),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => hw_input_global_wrap_ce0
    );
ram_reg_bram_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA0AA0A020002"
    )
        port map (
      I0 => ram_reg_bram_0_i_46_n_0,
      I1 => ram_reg_bram_0_4(3),
      I2 => ram_reg_bram_0_4(5),
      I3 => ram_reg_bram_0_4(4),
      I4 => data4(4),
      I5 => data0(4),
      O => ram_reg_bram_0_i_10_n_0
    );
ram_reg_bram_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFCF3101"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => ram_reg_bram_0_4(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => data4(3),
      I4 => data0(3),
      I5 => ram_reg_bram_0_i_47_n_0,
      O => ram_reg_bram_0_i_11_n_0
    );
ram_reg_bram_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFCF3101"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => ram_reg_bram_0_4(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => data4(2),
      I4 => data0(2),
      I5 => ram_reg_bram_0_i_48_n_0,
      O => ram_reg_bram_0_i_12_n_0
    );
ram_reg_bram_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA0AA0A020002"
    )
        port map (
      I0 => ram_reg_bram_0_i_49_n_0,
      I1 => ram_reg_bram_0_4(3),
      I2 => ram_reg_bram_0_4(5),
      I3 => ram_reg_bram_0_4(4),
      I4 => data4(1),
      I5 => data0(1),
      O => ram_reg_bram_0_i_13_n_0
    );
ram_reg_bram_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFCF3101"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => ram_reg_bram_0_4(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => data4(0),
      I4 => data0(0),
      I5 => ram_reg_bram_0_i_50_n_0,
      O => ram_reg_bram_0_i_14_n_0
    );
ram_reg_bram_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => data0(11),
      I1 => ram_reg_bram_0_4(5),
      I2 => data4(11),
      I3 => ram_reg_bram_0_4(4),
      I4 => ram_reg_bram_0_4(3),
      I5 => Q(5),
      O => hw_input_global_wrap_address1(11)
    );
ram_reg_bram_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => data0(10),
      I1 => ram_reg_bram_0_4(5),
      I2 => data4(10),
      I3 => ram_reg_bram_0_4(4),
      I4 => ram_reg_bram_0_4(3),
      I5 => Q(4),
      O => hw_input_global_wrap_address1(10)
    );
ram_reg_bram_0_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => data0(9),
      I1 => ram_reg_bram_0_4(5),
      I2 => data4(9),
      I3 => ram_reg_bram_0_4(4),
      I4 => ram_reg_bram_0_4(3),
      I5 => Q(3),
      O => hw_input_global_wrap_address1(9)
    );
ram_reg_bram_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => data0(8),
      I1 => ram_reg_bram_0_4(5),
      I2 => data4(8),
      I3 => ram_reg_bram_0_4(4),
      I4 => ram_reg_bram_0_4(3),
      I5 => Q(2),
      O => hw_input_global_wrap_address1(8)
    );
ram_reg_bram_0_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => data0(7),
      I1 => ram_reg_bram_0_4(5),
      I2 => data4(7),
      I3 => ram_reg_bram_0_4(4),
      I4 => ram_reg_bram_0_4(3),
      I5 => Q(1),
      O => hw_input_global_wrap_address1(7)
    );
ram_reg_bram_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ram_reg_bram_0_4(2),
      I1 => ram_reg_bram_0_4(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(3),
      O => p_0_in
    );
ram_reg_bram_0_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8888888B8"
    )
        port map (
      I0 => data0(6),
      I1 => ram_reg_bram_0_4(5),
      I2 => data4(6),
      I3 => ram_reg_bram_0_4(4),
      I4 => ram_reg_bram_0_4(3),
      I5 => Q(0),
      O => hw_input_global_wrap_address1(6)
    );
ram_reg_bram_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFA000C000A"
    )
        port map (
      I0 => \^d\(0),
      I1 => data4(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => ram_reg_bram_0_4(3),
      I5 => ram_reg_bram_0_6(5),
      O => hw_input_global_wrap_address1(5)
    );
ram_reg_bram_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFF5000C0005"
    )
        port map (
      I0 => ram_reg_bram_0_i_51_n_0,
      I1 => data4(4),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => ram_reg_bram_0_4(3),
      I5 => ram_reg_bram_0_6(4),
      O => hw_input_global_wrap_address1(4)
    );
ram_reg_bram_0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFF5000C0005"
    )
        port map (
      I0 => ram_reg_bram_0_i_52_n_0,
      I1 => data4(3),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => ram_reg_bram_0_4(3),
      I5 => ram_reg_bram_0_6(3),
      O => hw_input_global_wrap_address1(3)
    );
ram_reg_bram_0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8A8ABABABA8A8"
    )
        port map (
      I0 => ram_reg_bram_0_6(2),
      I1 => ram_reg_bram_0_4(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(3),
      I4 => data4(2),
      I5 => data4(1),
      O => hw_input_global_wrap_address1(2)
    );
ram_reg_bram_0_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEF1001"
    )
        port map (
      I0 => ram_reg_bram_0_4(5),
      I1 => ram_reg_bram_0_4(4),
      I2 => ram_reg_bram_0_4(3),
      I3 => data4(1),
      I4 => ram_reg_bram_0_6(1),
      O => hw_input_global_wrap_address1(1)
    );
ram_reg_bram_0_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data4(0),
      I1 => ram_reg_bram_0_4(4),
      I2 => ram_reg_bram_0_4(5),
      I3 => ram_reg_bram_0_6(0),
      O => hw_input_global_wrap_address1(0)
    );
ram_reg_bram_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80200"
    )
        port map (
      I0 => ram_reg_bram_0_i_37_n_0,
      I1 => ram_reg_bram_0_4(1),
      I2 => ram_reg_bram_0_4(2),
      I3 => data5(11),
      I4 => data4(11),
      I5 => ram_reg_bram_0_i_39_n_0,
      O => ram_reg_bram_0_i_3_n_0
    );
ram_reg_bram_0_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888088"
    )
        port map (
      I0 => arg_in0_hwstream_val_empty_n,
      I1 => ram_reg_bram_0_4(0),
      I2 => ram_reg_bram_1_4(5),
      I3 => ram_reg_bram_1_4(6),
      I4 => ram_reg_bram_1_4(4),
      I5 => \^hw_input_global_wrap_2_reg_186_reg[1]\,
      O => \^wea\(0)
    );
ram_reg_bram_0_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => ram_reg_bram_0_4(4),
      I2 => ram_reg_bram_0_4(5),
      O => ram_reg_bram_0_i_37_n_0
    );
ram_reg_bram_0_i_38: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => NLW_ram_reg_bram_0_i_38_CO_UNCONNECTED(7 downto 5),
      CO(4) => ram_reg_bram_0_i_38_n_3,
      CO(3) => ram_reg_bram_0_i_38_n_4,
      CO(2) => ram_reg_bram_0_i_38_n_5,
      CO(1) => ram_reg_bram_0_i_38_n_6,
      CO(0) => ram_reg_bram_0_i_38_n_7,
      DI(7 downto 1) => B"0000000",
      DI(0) => ram_reg_bram_0_5(0),
      O(7 downto 6) => NLW_ram_reg_bram_0_i_38_O_UNCONNECTED(7 downto 6),
      O(5 downto 1) => data5(11 downto 7),
      O(0) => NLW_ram_reg_bram_0_i_38_O_UNCONNECTED(0),
      S(7 downto 6) => B"00",
      S(5 downto 1) => ram_reg_bram_0_5(5 downto 1),
      S(0) => data5(6)
    );
ram_reg_bram_0_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => Q(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => data0(11),
      O => ram_reg_bram_0_i_39_n_0
    );
ram_reg_bram_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA02A800"
    )
        port map (
      I0 => ram_reg_bram_0_i_37_n_0,
      I1 => ram_reg_bram_0_4(1),
      I2 => ram_reg_bram_0_4(2),
      I3 => data4(10),
      I4 => data5(10),
      I5 => ram_reg_bram_0_i_40_n_0,
      O => ram_reg_bram_0_i_4_n_0
    );
ram_reg_bram_0_i_40: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAACAAA0"
    )
        port map (
      I0 => data0(10),
      I1 => ram_reg_bram_0_4(3),
      I2 => ram_reg_bram_0_4(5),
      I3 => ram_reg_bram_0_4(4),
      I4 => Q(4),
      O => ram_reg_bram_0_i_40_n_0
    );
ram_reg_bram_0_i_41: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => Q(3),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => data0(9),
      O => ram_reg_bram_0_i_41_n_0
    );
ram_reg_bram_0_i_42: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => Q(2),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => data0(8),
      O => ram_reg_bram_0_i_42_n_0
    );
ram_reg_bram_0_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => Q(1),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => data0(7),
      O => ram_reg_bram_0_i_43_n_0
    );
ram_reg_bram_0_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F06600000000"
    )
        port map (
      I0 => ram_reg_bram_0_5(0),
      I1 => ram_reg_bram_1_4(6),
      I2 => data4(6),
      I3 => ram_reg_bram_0_4(2),
      I4 => ram_reg_bram_0_4(1),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => ram_reg_bram_0_i_44_n_0
    );
ram_reg_bram_0_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"330533F500000000"
    )
        port map (
      I0 => ram_reg_bram_1_4(5),
      I1 => data0(5),
      I2 => ram_reg_bram_0_4(1),
      I3 => ram_reg_bram_0_4(2),
      I4 => data4(5),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => ram_reg_bram_0_i_45_n_0
    );
ram_reg_bram_0_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCF0FFFFFFFF"
    )
        port map (
      I0 => data4(4),
      I1 => data0(4),
      I2 => ram_reg_bram_1_4(4),
      I3 => ram_reg_bram_0_4(2),
      I4 => ram_reg_bram_0_4(1),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => ram_reg_bram_0_i_46_n_0
    );
ram_reg_bram_0_i_47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3355330F00000000"
    )
        port map (
      I0 => data4(3),
      I1 => data0(3),
      I2 => ram_reg_bram_1_4(3),
      I3 => ram_reg_bram_0_4(2),
      I4 => ram_reg_bram_0_4(1),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => ram_reg_bram_0_i_47_n_0
    );
ram_reg_bram_0_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"330533F500000000"
    )
        port map (
      I0 => ram_reg_bram_1_4(2),
      I1 => data0(2),
      I2 => ram_reg_bram_0_4(1),
      I3 => ram_reg_bram_0_4(2),
      I4 => data4(2),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => ram_reg_bram_0_i_48_n_0
    );
ram_reg_bram_0_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFACC0AFFFFFFFF"
    )
        port map (
      I0 => ram_reg_bram_1_4(1),
      I1 => data0(1),
      I2 => ram_reg_bram_0_4(1),
      I3 => ram_reg_bram_0_4(2),
      I4 => data4(1),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => ram_reg_bram_0_i_49_n_0
    );
ram_reg_bram_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80200"
    )
        port map (
      I0 => ram_reg_bram_0_i_37_n_0,
      I1 => ram_reg_bram_0_4(1),
      I2 => ram_reg_bram_0_4(2),
      I3 => data5(9),
      I4 => data4(9),
      I5 => ram_reg_bram_0_i_41_n_0,
      O => ram_reg_bram_0_i_5_n_0
    );
ram_reg_bram_0_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3355330F00000000"
    )
        port map (
      I0 => data4(0),
      I1 => data0(0),
      I2 => ram_reg_bram_1_4(0),
      I3 => ram_reg_bram_0_4(2),
      I4 => ram_reg_bram_0_4(1),
      I5 => ram_reg_bram_0_i_37_n_0,
      O => ram_reg_bram_0_i_50_n_0
    );
ram_reg_bram_0_i_51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => data4(4),
      I1 => data4(3),
      I2 => data4(1),
      I3 => data4(2),
      O => ram_reg_bram_0_i_51_n_0
    );
ram_reg_bram_0_i_52: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => data4(3),
      I1 => data4(2),
      I2 => data4(1),
      O => ram_reg_bram_0_i_52_n_0
    );
ram_reg_bram_0_i_53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ram_reg_bram_1_4(1),
      I1 => ram_reg_bram_1_4(0),
      I2 => ram_reg_bram_1_4(3),
      I3 => ram_reg_bram_1_4(2),
      O => \^hw_input_global_wrap_2_reg_186_reg[1]\
    );
ram_reg_bram_0_i_54: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ram_reg_bram_0_5(0),
      I1 => ram_reg_bram_1_4(6),
      O => data5(6)
    );
ram_reg_bram_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80200"
    )
        port map (
      I0 => ram_reg_bram_0_i_37_n_0,
      I1 => ram_reg_bram_0_4(1),
      I2 => ram_reg_bram_0_4(2),
      I3 => data5(8),
      I4 => data4(8),
      I5 => ram_reg_bram_0_i_42_n_0,
      O => ram_reg_bram_0_i_6_n_0
    );
ram_reg_bram_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80200"
    )
        port map (
      I0 => ram_reg_bram_0_i_37_n_0,
      I1 => ram_reg_bram_0_4(1),
      I2 => ram_reg_bram_0_4(2),
      I3 => data5(7),
      I4 => data4(7),
      I5 => ram_reg_bram_0_i_43_n_0,
      O => ram_reg_bram_0_i_7_n_0
    );
ram_reg_bram_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFAAAAEAAAA"
    )
        port map (
      I0 => ram_reg_bram_0_i_44_n_0,
      I1 => Q(0),
      I2 => ram_reg_bram_0_4(4),
      I3 => ram_reg_bram_0_4(5),
      I4 => ram_reg_bram_0_4(3),
      I5 => data0(6),
      O => ram_reg_bram_0_i_8_n_0
    );
ram_reg_bram_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFCF3101"
    )
        port map (
      I0 => ram_reg_bram_0_4(3),
      I1 => ram_reg_bram_0_4(5),
      I2 => ram_reg_bram_0_4(4),
      I3 => data4(5),
      I4 => data0(5),
      I5 => ram_reg_bram_0_i_45_n_0,
      O => ram_reg_bram_0_i_9_n_0
    );
ram_reg_bram_1: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14) => ram_reg_bram_0_i_3_n_0,
      ADDRARDADDR(13) => ram_reg_bram_0_i_4_n_0,
      ADDRARDADDR(12) => ram_reg_bram_0_i_5_n_0,
      ADDRARDADDR(11) => ram_reg_bram_0_i_6_n_0,
      ADDRARDADDR(10) => ram_reg_bram_0_i_7_n_0,
      ADDRARDADDR(9) => ram_reg_bram_0_i_8_n_0,
      ADDRARDADDR(8) => ram_reg_bram_0_i_9_n_0,
      ADDRARDADDR(7) => ram_reg_bram_0_i_10_n_0,
      ADDRARDADDR(6) => ram_reg_bram_0_i_11_n_0,
      ADDRARDADDR(5) => ram_reg_bram_0_i_12_n_0,
      ADDRARDADDR(4) => ram_reg_bram_0_i_13_n_0,
      ADDRARDADDR(3) => ram_reg_bram_0_i_14_n_0,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(14 downto 3) => hw_input_global_wrap_address1(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => NLW_ram_reg_bram_1_CASDOUTA_UNCONNECTED(31 downto 0),
      CASDOUTB(31 downto 0) => NLW_ram_reg_bram_1_CASDOUTB_UNCONNECTED(31 downto 0),
      CASDOUTPA(3 downto 0) => NLW_ram_reg_bram_1_CASDOUTPA_UNCONNECTED(3 downto 0),
      CASDOUTPB(3 downto 0) => NLW_ram_reg_bram_1_CASDOUTPB_UNCONNECTED(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => NLW_ram_reg_bram_1_CASOUTDBITERR_UNCONNECTED,
      CASOUTSBITERR => NLW_ram_reg_bram_1_CASOUTSBITERR_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_ram_reg_bram_1_DBITERR_UNCONNECTED,
      DINADIN(31 downto 7) => B"0000000000000000000000000",
      DINADIN(6 downto 0) => d0(15 downto 9),
      DINBDIN(31 downto 0) => B"00000000000000000000000001111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 7) => NLW_ram_reg_bram_1_DOUTADOUT_UNCONNECTED(31 downto 7),
      DOUTADOUT(6 downto 0) => \^q0\(15 downto 9),
      DOUTBDOUT(31 downto 7) => NLW_ram_reg_bram_1_DOUTBDOUT_UNCONNECTED(31 downto 7),
      DOUTBDOUT(6) => hw_input_global_wrap_q1(15),
      DOUTBDOUT(5 downto 0) => \^q1\(13 downto 8),
      DOUTPADOUTP(3 downto 0) => NLW_ram_reg_bram_1_DOUTPADOUTP_UNCONNECTED(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => NLW_ram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_bram_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => hw_input_global_wrap_ce0,
      ENBWREN => p_0_in,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_ram_reg_bram_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_bram_1_SBITERR_UNCONNECTED,
      SLEEP => '0',
      WEA(3) => \^wea\(0),
      WEA(2) => \^wea\(0),
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\tmp_i231_fu_460_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(12),
      I1 => \tmp_i231_reg_661_reg[13]\(13),
      O => ram_reg_bram_1_2(5)
    );
\tmp_i231_fu_460_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(11),
      I1 => \tmp_i231_reg_661_reg[13]\(12),
      O => ram_reg_bram_1_2(4)
    );
\tmp_i231_fu_460_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(10),
      I1 => \tmp_i231_reg_661_reg[13]\(11),
      O => ram_reg_bram_1_2(3)
    );
\tmp_i231_fu_460_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(9),
      I1 => \tmp_i231_reg_661_reg[13]\(10),
      O => ram_reg_bram_1_2(2)
    );
\tmp_i231_fu_460_p2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(8),
      I1 => \tmp_i231_reg_661_reg[13]\(9),
      O => ram_reg_bram_1_2(1)
    );
\tmp_i231_fu_460_p2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(7),
      I1 => \tmp_i231_reg_661_reg[13]\(8),
      O => ram_reg_bram_1_2(0)
    );
tmp_i231_fu_460_p2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(6),
      I1 => \tmp_i231_reg_661_reg[13]\(7),
      O => ram_reg_bram_0_2(7)
    );
tmp_i231_fu_460_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(5),
      I1 => \tmp_i231_reg_661_reg[13]\(6),
      O => ram_reg_bram_0_2(6)
    );
tmp_i231_fu_460_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(4),
      I1 => \tmp_i231_reg_661_reg[13]\(5),
      O => ram_reg_bram_0_2(5)
    );
tmp_i231_fu_460_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(3),
      I1 => \tmp_i231_reg_661_reg[13]\(4),
      O => ram_reg_bram_0_2(4)
    );
tmp_i231_fu_460_p2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(2),
      I1 => \tmp_i231_reg_661_reg[13]\(3),
      O => ram_reg_bram_0_2(3)
    );
tmp_i231_fu_460_p2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(1),
      I1 => \tmp_i231_reg_661_reg[13]\(2),
      O => ram_reg_bram_0_2(2)
    );
tmp_i231_fu_460_p2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q1\(0),
      I1 => \tmp_i231_reg_661_reg[13]\(1),
      O => ram_reg_bram_0_2(1)
    );
tmp_i231_fu_460_p2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^c\(0),
      I1 => \tmp_i231_reg_661_reg[13]\(0),
      O => ram_reg_bram_0_2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_write_r is
  port (
    start_once_reg : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    start_once_reg_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_write_r : entity is "write_r";
end conv_3_3_conv_3_3_0_0_write_r;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_write_r is
begin
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => start_once_reg_reg_0,
      Q => start_once_reg,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A is
  port (
    arg_in0_hwstream_val_full_n : out STD_LOGIC;
    arg_in0_hwstream_val_empty_n : out STD_LOGIC;
    shiftReg_ce : out STD_LOGIC;
    d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    write_U0_ap_start : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    start_for_unoptimized_conv_3_3_U0_full_n : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A : entity is "fifo_w16_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A is
  signal \^arg_in0_hwstream_val_empty_n\ : STD_LOGIC;
  signal \^arg_in0_hwstream_val_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__1_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^shiftreg_ce\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__1\ : label is "soft_lutpair15";
begin
  arg_in0_hwstream_val_empty_n <= \^arg_in0_hwstream_val_empty_n\;
  arg_in0_hwstream_val_full_n <= \^arg_in0_hwstream_val_full_n\;
  shiftReg_ce <= \^shiftreg_ce\;
U_fifo_w16_d2_A_ram: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_9
     port map (
      D(15 downto 0) => D(15 downto 0),
      E(0) => \^shiftreg_ce\,
      Q(1) => \mOutPtr_reg_n_0_[1]\,
      Q(0) => \mOutPtr_reg_n_0_[0]\,
      ap_clk => ap_clk,
      arg_in0_hwstream_val_full_n => \^arg_in0_hwstream_val_full_n\,
      d0(15 downto 0) => d0(15 downto 0),
      start_for_unoptimized_conv_3_3_U0_full_n => start_for_unoptimized_conv_3_3_U0_full_n,
      start_once_reg => start_once_reg,
      write_U0_ap_start => write_U0_ap_start
    );
\internal_empty_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read,
      I3 => \^shiftreg_ce\,
      I4 => \^arg_in0_hwstream_val_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__1_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__1_n_0\,
      Q => \^arg_in0_hwstream_val_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFA8AAFFFFFFFF"
    )
        port map (
      I0 => \^arg_in0_hwstream_val_full_n\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \^shiftreg_ce\,
      I4 => unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read,
      I5 => ap_rst_n,
      O => \internal_full_n_i_1__1_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__1_n_0\,
      Q => \^arg_in0_hwstream_val_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__3_n_0\
    );
\mOutPtr[1]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read,
      I1 => \^shiftreg_ce\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__3_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2__1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_0 is
  port (
    arg_out_data_values_s_full_n : out STD_LOGIC;
    arg_out_data_values_s_empty_n : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \SRL_SIG_reg[0][0]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][1]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][2]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][3]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][4]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][5]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][6]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][8]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][9]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][10]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][11]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][12]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][13]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][14]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][15]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \SRL_SIG_reg[0][15]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][1]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][2]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][3]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][4]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][5]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][6]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][8]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][9]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][10]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][11]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][12]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][13]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][14]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][15]_1\ : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    read_1_U0_ap_start : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    arg_out_tlast_values_full_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_0 : entity is "fifo_w16_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_0;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_0 is
  signal \^arg_out_data_values_s_empty_n\ : STD_LOGIC;
  signal \^arg_out_data_values_s_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__5_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__5_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__5_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
begin
  arg_out_data_values_s_empty_n <= \^arg_out_data_values_s_empty_n\;
  arg_out_data_values_s_full_n <= \^arg_out_data_values_s_full_n\;
U_fifo_w16_d2_A_ram: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_8
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(1) => \mOutPtr_reg_n_0_[1]\,
      Q(0) => \mOutPtr_reg_n_0_[0]\,
      \SRL_SIG_reg[0][0]_0\ => \SRL_SIG_reg[0][0]\,
      \SRL_SIG_reg[0][0]_1\ => \SRL_SIG_reg[0][0]_0\,
      \SRL_SIG_reg[0][10]_0\ => \SRL_SIG_reg[0][10]\,
      \SRL_SIG_reg[0][10]_1\ => \SRL_SIG_reg[0][10]_0\,
      \SRL_SIG_reg[0][11]_0\ => \SRL_SIG_reg[0][11]\,
      \SRL_SIG_reg[0][11]_1\ => \SRL_SIG_reg[0][11]_0\,
      \SRL_SIG_reg[0][12]_0\ => \SRL_SIG_reg[0][12]\,
      \SRL_SIG_reg[0][12]_1\ => \SRL_SIG_reg[0][12]_0\,
      \SRL_SIG_reg[0][13]_0\ => \SRL_SIG_reg[0][13]\,
      \SRL_SIG_reg[0][13]_1\ => \SRL_SIG_reg[0][13]_0\,
      \SRL_SIG_reg[0][14]_0\ => \SRL_SIG_reg[0][14]\,
      \SRL_SIG_reg[0][14]_1\ => \SRL_SIG_reg[0][14]_0\,
      \SRL_SIG_reg[0][15]_0\ => \SRL_SIG_reg[0][15]\,
      \SRL_SIG_reg[0][15]_1\ => \SRL_SIG_reg[0][15]_0\,
      \SRL_SIG_reg[0][15]_2\ => \SRL_SIG_reg[0][15]_1\,
      \SRL_SIG_reg[0][1]_0\ => \SRL_SIG_reg[0][1]\,
      \SRL_SIG_reg[0][1]_1\ => \SRL_SIG_reg[0][1]_0\,
      \SRL_SIG_reg[0][2]_0\ => \SRL_SIG_reg[0][2]\,
      \SRL_SIG_reg[0][2]_1\ => \SRL_SIG_reg[0][2]_0\,
      \SRL_SIG_reg[0][3]_0\ => \SRL_SIG_reg[0][3]\,
      \SRL_SIG_reg[0][3]_1\ => \SRL_SIG_reg[0][3]_0\,
      \SRL_SIG_reg[0][4]_0\ => \SRL_SIG_reg[0][4]\,
      \SRL_SIG_reg[0][4]_1\ => \SRL_SIG_reg[0][4]_0\,
      \SRL_SIG_reg[0][5]_0\ => \SRL_SIG_reg[0][5]\,
      \SRL_SIG_reg[0][5]_1\ => \SRL_SIG_reg[0][5]_0\,
      \SRL_SIG_reg[0][6]_0\ => \SRL_SIG_reg[0][6]\,
      \SRL_SIG_reg[0][6]_1\ => \SRL_SIG_reg[0][6]_0\,
      \SRL_SIG_reg[0][7]_0\ => \SRL_SIG_reg[0][7]\,
      \SRL_SIG_reg[0][7]_1\ => \SRL_SIG_reg[0][7]_0\,
      \SRL_SIG_reg[0][8]_0\ => \SRL_SIG_reg[0][8]\,
      \SRL_SIG_reg[0][8]_1\ => \SRL_SIG_reg[0][8]_0\,
      \SRL_SIG_reg[0][9]_0\ => \SRL_SIG_reg[0][9]\,
      \SRL_SIG_reg[0][9]_1\ => \SRL_SIG_reg[0][9]_0\,
      ap_clk => ap_clk,
      data(15 downto 0) => data(15 downto 0),
      shiftReg_ce => shiftReg_ce
    );
\internal_empty_n_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \SRL_SIG_reg[0][15]_0\,
      I3 => shiftReg_ce,
      I4 => \^arg_out_data_values_s_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__5_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__5_n_0\,
      Q => \^arg_out_data_values_s_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFA8AAFFFFFFFF"
    )
        port map (
      I0 => \^arg_out_data_values_s_full_n\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => shiftReg_ce,
      I4 => \SRL_SIG_reg[0][15]_0\,
      I5 => ap_rst_n,
      O => \internal_full_n_i_1__5_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__5_n_0\,
      Q => \^arg_out_data_values_s_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__1_n_0\
    );
\mOutPtr[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080807F808080"
    )
        port map (
      I0 => \^arg_out_data_values_s_full_n\,
      I1 => arg_out_tlast_values_full_n,
      I2 => Q(0),
      I3 => \^arg_out_data_values_s_empty_n\,
      I4 => read_1_U0_ap_start,
      I5 => ap_done_reg,
      O => \mOutPtr[1]_i_1__4_n_0\
    );
\mOutPtr[1]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFBFFFBF0040"
    )
        port map (
      I0 => ap_done_reg,
      I1 => read_1_U0_ap_start,
      I2 => \^arg_out_data_values_s_empty_n\,
      I3 => shiftReg_ce,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__5_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__4_n_0\,
      D => \mOutPtr[0]_i_1__1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__4_n_0\,
      D => \mOutPtr[1]_i_2__5_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_1 is
  port (
    read_1_U0_ap_continue : out STD_LOGIC;
    operator_int_1_U0_ap_start : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    internal_empty_n_reg_0 : out STD_LOGIC;
    \SRL_SIG_reg[0][0]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][1]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][2]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][3]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][4]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][5]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][6]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][8]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][9]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][10]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][11]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][12]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][13]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][14]\ : out STD_LOGIC;
    \SRL_SIG_reg[0][15]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \SRL_SIG_reg[0][15]_0\ : in STD_LOGIC;
    ap_done_reg_0 : in STD_LOGIC;
    arg_out_data_values_s_empty_n : in STD_LOGIC;
    read_1_U0_ap_start : in STD_LOGIC;
    hw_uint_16_val_V_preg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    \SRL_SIG_reg[0][15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_1 : entity is "fifo_w16_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_1;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_1 is
  signal \internal_empty_n_i_1__4_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__4_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^operator_int_1_u0_ap_start\ : STD_LOGIC;
  signal \^read_1_u0_ap_continue\ : STD_LOGIC;
  signal shiftReg_ce : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hw_uint_16_val_V_preg[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__4\ : label is "soft_lutpair16";
begin
  operator_int_1_U0_ap_start <= \^operator_int_1_u0_ap_start\;
  read_1_U0_ap_continue <= \^read_1_u0_ap_continue\;
U_fifo_w16_d2_A_ram: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_7
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(1) => \mOutPtr_reg_n_0_[1]\,
      Q(0) => \mOutPtr_reg_n_0_[0]\,
      \SRL_SIG_reg[0][0]_0\ => \SRL_SIG_reg[0][0]\,
      \SRL_SIG_reg[0][10]_0\ => \SRL_SIG_reg[0][10]\,
      \SRL_SIG_reg[0][11]_0\ => \SRL_SIG_reg[0][11]\,
      \SRL_SIG_reg[0][12]_0\ => \SRL_SIG_reg[0][12]\,
      \SRL_SIG_reg[0][13]_0\ => \SRL_SIG_reg[0][13]\,
      \SRL_SIG_reg[0][14]_0\ => \SRL_SIG_reg[0][14]\,
      \SRL_SIG_reg[0][15]_0\ => \SRL_SIG_reg[0][15]\,
      \SRL_SIG_reg[0][15]_1\ => \^read_1_u0_ap_continue\,
      \SRL_SIG_reg[0][15]_2\ => \SRL_SIG_reg[0][15]_0\,
      \SRL_SIG_reg[0][15]_3\(15 downto 0) => \SRL_SIG_reg[0][15]_1\(15 downto 0),
      \SRL_SIG_reg[0][1]_0\ => \SRL_SIG_reg[0][1]\,
      \SRL_SIG_reg[0][2]_0\ => \SRL_SIG_reg[0][2]\,
      \SRL_SIG_reg[0][3]_0\ => \SRL_SIG_reg[0][3]\,
      \SRL_SIG_reg[0][4]_0\ => \SRL_SIG_reg[0][4]\,
      \SRL_SIG_reg[0][5]_0\ => \SRL_SIG_reg[0][5]\,
      \SRL_SIG_reg[0][6]_0\ => \SRL_SIG_reg[0][6]\,
      \SRL_SIG_reg[0][7]_0\ => \SRL_SIG_reg[0][7]\,
      \SRL_SIG_reg[0][8]_0\ => \SRL_SIG_reg[0][8]\,
      \SRL_SIG_reg[0][9]_0\ => \SRL_SIG_reg[0][9]\,
      ap_clk => ap_clk,
      ap_done_reg_0 => ap_done_reg_0,
      arg_out_data_values_s_empty_n => arg_out_data_values_s_empty_n,
      hw_uint_16_val_V_preg(15 downto 0) => hw_uint_16_val_V_preg(15 downto 0),
      read_1_U0_ap_start => read_1_U0_ap_start,
      shiftReg_ce => shiftReg_ce
    );
\hw_uint_16_val_V_preg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^operator_int_1_u0_ap_start\,
      I1 => ap_done_reg,
      O => internal_empty_n_reg_0
    );
\internal_empty_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => ap_done_reg,
      I3 => shiftReg_ce,
      I4 => \^operator_int_1_u0_ap_start\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__4_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__4_n_0\,
      Q => \^operator_int_1_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAFFFFFFFFFF"
    )
        port map (
      I0 => \^read_1_u0_ap_continue\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => shiftReg_ce,
      I4 => \SRL_SIG_reg[0][15]_0\,
      I5 => ap_rst_n,
      O => \internal_full_n_i_1__4_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__4_n_0\,
      Q => \^read_1_u0_ap_continue\,
      R => '0'
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__0_n_0\
    );
\mOutPtr[1]_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F80007FFF800"
    )
        port map (
      I0 => read_1_U0_ap_start,
      I1 => arg_out_data_values_s_empty_n,
      I2 => ap_done_reg_0,
      I3 => \^read_1_u0_ap_continue\,
      I4 => \^operator_int_1_u0_ap_start\,
      I5 => ap_done_reg,
      O => \mOutPtr[1]_i_1__8_n_0\
    );
\mOutPtr[1]_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FBFB04"
    )
        port map (
      I0 => ap_done_reg,
      I1 => \^operator_int_1_u0_ap_start\,
      I2 => shiftReg_ce,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__4_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__8_n_0\,
      D => \mOutPtr[0]_i_1__0_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__8_n_0\,
      D => \mOutPtr[1]_i_2__4_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_3 is
  port (
    Block_proc75_U0_ap_continue : out STD_LOGIC;
    write_U0_ap_start : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    start_for_unoptimized_conv_3_3_U0_full_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    shiftReg_ce : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_3 : entity is "fifo_w16_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_3;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_3 is
  signal \^block_proc75_u0_ap_continue\ : STD_LOGIC;
  signal \internal_empty_n_i_1__0_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^write_u0_ap_start\ : STD_LOGIC;
begin
  Block_proc75_U0_ap_continue <= \^block_proc75_u0_ap_continue\;
  write_U0_ap_start <= \^write_u0_ap_start\;
U_fifo_w16_d2_A_ram: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg_6
     port map (
      D(15 downto 0) => D(15 downto 0),
      E(0) => E(0),
      Q(1) => \mOutPtr_reg_n_0_[1]\,
      Q(0) => \mOutPtr_reg_n_0_[0]\,
      \SRL_SIG_reg[0][15]_0\(15 downto 0) => \SRL_SIG_reg[0][15]\(15 downto 0),
      ap_clk => ap_clk
    );
\internal_empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => shiftReg_ce,
      I3 => E(0),
      I4 => \^write_u0_ap_start\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__0_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__0_n_0\,
      Q => \^write_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFA8AAFFFFFFFF"
    )
        port map (
      I0 => \^block_proc75_u0_ap_continue\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => E(0),
      I4 => shiftReg_ce,
      I5 => ap_rst_n,
      O => \internal_full_n_i_1__0_n_0\
    );
internal_full_n_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^write_u0_ap_start\,
      I1 => start_once_reg,
      I2 => start_for_unoptimized_conv_3_3_U0_full_n,
      O => internal_empty_n_reg_0
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__0_n_0\,
      Q => \^block_proc75_u0_ap_continue\,
      R => '0'
    );
\mOutPtr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__2_n_0\
    );
\mOutPtr[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222ADDD5DDD5222A"
    )
        port map (
      I0 => shiftReg_ce,
      I1 => \^block_proc75_u0_ap_continue\,
      I2 => ap_done_reg,
      I3 => Q(0),
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__0_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr_reg[1]_0\(0),
      D => \mOutPtr[0]_i_1__2_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr_reg[1]_0\(0),
      D => \mOutPtr[1]_i_2__0_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_5 is
  port (
    val_assign_channel_empty_n : out STD_LOGIC;
    \SRL_SIG_reg[0][15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    internal_full_n_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    ap_done_reg : in STD_LOGIC;
    operator_int_1_U0_ap_start : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \odata_reg[0]\ : in STD_LOGIC;
    \odata_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    \SRL_SIG_reg[0][15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_5 : entity is "fifo_w16_d2_A";
end conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_5;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_5 is
  signal \internal_empty_n_i_1__9_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__9_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__9_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal operator_int_1_U0_ap_continue : STD_LOGIC;
  signal shiftReg_ce : STD_LOGIC;
  signal \^val_assign_channel_empty_n\ : STD_LOGIC;
begin
  val_assign_channel_empty_n <= \^val_assign_channel_empty_n\;
U_fifo_w16_d2_A_ram: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_shiftReg
     port map (
      D(15 downto 0) => D(15 downto 0),
      E(0) => shiftReg_ce,
      Q(1) => \mOutPtr_reg_n_0_[1]\,
      Q(0) => \mOutPtr_reg_n_0_[0]\,
      \SRL_SIG_reg[0][15]_0\(15 downto 0) => \SRL_SIG_reg[0][15]\(15 downto 0),
      \SRL_SIG_reg[0][15]_1\(15 downto 0) => \SRL_SIG_reg[0][15]_0\(15 downto 0),
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg,
      \odata_reg[0]\ => \odata_reg[0]\,
      \odata_reg[15]\(15 downto 0) => \odata_reg[15]\(15 downto 0),
      operator_int_1_U0_ap_continue => operator_int_1_U0_ap_continue,
      operator_int_1_U0_ap_start => operator_int_1_U0_ap_start
    );
\ap_done_reg_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => operator_int_1_U0_ap_continue,
      I1 => ap_rst_n,
      I2 => ap_done_reg,
      I3 => operator_int_1_U0_ap_start,
      O => internal_full_n_reg_0
    );
\internal_empty_n_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => internal_empty_n_reg_0,
      I3 => shiftReg_ce,
      I4 => \^val_assign_channel_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__9_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__9_n_0\,
      Q => \^val_assign_channel_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD5FFFFDDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => operator_int_1_U0_ap_continue,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => \mOutPtr_reg[1]_0\,
      I5 => shiftReg_ce,
      O => \internal_full_n_i_1__9_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__9_n_0\,
      Q => operator_int_1_U0_ap_continue,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E01FE0E0"
    )
        port map (
      I0 => operator_int_1_U0_ap_start,
      I1 => ap_done_reg,
      I2 => operator_int_1_U0_ap_continue,
      I3 => internal_empty_n_reg_0,
      I4 => \^val_assign_channel_empty_n\,
      O => \mOutPtr[1]_i_1__7_n_0\
    );
\mOutPtr[1]_i_2__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222ADDD5DDD5222A"
    )
        port map (
      I0 => \mOutPtr_reg[1]_0\,
      I1 => operator_int_1_U0_ap_continue,
      I2 => ap_done_reg,
      I3 => operator_int_1_U0_ap_start,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__9_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__7_n_0\,
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__7_n_0\,
      D => \mOutPtr[1]_i_2__9_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_regslice_both is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_in0_TREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    internal_full_n_reg : out STD_LOGIC;
    internal_full_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[16]\ : out STD_LOGIC;
    \ap_return_preg_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC;
    Block_proc75_U0_ap_continue : in STD_LOGIC;
    \SRL_SIG_reg[0][0]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][1]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][2]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][3]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][4]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][5]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][6]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][8]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][9]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][10]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][11]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][12]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][13]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][14]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][15]\ : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_regslice_both : entity is "regslice_both";
end conv_3_3_conv_3_3_0_0_regslice_both;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_regslice_both is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_17 : STD_LOGIC;
  signal ibuf_inst_n_18 : STD_LOGIC;
  signal ibuf_inst_n_2 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_4 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_6 : STD_LOGIC;
  signal ibuf_inst_n_7 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal obuf_inst_n_38 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
ibuf_inst: entity work.conv_3_3_conv_3_3_0_0_ibuf
     port map (
      D(16 downto 0) => D(16 downto 0),
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_38,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_in0_TREADY => arg_in0_TREADY,
      \ireg_reg[0]_0\(0) => \^q\(16),
      \ireg_reg[0]_1\ => \ireg_reg[0]\,
      \ireg_reg[16]_0\(16) => ibuf_inst_n_2,
      \ireg_reg[16]_0\(15) => ibuf_inst_n_3,
      \ireg_reg[16]_0\(14) => ibuf_inst_n_4,
      \ireg_reg[16]_0\(13) => ibuf_inst_n_5,
      \ireg_reg[16]_0\(12) => ibuf_inst_n_6,
      \ireg_reg[16]_0\(11) => ibuf_inst_n_7,
      \ireg_reg[16]_0\(10) => ibuf_inst_n_8,
      \ireg_reg[16]_0\(9) => ibuf_inst_n_9,
      \ireg_reg[16]_0\(8) => ibuf_inst_n_10,
      \ireg_reg[16]_0\(7) => ibuf_inst_n_11,
      \ireg_reg[16]_0\(6) => ibuf_inst_n_12,
      \ireg_reg[16]_0\(5) => ibuf_inst_n_13,
      \ireg_reg[16]_0\(4) => ibuf_inst_n_14,
      \ireg_reg[16]_0\(3) => ibuf_inst_n_15,
      \ireg_reg[16]_0\(2) => ibuf_inst_n_16,
      \ireg_reg[16]_0\(1) => ibuf_inst_n_17,
      \ireg_reg[16]_0\(0) => ibuf_inst_n_18
    );
obuf_inst: entity work.conv_3_3_conv_3_3_0_0_obuf
     port map (
      Block_proc75_U0_ap_continue => Block_proc75_U0_ap_continue,
      D(16) => ibuf_inst_n_2,
      D(15) => ibuf_inst_n_3,
      D(14) => ibuf_inst_n_4,
      D(13) => ibuf_inst_n_5,
      D(12) => ibuf_inst_n_6,
      D(11) => ibuf_inst_n_7,
      D(10) => ibuf_inst_n_8,
      D(9) => ibuf_inst_n_9,
      D(8) => ibuf_inst_n_10,
      D(7) => ibuf_inst_n_11,
      D(6) => ibuf_inst_n_12,
      D(5) => ibuf_inst_n_13,
      D(4) => ibuf_inst_n_14,
      D(3) => ibuf_inst_n_15,
      D(2) => ibuf_inst_n_16,
      D(1) => ibuf_inst_n_17,
      D(0) => ibuf_inst_n_18,
      E(0) => E(0),
      Q(16 downto 0) => \^q\(16 downto 0),
      SR(0) => SR(0),
      \SRL_SIG_reg[0][0]\ => \SRL_SIG_reg[0][0]\,
      \SRL_SIG_reg[0][10]\ => \SRL_SIG_reg[0][10]\,
      \SRL_SIG_reg[0][11]\ => \SRL_SIG_reg[0][11]\,
      \SRL_SIG_reg[0][12]\ => \SRL_SIG_reg[0][12]\,
      \SRL_SIG_reg[0][13]\ => \SRL_SIG_reg[0][13]\,
      \SRL_SIG_reg[0][14]\ => \SRL_SIG_reg[0][14]\,
      \SRL_SIG_reg[0][15]\ => \SRL_SIG_reg[0][15]\,
      \SRL_SIG_reg[0][1]\ => \SRL_SIG_reg[0][1]\,
      \SRL_SIG_reg[0][2]\ => \SRL_SIG_reg[0][2]\,
      \SRL_SIG_reg[0][3]\ => \SRL_SIG_reg[0][3]\,
      \SRL_SIG_reg[0][4]\ => \SRL_SIG_reg[0][4]\,
      \SRL_SIG_reg[0][5]\ => \SRL_SIG_reg[0][5]\,
      \SRL_SIG_reg[0][6]\ => \SRL_SIG_reg[0][6]\,
      \SRL_SIG_reg[0][7]\ => \SRL_SIG_reg[0][7]\,
      \SRL_SIG_reg[0][8]\ => \SRL_SIG_reg[0][8]\,
      \SRL_SIG_reg[0][9]\ => \SRL_SIG_reg[0][9]\,
      ap_clk => ap_clk,
      \ap_return_preg_reg[15]\(15 downto 0) => \ap_return_preg_reg[15]\(15 downto 0),
      ap_rst_n => ap_rst_n,
      internal_full_n_reg => internal_full_n_reg,
      internal_full_n_reg_0(0) => internal_full_n_reg_0(0),
      \ireg_reg[0]\ => \ireg_reg[0]\,
      \ireg_reg[0]_0\(0) => p_0_in,
      \odata_reg[16]_0\ => \odata_reg[16]\,
      \odata_reg[16]_1\(0) => obuf_inst_n_38,
      shiftReg_ce => shiftReg_ce
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_regslice_both_10 is
  port (
    internal_empty_n_reg : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    \odata_reg[16]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    arg_out_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    val_assign_1_channel_empty_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    val_assign_channel_empty_n : in STD_LOGIC;
    \ireg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \odata_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_regslice_both_10 : entity is "regslice_both";
end conv_3_3_conv_3_3_0_0_regslice_both_10;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_regslice_both_10 is
  signal count : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal ibuf_inst_n_23 : STD_LOGIC;
  signal obuf_inst_n_17 : STD_LOGIC;
  signal \^odata_reg[16]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal p_0_in : STD_LOGIC;
begin
  \odata_reg[16]\(16 downto 0) <= \^odata_reg[16]\(16 downto 0);
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ibuf_inst_n_1,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => count(1),
      Q => \count_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
ibuf_inst: entity work.conv_3_3_conv_3_3_0_0_ibuf_11
     port map (
      D(0) => ibuf_inst_n_23,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => obuf_inst_n_17,
      \ap_CS_fsm_reg[0]\(1 downto 0) => D(1 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ibuf_inst_n_1,
      ap_rst_n_1 => ap_rst_n_0,
      ap_rst_n_2 => ap_rst_n_1,
      arg_out_TREADY => arg_out_TREADY,
      count(0) => count(1),
      \count_reg[1]\ => \count_reg_n_0_[0]\,
      \count_reg[1]_0\ => \count_reg_n_0_[1]\,
      internal_empty_n_reg => internal_empty_n_reg,
      internal_empty_n_reg_0 => internal_empty_n_reg_0,
      \ireg_reg[0]_0\(0) => \^odata_reg[16]\(16),
      \ireg_reg[15]_0\(15 downto 0) => \ireg_reg[15]_0\(15 downto 0),
      \ireg_reg[16]_0\(16) => p_0_in,
      \ireg_reg[16]_0\(15 downto 0) => \ireg_reg[15]\(15 downto 0),
      val_assign_1_channel_empty_n => val_assign_1_channel_empty_n,
      val_assign_channel_empty_n => val_assign_channel_empty_n
    );
obuf_inst: entity work.conv_3_3_conv_3_3_0_0_obuf_12
     port map (
      D(16) => ibuf_inst_n_23,
      D(15 downto 0) => \odata_reg[15]\(15 downto 0),
      Q(16 downto 0) => \^odata_reg[16]\(16 downto 0),
      SR(0) => obuf_inst_n_17,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_TREADY => arg_out_TREADY,
      \ireg_reg[0]\(0) => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb is
  port (
    \hw_input_global_wrap_2_reg_186_reg[4]\ : out STD_LOGIC;
    we0 : out STD_LOGIC;
    \hw_input_global_wrap_2_reg_186_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 5 downto 0 );
    q0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    C : out STD_LOGIC_VECTOR ( 1 downto 0 );
    q1 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ram_reg_bram_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_0_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_reg_bram_1 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_reg_bram_1_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_reg_bram_0_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_bram_1_1 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_1_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hw_input_global_wrap_7_reg_593_reg[9]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \hw_input_global_wrap_7_reg_593_reg[10]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_reg_bram_0_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_0_3 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_reg_bram_0_4 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_bram_1_3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    arg_in0_hwstream_val_empty_n : in STD_LOGIC;
    ram_reg_bram_0_5 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \add_ln58_2_fu_476_p2__2_carry__0_i_8\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \tmp_i231_reg_661_reg[13]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \add_ln58_reg_666_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    d0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb : entity is "unoptimized_conv_bkb";
end conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb is
begin
unoptimized_conv_bkb_ram_U: entity work.conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb_ram
     port map (
      C(1 downto 0) => C(1 downto 0),
      D(0) => D(0),
      DI(3 downto 0) => DI(3 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      S(5 downto 0) => S(5 downto 0),
      WEA(0) => we0,
      \add_ln58_2_fu_476_p2__2_carry__0_i_8_0\(14 downto 0) => \add_ln58_2_fu_476_p2__2_carry__0_i_8\(14 downto 0),
      \add_ln58_reg_666_reg[15]\(15 downto 0) => \add_ln58_reg_666_reg[15]\(15 downto 0),
      ap_clk => ap_clk,
      arg_in0_hwstream_val_empty_n => arg_in0_hwstream_val_empty_n,
      d0(15 downto 0) => d0(15 downto 0),
      data0(11 downto 0) => data0(11 downto 0),
      data4(11 downto 0) => data4(11 downto 0),
      \hw_input_global_wrap_2_reg_186_reg[1]\ => \hw_input_global_wrap_2_reg_186_reg[1]\,
      \hw_input_global_wrap_2_reg_186_reg[4]\ => \hw_input_global_wrap_2_reg_186_reg[4]\,
      \hw_input_global_wrap_7_reg_593_reg[10]\(7 downto 0) => \hw_input_global_wrap_7_reg_593_reg[10]\(7 downto 0),
      \hw_input_global_wrap_7_reg_593_reg[9]\(6 downto 0) => \hw_input_global_wrap_7_reg_593_reg[9]\(6 downto 0),
      q0(15 downto 0) => q0(15 downto 0),
      q1(13 downto 0) => q1(13 downto 0),
      ram_reg_bram_0_0(5 downto 0) => ram_reg_bram_0(5 downto 0),
      ram_reg_bram_0_1(4 downto 0) => ram_reg_bram_0_0(4 downto 0),
      ram_reg_bram_0_2(7 downto 0) => ram_reg_bram_0_1(7 downto 0),
      ram_reg_bram_0_3(7 downto 0) => ram_reg_bram_0_2(7 downto 0),
      ram_reg_bram_0_4(5 downto 0) => ram_reg_bram_0_3(5 downto 0),
      ram_reg_bram_0_5(5 downto 0) => ram_reg_bram_0_4(5 downto 0),
      ram_reg_bram_0_6(5 downto 0) => ram_reg_bram_0_5(5 downto 0),
      ram_reg_bram_1_0(6 downto 0) => ram_reg_bram_1(6 downto 0),
      ram_reg_bram_1_1(6 downto 0) => ram_reg_bram_1_0(6 downto 0),
      ram_reg_bram_1_2(5 downto 0) => ram_reg_bram_1_1(5 downto 0),
      ram_reg_bram_1_3(7 downto 0) => ram_reg_bram_1_2(7 downto 0),
      ram_reg_bram_1_4(6 downto 0) => ram_reg_bram_1_3(6 downto 0),
      \tmp_i231_reg_661_reg[13]\(13 downto 0) => \tmp_i231_reg_661_reg[13]\(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_Block_proc7476 is
  port (
    internal_empty_n_reg : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \ireg_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    arg_out_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    val_assign_1_channel_empty_n : in STD_LOGIC;
    val_assign_channel_empty_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \odata_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_Block_proc7476 : entity is "Block_proc7476";
end conv_3_3_conv_3_3_0_0_Block_proc7476;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_Block_proc7476 is
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal regslice_both_arg_out_V_data_V_U_n_21 : STD_LOGIC;
  signal regslice_both_arg_out_V_data_V_U_n_22 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
begin
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_out_V_data_V_U_n_22,
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_out_V_data_V_U_n_21,
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
regslice_both_arg_out_V_data_V_U: entity work.conv_3_3_conv_3_3_0_0_regslice_both_10
     port map (
      D(1) => regslice_both_arg_out_V_data_V_U_n_21,
      D(0) => regslice_both_arg_out_V_data_V_U_n_22,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      ap_rst_n_1 => ap_rst_n_1,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_TREADY => arg_out_TREADY,
      internal_empty_n_reg => internal_empty_n_reg,
      internal_empty_n_reg_0 => internal_empty_n_reg_0,
      \ireg_reg[15]\(15 downto 0) => \ireg_reg[15]\(15 downto 0),
      \ireg_reg[15]_0\(15 downto 0) => D(15 downto 0),
      \odata_reg[15]\(15 downto 0) => \odata_reg[15]\(15 downto 0),
      \odata_reg[16]\(16 downto 0) => Q(16 downto 0),
      val_assign_1_channel_empty_n => val_assign_1_channel_empty_n,
      val_assign_channel_empty_n => val_assign_channel_empty_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_Block_proc75 is
  port (
    ap_done_reg : out STD_LOGIC;
    ap_rst_n_inv : out STD_LOGIC;
    arg_in0_TREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_full_n_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_return_preg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    Block_proc75_U0_ap_continue : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_Block_proc75 : entity is "Block_proc75";
end conv_3_3_conv_3_3_0_0_Block_proc75;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_Block_proc75 is
  signal \^ap_done_reg\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ap_return_preg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_15 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_16 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_17 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_18 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_19 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_20 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_22 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_4 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_arg_in0_V_data_V_U_n_9 : STD_LOGIC;
begin
  ap_done_reg <= \^ap_done_reg\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
ap_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_in0_V_data_V_U_n_20,
      Q => \^ap_done_reg\,
      R => '0'
    );
\ap_return_preg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_19,
      Q => \ap_return_preg_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_9,
      Q => \ap_return_preg_reg_n_0_[10]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_8,
      Q => \ap_return_preg_reg_n_0_[11]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_7,
      Q => \ap_return_preg_reg_n_0_[12]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_6,
      Q => \ap_return_preg_reg_n_0_[13]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_5,
      Q => \ap_return_preg_reg_n_0_[14]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_4,
      Q => \ap_return_preg_reg_n_0_[15]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_18,
      Q => \ap_return_preg_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_17,
      Q => \ap_return_preg_reg_n_0_[2]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_16,
      Q => \ap_return_preg_reg_n_0_[3]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_15,
      Q => \ap_return_preg_reg_n_0_[4]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_14,
      Q => \ap_return_preg_reg_n_0_[5]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_13,
      Q => \ap_return_preg_reg_n_0_[6]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_12,
      Q => \ap_return_preg_reg_n_0_[7]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_11,
      Q => \ap_return_preg_reg_n_0_[8]\,
      R => \^ap_rst_n_inv\
    );
\ap_return_preg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => regslice_both_arg_in0_V_data_V_U_n_22,
      D => regslice_both_arg_in0_V_data_V_U_n_10,
      Q => \ap_return_preg_reg_n_0_[9]\,
      R => \^ap_rst_n_inv\
    );
regslice_both_arg_in0_V_data_V_U: entity work.conv_3_3_conv_3_3_0_0_regslice_both
     port map (
      Block_proc75_U0_ap_continue => Block_proc75_U0_ap_continue,
      D(16 downto 0) => D(16 downto 0),
      E(0) => E(0),
      Q(16) => Q(0),
      Q(15) => regslice_both_arg_in0_V_data_V_U_n_4,
      Q(14) => regslice_both_arg_in0_V_data_V_U_n_5,
      Q(13) => regslice_both_arg_in0_V_data_V_U_n_6,
      Q(12) => regslice_both_arg_in0_V_data_V_U_n_7,
      Q(11) => regslice_both_arg_in0_V_data_V_U_n_8,
      Q(10) => regslice_both_arg_in0_V_data_V_U_n_9,
      Q(9) => regslice_both_arg_in0_V_data_V_U_n_10,
      Q(8) => regslice_both_arg_in0_V_data_V_U_n_11,
      Q(7) => regslice_both_arg_in0_V_data_V_U_n_12,
      Q(6) => regslice_both_arg_in0_V_data_V_U_n_13,
      Q(5) => regslice_both_arg_in0_V_data_V_U_n_14,
      Q(4) => regslice_both_arg_in0_V_data_V_U_n_15,
      Q(3) => regslice_both_arg_in0_V_data_V_U_n_16,
      Q(2) => regslice_both_arg_in0_V_data_V_U_n_17,
      Q(1) => regslice_both_arg_in0_V_data_V_U_n_18,
      Q(0) => regslice_both_arg_in0_V_data_V_U_n_19,
      SR(0) => \^ap_rst_n_inv\,
      \SRL_SIG_reg[0][0]\ => \ap_return_preg_reg_n_0_[0]\,
      \SRL_SIG_reg[0][10]\ => \ap_return_preg_reg_n_0_[10]\,
      \SRL_SIG_reg[0][11]\ => \ap_return_preg_reg_n_0_[11]\,
      \SRL_SIG_reg[0][12]\ => \ap_return_preg_reg_n_0_[12]\,
      \SRL_SIG_reg[0][13]\ => \ap_return_preg_reg_n_0_[13]\,
      \SRL_SIG_reg[0][14]\ => \ap_return_preg_reg_n_0_[14]\,
      \SRL_SIG_reg[0][15]\ => \ap_return_preg_reg_n_0_[15]\,
      \SRL_SIG_reg[0][1]\ => \ap_return_preg_reg_n_0_[1]\,
      \SRL_SIG_reg[0][2]\ => \ap_return_preg_reg_n_0_[2]\,
      \SRL_SIG_reg[0][3]\ => \ap_return_preg_reg_n_0_[3]\,
      \SRL_SIG_reg[0][4]\ => \ap_return_preg_reg_n_0_[4]\,
      \SRL_SIG_reg[0][5]\ => \ap_return_preg_reg_n_0_[5]\,
      \SRL_SIG_reg[0][6]\ => \ap_return_preg_reg_n_0_[6]\,
      \SRL_SIG_reg[0][7]\ => \ap_return_preg_reg_n_0_[7]\,
      \SRL_SIG_reg[0][8]\ => \ap_return_preg_reg_n_0_[8]\,
      \SRL_SIG_reg[0][9]\ => \ap_return_preg_reg_n_0_[9]\,
      ap_clk => ap_clk,
      \ap_return_preg_reg[15]\(15 downto 0) => \ap_return_preg_reg[15]_0\(15 downto 0),
      ap_rst_n => ap_rst_n,
      arg_in0_TREADY => arg_in0_TREADY,
      internal_full_n_reg => regslice_both_arg_in0_V_data_V_U_n_20,
      internal_full_n_reg_0(0) => internal_full_n_reg(0),
      \ireg_reg[0]\ => \^ap_done_reg\,
      \odata_reg[16]\ => regslice_both_arg_in0_V_data_V_U_n_22,
      shiftReg_ce => shiftReg_ce
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3 is
  port (
    start_once_reg_reg_0 : out STD_LOGIC;
    \ap_CS_fsm_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[10]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \hw_output_s0_y_v33_a_reg_197_reg[4]_0\ : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    start_for_read_1_U0_full_n : in STD_LOGIC;
    start_for_read_U0_full_n : in STD_LOGIC;
    unoptimized_conv_3_3_U0_ap_start : in STD_LOGIC;
    arg_out_data_values_s_full_n : in STD_LOGIC;
    arg_out_tlast_values_full_n : in STD_LOGIC;
    arg_in0_hwstream_val_empty_n : in STD_LOGIC;
    d0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3 : entity is "unoptimized_conv_3_3";
end conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3 is
  signal C : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \SRL_SIG[0][15]_i_10_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_11_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_12_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_13_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_14_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_15_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_16_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_18_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_19_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_20_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_21_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_22_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_23_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_24_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_25_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_26_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_27_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_28_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_29_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_2_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_30_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_31_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_32_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_3_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_4_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_5_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_6_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_7_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_8_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][15]_i_9_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_10_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_11_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_12_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_13_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_14_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_15_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_16_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_17_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_18_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_19_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_20_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_21_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_22_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_23_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_24_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_25_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_26_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_27_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_28_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_5_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_6_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_7_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_8_n_0\ : STD_LOGIC;
  signal \SRL_SIG[0][7]_i_9_n_0\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_1\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_10\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_11\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_12\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_13\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_14\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_15\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_2\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_3\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_4\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_5\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_6\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_7\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_17_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_1_n_1\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_1_n_2\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_1_n_3\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_1_n_4\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_1_n_5\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_1_n_6\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][15]_i_1_n_7\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_1\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_2\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_3\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_4\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_5\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_6\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_1_n_7\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_1\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_10\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_11\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_12\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_13\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_14\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_15\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_2\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_3\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_4\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_5\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_6\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_7\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[0][7]_i_4_n_9\ : STD_LOGIC;
  signal add_ln142_fu_283_p2 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \add_ln142_reg_570[4]_i_1_n_0\ : STD_LOGIC;
  signal add_ln187_fu_326_p2 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal add_ln187_reg_604 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal add_ln58_2_fu_476_p2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \add_ln58_2_fu_476_p2__2_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry__0_n_7\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_i_5_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_0\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_1\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_2\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_3\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_4\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_5\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_6\ : STD_LOGIC;
  signal \add_ln58_2_fu_476_p2__2_carry_n_7\ : STD_LOGIC;
  signal add_ln58_2_reg_671 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \add_ln58_4_reg_646_reg__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \add_ln58_5_reg_676_reg__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal add_ln58_fu_465_p2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \add_ln58_fu_465_p2_carry__0_n_1\ : STD_LOGIC;
  signal \add_ln58_fu_465_p2_carry__0_n_2\ : STD_LOGIC;
  signal \add_ln58_fu_465_p2_carry__0_n_3\ : STD_LOGIC;
  signal \add_ln58_fu_465_p2_carry__0_n_4\ : STD_LOGIC;
  signal \add_ln58_fu_465_p2_carry__0_n_5\ : STD_LOGIC;
  signal \add_ln58_fu_465_p2_carry__0_n_6\ : STD_LOGIC;
  signal \add_ln58_fu_465_p2_carry__0_n_7\ : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_0 : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_1 : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_2 : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_3 : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_4 : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_5 : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_6 : STD_LOGIC;
  signal add_ln58_fu_465_p2_carry_n_7 : STD_LOGIC;
  signal add_ln58_reg_666 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[10]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_cs_fsm_reg[3]_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm13_out : STD_LOGIC;
  signal c3_1_fu_277_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal c3_1_reg_562 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal c3_fu_227_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal c3_reg_541 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \c3_reg_541[6]_i_2_n_0\ : STD_LOGIC;
  signal c5_1_fu_295_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal c5_fu_251_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal empty_11_reg_631 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \grp_fu_522_p2_carry__0_n_10\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_11\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_12\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_13\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_14\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_15\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_2\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_3\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_4\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_5\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_6\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_7\ : STD_LOGIC;
  signal \grp_fu_522_p2_carry__0_n_9\ : STD_LOGIC;
  signal grp_fu_522_p2_carry_i_1_n_0 : STD_LOGIC;
  signal grp_fu_522_p2_carry_i_8_n_0 : STD_LOGIC;
  signal grp_fu_522_p2_carry_i_9_n_0 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_0 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_1 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_10 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_11 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_12 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_13 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_14 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_15 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_2 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_3 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_4 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_5 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_6 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_7 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_8 : STD_LOGIC;
  signal grp_fu_522_p2_carry_n_9 : STD_LOGIC;
  signal \grp_fu_530_p2_carry__0_n_2\ : STD_LOGIC;
  signal \grp_fu_530_p2_carry__0_n_3\ : STD_LOGIC;
  signal \grp_fu_530_p2_carry__0_n_4\ : STD_LOGIC;
  signal \grp_fu_530_p2_carry__0_n_5\ : STD_LOGIC;
  signal \grp_fu_530_p2_carry__0_n_6\ : STD_LOGIC;
  signal \grp_fu_530_p2_carry__0_n_7\ : STD_LOGIC;
  signal grp_fu_530_p2_carry_i_6_n_0 : STD_LOGIC;
  signal grp_fu_530_p2_carry_i_7_n_0 : STD_LOGIC;
  signal grp_fu_530_p2_carry_i_8_n_0 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_0 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_1 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_2 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_3 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_4 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_5 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_6 : STD_LOGIC;
  signal grp_fu_530_p2_carry_n_7 : STD_LOGIC;
  signal \hw_input_global_wrap_15_reg_625_reg_n_0_[13]\ : STD_LOGIC;
  signal \hw_input_global_wrap_15_reg_625_reg_n_0_[14]\ : STD_LOGIC;
  signal hw_input_global_wrap_1_reg_175 : STD_LOGIC;
  signal hw_input_global_wrap_2_reg_1860 : STD_LOGIC;
  signal \hw_input_global_wrap_2_reg_186[4]_i_1_n_0\ : STD_LOGIC;
  signal \hw_input_global_wrap_2_reg_186[6]_i_2_n_0\ : STD_LOGIC;
  signal hw_input_global_wrap_2_reg_186_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \hw_input_global_wrap_7_reg_593_reg_n_0_[12]\ : STD_LOGIC;
  signal \hw_input_global_wrap_7_reg_593_reg_n_0_[13]\ : STD_LOGIC;
  signal \hw_input_global_wrap_7_reg_593_reg_n_0_[14]\ : STD_LOGIC;
  signal \hw_input_global_wrap_7_reg_593_reg_n_0_[15]\ : STD_LOGIC;
  signal hw_input_global_wrap_U_n_0 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_100 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_101 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_102 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_103 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_104 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_105 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_106 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_107 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_108 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_109 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_110 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_111 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_112 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_113 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_114 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_115 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_2 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_26 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_4 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_42 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_43 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_44 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_45 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_46 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_47 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_48 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_49 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_5 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_50 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_51 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_52 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_53 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_54 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_55 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_56 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_57 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_58 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_59 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_6 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_60 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_61 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_62 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_63 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_64 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_65 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_66 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_67 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_68 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_69 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_7 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_70 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_71 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_72 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_73 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_74 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_75 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_76 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_77 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_78 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_79 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_8 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_80 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_81 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_82 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_83 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_84 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_85 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_86 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_87 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_88 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_89 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_9 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_90 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_91 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_92 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_93 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_94 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_95 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_96 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_97 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_98 : STD_LOGIC;
  signal hw_input_global_wrap_U_n_99 : STD_LOGIC;
  signal hw_input_global_wrap_q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hw_input_global_wrap_q1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal hw_output_s0_x_v32_a_reg_2090 : STD_LOGIC;
  signal \hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0\ : STD_LOGIC;
  signal \hw_output_s0_y_v33_a_reg_197[5]_i_3_n_0\ : STD_LOGIC;
  signal shl_ln34_fu_429_p2 : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal shl_ln38_fu_434_p2 : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal \start_once_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \^start_once_reg_reg_0\ : STD_LOGIC;
  signal tmp1_i_fu_494_p3 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal tmp_2_fu_233_p3 : STD_LOGIC_VECTOR ( 12 downto 6 );
  signal tmp_i231_fu_460_p2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \tmp_i231_fu_460_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_i231_fu_460_p2_carry__0_n_4\ : STD_LOGIC;
  signal \tmp_i231_fu_460_p2_carry__0_n_5\ : STD_LOGIC;
  signal \tmp_i231_fu_460_p2_carry__0_n_6\ : STD_LOGIC;
  signal \tmp_i231_fu_460_p2_carry__0_n_7\ : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_0 : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_1 : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_2 : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_3 : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_4 : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_5 : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_6 : STD_LOGIC;
  signal tmp_i231_fu_460_p2_carry_n_7 : STD_LOGIC;
  signal zext_ln392_reg_546 : STD_LOGIC_VECTOR ( 11 downto 6 );
  signal \zext_ln392_reg_546[11]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[0][15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_SRL_SIG_reg[0][15]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_add_ln58_2_fu_476_p2__2_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_add_ln58_2_fu_476_p2__2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_add_ln58_4_reg_646_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_4_reg_646_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_4_reg_646_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_4_reg_646_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_4_reg_646_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_4_reg_646_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_4_reg_646_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_add_ln58_4_reg_646_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_add_ln58_4_reg_646_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_add_ln58_4_reg_646_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_add_ln58_4_reg_646_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_add_ln58_4_reg_646_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_add_ln58_5_reg_676_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_5_reg_676_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_5_reg_676_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_5_reg_676_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_5_reg_676_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_5_reg_676_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_add_ln58_5_reg_676_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_add_ln58_5_reg_676_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_add_ln58_5_reg_676_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_add_ln58_5_reg_676_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_add_ln58_5_reg_676_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_add_ln58_5_reg_676_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_add_ln58_fu_465_p2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_grp_fu_522_p2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_grp_fu_522_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_grp_fu_530_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_grp_fu_530_p2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_grp_fu_530_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_tmp_i231_fu_460_p2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_tmp_i231_fu_460_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute HLUTNM : string;
  attribute HLUTNM of \SRL_SIG[0][15]_i_11\ : label is "lutpair14";
  attribute HLUTNM of \SRL_SIG[0][15]_i_12\ : label is "lutpair13";
  attribute HLUTNM of \SRL_SIG[0][15]_i_13\ : label is "lutpair12";
  attribute HLUTNM of \SRL_SIG[0][15]_i_14\ : label is "lutpair11";
  attribute HLUTNM of \SRL_SIG[0][15]_i_18\ : label is "lutpair9";
  attribute HLUTNM of \SRL_SIG[0][15]_i_19\ : label is "lutpair8";
  attribute HLUTNM of \SRL_SIG[0][15]_i_2\ : label is "lutpair14";
  attribute HLUTNM of \SRL_SIG[0][15]_i_20\ : label is "lutpair7";
  attribute HLUTNM of \SRL_SIG[0][15]_i_21\ : label is "lutpair6";
  attribute HLUTNM of \SRL_SIG[0][15]_i_22\ : label is "lutpair5";
  attribute HLUTNM of \SRL_SIG[0][15]_i_23\ : label is "lutpair4";
  attribute HLUTNM of \SRL_SIG[0][15]_i_24\ : label is "lutpair3";
  attribute HLUTNM of \SRL_SIG[0][15]_i_27\ : label is "lutpair9";
  attribute HLUTNM of \SRL_SIG[0][15]_i_28\ : label is "lutpair8";
  attribute HLUTNM of \SRL_SIG[0][15]_i_29\ : label is "lutpair7";
  attribute HLUTNM of \SRL_SIG[0][15]_i_3\ : label is "lutpair13";
  attribute HLUTNM of \SRL_SIG[0][15]_i_30\ : label is "lutpair6";
  attribute HLUTNM of \SRL_SIG[0][15]_i_31\ : label is "lutpair5";
  attribute HLUTNM of \SRL_SIG[0][15]_i_32\ : label is "lutpair4";
  attribute HLUTNM of \SRL_SIG[0][15]_i_4\ : label is "lutpair12";
  attribute HLUTNM of \SRL_SIG[0][15]_i_5\ : label is "lutpair11";
  attribute HLUTNM of \SRL_SIG[0][15]_i_8\ : label is "lutpair10";
  attribute HLUTNM of \SRL_SIG[0][7]_i_13\ : label is "lutpair2";
  attribute HLUTNM of \SRL_SIG[0][7]_i_16\ : label is "lutpair1";
  attribute HLUTNM of \SRL_SIG[0][7]_i_17\ : label is "lutpair0";
  attribute HLUTNM of \SRL_SIG[0][7]_i_19\ : label is "lutpair3";
  attribute HLUTNM of \SRL_SIG[0][7]_i_20\ : label is "lutpair2";
  attribute HLUTNM of \SRL_SIG[0][7]_i_23\ : label is "lutpair1";
  attribute HLUTNM of \SRL_SIG[0][7]_i_24\ : label is "lutpair0";
  attribute HLUTNM of \SRL_SIG[0][7]_i_5\ : label is "lutpair10";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \SRL_SIG_reg[0][15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \SRL_SIG_reg[0][15]_i_17\ : label is 35;
  attribute ADDER_THRESHOLD of \SRL_SIG_reg[0][7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \SRL_SIG_reg[0][7]_i_4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln142_reg_570[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \add_ln142_reg_570[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \add_ln142_reg_570[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \add_ln142_reg_570[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \add_ln142_reg_570[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \add_ln187_reg_604[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \add_ln187_reg_604[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \add_ln187_reg_604[4]_i_1\ : label is "soft_lutpair34";
  attribute ADDER_THRESHOLD of \add_ln58_2_fu_476_p2__2_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln58_2_fu_476_p2__2_carry__0\ : label is 35;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of add_ln58_4_reg_646_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of add_ln58_4_reg_646_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP_HIERARCHY of add_ln58_5_reg_676_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of add_ln58_5_reg_676_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of add_ln58_fu_465_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \add_ln58_fu_465_p2_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ap_CS_fsm[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair33";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of \c3_1_reg_562[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \c3_1_reg_562[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \c3_1_reg_562[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \c3_1_reg_562[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \c3_1_reg_562[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \c3_reg_541[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \c3_reg_541[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \c3_reg_541[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \c3_reg_541[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \c3_reg_541[6]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \c5_1_reg_580[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \c5_1_reg_580[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \c5_1_reg_580[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \c5_1_reg_580[4]_i_1\ : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD of grp_fu_522_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \grp_fu_522_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of grp_fu_530_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \grp_fu_530_p2_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \hw_input_global_wrap_2_reg_186[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \hw_input_global_wrap_2_reg_186[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \hw_input_global_wrap_2_reg_186[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \hw_input_global_wrap_2_reg_186[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \hw_input_global_wrap_2_reg_186[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \hw_input_global_wrap_2_reg_186[6]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \hw_output_s0_x_v32_a_reg_209[5]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \hw_output_s0_y_v33_a_reg_197[5]_i_3\ : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD of tmp_i231_fu_460_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \tmp_i231_fu_460_p2_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \zext_ln392_reg_546[11]_i_2\ : label is "soft_lutpair32";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  \ap_CS_fsm_reg[10]_0\(0) <= \^ap_cs_fsm_reg[10]_0\(0);
  \ap_CS_fsm_reg[3]_0\ <= \^ap_cs_fsm_reg[3]_0\;
  start_once_reg_reg_0 <= \^start_once_reg_reg_0\;
\SRL_SIG[0][15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \SRL_SIG[0][15]_i_2_n_0\,
      I1 => tmp1_i_fu_494_p3(14),
      I2 => add_ln58_reg_666(14),
      I3 => \SRL_SIG_reg[0][15]_i_17_n_9\,
      O => \SRL_SIG[0][15]_i_10_n_0\
    );
\SRL_SIG[0][15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_reg_666(13),
      I1 => tmp1_i_fu_494_p3(13),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_10\,
      I3 => \SRL_SIG[0][15]_i_3_n_0\,
      O => \SRL_SIG[0][15]_i_11_n_0\
    );
\SRL_SIG[0][15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_reg_666(12),
      I1 => tmp1_i_fu_494_p3(12),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_11\,
      I3 => \SRL_SIG[0][15]_i_4_n_0\,
      O => \SRL_SIG[0][15]_i_12_n_0\
    );
\SRL_SIG[0][15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_reg_666(11),
      I1 => tmp1_i_fu_494_p3(11),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_12\,
      I3 => \SRL_SIG[0][15]_i_5_n_0\,
      O => \SRL_SIG[0][15]_i_13_n_0\
    );
\SRL_SIG[0][15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_reg_666(10),
      I1 => tmp1_i_fu_494_p3(10),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_13\,
      I3 => \SRL_SIG[0][15]_i_6_n_0\,
      O => \SRL_SIG[0][15]_i_14_n_0\
    );
\SRL_SIG[0][15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_reg_666(9),
      I1 => tmp1_i_fu_494_p3(9),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_14\,
      I3 => \SRL_SIG[0][15]_i_7_n_0\,
      O => \SRL_SIG[0][15]_i_15_n_0\
    );
\SRL_SIG[0][15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_reg_666(8),
      I1 => tmp1_i_fu_494_p3(8),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_15\,
      I3 => \SRL_SIG[0][15]_i_8_n_0\,
      O => \SRL_SIG[0][15]_i_16_n_0\
    );
\SRL_SIG[0][15]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(13),
      I1 => \add_ln58_4_reg_646_reg__0\(13),
      I2 => \add_ln58_5_reg_676_reg__0\(13),
      O => \SRL_SIG[0][15]_i_18_n_0\
    );
\SRL_SIG[0][15]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(12),
      I1 => \add_ln58_4_reg_646_reg__0\(12),
      I2 => \add_ln58_5_reg_676_reg__0\(12),
      O => \SRL_SIG[0][15]_i_19_n_0\
    );
\SRL_SIG[0][15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(13),
      I1 => tmp1_i_fu_494_p3(13),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_10\,
      O => \SRL_SIG[0][15]_i_2_n_0\
    );
\SRL_SIG[0][15]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(11),
      I1 => \add_ln58_4_reg_646_reg__0\(11),
      I2 => \add_ln58_5_reg_676_reg__0\(11),
      O => \SRL_SIG[0][15]_i_20_n_0\
    );
\SRL_SIG[0][15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(10),
      I1 => \add_ln58_4_reg_646_reg__0\(10),
      I2 => \add_ln58_5_reg_676_reg__0\(10),
      O => \SRL_SIG[0][15]_i_21_n_0\
    );
\SRL_SIG[0][15]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(9),
      I1 => \add_ln58_4_reg_646_reg__0\(9),
      I2 => \add_ln58_5_reg_676_reg__0\(9),
      O => \SRL_SIG[0][15]_i_22_n_0\
    );
\SRL_SIG[0][15]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(8),
      I1 => \add_ln58_4_reg_646_reg__0\(8),
      I2 => \add_ln58_5_reg_676_reg__0\(8),
      O => \SRL_SIG[0][15]_i_23_n_0\
    );
\SRL_SIG[0][15]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(7),
      I1 => \add_ln58_4_reg_646_reg__0\(7),
      I2 => \add_ln58_5_reg_676_reg__0\(7),
      O => \SRL_SIG[0][15]_i_24_n_0\
    );
\SRL_SIG[0][15]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \add_ln58_5_reg_676_reg__0\(14),
      I1 => \add_ln58_4_reg_646_reg__0\(14),
      I2 => add_ln58_2_reg_671(14),
      I3 => \add_ln58_4_reg_646_reg__0\(15),
      I4 => add_ln58_2_reg_671(15),
      I5 => \add_ln58_5_reg_676_reg__0\(15),
      O => \SRL_SIG[0][15]_i_25_n_0\
    );
\SRL_SIG[0][15]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \SRL_SIG[0][15]_i_18_n_0\,
      I1 => \add_ln58_4_reg_646_reg__0\(14),
      I2 => add_ln58_2_reg_671(14),
      I3 => \add_ln58_5_reg_676_reg__0\(14),
      O => \SRL_SIG[0][15]_i_26_n_0\
    );
\SRL_SIG[0][15]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(13),
      I1 => \add_ln58_4_reg_646_reg__0\(13),
      I2 => \add_ln58_5_reg_676_reg__0\(13),
      I3 => \SRL_SIG[0][15]_i_19_n_0\,
      O => \SRL_SIG[0][15]_i_27_n_0\
    );
\SRL_SIG[0][15]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(12),
      I1 => \add_ln58_4_reg_646_reg__0\(12),
      I2 => \add_ln58_5_reg_676_reg__0\(12),
      I3 => \SRL_SIG[0][15]_i_20_n_0\,
      O => \SRL_SIG[0][15]_i_28_n_0\
    );
\SRL_SIG[0][15]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(11),
      I1 => \add_ln58_4_reg_646_reg__0\(11),
      I2 => \add_ln58_5_reg_676_reg__0\(11),
      I3 => \SRL_SIG[0][15]_i_21_n_0\,
      O => \SRL_SIG[0][15]_i_29_n_0\
    );
\SRL_SIG[0][15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(12),
      I1 => tmp1_i_fu_494_p3(12),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_11\,
      O => \SRL_SIG[0][15]_i_3_n_0\
    );
\SRL_SIG[0][15]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(10),
      I1 => \add_ln58_4_reg_646_reg__0\(10),
      I2 => \add_ln58_5_reg_676_reg__0\(10),
      I3 => \SRL_SIG[0][15]_i_22_n_0\,
      O => \SRL_SIG[0][15]_i_30_n_0\
    );
\SRL_SIG[0][15]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(9),
      I1 => \add_ln58_4_reg_646_reg__0\(9),
      I2 => \add_ln58_5_reg_676_reg__0\(9),
      I3 => \SRL_SIG[0][15]_i_23_n_0\,
      O => \SRL_SIG[0][15]_i_31_n_0\
    );
\SRL_SIG[0][15]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(8),
      I1 => \add_ln58_4_reg_646_reg__0\(8),
      I2 => \add_ln58_5_reg_676_reg__0\(8),
      I3 => \SRL_SIG[0][15]_i_24_n_0\,
      O => \SRL_SIG[0][15]_i_32_n_0\
    );
\SRL_SIG[0][15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(11),
      I1 => tmp1_i_fu_494_p3(11),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_12\,
      O => \SRL_SIG[0][15]_i_4_n_0\
    );
\SRL_SIG[0][15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(10),
      I1 => tmp1_i_fu_494_p3(10),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_13\,
      O => \SRL_SIG[0][15]_i_5_n_0\
    );
\SRL_SIG[0][15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(9),
      I1 => tmp1_i_fu_494_p3(9),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_14\,
      O => \SRL_SIG[0][15]_i_6_n_0\
    );
\SRL_SIG[0][15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(8),
      I1 => tmp1_i_fu_494_p3(8),
      I2 => \SRL_SIG_reg[0][15]_i_17_n_15\,
      O => \SRL_SIG[0][15]_i_7_n_0\
    );
\SRL_SIG[0][15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(7),
      I1 => tmp1_i_fu_494_p3(7),
      I2 => \SRL_SIG_reg[0][7]_i_4_n_8\,
      O => \SRL_SIG[0][15]_i_8_n_0\
    );
\SRL_SIG[0][15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \SRL_SIG_reg[0][15]_i_17_n_9\,
      I1 => tmp1_i_fu_494_p3(14),
      I2 => add_ln58_reg_666(14),
      I3 => tmp1_i_fu_494_p3(15),
      I4 => add_ln58_reg_666(15),
      I5 => \SRL_SIG_reg[0][15]_i_17_n_8\,
      O => \SRL_SIG[0][15]_i_9_n_0\
    );
\SRL_SIG[0][7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]_i_4_n_13\,
      I1 => add_ln58_reg_666(2),
      I2 => tmp1_i_fu_494_p3(2),
      O => \SRL_SIG[0][7]_i_10_n_0\
    );
\SRL_SIG[0][7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]_i_4_n_14\,
      I1 => add_ln58_reg_666(1),
      O => \SRL_SIG[0][7]_i_11_n_0\
    );
\SRL_SIG[0][7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]_i_4_n_15\,
      I1 => add_ln58_reg_666(0),
      O => \SRL_SIG[0][7]_i_12_n_0\
    );
\SRL_SIG[0][7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(6),
      I1 => \add_ln58_4_reg_646_reg__0\(6),
      I2 => \add_ln58_5_reg_676_reg__0\(6),
      O => \SRL_SIG[0][7]_i_13_n_0\
    );
\SRL_SIG[0][7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(5),
      I1 => \add_ln58_4_reg_646_reg__0\(5),
      I2 => \add_ln58_5_reg_676_reg__0\(5),
      O => \SRL_SIG[0][7]_i_14_n_0\
    );
\SRL_SIG[0][7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(4),
      I1 => \add_ln58_4_reg_646_reg__0\(4),
      I2 => \add_ln58_5_reg_676_reg__0\(4),
      O => \SRL_SIG[0][7]_i_15_n_0\
    );
\SRL_SIG[0][7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(3),
      I1 => \add_ln58_4_reg_646_reg__0\(3),
      I2 => \add_ln58_5_reg_676_reg__0\(3),
      O => \SRL_SIG[0][7]_i_16_n_0\
    );
\SRL_SIG[0][7]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_2_reg_671(2),
      I1 => \add_ln58_4_reg_646_reg__0\(2),
      I2 => \add_ln58_5_reg_676_reg__0\(2),
      O => \SRL_SIG[0][7]_i_17_n_0\
    );
\SRL_SIG[0][7]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \add_ln58_5_reg_676_reg__0\(2),
      I1 => add_ln58_2_reg_671(2),
      I2 => \add_ln58_4_reg_646_reg__0\(2),
      O => \SRL_SIG[0][7]_i_18_n_0\
    );
\SRL_SIG[0][7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(7),
      I1 => \add_ln58_4_reg_646_reg__0\(7),
      I2 => \add_ln58_5_reg_676_reg__0\(7),
      I3 => \SRL_SIG[0][7]_i_13_n_0\,
      O => \SRL_SIG[0][7]_i_19_n_0\
    );
\SRL_SIG[0][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => add_ln58_reg_666(6),
      I1 => tmp1_i_fu_494_p3(6),
      I2 => \SRL_SIG_reg[0][7]_i_4_n_9\,
      O => \SRL_SIG[0][7]_i_2_n_0\
    );
\SRL_SIG[0][7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(6),
      I1 => \add_ln58_4_reg_646_reg__0\(6),
      I2 => \add_ln58_5_reg_676_reg__0\(6),
      I3 => \SRL_SIG[0][7]_i_14_n_0\,
      O => \SRL_SIG[0][7]_i_20_n_0\
    );
\SRL_SIG[0][7]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(5),
      I1 => \add_ln58_4_reg_646_reg__0\(5),
      I2 => \add_ln58_5_reg_676_reg__0\(5),
      I3 => \SRL_SIG[0][7]_i_15_n_0\,
      O => \SRL_SIG[0][7]_i_21_n_0\
    );
\SRL_SIG[0][7]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(4),
      I1 => \add_ln58_4_reg_646_reg__0\(4),
      I2 => \add_ln58_5_reg_676_reg__0\(4),
      I3 => \SRL_SIG[0][7]_i_16_n_0\,
      O => \SRL_SIG[0][7]_i_22_n_0\
    );
\SRL_SIG[0][7]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_2_reg_671(3),
      I1 => \add_ln58_4_reg_646_reg__0\(3),
      I2 => \add_ln58_5_reg_676_reg__0\(3),
      I3 => \SRL_SIG[0][7]_i_17_n_0\,
      O => \SRL_SIG[0][7]_i_23_n_0\
    );
\SRL_SIG[0][7]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => add_ln58_2_reg_671(2),
      I1 => \add_ln58_4_reg_646_reg__0\(2),
      I2 => \add_ln58_5_reg_676_reg__0\(2),
      I3 => \add_ln58_4_reg_646_reg__0\(1),
      I4 => add_ln58_2_reg_671(1),
      O => \SRL_SIG[0][7]_i_24_n_0\
    );
\SRL_SIG[0][7]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => add_ln58_2_reg_671(1),
      I1 => \add_ln58_4_reg_646_reg__0\(1),
      I2 => \add_ln58_5_reg_676_reg__0\(1),
      O => \SRL_SIG[0][7]_i_25_n_0\
    );
\SRL_SIG[0][7]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln58_5_reg_676_reg__0\(0),
      I1 => \add_ln58_4_reg_646_reg__0\(0),
      O => \SRL_SIG[0][7]_i_26_n_0\
    );
\SRL_SIG[0][7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => add_ln58_reg_666(4),
      I1 => tmp1_i_fu_494_p3(4),
      I2 => add_ln58_reg_666(2),
      I3 => tmp1_i_fu_494_p3(2),
      I4 => tmp1_i_fu_494_p3(3),
      I5 => add_ln58_reg_666(3),
      O => \SRL_SIG[0][7]_i_27_n_0\
    );
\SRL_SIG[0][7]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => add_ln58_reg_666(3),
      I1 => tmp1_i_fu_494_p3(3),
      I2 => tmp1_i_fu_494_p3(2),
      I3 => add_ln58_reg_666(2),
      O => \SRL_SIG[0][7]_i_28_n_0\
    );
\SRL_SIG[0][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]_i_4_n_9\,
      I1 => add_ln58_reg_666(6),
      I2 => tmp1_i_fu_494_p3(6),
      O => \SRL_SIG[0][7]_i_3_n_0\
    );
\SRL_SIG[0][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => add_ln58_reg_666(7),
      I1 => tmp1_i_fu_494_p3(7),
      I2 => \SRL_SIG_reg[0][7]_i_4_n_8\,
      I3 => \SRL_SIG[0][7]_i_2_n_0\,
      O => \SRL_SIG[0][7]_i_5_n_0\
    );
\SRL_SIG[0][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => tmp1_i_fu_494_p3(6),
      I1 => add_ln58_reg_666(6),
      I2 => \SRL_SIG_reg[0][7]_i_4_n_9\,
      I3 => \SRL_SIG[0][7]_i_27_n_0\,
      I4 => tmp1_i_fu_494_p3(5),
      I5 => add_ln58_reg_666(5),
      O => \SRL_SIG[0][7]_i_6_n_0\
    );
\SRL_SIG[0][7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]_i_4_n_10\,
      I1 => tmp1_i_fu_494_p3(5),
      I2 => add_ln58_reg_666(5),
      I3 => \SRL_SIG[0][7]_i_27_n_0\,
      O => \SRL_SIG[0][7]_i_7_n_0\
    );
\SRL_SIG[0][7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]_i_4_n_11\,
      I1 => tmp1_i_fu_494_p3(4),
      I2 => add_ln58_reg_666(4),
      I3 => \SRL_SIG[0][7]_i_28_n_0\,
      O => \SRL_SIG[0][7]_i_8_n_0\
    );
\SRL_SIG[0][7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \SRL_SIG_reg[0][7]_i_4_n_12\,
      I1 => tmp1_i_fu_494_p3(3),
      I2 => add_ln58_reg_666(3),
      I3 => add_ln58_reg_666(2),
      I4 => tmp1_i_fu_494_p3(2),
      O => \SRL_SIG[0][7]_i_9_n_0\
    );
\SRL_SIG_reg[0][15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \SRL_SIG_reg[0][7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_SRL_SIG_reg[0][15]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \SRL_SIG_reg[0][15]_i_1_n_1\,
      CO(5) => \SRL_SIG_reg[0][15]_i_1_n_2\,
      CO(4) => \SRL_SIG_reg[0][15]_i_1_n_3\,
      CO(3) => \SRL_SIG_reg[0][15]_i_1_n_4\,
      CO(2) => \SRL_SIG_reg[0][15]_i_1_n_5\,
      CO(1) => \SRL_SIG_reg[0][15]_i_1_n_6\,
      CO(0) => \SRL_SIG_reg[0][15]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \SRL_SIG[0][15]_i_2_n_0\,
      DI(5) => \SRL_SIG[0][15]_i_3_n_0\,
      DI(4) => \SRL_SIG[0][15]_i_4_n_0\,
      DI(3) => \SRL_SIG[0][15]_i_5_n_0\,
      DI(2) => \SRL_SIG[0][15]_i_6_n_0\,
      DI(1) => \SRL_SIG[0][15]_i_7_n_0\,
      DI(0) => \SRL_SIG[0][15]_i_8_n_0\,
      O(7 downto 0) => data(15 downto 8),
      S(7) => \SRL_SIG[0][15]_i_9_n_0\,
      S(6) => \SRL_SIG[0][15]_i_10_n_0\,
      S(5) => \SRL_SIG[0][15]_i_11_n_0\,
      S(4) => \SRL_SIG[0][15]_i_12_n_0\,
      S(3) => \SRL_SIG[0][15]_i_13_n_0\,
      S(2) => \SRL_SIG[0][15]_i_14_n_0\,
      S(1) => \SRL_SIG[0][15]_i_15_n_0\,
      S(0) => \SRL_SIG[0][15]_i_16_n_0\
    );
\SRL_SIG_reg[0][15]_i_17\: unisim.vcomponents.CARRY8
     port map (
      CI => \SRL_SIG_reg[0][7]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_SRL_SIG_reg[0][15]_i_17_CO_UNCONNECTED\(7),
      CO(6) => \SRL_SIG_reg[0][15]_i_17_n_1\,
      CO(5) => \SRL_SIG_reg[0][15]_i_17_n_2\,
      CO(4) => \SRL_SIG_reg[0][15]_i_17_n_3\,
      CO(3) => \SRL_SIG_reg[0][15]_i_17_n_4\,
      CO(2) => \SRL_SIG_reg[0][15]_i_17_n_5\,
      CO(1) => \SRL_SIG_reg[0][15]_i_17_n_6\,
      CO(0) => \SRL_SIG_reg[0][15]_i_17_n_7\,
      DI(7) => '0',
      DI(6) => \SRL_SIG[0][15]_i_18_n_0\,
      DI(5) => \SRL_SIG[0][15]_i_19_n_0\,
      DI(4) => \SRL_SIG[0][15]_i_20_n_0\,
      DI(3) => \SRL_SIG[0][15]_i_21_n_0\,
      DI(2) => \SRL_SIG[0][15]_i_22_n_0\,
      DI(1) => \SRL_SIG[0][15]_i_23_n_0\,
      DI(0) => \SRL_SIG[0][15]_i_24_n_0\,
      O(7) => \SRL_SIG_reg[0][15]_i_17_n_8\,
      O(6) => \SRL_SIG_reg[0][15]_i_17_n_9\,
      O(5) => \SRL_SIG_reg[0][15]_i_17_n_10\,
      O(4) => \SRL_SIG_reg[0][15]_i_17_n_11\,
      O(3) => \SRL_SIG_reg[0][15]_i_17_n_12\,
      O(2) => \SRL_SIG_reg[0][15]_i_17_n_13\,
      O(1) => \SRL_SIG_reg[0][15]_i_17_n_14\,
      O(0) => \SRL_SIG_reg[0][15]_i_17_n_15\,
      S(7) => \SRL_SIG[0][15]_i_25_n_0\,
      S(6) => \SRL_SIG[0][15]_i_26_n_0\,
      S(5) => \SRL_SIG[0][15]_i_27_n_0\,
      S(4) => \SRL_SIG[0][15]_i_28_n_0\,
      S(3) => \SRL_SIG[0][15]_i_29_n_0\,
      S(2) => \SRL_SIG[0][15]_i_30_n_0\,
      S(1) => \SRL_SIG[0][15]_i_31_n_0\,
      S(0) => \SRL_SIG[0][15]_i_32_n_0\
    );
\SRL_SIG_reg[0][7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \SRL_SIG_reg[0][7]_i_1_n_0\,
      CO(6) => \SRL_SIG_reg[0][7]_i_1_n_1\,
      CO(5) => \SRL_SIG_reg[0][7]_i_1_n_2\,
      CO(4) => \SRL_SIG_reg[0][7]_i_1_n_3\,
      CO(3) => \SRL_SIG_reg[0][7]_i_1_n_4\,
      CO(2) => \SRL_SIG_reg[0][7]_i_1_n_5\,
      CO(1) => \SRL_SIG_reg[0][7]_i_1_n_6\,
      CO(0) => \SRL_SIG_reg[0][7]_i_1_n_7\,
      DI(7) => \SRL_SIG[0][7]_i_2_n_0\,
      DI(6) => \SRL_SIG[0][7]_i_3_n_0\,
      DI(5) => \SRL_SIG_reg[0][7]_i_4_n_10\,
      DI(4) => \SRL_SIG_reg[0][7]_i_4_n_11\,
      DI(3) => \SRL_SIG_reg[0][7]_i_4_n_12\,
      DI(2) => \SRL_SIG_reg[0][7]_i_4_n_13\,
      DI(1) => \SRL_SIG_reg[0][7]_i_4_n_14\,
      DI(0) => \SRL_SIG_reg[0][7]_i_4_n_15\,
      O(7 downto 0) => data(7 downto 0),
      S(7) => \SRL_SIG[0][7]_i_5_n_0\,
      S(6) => \SRL_SIG[0][7]_i_6_n_0\,
      S(5) => \SRL_SIG[0][7]_i_7_n_0\,
      S(4) => \SRL_SIG[0][7]_i_8_n_0\,
      S(3) => \SRL_SIG[0][7]_i_9_n_0\,
      S(2) => \SRL_SIG[0][7]_i_10_n_0\,
      S(1) => \SRL_SIG[0][7]_i_11_n_0\,
      S(0) => \SRL_SIG[0][7]_i_12_n_0\
    );
\SRL_SIG_reg[0][7]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \SRL_SIG_reg[0][7]_i_4_n_0\,
      CO(6) => \SRL_SIG_reg[0][7]_i_4_n_1\,
      CO(5) => \SRL_SIG_reg[0][7]_i_4_n_2\,
      CO(4) => \SRL_SIG_reg[0][7]_i_4_n_3\,
      CO(3) => \SRL_SIG_reg[0][7]_i_4_n_4\,
      CO(2) => \SRL_SIG_reg[0][7]_i_4_n_5\,
      CO(1) => \SRL_SIG_reg[0][7]_i_4_n_6\,
      CO(0) => \SRL_SIG_reg[0][7]_i_4_n_7\,
      DI(7) => \SRL_SIG[0][7]_i_13_n_0\,
      DI(6) => \SRL_SIG[0][7]_i_14_n_0\,
      DI(5) => \SRL_SIG[0][7]_i_15_n_0\,
      DI(4) => \SRL_SIG[0][7]_i_16_n_0\,
      DI(3) => \SRL_SIG[0][7]_i_17_n_0\,
      DI(2) => \SRL_SIG[0][7]_i_18_n_0\,
      DI(1 downto 0) => \add_ln58_5_reg_676_reg__0\(1 downto 0),
      O(7) => \SRL_SIG_reg[0][7]_i_4_n_8\,
      O(6) => \SRL_SIG_reg[0][7]_i_4_n_9\,
      O(5) => \SRL_SIG_reg[0][7]_i_4_n_10\,
      O(4) => \SRL_SIG_reg[0][7]_i_4_n_11\,
      O(3) => \SRL_SIG_reg[0][7]_i_4_n_12\,
      O(2) => \SRL_SIG_reg[0][7]_i_4_n_13\,
      O(1) => \SRL_SIG_reg[0][7]_i_4_n_14\,
      O(0) => \SRL_SIG_reg[0][7]_i_4_n_15\,
      S(7) => \SRL_SIG[0][7]_i_19_n_0\,
      S(6) => \SRL_SIG[0][7]_i_20_n_0\,
      S(5) => \SRL_SIG[0][7]_i_21_n_0\,
      S(4) => \SRL_SIG[0][7]_i_22_n_0\,
      S(3) => \SRL_SIG[0][7]_i_23_n_0\,
      S(2) => \SRL_SIG[0][7]_i_24_n_0\,
      S(1) => \SRL_SIG[0][7]_i_25_n_0\,
      S(0) => \SRL_SIG[0][7]_i_26_n_0\
    );
\add_ln142_reg_570[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data4(7),
      O => add_ln142_fu_283_p2(1)
    );
\add_ln142_reg_570[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(7),
      I1 => data4(8),
      O => add_ln142_fu_283_p2(2)
    );
\add_ln142_reg_570[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => data4(9),
      I1 => data4(7),
      I2 => data4(8),
      O => add_ln142_fu_283_p2(3)
    );
\add_ln142_reg_570[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => data4(10),
      I1 => data4(9),
      I2 => data4(7),
      I3 => data4(8),
      O => \add_ln142_reg_570[4]_i_1_n_0\
    );
\add_ln142_reg_570[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => data4(11),
      I1 => data4(8),
      I2 => data4(7),
      I3 => data4(9),
      I4 => data4(10),
      O => add_ln142_fu_283_p2(5)
    );
\add_ln142_reg_570_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_output_s0_x_v32_a_reg_2090,
      D => data4(6),
      Q => data0(6),
      R => '0'
    );
\add_ln142_reg_570_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_output_s0_x_v32_a_reg_2090,
      D => add_ln142_fu_283_p2(1),
      Q => data0(7),
      R => '0'
    );
\add_ln142_reg_570_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_output_s0_x_v32_a_reg_2090,
      D => add_ln142_fu_283_p2(2),
      Q => data0(8),
      R => '0'
    );
\add_ln142_reg_570_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_output_s0_x_v32_a_reg_2090,
      D => add_ln142_fu_283_p2(3),
      Q => data0(9),
      R => '0'
    );
\add_ln142_reg_570_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_output_s0_x_v32_a_reg_2090,
      D => \add_ln142_reg_570[4]_i_1_n_0\,
      Q => data0(10),
      R => '0'
    );
\add_ln142_reg_570_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_output_s0_x_v32_a_reg_2090,
      D => add_ln142_fu_283_p2(5),
      Q => data0(11),
      R => '0'
    );
\add_ln187_reg_604[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data4(1),
      O => add_ln187_fu_326_p2(1)
    );
\add_ln187_reg_604[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(2),
      I1 => data4(1),
      O => add_ln187_fu_326_p2(2)
    );
\add_ln187_reg_604[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => data4(1),
      I1 => data4(2),
      I2 => data4(3),
      O => add_ln187_fu_326_p2(3)
    );
\add_ln187_reg_604[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => data4(2),
      I1 => data4(1),
      I2 => data4(3),
      I3 => data4(4),
      O => add_ln187_fu_326_p2(4)
    );
\add_ln187_reg_604_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => data4(0),
      Q => add_ln187_reg_604(0),
      R => '0'
    );
\add_ln187_reg_604_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => add_ln187_fu_326_p2(1),
      Q => add_ln187_reg_604(1),
      R => '0'
    );
\add_ln187_reg_604_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => add_ln187_fu_326_p2(2),
      Q => add_ln187_reg_604(2),
      R => '0'
    );
\add_ln187_reg_604_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => add_ln187_fu_326_p2(3),
      Q => add_ln187_reg_604(3),
      R => '0'
    );
\add_ln187_reg_604_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => add_ln187_fu_326_p2(4),
      Q => add_ln187_reg_604(4),
      R => '0'
    );
\add_ln187_reg_604_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => add_ln187_fu_326_p2(5),
      Q => add_ln187_reg_604(5),
      R => '0'
    );
\add_ln58_2_fu_476_p2__2_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \add_ln58_2_fu_476_p2__2_carry_n_0\,
      CO(6) => \add_ln58_2_fu_476_p2__2_carry_n_1\,
      CO(5) => \add_ln58_2_fu_476_p2__2_carry_n_2\,
      CO(4) => \add_ln58_2_fu_476_p2__2_carry_n_3\,
      CO(3) => \add_ln58_2_fu_476_p2__2_carry_n_4\,
      CO(2) => \add_ln58_2_fu_476_p2__2_carry_n_5\,
      CO(1) => \add_ln58_2_fu_476_p2__2_carry_n_6\,
      CO(0) => \add_ln58_2_fu_476_p2__2_carry_n_7\,
      DI(7) => hw_input_global_wrap_U_n_89,
      DI(6) => hw_input_global_wrap_U_n_90,
      DI(5) => hw_input_global_wrap_U_n_91,
      DI(4) => hw_input_global_wrap_U_n_92,
      DI(3 downto 2) => hw_input_global_wrap_q0(1 downto 0),
      DI(1) => \add_ln58_2_fu_476_p2__2_carry_i_5_n_0\,
      DI(0) => '0',
      O(7 downto 1) => add_ln58_2_fu_476_p2(7 downto 1),
      O(0) => \NLW_add_ln58_2_fu_476_p2__2_carry_O_UNCONNECTED\(0),
      S(7) => hw_input_global_wrap_U_n_4,
      S(6) => hw_input_global_wrap_U_n_5,
      S(5) => hw_input_global_wrap_U_n_6,
      S(4) => hw_input_global_wrap_U_n_7,
      S(3) => hw_input_global_wrap_U_n_8,
      S(2) => hw_input_global_wrap_U_n_9,
      S(1) => shl_ln38_fu_434_p2(3),
      S(0) => '0'
    );
\add_ln58_2_fu_476_p2__2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \add_ln58_2_fu_476_p2__2_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_add_ln58_2_fu_476_p2__2_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \add_ln58_2_fu_476_p2__2_carry__0_n_1\,
      CO(5) => \add_ln58_2_fu_476_p2__2_carry__0_n_2\,
      CO(4) => \add_ln58_2_fu_476_p2__2_carry__0_n_3\,
      CO(3) => \add_ln58_2_fu_476_p2__2_carry__0_n_4\,
      CO(2) => \add_ln58_2_fu_476_p2__2_carry__0_n_5\,
      CO(1) => \add_ln58_2_fu_476_p2__2_carry__0_n_6\,
      CO(0) => \add_ln58_2_fu_476_p2__2_carry__0_n_7\,
      DI(7) => '0',
      DI(6) => hw_input_global_wrap_U_n_93,
      DI(5) => hw_input_global_wrap_U_n_94,
      DI(4) => hw_input_global_wrap_U_n_95,
      DI(3) => hw_input_global_wrap_U_n_96,
      DI(2) => hw_input_global_wrap_U_n_97,
      DI(1) => hw_input_global_wrap_U_n_98,
      DI(0) => hw_input_global_wrap_U_n_99,
      O(7 downto 0) => add_ln58_2_fu_476_p2(15 downto 8),
      S(7) => hw_input_global_wrap_U_n_100,
      S(6) => hw_input_global_wrap_U_n_101,
      S(5) => hw_input_global_wrap_U_n_102,
      S(4) => hw_input_global_wrap_U_n_103,
      S(3) => hw_input_global_wrap_U_n_104,
      S(2) => hw_input_global_wrap_U_n_105,
      S(1) => hw_input_global_wrap_U_n_106,
      S(0) => hw_input_global_wrap_U_n_107
    );
\add_ln58_2_fu_476_p2__2_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shl_ln38_fu_434_p2(3),
      O => \add_ln58_2_fu_476_p2__2_carry_i_5_n_0\
    );
\add_ln58_2_reg_671_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(10),
      Q => add_ln58_2_reg_671(10),
      R => '0'
    );
\add_ln58_2_reg_671_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(11),
      Q => add_ln58_2_reg_671(11),
      R => '0'
    );
\add_ln58_2_reg_671_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(12),
      Q => add_ln58_2_reg_671(12),
      R => '0'
    );
\add_ln58_2_reg_671_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(13),
      Q => add_ln58_2_reg_671(13),
      R => '0'
    );
\add_ln58_2_reg_671_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(14),
      Q => add_ln58_2_reg_671(14),
      R => '0'
    );
\add_ln58_2_reg_671_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(15),
      Q => add_ln58_2_reg_671(15),
      R => '0'
    );
\add_ln58_2_reg_671_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(1),
      Q => add_ln58_2_reg_671(1),
      R => '0'
    );
\add_ln58_2_reg_671_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(2),
      Q => add_ln58_2_reg_671(2),
      R => '0'
    );
\add_ln58_2_reg_671_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(3),
      Q => add_ln58_2_reg_671(3),
      R => '0'
    );
\add_ln58_2_reg_671_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(4),
      Q => add_ln58_2_reg_671(4),
      R => '0'
    );
\add_ln58_2_reg_671_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(5),
      Q => add_ln58_2_reg_671(5),
      R => '0'
    );
\add_ln58_2_reg_671_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(6),
      Q => add_ln58_2_reg_671(6),
      R => '0'
    );
\add_ln58_2_reg_671_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(7),
      Q => add_ln58_2_reg_671(7),
      R => '0'
    );
\add_ln58_2_reg_671_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(8),
      Q => add_ln58_2_reg_671(8),
      R => '0'
    );
\add_ln58_2_reg_671_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_2_fu_476_p2(9),
      Q => add_ln58_2_reg_671(9),
      R => '0'
    );
add_ln58_4_reg_646_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => hw_input_global_wrap_q0(15),
      A(28) => hw_input_global_wrap_q0(15),
      A(27) => hw_input_global_wrap_q0(15),
      A(26) => hw_input_global_wrap_q0(15),
      A(25) => hw_input_global_wrap_q0(15),
      A(24) => hw_input_global_wrap_q0(15),
      A(23) => hw_input_global_wrap_q0(15),
      A(22) => hw_input_global_wrap_q0(15),
      A(21) => hw_input_global_wrap_q0(15),
      A(20) => hw_input_global_wrap_q0(15),
      A(19) => hw_input_global_wrap_q0(15),
      A(18) => hw_input_global_wrap_q0(15),
      A(17) => hw_input_global_wrap_q0(15),
      A(16) => hw_input_global_wrap_q0(15),
      A(15 downto 0) => hw_input_global_wrap_q0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_add_ln58_4_reg_646_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000010011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_add_ln58_4_reg_646_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => \grp_fu_522_p2_carry__0_n_9\,
      C(46) => \grp_fu_522_p2_carry__0_n_9\,
      C(45) => \grp_fu_522_p2_carry__0_n_9\,
      C(44) => \grp_fu_522_p2_carry__0_n_9\,
      C(43) => \grp_fu_522_p2_carry__0_n_9\,
      C(42) => \grp_fu_522_p2_carry__0_n_9\,
      C(41) => \grp_fu_522_p2_carry__0_n_9\,
      C(40) => \grp_fu_522_p2_carry__0_n_9\,
      C(39) => \grp_fu_522_p2_carry__0_n_9\,
      C(38) => \grp_fu_522_p2_carry__0_n_9\,
      C(37) => \grp_fu_522_p2_carry__0_n_9\,
      C(36) => \grp_fu_522_p2_carry__0_n_9\,
      C(35) => \grp_fu_522_p2_carry__0_n_9\,
      C(34) => \grp_fu_522_p2_carry__0_n_9\,
      C(33) => \grp_fu_522_p2_carry__0_n_9\,
      C(32) => \grp_fu_522_p2_carry__0_n_9\,
      C(31) => \grp_fu_522_p2_carry__0_n_9\,
      C(30) => \grp_fu_522_p2_carry__0_n_9\,
      C(29) => \grp_fu_522_p2_carry__0_n_9\,
      C(28) => \grp_fu_522_p2_carry__0_n_9\,
      C(27) => \grp_fu_522_p2_carry__0_n_9\,
      C(26) => \grp_fu_522_p2_carry__0_n_9\,
      C(25) => \grp_fu_522_p2_carry__0_n_9\,
      C(24) => \grp_fu_522_p2_carry__0_n_9\,
      C(23) => \grp_fu_522_p2_carry__0_n_9\,
      C(22) => \grp_fu_522_p2_carry__0_n_9\,
      C(21) => \grp_fu_522_p2_carry__0_n_9\,
      C(20) => \grp_fu_522_p2_carry__0_n_9\,
      C(19) => \grp_fu_522_p2_carry__0_n_9\,
      C(18) => \grp_fu_522_p2_carry__0_n_9\,
      C(17) => \grp_fu_522_p2_carry__0_n_9\,
      C(16) => \grp_fu_522_p2_carry__0_n_9\,
      C(15) => \grp_fu_522_p2_carry__0_n_9\,
      C(14) => \grp_fu_522_p2_carry__0_n_10\,
      C(13) => \grp_fu_522_p2_carry__0_n_11\,
      C(12) => \grp_fu_522_p2_carry__0_n_12\,
      C(11) => \grp_fu_522_p2_carry__0_n_13\,
      C(10) => \grp_fu_522_p2_carry__0_n_14\,
      C(9) => \grp_fu_522_p2_carry__0_n_15\,
      C(8) => grp_fu_522_p2_carry_n_8,
      C(7) => grp_fu_522_p2_carry_n_9,
      C(6) => grp_fu_522_p2_carry_n_10,
      C(5) => grp_fu_522_p2_carry_n_11,
      C(4) => grp_fu_522_p2_carry_n_12,
      C(3) => grp_fu_522_p2_carry_n_13,
      C(2) => grp_fu_522_p2_carry_n_14,
      C(1) => grp_fu_522_p2_carry_n_15,
      C(0) => hw_input_global_wrap_q1(0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_add_ln58_4_reg_646_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_add_ln58_4_reg_646_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state8,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_add_ln58_4_reg_646_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_add_ln58_4_reg_646_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_add_ln58_4_reg_646_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => \add_ln58_4_reg_646_reg__0\(15 downto 0),
      PATTERNBDETECT => NLW_add_ln58_4_reg_646_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_add_ln58_4_reg_646_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_add_ln58_4_reg_646_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_add_ln58_4_reg_646_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_add_ln58_4_reg_646_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
add_ln58_5_reg_676_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => hw_input_global_wrap_q0(15),
      A(28) => hw_input_global_wrap_q0(15),
      A(27) => hw_input_global_wrap_q0(15),
      A(26) => hw_input_global_wrap_q0(15),
      A(25) => hw_input_global_wrap_q0(15),
      A(24) => hw_input_global_wrap_q0(15),
      A(23) => hw_input_global_wrap_q0(15),
      A(22) => hw_input_global_wrap_q0(15),
      A(21) => hw_input_global_wrap_q0(15),
      A(20) => hw_input_global_wrap_q0(15),
      A(19) => hw_input_global_wrap_q0(15),
      A(18) => hw_input_global_wrap_q0(15),
      A(17) => hw_input_global_wrap_q0(15),
      A(16) => hw_input_global_wrap_q0(15),
      A(15 downto 0) => hw_input_global_wrap_q0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_add_ln58_5_reg_676_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000010101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_add_ln58_5_reg_676_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => C(15),
      C(46) => C(15),
      C(45) => C(15),
      C(44) => C(15),
      C(43) => C(15),
      C(42) => C(15),
      C(41) => C(15),
      C(40) => C(15),
      C(39) => C(15),
      C(38) => C(15),
      C(37) => C(15),
      C(36) => C(15),
      C(35) => C(15),
      C(34) => C(15),
      C(33) => C(15),
      C(32) => C(15),
      C(31) => C(15),
      C(30) => C(15),
      C(29) => C(15),
      C(28) => C(15),
      C(27) => C(15),
      C(26) => C(15),
      C(25) => C(15),
      C(24) => C(15),
      C(23) => C(15),
      C(22) => C(15),
      C(21) => C(15),
      C(20) => C(15),
      C(19) => C(15),
      C(18) => C(15),
      C(17) => C(15),
      C(16) => C(15),
      C(15 downto 2) => C(15 downto 2),
      C(1) => hw_input_global_wrap_U_n_26,
      C(0) => hw_input_global_wrap_q1(0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_add_ln58_5_reg_676_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_add_ln58_5_reg_676_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state10,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_add_ln58_5_reg_676_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_add_ln58_5_reg_676_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_add_ln58_5_reg_676_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => \add_ln58_5_reg_676_reg__0\(15 downto 0),
      PATTERNBDETECT => NLW_add_ln58_5_reg_676_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_add_ln58_5_reg_676_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_add_ln58_5_reg_676_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_add_ln58_5_reg_676_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_add_ln58_5_reg_676_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
add_ln58_fu_465_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => add_ln58_fu_465_p2_carry_n_0,
      CO(6) => add_ln58_fu_465_p2_carry_n_1,
      CO(5) => add_ln58_fu_465_p2_carry_n_2,
      CO(4) => add_ln58_fu_465_p2_carry_n_3,
      CO(3) => add_ln58_fu_465_p2_carry_n_4,
      CO(2) => add_ln58_fu_465_p2_carry_n_5,
      CO(1) => add_ln58_fu_465_p2_carry_n_6,
      CO(0) => add_ln58_fu_465_p2_carry_n_7,
      DI(7 downto 0) => hw_input_global_wrap_q0(7 downto 0),
      O(7 downto 0) => add_ln58_fu_465_p2(7 downto 0),
      S(7) => hw_input_global_wrap_U_n_108,
      S(6) => hw_input_global_wrap_U_n_109,
      S(5) => hw_input_global_wrap_U_n_110,
      S(4) => hw_input_global_wrap_U_n_111,
      S(3) => hw_input_global_wrap_U_n_112,
      S(2) => hw_input_global_wrap_U_n_113,
      S(1) => hw_input_global_wrap_U_n_114,
      S(0) => hw_input_global_wrap_U_n_115
    );
\add_ln58_fu_465_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => add_ln58_fu_465_p2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_add_ln58_fu_465_p2_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \add_ln58_fu_465_p2_carry__0_n_1\,
      CO(5) => \add_ln58_fu_465_p2_carry__0_n_2\,
      CO(4) => \add_ln58_fu_465_p2_carry__0_n_3\,
      CO(3) => \add_ln58_fu_465_p2_carry__0_n_4\,
      CO(2) => \add_ln58_fu_465_p2_carry__0_n_5\,
      CO(1) => \add_ln58_fu_465_p2_carry__0_n_6\,
      CO(0) => \add_ln58_fu_465_p2_carry__0_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => hw_input_global_wrap_q0(14 downto 8),
      O(7 downto 0) => add_ln58_fu_465_p2(15 downto 8),
      S(7) => hw_input_global_wrap_U_n_81,
      S(6) => hw_input_global_wrap_U_n_82,
      S(5) => hw_input_global_wrap_U_n_83,
      S(4) => hw_input_global_wrap_U_n_84,
      S(3) => hw_input_global_wrap_U_n_85,
      S(2) => hw_input_global_wrap_U_n_86,
      S(1) => hw_input_global_wrap_U_n_87,
      S(0) => hw_input_global_wrap_U_n_88
    );
\add_ln58_reg_666_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(0),
      Q => add_ln58_reg_666(0),
      R => '0'
    );
\add_ln58_reg_666_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(10),
      Q => add_ln58_reg_666(10),
      R => '0'
    );
\add_ln58_reg_666_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(11),
      Q => add_ln58_reg_666(11),
      R => '0'
    );
\add_ln58_reg_666_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(12),
      Q => add_ln58_reg_666(12),
      R => '0'
    );
\add_ln58_reg_666_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(13),
      Q => add_ln58_reg_666(13),
      R => '0'
    );
\add_ln58_reg_666_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(14),
      Q => add_ln58_reg_666(14),
      R => '0'
    );
\add_ln58_reg_666_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(15),
      Q => add_ln58_reg_666(15),
      R => '0'
    );
\add_ln58_reg_666_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(1),
      Q => add_ln58_reg_666(1),
      R => '0'
    );
\add_ln58_reg_666_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(2),
      Q => add_ln58_reg_666(2),
      R => '0'
    );
\add_ln58_reg_666_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(3),
      Q => add_ln58_reg_666(3),
      R => '0'
    );
\add_ln58_reg_666_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(4),
      Q => add_ln58_reg_666(4),
      R => '0'
    );
\add_ln58_reg_666_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(5),
      Q => add_ln58_reg_666(5),
      R => '0'
    );
\add_ln58_reg_666_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(6),
      Q => add_ln58_reg_666(6),
      R => '0'
    );
\add_ln58_reg_666_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(7),
      Q => add_ln58_reg_666(7),
      R => '0'
    );
\add_ln58_reg_666_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(8),
      Q => add_ln58_reg_666(8),
      R => '0'
    );
\add_ln58_reg_666_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => add_ln58_fu_465_p2(9),
      Q => add_ln58_reg_666(9),
      R => '0'
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFFFFFAAAAAAAA"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[3]_0\,
      I1 => start_for_read_1_U0_full_n,
      I2 => start_for_read_U0_full_n,
      I3 => \^start_once_reg_reg_0\,
      I4 => unoptimized_conv_3_3_U0_ap_start,
      I5 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => data4(6),
      I2 => data4(11),
      I3 => data4(10),
      I4 => \hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0\,
      O => \^ap_cs_fsm_reg[3]_0\
    );
\ap_CS_fsm[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => arg_out_data_values_s_full_n,
      I2 => arg_out_tlast_values_full_n,
      I3 => \^q\(0),
      O => ap_NS_fsm(10)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAAAAAAAAA"
    )
        port map (
      I0 => hw_input_global_wrap_U_n_0,
      I1 => start_for_read_1_U0_full_n,
      I2 => start_for_read_U0_full_n,
      I3 => \^start_once_reg_reg_0\,
      I4 => unoptimized_conv_3_3_U0_ap_start,
      I5 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA8AFFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \zext_ln392_reg_546[11]_i_2_n_0\,
      I2 => tmp_2_fu_233_p3(12),
      I3 => tmp_2_fu_233_p3(10),
      I4 => tmp_2_fu_233_p3(8),
      I5 => \ap_CS_fsm[2]_i_2_n_0\,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => hw_input_global_wrap_U_n_2,
      I1 => hw_input_global_wrap_2_reg_186_reg(4),
      I2 => hw_input_global_wrap_2_reg_186_reg(6),
      I3 => hw_input_global_wrap_2_reg_186_reg(5),
      I4 => ap_CS_fsm_state3,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \zext_ln392_reg_546[11]_i_2_n_0\,
      I2 => tmp_2_fu_233_p3(12),
      I3 => tmp_2_fu_233_p3(10),
      I4 => tmp_2_fu_233_p3(8),
      I5 => ap_NS_fsm1,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => hw_output_s0_x_v32_a_reg_2090,
      I1 => arg_out_data_values_s_full_n,
      I2 => arg_out_tlast_values_full_n,
      I3 => \^q\(0),
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => ap_NS_fsm1,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(10),
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state6,
      Q => ap_CS_fsm_state7,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state7,
      Q => ap_CS_fsm_state8,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state8,
      Q => ap_CS_fsm_state9,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state9,
      Q => ap_CS_fsm_state10,
      R => ap_rst_n_inv
    );
\c3_1_reg_562[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data4(6),
      O => c3_1_fu_277_p2(0)
    );
\c3_1_reg_562[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(6),
      I1 => data4(7),
      O => c3_1_fu_277_p2(1)
    );
\c3_1_reg_562[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => data4(8),
      I1 => data4(7),
      I2 => data4(6),
      O => c3_1_fu_277_p2(2)
    );
\c3_1_reg_562[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => data4(9),
      I1 => data4(7),
      I2 => data4(8),
      I3 => data4(6),
      O => c3_1_fu_277_p2(3)
    );
\c3_1_reg_562[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => data4(10),
      I1 => data4(8),
      I2 => data4(7),
      I3 => data4(9),
      I4 => data4(6),
      O => c3_1_fu_277_p2(4)
    );
\c3_1_reg_562[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => data4(11),
      I1 => data4(10),
      I2 => data4(6),
      I3 => data4(9),
      I4 => data4(7),
      I5 => data4(8),
      O => c3_1_fu_277_p2(5)
    );
\c3_1_reg_562_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => c3_1_fu_277_p2(0),
      Q => c3_1_reg_562(0),
      R => '0'
    );
\c3_1_reg_562_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => c3_1_fu_277_p2(1),
      Q => c3_1_reg_562(1),
      R => '0'
    );
\c3_1_reg_562_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => c3_1_fu_277_p2(2),
      Q => c3_1_reg_562(2),
      R => '0'
    );
\c3_1_reg_562_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => c3_1_fu_277_p2(3),
      Q => c3_1_reg_562(3),
      R => '0'
    );
\c3_1_reg_562_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => c3_1_fu_277_p2(4),
      Q => c3_1_reg_562(4),
      R => '0'
    );
\c3_1_reg_562_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => c3_1_fu_277_p2(5),
      Q => c3_1_reg_562(5),
      R => '0'
    );
\c3_reg_541[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_2_fu_233_p3(6),
      O => c3_fu_227_p2(0)
    );
\c3_reg_541[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_2_fu_233_p3(6),
      I1 => tmp_2_fu_233_p3(7),
      O => c3_fu_227_p2(1)
    );
\c3_reg_541[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => tmp_2_fu_233_p3(8),
      I1 => tmp_2_fu_233_p3(6),
      I2 => tmp_2_fu_233_p3(7),
      O => c3_fu_227_p2(2)
    );
\c3_reg_541[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tmp_2_fu_233_p3(7),
      I1 => tmp_2_fu_233_p3(6),
      I2 => tmp_2_fu_233_p3(8),
      I3 => tmp_2_fu_233_p3(9),
      O => c3_fu_227_p2(3)
    );
\c3_reg_541[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => tmp_2_fu_233_p3(10),
      I1 => tmp_2_fu_233_p3(7),
      I2 => tmp_2_fu_233_p3(6),
      I3 => tmp_2_fu_233_p3(8),
      I4 => tmp_2_fu_233_p3(9),
      O => c3_fu_227_p2(4)
    );
\c3_reg_541[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => tmp_2_fu_233_p3(11),
      I1 => tmp_2_fu_233_p3(9),
      I2 => tmp_2_fu_233_p3(8),
      I3 => tmp_2_fu_233_p3(6),
      I4 => tmp_2_fu_233_p3(7),
      I5 => tmp_2_fu_233_p3(10),
      O => c3_fu_227_p2(5)
    );
\c3_reg_541[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => tmp_2_fu_233_p3(12),
      I1 => tmp_2_fu_233_p3(10),
      I2 => \c3_reg_541[6]_i_2_n_0\,
      I3 => tmp_2_fu_233_p3(11),
      O => c3_fu_227_p2(6)
    );
\c3_reg_541[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tmp_2_fu_233_p3(9),
      I1 => tmp_2_fu_233_p3(8),
      I2 => tmp_2_fu_233_p3(6),
      I3 => tmp_2_fu_233_p3(7),
      O => \c3_reg_541[6]_i_2_n_0\
    );
\c3_reg_541_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => c3_fu_227_p2(0),
      Q => c3_reg_541(0),
      R => '0'
    );
\c3_reg_541_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => c3_fu_227_p2(1),
      Q => c3_reg_541(1),
      R => '0'
    );
\c3_reg_541_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => c3_fu_227_p2(2),
      Q => c3_reg_541(2),
      R => '0'
    );
\c3_reg_541_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => c3_fu_227_p2(3),
      Q => c3_reg_541(3),
      R => '0'
    );
\c3_reg_541_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => c3_fu_227_p2(4),
      Q => c3_reg_541(4),
      R => '0'
    );
\c3_reg_541_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => c3_fu_227_p2(5),
      Q => c3_reg_541(5),
      R => '0'
    );
\c3_reg_541_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => c3_fu_227_p2(6),
      Q => c3_reg_541(6),
      R => '0'
    );
\c5_1_reg_580[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data4(0),
      O => c5_1_fu_295_p2(0)
    );
\c5_1_reg_580[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(0),
      I1 => data4(1),
      O => c5_1_fu_295_p2(1)
    );
\c5_1_reg_580[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => data4(2),
      I1 => data4(1),
      I2 => data4(0),
      O => c5_1_fu_295_p2(2)
    );
\c5_1_reg_580[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => data4(3),
      I1 => data4(0),
      I2 => data4(1),
      I3 => data4(2),
      O => c5_1_fu_295_p2(3)
    );
\c5_1_reg_580[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => data4(4),
      I1 => data4(3),
      I2 => data4(2),
      I3 => data4(1),
      I4 => data4(0),
      O => c5_1_fu_295_p2(4)
    );
\c5_1_reg_580[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => data4(5),
      I1 => data4(4),
      I2 => data4(0),
      I3 => data4(1),
      I4 => data4(2),
      I5 => data4(3),
      O => c5_1_fu_295_p2(5)
    );
\c5_1_reg_580_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => c5_1_fu_295_p2(0),
      Q => data0(0),
      R => '0'
    );
\c5_1_reg_580_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => c5_1_fu_295_p2(1),
      Q => data0(1),
      R => '0'
    );
\c5_1_reg_580_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => c5_1_fu_295_p2(2),
      Q => data0(2),
      R => '0'
    );
\c5_1_reg_580_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => c5_1_fu_295_p2(3),
      Q => data0(3),
      R => '0'
    );
\c5_1_reg_580_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => c5_1_fu_295_p2(4),
      Q => data0(4),
      R => '0'
    );
\c5_1_reg_580_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => c5_1_fu_295_p2(5),
      Q => data0(5),
      R => '0'
    );
\empty_11_reg_631_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(0),
      Q => empty_11_reg_631(0),
      R => '0'
    );
\empty_11_reg_631_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(10),
      Q => empty_11_reg_631(10),
      R => '0'
    );
\empty_11_reg_631_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(11),
      Q => empty_11_reg_631(11),
      R => '0'
    );
\empty_11_reg_631_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(12),
      Q => empty_11_reg_631(12),
      R => '0'
    );
\empty_11_reg_631_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(13),
      Q => empty_11_reg_631(13),
      R => '0'
    );
\empty_11_reg_631_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(1),
      Q => empty_11_reg_631(1),
      R => '0'
    );
\empty_11_reg_631_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(2),
      Q => empty_11_reg_631(2),
      R => '0'
    );
\empty_11_reg_631_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(3),
      Q => empty_11_reg_631(3),
      R => '0'
    );
\empty_11_reg_631_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(4),
      Q => empty_11_reg_631(4),
      R => '0'
    );
\empty_11_reg_631_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(5),
      Q => empty_11_reg_631(5),
      R => '0'
    );
\empty_11_reg_631_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(6),
      Q => empty_11_reg_631(6),
      R => '0'
    );
\empty_11_reg_631_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(7),
      Q => empty_11_reg_631(7),
      R => '0'
    );
\empty_11_reg_631_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(8),
      Q => empty_11_reg_631(8),
      R => '0'
    );
\empty_11_reg_631_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q0(9),
      Q => empty_11_reg_631(9),
      R => '0'
    );
grp_fu_522_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => grp_fu_522_p2_carry_i_1_n_0,
      CI_TOP => '0',
      CO(7) => grp_fu_522_p2_carry_n_0,
      CO(6) => grp_fu_522_p2_carry_n_1,
      CO(5) => grp_fu_522_p2_carry_n_2,
      CO(4) => grp_fu_522_p2_carry_n_3,
      CO(3) => grp_fu_522_p2_carry_n_4,
      CO(2) => grp_fu_522_p2_carry_n_5,
      CO(1) => grp_fu_522_p2_carry_n_6,
      CO(0) => grp_fu_522_p2_carry_n_7,
      DI(7 downto 2) => hw_input_global_wrap_q1(5 downto 0),
      DI(1 downto 0) => B"00",
      O(7) => grp_fu_522_p2_carry_n_8,
      O(6) => grp_fu_522_p2_carry_n_9,
      O(5) => grp_fu_522_p2_carry_n_10,
      O(4) => grp_fu_522_p2_carry_n_11,
      O(3) => grp_fu_522_p2_carry_n_12,
      O(2) => grp_fu_522_p2_carry_n_13,
      O(1) => grp_fu_522_p2_carry_n_14,
      O(0) => grp_fu_522_p2_carry_n_15,
      S(7) => hw_input_global_wrap_U_n_42,
      S(6) => hw_input_global_wrap_U_n_43,
      S(5) => hw_input_global_wrap_U_n_44,
      S(4) => hw_input_global_wrap_U_n_45,
      S(3) => hw_input_global_wrap_U_n_46,
      S(2) => hw_input_global_wrap_U_n_47,
      S(1) => grp_fu_522_p2_carry_i_8_n_0,
      S(0) => grp_fu_522_p2_carry_i_9_n_0
    );
\grp_fu_522_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => grp_fu_522_p2_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_grp_fu_522_p2_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \grp_fu_522_p2_carry__0_n_2\,
      CO(4) => \grp_fu_522_p2_carry__0_n_3\,
      CO(3) => \grp_fu_522_p2_carry__0_n_4\,
      CO(2) => \grp_fu_522_p2_carry__0_n_5\,
      CO(1) => \grp_fu_522_p2_carry__0_n_6\,
      CO(0) => \grp_fu_522_p2_carry__0_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => hw_input_global_wrap_q1(11 downto 6),
      O(7) => \NLW_grp_fu_522_p2_carry__0_O_UNCONNECTED\(7),
      O(6) => \grp_fu_522_p2_carry__0_n_9\,
      O(5) => \grp_fu_522_p2_carry__0_n_10\,
      O(4) => \grp_fu_522_p2_carry__0_n_11\,
      O(3) => \grp_fu_522_p2_carry__0_n_12\,
      O(2) => \grp_fu_522_p2_carry__0_n_13\,
      O(1) => \grp_fu_522_p2_carry__0_n_14\,
      O(0) => \grp_fu_522_p2_carry__0_n_15\,
      S(7) => '0',
      S(6) => hw_input_global_wrap_U_n_60,
      S(5) => hw_input_global_wrap_U_n_61,
      S(4) => hw_input_global_wrap_U_n_62,
      S(3) => hw_input_global_wrap_U_n_63,
      S(2) => hw_input_global_wrap_U_n_64,
      S(1) => hw_input_global_wrap_U_n_65,
      S(0) => hw_input_global_wrap_U_n_66
    );
grp_fu_522_p2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_input_global_wrap_q1(0),
      O => grp_fu_522_p2_carry_i_1_n_0
    );
grp_fu_522_p2_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_input_global_wrap_q1(2),
      O => grp_fu_522_p2_carry_i_8_n_0
    );
grp_fu_522_p2_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_input_global_wrap_q1(1),
      O => grp_fu_522_p2_carry_i_9_n_0
    );
grp_fu_530_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => grp_fu_522_p2_carry_i_1_n_0,
      CI_TOP => '0',
      CO(7) => grp_fu_530_p2_carry_n_0,
      CO(6) => grp_fu_530_p2_carry_n_1,
      CO(5) => grp_fu_530_p2_carry_n_2,
      CO(4) => grp_fu_530_p2_carry_n_3,
      CO(3) => grp_fu_530_p2_carry_n_4,
      CO(2) => grp_fu_530_p2_carry_n_5,
      CO(1) => grp_fu_530_p2_carry_n_6,
      CO(0) => grp_fu_530_p2_carry_n_7,
      DI(7 downto 3) => hw_input_global_wrap_q1(4 downto 0),
      DI(2 downto 0) => B"000",
      O(7 downto 1) => C(8 downto 2),
      O(0) => NLW_grp_fu_530_p2_carry_O_UNCONNECTED(0),
      S(7) => hw_input_global_wrap_U_n_48,
      S(6) => hw_input_global_wrap_U_n_49,
      S(5) => hw_input_global_wrap_U_n_50,
      S(4) => hw_input_global_wrap_U_n_51,
      S(3) => hw_input_global_wrap_U_n_52,
      S(2) => grp_fu_530_p2_carry_i_6_n_0,
      S(1) => grp_fu_530_p2_carry_i_7_n_0,
      S(0) => grp_fu_530_p2_carry_i_8_n_0
    );
\grp_fu_530_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => grp_fu_530_p2_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_grp_fu_530_p2_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \grp_fu_530_p2_carry__0_n_2\,
      CO(4) => \grp_fu_530_p2_carry__0_n_3\,
      CO(3) => \grp_fu_530_p2_carry__0_n_4\,
      CO(2) => \grp_fu_530_p2_carry__0_n_5\,
      CO(1) => \grp_fu_530_p2_carry__0_n_6\,
      CO(0) => \grp_fu_530_p2_carry__0_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => hw_input_global_wrap_q1(10 downto 5),
      O(7) => \NLW_grp_fu_530_p2_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => C(15 downto 9),
      S(7) => '0',
      S(6) => hw_input_global_wrap_U_n_53,
      S(5) => hw_input_global_wrap_U_n_54,
      S(4) => hw_input_global_wrap_U_n_55,
      S(3) => hw_input_global_wrap_U_n_56,
      S(2) => hw_input_global_wrap_U_n_57,
      S(1) => hw_input_global_wrap_U_n_58,
      S(0) => hw_input_global_wrap_U_n_59
    );
grp_fu_530_p2_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_input_global_wrap_q1(3),
      O => grp_fu_530_p2_carry_i_6_n_0
    );
grp_fu_530_p2_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_input_global_wrap_q1(2),
      O => grp_fu_530_p2_carry_i_7_n_0
    );
grp_fu_530_p2_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_input_global_wrap_q1(1),
      O => grp_fu_530_p2_carry_i_8_n_0
    );
\hw_input_global_wrap_15_reg_625_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(0),
      Q => shl_ln38_fu_434_p2(3),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(10),
      Q => shl_ln38_fu_434_p2(13),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(11),
      Q => shl_ln38_fu_434_p2(14),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(12),
      Q => shl_ln38_fu_434_p2(15),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(13),
      Q => \hw_input_global_wrap_15_reg_625_reg_n_0_[13]\,
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(14),
      Q => \hw_input_global_wrap_15_reg_625_reg_n_0_[14]\,
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(1),
      Q => shl_ln38_fu_434_p2(4),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(2),
      Q => shl_ln38_fu_434_p2(5),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(3),
      Q => shl_ln38_fu_434_p2(6),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(4),
      Q => shl_ln38_fu_434_p2(7),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(5),
      Q => shl_ln38_fu_434_p2(8),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(6),
      Q => shl_ln38_fu_434_p2(9),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(7),
      Q => shl_ln38_fu_434_p2(10),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(8),
      Q => shl_ln38_fu_434_p2(11),
      R => '0'
    );
\hw_input_global_wrap_15_reg_625_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => hw_input_global_wrap_q1(9),
      Q => shl_ln38_fu_434_p2(12),
      R => '0'
    );
\hw_input_global_wrap_1_reg_175[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8000000"
    )
        port map (
      I0 => start_for_read_1_U0_full_n,
      I1 => start_for_read_U0_full_n,
      I2 => \^start_once_reg_reg_0\,
      I3 => unoptimized_conv_3_3_U0_ap_start,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => hw_input_global_wrap_U_n_0,
      O => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_1_reg_175_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_U_n_0,
      D => c3_reg_541(0),
      Q => tmp_2_fu_233_p3(6),
      R => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_1_reg_175_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_U_n_0,
      D => c3_reg_541(1),
      Q => tmp_2_fu_233_p3(7),
      R => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_1_reg_175_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_U_n_0,
      D => c3_reg_541(2),
      Q => tmp_2_fu_233_p3(8),
      R => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_1_reg_175_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_U_n_0,
      D => c3_reg_541(3),
      Q => tmp_2_fu_233_p3(9),
      R => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_1_reg_175_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_U_n_0,
      D => c3_reg_541(4),
      Q => tmp_2_fu_233_p3(10),
      R => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_1_reg_175_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_U_n_0,
      D => c3_reg_541(5),
      Q => tmp_2_fu_233_p3(11),
      R => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_1_reg_175_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_U_n_0,
      D => c3_reg_541(6),
      Q => tmp_2_fu_233_p3(12),
      R => hw_input_global_wrap_1_reg_175
    );
\hw_input_global_wrap_2_reg_186[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(0),
      O => c5_fu_251_p2(0)
    );
\hw_input_global_wrap_2_reg_186[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(0),
      I1 => hw_input_global_wrap_2_reg_186_reg(1),
      O => c5_fu_251_p2(1)
    );
\hw_input_global_wrap_2_reg_186[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(2),
      I1 => hw_input_global_wrap_2_reg_186_reg(0),
      I2 => hw_input_global_wrap_2_reg_186_reg(1),
      O => c5_fu_251_p2(2)
    );
\hw_input_global_wrap_2_reg_186[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(3),
      I1 => hw_input_global_wrap_2_reg_186_reg(1),
      I2 => hw_input_global_wrap_2_reg_186_reg(0),
      I3 => hw_input_global_wrap_2_reg_186_reg(2),
      O => c5_fu_251_p2(3)
    );
\hw_input_global_wrap_2_reg_186[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(4),
      I1 => hw_input_global_wrap_2_reg_186_reg(3),
      I2 => hw_input_global_wrap_2_reg_186_reg(1),
      I3 => hw_input_global_wrap_2_reg_186_reg(0),
      I4 => hw_input_global_wrap_2_reg_186_reg(2),
      O => \hw_input_global_wrap_2_reg_186[4]_i_1_n_0\
    );
\hw_input_global_wrap_2_reg_186[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(5),
      I1 => hw_input_global_wrap_2_reg_186_reg(2),
      I2 => hw_input_global_wrap_2_reg_186_reg(0),
      I3 => hw_input_global_wrap_2_reg_186_reg(1),
      I4 => hw_input_global_wrap_2_reg_186_reg(3),
      I5 => hw_input_global_wrap_2_reg_186_reg(4),
      O => c5_fu_251_p2(5)
    );
\hw_input_global_wrap_2_reg_186[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(6),
      I1 => hw_input_global_wrap_2_reg_186_reg(4),
      I2 => \hw_input_global_wrap_2_reg_186[6]_i_2_n_0\,
      I3 => hw_input_global_wrap_2_reg_186_reg(5),
      O => c5_fu_251_p2(6)
    );
\hw_input_global_wrap_2_reg_186[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => hw_input_global_wrap_2_reg_186_reg(2),
      I1 => hw_input_global_wrap_2_reg_186_reg(0),
      I2 => hw_input_global_wrap_2_reg_186_reg(1),
      I3 => hw_input_global_wrap_2_reg_186_reg(3),
      O => \hw_input_global_wrap_2_reg_186[6]_i_2_n_0\
    );
\hw_input_global_wrap_2_reg_186_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => c5_fu_251_p2(0),
      Q => hw_input_global_wrap_2_reg_186_reg(0),
      R => hw_input_global_wrap_2_reg_1860
    );
\hw_input_global_wrap_2_reg_186_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => c5_fu_251_p2(1),
      Q => hw_input_global_wrap_2_reg_186_reg(1),
      R => hw_input_global_wrap_2_reg_1860
    );
\hw_input_global_wrap_2_reg_186_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => c5_fu_251_p2(2),
      Q => hw_input_global_wrap_2_reg_186_reg(2),
      R => hw_input_global_wrap_2_reg_1860
    );
\hw_input_global_wrap_2_reg_186_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => c5_fu_251_p2(3),
      Q => hw_input_global_wrap_2_reg_186_reg(3),
      R => hw_input_global_wrap_2_reg_1860
    );
\hw_input_global_wrap_2_reg_186_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \hw_input_global_wrap_2_reg_186[4]_i_1_n_0\,
      Q => hw_input_global_wrap_2_reg_186_reg(4),
      R => hw_input_global_wrap_2_reg_1860
    );
\hw_input_global_wrap_2_reg_186_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => c5_fu_251_p2(5),
      Q => hw_input_global_wrap_2_reg_186_reg(5),
      R => hw_input_global_wrap_2_reg_1860
    );
\hw_input_global_wrap_2_reg_186_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => c5_fu_251_p2(6),
      Q => hw_input_global_wrap_2_reg_186_reg(6),
      R => hw_input_global_wrap_2_reg_1860
    );
\hw_input_global_wrap_7_reg_593_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(0),
      Q => shl_ln34_fu_429_p2(4),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(10),
      Q => shl_ln34_fu_429_p2(14),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(11),
      Q => shl_ln34_fu_429_p2(15),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(12),
      Q => \hw_input_global_wrap_7_reg_593_reg_n_0_[12]\,
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(13),
      Q => \hw_input_global_wrap_7_reg_593_reg_n_0_[13]\,
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(14),
      Q => \hw_input_global_wrap_7_reg_593_reg_n_0_[14]\,
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(15),
      Q => \hw_input_global_wrap_7_reg_593_reg_n_0_[15]\,
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(1),
      Q => shl_ln34_fu_429_p2(5),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(2),
      Q => shl_ln34_fu_429_p2(6),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(3),
      Q => shl_ln34_fu_429_p2(7),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(4),
      Q => shl_ln34_fu_429_p2(8),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(5),
      Q => shl_ln34_fu_429_p2(9),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(6),
      Q => shl_ln34_fu_429_p2(10),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(7),
      Q => shl_ln34_fu_429_p2(11),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(8),
      Q => shl_ln34_fu_429_p2(12),
      R => '0'
    );
\hw_input_global_wrap_7_reg_593_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => hw_input_global_wrap_q0(9),
      Q => shl_ln34_fu_429_p2(13),
      R => '0'
    );
hw_input_global_wrap_U: entity work.conv_3_3_conv_3_3_0_0_unoptimized_conv_bkb
     port map (
      C(1) => hw_input_global_wrap_U_n_26,
      C(0) => hw_input_global_wrap_q1(0),
      D(0) => add_ln187_fu_326_p2(5),
      DI(3) => hw_input_global_wrap_U_n_89,
      DI(2) => hw_input_global_wrap_U_n_90,
      DI(1) => hw_input_global_wrap_U_n_91,
      DI(0) => hw_input_global_wrap_U_n_92,
      Q(5 downto 0) => c3_1_reg_562(5 downto 0),
      S(5) => hw_input_global_wrap_U_n_4,
      S(4) => hw_input_global_wrap_U_n_5,
      S(3) => hw_input_global_wrap_U_n_6,
      S(2) => hw_input_global_wrap_U_n_7,
      S(1) => hw_input_global_wrap_U_n_8,
      S(0) => hw_input_global_wrap_U_n_9,
      \add_ln58_2_fu_476_p2__2_carry__0_i_8\(14) => \hw_input_global_wrap_15_reg_625_reg_n_0_[14]\,
      \add_ln58_2_fu_476_p2__2_carry__0_i_8\(13) => \hw_input_global_wrap_15_reg_625_reg_n_0_[13]\,
      \add_ln58_2_fu_476_p2__2_carry__0_i_8\(12 downto 0) => shl_ln38_fu_434_p2(15 downto 3),
      \add_ln58_reg_666_reg[15]\(15) => \hw_input_global_wrap_7_reg_593_reg_n_0_[15]\,
      \add_ln58_reg_666_reg[15]\(14) => \hw_input_global_wrap_7_reg_593_reg_n_0_[14]\,
      \add_ln58_reg_666_reg[15]\(13) => \hw_input_global_wrap_7_reg_593_reg_n_0_[13]\,
      \add_ln58_reg_666_reg[15]\(12) => \hw_input_global_wrap_7_reg_593_reg_n_0_[12]\,
      \add_ln58_reg_666_reg[15]\(11 downto 0) => shl_ln34_fu_429_p2(15 downto 4),
      ap_clk => ap_clk,
      arg_in0_hwstream_val_empty_n => arg_in0_hwstream_val_empty_n,
      d0(15 downto 0) => d0(15 downto 0),
      data0(11 downto 0) => data0(11 downto 0),
      data4(11 downto 0) => data4(11 downto 0),
      \hw_input_global_wrap_2_reg_186_reg[1]\ => hw_input_global_wrap_U_n_2,
      \hw_input_global_wrap_2_reg_186_reg[4]\ => hw_input_global_wrap_U_n_0,
      \hw_input_global_wrap_7_reg_593_reg[10]\(7) => hw_input_global_wrap_U_n_100,
      \hw_input_global_wrap_7_reg_593_reg[10]\(6) => hw_input_global_wrap_U_n_101,
      \hw_input_global_wrap_7_reg_593_reg[10]\(5) => hw_input_global_wrap_U_n_102,
      \hw_input_global_wrap_7_reg_593_reg[10]\(4) => hw_input_global_wrap_U_n_103,
      \hw_input_global_wrap_7_reg_593_reg[10]\(3) => hw_input_global_wrap_U_n_104,
      \hw_input_global_wrap_7_reg_593_reg[10]\(2) => hw_input_global_wrap_U_n_105,
      \hw_input_global_wrap_7_reg_593_reg[10]\(1) => hw_input_global_wrap_U_n_106,
      \hw_input_global_wrap_7_reg_593_reg[10]\(0) => hw_input_global_wrap_U_n_107,
      \hw_input_global_wrap_7_reg_593_reg[9]\(6) => hw_input_global_wrap_U_n_93,
      \hw_input_global_wrap_7_reg_593_reg[9]\(5) => hw_input_global_wrap_U_n_94,
      \hw_input_global_wrap_7_reg_593_reg[9]\(4) => hw_input_global_wrap_U_n_95,
      \hw_input_global_wrap_7_reg_593_reg[9]\(3) => hw_input_global_wrap_U_n_96,
      \hw_input_global_wrap_7_reg_593_reg[9]\(2) => hw_input_global_wrap_U_n_97,
      \hw_input_global_wrap_7_reg_593_reg[9]\(1) => hw_input_global_wrap_U_n_98,
      \hw_input_global_wrap_7_reg_593_reg[9]\(0) => hw_input_global_wrap_U_n_99,
      q0(15 downto 0) => hw_input_global_wrap_q0(15 downto 0),
      q1(13 downto 0) => hw_input_global_wrap_q1(14 downto 1),
      ram_reg_bram_0(5) => hw_input_global_wrap_U_n_42,
      ram_reg_bram_0(4) => hw_input_global_wrap_U_n_43,
      ram_reg_bram_0(3) => hw_input_global_wrap_U_n_44,
      ram_reg_bram_0(2) => hw_input_global_wrap_U_n_45,
      ram_reg_bram_0(1) => hw_input_global_wrap_U_n_46,
      ram_reg_bram_0(0) => hw_input_global_wrap_U_n_47,
      ram_reg_bram_0_0(4) => hw_input_global_wrap_U_n_48,
      ram_reg_bram_0_0(3) => hw_input_global_wrap_U_n_49,
      ram_reg_bram_0_0(2) => hw_input_global_wrap_U_n_50,
      ram_reg_bram_0_0(1) => hw_input_global_wrap_U_n_51,
      ram_reg_bram_0_0(0) => hw_input_global_wrap_U_n_52,
      ram_reg_bram_0_1(7) => hw_input_global_wrap_U_n_67,
      ram_reg_bram_0_1(6) => hw_input_global_wrap_U_n_68,
      ram_reg_bram_0_1(5) => hw_input_global_wrap_U_n_69,
      ram_reg_bram_0_1(4) => hw_input_global_wrap_U_n_70,
      ram_reg_bram_0_1(3) => hw_input_global_wrap_U_n_71,
      ram_reg_bram_0_1(2) => hw_input_global_wrap_U_n_72,
      ram_reg_bram_0_1(1) => hw_input_global_wrap_U_n_73,
      ram_reg_bram_0_1(0) => hw_input_global_wrap_U_n_74,
      ram_reg_bram_0_2(7) => hw_input_global_wrap_U_n_108,
      ram_reg_bram_0_2(6) => hw_input_global_wrap_U_n_109,
      ram_reg_bram_0_2(5) => hw_input_global_wrap_U_n_110,
      ram_reg_bram_0_2(4) => hw_input_global_wrap_U_n_111,
      ram_reg_bram_0_2(3) => hw_input_global_wrap_U_n_112,
      ram_reg_bram_0_2(2) => hw_input_global_wrap_U_n_113,
      ram_reg_bram_0_2(1) => hw_input_global_wrap_U_n_114,
      ram_reg_bram_0_2(0) => hw_input_global_wrap_U_n_115,
      ram_reg_bram_0_3(5) => ap_CS_fsm_state9,
      ram_reg_bram_0_3(4) => ap_CS_fsm_state8,
      ram_reg_bram_0_3(3) => ap_CS_fsm_state7,
      ram_reg_bram_0_3(2) => ap_CS_fsm_state6,
      ram_reg_bram_0_3(1) => ap_CS_fsm_state5,
      ram_reg_bram_0_3(0) => ap_CS_fsm_state3,
      ram_reg_bram_0_4(5 downto 0) => zext_ln392_reg_546(11 downto 6),
      ram_reg_bram_0_5(5 downto 0) => add_ln187_reg_604(5 downto 0),
      ram_reg_bram_1(6) => hw_input_global_wrap_U_n_53,
      ram_reg_bram_1(5) => hw_input_global_wrap_U_n_54,
      ram_reg_bram_1(4) => hw_input_global_wrap_U_n_55,
      ram_reg_bram_1(3) => hw_input_global_wrap_U_n_56,
      ram_reg_bram_1(2) => hw_input_global_wrap_U_n_57,
      ram_reg_bram_1(1) => hw_input_global_wrap_U_n_58,
      ram_reg_bram_1(0) => hw_input_global_wrap_U_n_59,
      ram_reg_bram_1_0(6) => hw_input_global_wrap_U_n_60,
      ram_reg_bram_1_0(5) => hw_input_global_wrap_U_n_61,
      ram_reg_bram_1_0(4) => hw_input_global_wrap_U_n_62,
      ram_reg_bram_1_0(3) => hw_input_global_wrap_U_n_63,
      ram_reg_bram_1_0(2) => hw_input_global_wrap_U_n_64,
      ram_reg_bram_1_0(1) => hw_input_global_wrap_U_n_65,
      ram_reg_bram_1_0(0) => hw_input_global_wrap_U_n_66,
      ram_reg_bram_1_1(5) => hw_input_global_wrap_U_n_75,
      ram_reg_bram_1_1(4) => hw_input_global_wrap_U_n_76,
      ram_reg_bram_1_1(3) => hw_input_global_wrap_U_n_77,
      ram_reg_bram_1_1(2) => hw_input_global_wrap_U_n_78,
      ram_reg_bram_1_1(1) => hw_input_global_wrap_U_n_79,
      ram_reg_bram_1_1(0) => hw_input_global_wrap_U_n_80,
      ram_reg_bram_1_2(7) => hw_input_global_wrap_U_n_81,
      ram_reg_bram_1_2(6) => hw_input_global_wrap_U_n_82,
      ram_reg_bram_1_2(5) => hw_input_global_wrap_U_n_83,
      ram_reg_bram_1_2(4) => hw_input_global_wrap_U_n_84,
      ram_reg_bram_1_2(3) => hw_input_global_wrap_U_n_85,
      ram_reg_bram_1_2(2) => hw_input_global_wrap_U_n_86,
      ram_reg_bram_1_2(1) => hw_input_global_wrap_U_n_87,
      ram_reg_bram_1_2(0) => hw_input_global_wrap_U_n_88,
      ram_reg_bram_1_3(6 downto 0) => hw_input_global_wrap_2_reg_186_reg(6 downto 0),
      \tmp_i231_reg_661_reg[13]\(13 downto 0) => empty_11_reg_631(13 downto 0),
      we0 => \^e\(0)
    );
\hw_output_s0_x_v32_a_reg_209[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => data4(6),
      I2 => data4(11),
      I3 => data4(10),
      I4 => \hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0\,
      O => hw_output_s0_x_v32_a_reg_2090
    );
\hw_output_s0_x_v32_a_reg_209[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => arg_out_tlast_values_full_n,
      I2 => arg_out_data_values_s_full_n,
      O => \^ap_cs_fsm_reg[10]_0\(0)
    );
\hw_output_s0_x_v32_a_reg_209[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => data4(8),
      I1 => data4(7),
      I2 => data4(9),
      O => \hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0\
    );
\hw_output_s0_x_v32_a_reg_209_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[10]_0\(0),
      D => data0(0),
      Q => data4(0),
      R => hw_output_s0_x_v32_a_reg_2090
    );
\hw_output_s0_x_v32_a_reg_209_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[10]_0\(0),
      D => data0(1),
      Q => data4(1),
      R => hw_output_s0_x_v32_a_reg_2090
    );
\hw_output_s0_x_v32_a_reg_209_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[10]_0\(0),
      D => data0(2),
      Q => data4(2),
      R => hw_output_s0_x_v32_a_reg_2090
    );
\hw_output_s0_x_v32_a_reg_209_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[10]_0\(0),
      D => data0(3),
      Q => data4(3),
      R => hw_output_s0_x_v32_a_reg_2090
    );
\hw_output_s0_x_v32_a_reg_209_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[10]_0\(0),
      D => data0(4),
      Q => data4(4),
      R => hw_output_s0_x_v32_a_reg_2090
    );
\hw_output_s0_x_v32_a_reg_209_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[10]_0\(0),
      D => data0(5),
      Q => data4(5),
      R => hw_output_s0_x_v32_a_reg_2090
    );
\hw_output_s0_y_v33_a_reg_197[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \zext_ln392_reg_546[11]_i_2_n_0\,
      I2 => tmp_2_fu_233_p3(12),
      I3 => tmp_2_fu_233_p3(10),
      I4 => tmp_2_fu_233_p3(8),
      O => ap_NS_fsm13_out
    );
\hw_output_s0_y_v33_a_reg_197[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \hw_output_s0_y_v33_a_reg_197[5]_i_3_n_0\,
      I1 => ap_CS_fsm_state5,
      I2 => data4(5),
      I3 => data4(0),
      O => ap_NS_fsm1
    );
\hw_output_s0_y_v33_a_reg_197[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => data4(3),
      I1 => data4(1),
      I2 => data4(2),
      I3 => data4(4),
      O => \hw_output_s0_y_v33_a_reg_197[5]_i_3_n_0\
    );
\hw_output_s0_y_v33_a_reg_197_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => c3_1_reg_562(0),
      Q => data4(6),
      R => ap_NS_fsm13_out
    );
\hw_output_s0_y_v33_a_reg_197_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => c3_1_reg_562(1),
      Q => data4(7),
      R => ap_NS_fsm13_out
    );
\hw_output_s0_y_v33_a_reg_197_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => c3_1_reg_562(2),
      Q => data4(8),
      R => ap_NS_fsm13_out
    );
\hw_output_s0_y_v33_a_reg_197_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => c3_1_reg_562(3),
      Q => data4(9),
      R => ap_NS_fsm13_out
    );
\hw_output_s0_y_v33_a_reg_197_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => c3_1_reg_562(4),
      Q => data4(10),
      R => ap_NS_fsm13_out
    );
\hw_output_s0_y_v33_a_reg_197_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => c3_1_reg_562(5),
      Q => data4(11),
      R => ap_NS_fsm13_out
    );
\mOutPtr[1]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0\,
      I1 => data4(10),
      I2 => data4(11),
      I3 => data4(6),
      I4 => ap_CS_fsm_state4,
      I5 => unoptimized_conv_3_3_U0_ap_start,
      O => \hw_output_s0_y_v33_a_reg_197_reg[4]_0\
    );
\start_once_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54505050"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[3]_0\,
      I1 => unoptimized_conv_3_3_U0_ap_start,
      I2 => \^start_once_reg_reg_0\,
      I3 => start_for_read_U0_full_n,
      I4 => start_for_read_1_U0_full_n,
      O => \start_once_reg_i_1__0_n_0\
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \start_once_reg_i_1__0_n_0\,
      Q => \^start_once_reg_reg_0\,
      R => ap_rst_n_inv
    );
tmp_i231_fu_460_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => tmp_i231_fu_460_p2_carry_n_0,
      CO(6) => tmp_i231_fu_460_p2_carry_n_1,
      CO(5) => tmp_i231_fu_460_p2_carry_n_2,
      CO(4) => tmp_i231_fu_460_p2_carry_n_3,
      CO(3) => tmp_i231_fu_460_p2_carry_n_4,
      CO(2) => tmp_i231_fu_460_p2_carry_n_5,
      CO(1) => tmp_i231_fu_460_p2_carry_n_6,
      CO(0) => tmp_i231_fu_460_p2_carry_n_7,
      DI(7 downto 0) => hw_input_global_wrap_q1(7 downto 0),
      O(7 downto 0) => tmp_i231_fu_460_p2(7 downto 0),
      S(7) => hw_input_global_wrap_U_n_67,
      S(6) => hw_input_global_wrap_U_n_68,
      S(5) => hw_input_global_wrap_U_n_69,
      S(4) => hw_input_global_wrap_U_n_70,
      S(3) => hw_input_global_wrap_U_n_71,
      S(2) => hw_input_global_wrap_U_n_72,
      S(1) => hw_input_global_wrap_U_n_73,
      S(0) => hw_input_global_wrap_U_n_74
    );
\tmp_i231_fu_460_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => tmp_i231_fu_460_p2_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_tmp_i231_fu_460_p2_carry__0_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \tmp_i231_fu_460_p2_carry__0_n_3\,
      CO(3) => \tmp_i231_fu_460_p2_carry__0_n_4\,
      CO(2) => \tmp_i231_fu_460_p2_carry__0_n_5\,
      CO(1) => \tmp_i231_fu_460_p2_carry__0_n_6\,
      CO(0) => \tmp_i231_fu_460_p2_carry__0_n_7\,
      DI(7 downto 5) => B"000",
      DI(4 downto 0) => hw_input_global_wrap_q1(12 downto 8),
      O(7 downto 6) => \NLW_tmp_i231_fu_460_p2_carry__0_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => tmp_i231_fu_460_p2(13 downto 8),
      S(7 downto 6) => B"00",
      S(5) => hw_input_global_wrap_U_n_75,
      S(4) => hw_input_global_wrap_U_n_76,
      S(3) => hw_input_global_wrap_U_n_77,
      S(2) => hw_input_global_wrap_U_n_78,
      S(1) => hw_input_global_wrap_U_n_79,
      S(0) => hw_input_global_wrap_U_n_80
    );
\tmp_i231_reg_661_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(0),
      Q => tmp1_i_fu_494_p3(2),
      R => '0'
    );
\tmp_i231_reg_661_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(10),
      Q => tmp1_i_fu_494_p3(12),
      R => '0'
    );
\tmp_i231_reg_661_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(11),
      Q => tmp1_i_fu_494_p3(13),
      R => '0'
    );
\tmp_i231_reg_661_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(12),
      Q => tmp1_i_fu_494_p3(14),
      R => '0'
    );
\tmp_i231_reg_661_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(13),
      Q => tmp1_i_fu_494_p3(15),
      R => '0'
    );
\tmp_i231_reg_661_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(1),
      Q => tmp1_i_fu_494_p3(3),
      R => '0'
    );
\tmp_i231_reg_661_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(2),
      Q => tmp1_i_fu_494_p3(4),
      R => '0'
    );
\tmp_i231_reg_661_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(3),
      Q => tmp1_i_fu_494_p3(5),
      R => '0'
    );
\tmp_i231_reg_661_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(4),
      Q => tmp1_i_fu_494_p3(6),
      R => '0'
    );
\tmp_i231_reg_661_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(5),
      Q => tmp1_i_fu_494_p3(7),
      R => '0'
    );
\tmp_i231_reg_661_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(6),
      Q => tmp1_i_fu_494_p3(8),
      R => '0'
    );
\tmp_i231_reg_661_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(7),
      Q => tmp1_i_fu_494_p3(9),
      R => '0'
    );
\tmp_i231_reg_661_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(8),
      Q => tmp1_i_fu_494_p3(10),
      R => '0'
    );
\tmp_i231_reg_661_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => tmp_i231_fu_460_p2(9),
      Q => tmp1_i_fu_494_p3(11),
      R => '0'
    );
\zext_ln392_reg_546[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \zext_ln392_reg_546[11]_i_2_n_0\,
      I2 => tmp_2_fu_233_p3(12),
      I3 => tmp_2_fu_233_p3(10),
      I4 => tmp_2_fu_233_p3(8),
      O => hw_input_global_wrap_2_reg_1860
    );
\zext_ln392_reg_546[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tmp_2_fu_233_p3(7),
      I1 => tmp_2_fu_233_p3(6),
      I2 => tmp_2_fu_233_p3(11),
      I3 => tmp_2_fu_233_p3(9),
      O => \zext_ln392_reg_546[11]_i_2_n_0\
    );
\zext_ln392_reg_546_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_2_reg_1860,
      D => tmp_2_fu_233_p3(10),
      Q => zext_ln392_reg_546(10),
      R => '0'
    );
\zext_ln392_reg_546_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_2_reg_1860,
      D => tmp_2_fu_233_p3(11),
      Q => zext_ln392_reg_546(11),
      R => '0'
    );
\zext_ln392_reg_546_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_2_reg_1860,
      D => tmp_2_fu_233_p3(6),
      Q => zext_ln392_reg_546(6),
      R => '0'
    );
\zext_ln392_reg_546_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_2_reg_1860,
      D => tmp_2_fu_233_p3(7),
      Q => zext_ln392_reg_546(7),
      R => '0'
    );
\zext_ln392_reg_546_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_2_reg_1860,
      D => tmp_2_fu_233_p3(8),
      Q => zext_ln392_reg_546(8),
      R => '0'
    );
\zext_ln392_reg_546_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => hw_input_global_wrap_2_reg_1860,
      D => tmp_2_fu_233_p3(9),
      Q => zext_ln392_reg_546(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3_rdai is
  port (
    arg_in0_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    arg_in0_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    arg_out_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arg_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    arg_in0_TVALID : in STD_LOGIC;
    arg_in0_TREADY : out STD_LOGIC;
    arg_out_TVALID : out STD_LOGIC;
    arg_out_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3_rdai : entity is "unoptimized_conv_3_3_rdai";
  attribute hls_module : string;
  attribute hls_module of conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3_rdai : entity is "yes";
end conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3_rdai;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3_rdai is
  signal \<const0>\ : STD_LOGIC;
  signal Block_proc7476_U0_n_0 : STD_LOGIC;
  signal Block_proc7476_U0_n_1 : STD_LOGIC;
  signal Block_proc7476_U0_n_2 : STD_LOGIC;
  signal Block_proc7476_U0_n_21 : STD_LOGIC;
  signal Block_proc7476_U0_n_22 : STD_LOGIC;
  signal Block_proc7476_U0_n_23 : STD_LOGIC;
  signal Block_proc7476_U0_n_24 : STD_LOGIC;
  signal Block_proc7476_U0_n_25 : STD_LOGIC;
  signal Block_proc7476_U0_n_26 : STD_LOGIC;
  signal Block_proc7476_U0_n_27 : STD_LOGIC;
  signal Block_proc7476_U0_n_28 : STD_LOGIC;
  signal Block_proc7476_U0_n_29 : STD_LOGIC;
  signal Block_proc7476_U0_n_3 : STD_LOGIC;
  signal Block_proc7476_U0_n_30 : STD_LOGIC;
  signal Block_proc7476_U0_n_31 : STD_LOGIC;
  signal Block_proc7476_U0_n_32 : STD_LOGIC;
  signal Block_proc7476_U0_n_33 : STD_LOGIC;
  signal Block_proc7476_U0_n_34 : STD_LOGIC;
  signal Block_proc7476_U0_n_35 : STD_LOGIC;
  signal Block_proc7476_U0_n_36 : STD_LOGIC;
  signal Block_proc75_U0_ap_continue : STD_LOGIC;
  signal Block_proc75_U0_n_3 : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_done_reg : STD_LOGIC;
  signal ap_done_reg_1 : STD_LOGIC;
  signal ap_done_reg_2 : STD_LOGIC;
  signal ap_done_reg_3 : STD_LOGIC;
  signal ap_done_reg_4 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal arg_in0_TVALID_int : STD_LOGIC;
  signal arg_in0_hwstream_val_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal arg_in0_hwstream_val_empty_n : STD_LOGIC;
  signal arg_in0_hwstream_val_full_n : STD_LOGIC;
  signal arg_out_data_values_s_U_n_10 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_11 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_12 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_13 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_14 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_15 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_16 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_17 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_18 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_19 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_2 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_20 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_21 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_22 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_23 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_24 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_25 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_26 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_27 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_28 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_29 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_3 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_30 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_31 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_32 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_33 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_4 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_5 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_6 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_7 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_8 : STD_LOGIC;
  signal arg_out_data_values_s_U_n_9 : STD_LOGIC;
  signal arg_out_data_values_s_empty_n : STD_LOGIC;
  signal arg_out_data_values_s_full_n : STD_LOGIC;
  signal arg_out_tlast_values_U_n_2 : STD_LOGIC;
  signal arg_out_tlast_values_empty_n : STD_LOGIC;
  signal arg_out_tlast_values_full_n : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hw_uint_16_val_V_preg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal operator_int_1_U0_ap_start : STD_LOGIC;
  signal operator_int_1_U0_n_1 : STD_LOGIC;
  signal operator_int_U0_ap_start : STD_LOGIC;
  signal operator_int_U0_n_1 : STD_LOGIC;
  signal p_0_U_n_10 : STD_LOGIC;
  signal p_0_U_n_11 : STD_LOGIC;
  signal p_0_U_n_12 : STD_LOGIC;
  signal p_0_U_n_13 : STD_LOGIC;
  signal p_0_U_n_14 : STD_LOGIC;
  signal p_0_U_n_15 : STD_LOGIC;
  signal p_0_U_n_16 : STD_LOGIC;
  signal p_0_U_n_17 : STD_LOGIC;
  signal p_0_U_n_18 : STD_LOGIC;
  signal p_0_U_n_19 : STD_LOGIC;
  signal p_0_U_n_2 : STD_LOGIC;
  signal p_0_U_n_20 : STD_LOGIC;
  signal p_0_U_n_21 : STD_LOGIC;
  signal p_0_U_n_22 : STD_LOGIC;
  signal p_0_U_n_23 : STD_LOGIC;
  signal p_0_U_n_24 : STD_LOGIC;
  signal p_0_U_n_25 : STD_LOGIC;
  signal p_0_U_n_26 : STD_LOGIC;
  signal p_0_U_n_27 : STD_LOGIC;
  signal p_0_U_n_28 : STD_LOGIC;
  signal p_0_U_n_29 : STD_LOGIC;
  signal p_0_U_n_3 : STD_LOGIC;
  signal p_0_U_n_30 : STD_LOGIC;
  signal p_0_U_n_31 : STD_LOGIC;
  signal p_0_U_n_32 : STD_LOGIC;
  signal p_0_U_n_33 : STD_LOGIC;
  signal p_0_U_n_34 : STD_LOGIC;
  signal p_0_U_n_4 : STD_LOGIC;
  signal p_0_U_n_5 : STD_LOGIC;
  signal p_0_U_n_6 : STD_LOGIC;
  signal p_0_U_n_7 : STD_LOGIC;
  signal p_0_U_n_8 : STD_LOGIC;
  signal p_0_U_n_9 : STD_LOGIC;
  signal read_1_U0_ap_continue : STD_LOGIC;
  signal read_1_U0_ap_start : STD_LOGIC;
  signal read_1_U0_n_1 : STD_LOGIC;
  signal read_1_U0_n_10 : STD_LOGIC;
  signal read_1_U0_n_11 : STD_LOGIC;
  signal read_1_U0_n_12 : STD_LOGIC;
  signal read_1_U0_n_13 : STD_LOGIC;
  signal read_1_U0_n_14 : STD_LOGIC;
  signal read_1_U0_n_15 : STD_LOGIC;
  signal read_1_U0_n_16 : STD_LOGIC;
  signal read_1_U0_n_17 : STD_LOGIC;
  signal read_1_U0_n_18 : STD_LOGIC;
  signal read_1_U0_n_2 : STD_LOGIC;
  signal read_1_U0_n_3 : STD_LOGIC;
  signal read_1_U0_n_4 : STD_LOGIC;
  signal read_1_U0_n_5 : STD_LOGIC;
  signal read_1_U0_n_6 : STD_LOGIC;
  signal read_1_U0_n_7 : STD_LOGIC;
  signal read_1_U0_n_8 : STD_LOGIC;
  signal read_1_U0_n_9 : STD_LOGIC;
  signal read_U0_ap_continue : STD_LOGIC;
  signal read_U0_ap_start : STD_LOGIC;
  signal read_U0_n_1 : STD_LOGIC;
  signal shiftReg_ce : STD_LOGIC;
  signal shiftReg_ce_0 : STD_LOGIC;
  signal shiftReg_ce_5 : STD_LOGIC;
  signal start_for_read_1_U0_full_n : STD_LOGIC;
  signal start_for_read_U0_full_n : STD_LOGIC;
  signal start_for_unoptimdEe_U_n_2 : STD_LOGIC;
  signal start_for_unoptimdEe_U_n_3 : STD_LOGIC;
  signal start_for_unoptimdEe_U_n_4 : STD_LOGIC;
  signal start_for_unoptimized_conv_3_3_U0_full_n : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal this_assign_channel_U_n_10 : STD_LOGIC;
  signal this_assign_channel_U_n_11 : STD_LOGIC;
  signal this_assign_channel_U_n_12 : STD_LOGIC;
  signal this_assign_channel_U_n_13 : STD_LOGIC;
  signal this_assign_channel_U_n_14 : STD_LOGIC;
  signal this_assign_channel_U_n_15 : STD_LOGIC;
  signal this_assign_channel_U_n_16 : STD_LOGIC;
  signal this_assign_channel_U_n_17 : STD_LOGIC;
  signal this_assign_channel_U_n_18 : STD_LOGIC;
  signal this_assign_channel_U_n_2 : STD_LOGIC;
  signal this_assign_channel_U_n_3 : STD_LOGIC;
  signal this_assign_channel_U_n_4 : STD_LOGIC;
  signal this_assign_channel_U_n_5 : STD_LOGIC;
  signal this_assign_channel_U_n_6 : STD_LOGIC;
  signal this_assign_channel_U_n_7 : STD_LOGIC;
  signal this_assign_channel_U_n_8 : STD_LOGIC;
  signal this_assign_channel_U_n_9 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_ap_start : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_0 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_1 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_10 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_11 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_12 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_13 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_14 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_15 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_16 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_17 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_18 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_19 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_20 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_21 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_5 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_6 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_7 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_8 : STD_LOGIC;
  signal unoptimized_conv_3_3_U0_n_9 : STD_LOGIC;
  signal val_assign_1_channel_U_n_1 : STD_LOGIC;
  signal val_assign_1_channel_empty_n : STD_LOGIC;
  signal val_assign_channel_U_n_1 : STD_LOGIC;
  signal val_assign_channel_U_n_10 : STD_LOGIC;
  signal val_assign_channel_U_n_11 : STD_LOGIC;
  signal val_assign_channel_U_n_12 : STD_LOGIC;
  signal val_assign_channel_U_n_13 : STD_LOGIC;
  signal val_assign_channel_U_n_14 : STD_LOGIC;
  signal val_assign_channel_U_n_15 : STD_LOGIC;
  signal val_assign_channel_U_n_16 : STD_LOGIC;
  signal val_assign_channel_U_n_17 : STD_LOGIC;
  signal val_assign_channel_U_n_18 : STD_LOGIC;
  signal val_assign_channel_U_n_19 : STD_LOGIC;
  signal val_assign_channel_U_n_2 : STD_LOGIC;
  signal val_assign_channel_U_n_20 : STD_LOGIC;
  signal val_assign_channel_U_n_21 : STD_LOGIC;
  signal val_assign_channel_U_n_22 : STD_LOGIC;
  signal val_assign_channel_U_n_23 : STD_LOGIC;
  signal val_assign_channel_U_n_24 : STD_LOGIC;
  signal val_assign_channel_U_n_25 : STD_LOGIC;
  signal val_assign_channel_U_n_26 : STD_LOGIC;
  signal val_assign_channel_U_n_27 : STD_LOGIC;
  signal val_assign_channel_U_n_28 : STD_LOGIC;
  signal val_assign_channel_U_n_29 : STD_LOGIC;
  signal val_assign_channel_U_n_3 : STD_LOGIC;
  signal val_assign_channel_U_n_30 : STD_LOGIC;
  signal val_assign_channel_U_n_31 : STD_LOGIC;
  signal val_assign_channel_U_n_32 : STD_LOGIC;
  signal val_assign_channel_U_n_33 : STD_LOGIC;
  signal val_assign_channel_U_n_4 : STD_LOGIC;
  signal val_assign_channel_U_n_5 : STD_LOGIC;
  signal val_assign_channel_U_n_6 : STD_LOGIC;
  signal val_assign_channel_U_n_7 : STD_LOGIC;
  signal val_assign_channel_U_n_8 : STD_LOGIC;
  signal val_assign_channel_U_n_9 : STD_LOGIC;
  signal val_assign_channel_empty_n : STD_LOGIC;
  signal write_U0_ap_start : STD_LOGIC;
begin
  arg_out_TLAST(0) <= \<const0>\;
Block_proc7476_U0: entity work.conv_3_3_conv_3_3_0_0_Block_proc7476
     port map (
      D(15) => val_assign_channel_U_n_18,
      D(14) => val_assign_channel_U_n_19,
      D(13) => val_assign_channel_U_n_20,
      D(12) => val_assign_channel_U_n_21,
      D(11) => val_assign_channel_U_n_22,
      D(10) => val_assign_channel_U_n_23,
      D(9) => val_assign_channel_U_n_24,
      D(8) => val_assign_channel_U_n_25,
      D(7) => val_assign_channel_U_n_26,
      D(6) => val_assign_channel_U_n_27,
      D(5) => val_assign_channel_U_n_28,
      D(4) => val_assign_channel_U_n_29,
      D(3) => val_assign_channel_U_n_30,
      D(2) => val_assign_channel_U_n_31,
      D(1) => val_assign_channel_U_n_32,
      D(0) => val_assign_channel_U_n_33,
      Q(16) => arg_out_TVALID,
      Q(15 downto 0) => arg_out_TDATA(15 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => Block_proc7476_U0_n_1,
      ap_rst_n_1 => Block_proc7476_U0_n_3,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_TREADY => arg_out_TREADY,
      internal_empty_n_reg => Block_proc7476_U0_n_0,
      internal_empty_n_reg_0 => Block_proc7476_U0_n_2,
      \ireg_reg[15]\(15) => Block_proc7476_U0_n_21,
      \ireg_reg[15]\(14) => Block_proc7476_U0_n_22,
      \ireg_reg[15]\(13) => Block_proc7476_U0_n_23,
      \ireg_reg[15]\(12) => Block_proc7476_U0_n_24,
      \ireg_reg[15]\(11) => Block_proc7476_U0_n_25,
      \ireg_reg[15]\(10) => Block_proc7476_U0_n_26,
      \ireg_reg[15]\(9) => Block_proc7476_U0_n_27,
      \ireg_reg[15]\(8) => Block_proc7476_U0_n_28,
      \ireg_reg[15]\(7) => Block_proc7476_U0_n_29,
      \ireg_reg[15]\(6) => Block_proc7476_U0_n_30,
      \ireg_reg[15]\(5) => Block_proc7476_U0_n_31,
      \ireg_reg[15]\(4) => Block_proc7476_U0_n_32,
      \ireg_reg[15]\(3) => Block_proc7476_U0_n_33,
      \ireg_reg[15]\(2) => Block_proc7476_U0_n_34,
      \ireg_reg[15]\(1) => Block_proc7476_U0_n_35,
      \ireg_reg[15]\(0) => Block_proc7476_U0_n_36,
      \odata_reg[15]\(15) => val_assign_channel_U_n_1,
      \odata_reg[15]\(14) => val_assign_channel_U_n_2,
      \odata_reg[15]\(13) => val_assign_channel_U_n_3,
      \odata_reg[15]\(12) => val_assign_channel_U_n_4,
      \odata_reg[15]\(11) => val_assign_channel_U_n_5,
      \odata_reg[15]\(10) => val_assign_channel_U_n_6,
      \odata_reg[15]\(9) => val_assign_channel_U_n_7,
      \odata_reg[15]\(8) => val_assign_channel_U_n_8,
      \odata_reg[15]\(7) => val_assign_channel_U_n_9,
      \odata_reg[15]\(6) => val_assign_channel_U_n_10,
      \odata_reg[15]\(5) => val_assign_channel_U_n_11,
      \odata_reg[15]\(4) => val_assign_channel_U_n_12,
      \odata_reg[15]\(3) => val_assign_channel_U_n_13,
      \odata_reg[15]\(2) => val_assign_channel_U_n_14,
      \odata_reg[15]\(1) => val_assign_channel_U_n_15,
      \odata_reg[15]\(0) => val_assign_channel_U_n_16,
      val_assign_1_channel_empty_n => val_assign_1_channel_empty_n,
      val_assign_channel_empty_n => val_assign_channel_empty_n
    );
Block_proc75_U0: entity work.conv_3_3_conv_3_3_0_0_Block_proc75
     port map (
      Block_proc75_U0_ap_continue => Block_proc75_U0_ap_continue,
      D(16) => arg_in0_TVALID,
      D(15 downto 0) => arg_in0_TDATA(15 downto 0),
      E(0) => Block_proc75_U0_n_3,
      Q(0) => arg_in0_TVALID_int,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg,
      \ap_return_preg_reg[15]_0\(15 downto 0) => data(15 downto 0),
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_in0_TREADY => arg_in0_TREADY,
      internal_full_n_reg(0) => shiftReg_ce,
      shiftReg_ce => shiftReg_ce_0
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
arg_in0_hwstream_val_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A
     port map (
      D(15) => this_assign_channel_U_n_3,
      D(14) => this_assign_channel_U_n_4,
      D(13) => this_assign_channel_U_n_5,
      D(12) => this_assign_channel_U_n_6,
      D(11) => this_assign_channel_U_n_7,
      D(10) => this_assign_channel_U_n_8,
      D(9) => this_assign_channel_U_n_9,
      D(8) => this_assign_channel_U_n_10,
      D(7) => this_assign_channel_U_n_11,
      D(6) => this_assign_channel_U_n_12,
      D(5) => this_assign_channel_U_n_13,
      D(4) => this_assign_channel_U_n_14,
      D(3) => this_assign_channel_U_n_15,
      D(2) => this_assign_channel_U_n_16,
      D(1) => this_assign_channel_U_n_17,
      D(0) => this_assign_channel_U_n_18,
      E(0) => start_for_unoptimdEe_U_n_2,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_in0_hwstream_val_empty_n => arg_in0_hwstream_val_empty_n,
      arg_in0_hwstream_val_full_n => arg_in0_hwstream_val_full_n,
      d0(15 downto 0) => arg_in0_hwstream_val_dout(15 downto 0),
      shiftReg_ce => shiftReg_ce_0,
      start_for_unoptimized_conv_3_3_U0_full_n => start_for_unoptimized_conv_3_3_U0_full_n,
      start_once_reg => start_once_reg,
      unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read => unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read,
      write_U0_ap_start => write_U0_ap_start
    );
arg_out_data_values_s_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_0
     port map (
      D(15) => arg_out_data_values_s_U_n_2,
      D(14) => arg_out_data_values_s_U_n_3,
      D(13) => arg_out_data_values_s_U_n_4,
      D(12) => arg_out_data_values_s_U_n_5,
      D(11) => arg_out_data_values_s_U_n_6,
      D(10) => arg_out_data_values_s_U_n_7,
      D(9) => arg_out_data_values_s_U_n_8,
      D(8) => arg_out_data_values_s_U_n_9,
      D(7) => arg_out_data_values_s_U_n_10,
      D(6) => arg_out_data_values_s_U_n_11,
      D(5) => arg_out_data_values_s_U_n_12,
      D(4) => arg_out_data_values_s_U_n_13,
      D(3) => arg_out_data_values_s_U_n_14,
      D(2) => arg_out_data_values_s_U_n_15,
      D(1) => arg_out_data_values_s_U_n_16,
      D(0) => arg_out_data_values_s_U_n_17,
      Q(0) => ap_CS_fsm_state11,
      \SRL_SIG_reg[0][0]\ => arg_out_data_values_s_U_n_18,
      \SRL_SIG_reg[0][0]_0\ => read_1_U0_n_18,
      \SRL_SIG_reg[0][10]\ => arg_out_data_values_s_U_n_28,
      \SRL_SIG_reg[0][10]_0\ => read_1_U0_n_8,
      \SRL_SIG_reg[0][11]\ => arg_out_data_values_s_U_n_29,
      \SRL_SIG_reg[0][11]_0\ => read_1_U0_n_7,
      \SRL_SIG_reg[0][12]\ => arg_out_data_values_s_U_n_30,
      \SRL_SIG_reg[0][12]_0\ => read_1_U0_n_6,
      \SRL_SIG_reg[0][13]\ => arg_out_data_values_s_U_n_31,
      \SRL_SIG_reg[0][13]_0\ => read_1_U0_n_5,
      \SRL_SIG_reg[0][14]\ => arg_out_data_values_s_U_n_32,
      \SRL_SIG_reg[0][14]_0\ => read_1_U0_n_4,
      \SRL_SIG_reg[0][15]\ => arg_out_data_values_s_U_n_33,
      \SRL_SIG_reg[0][15]_0\ => read_1_U0_n_2,
      \SRL_SIG_reg[0][15]_1\ => read_1_U0_n_3,
      \SRL_SIG_reg[0][1]\ => arg_out_data_values_s_U_n_19,
      \SRL_SIG_reg[0][1]_0\ => read_1_U0_n_17,
      \SRL_SIG_reg[0][2]\ => arg_out_data_values_s_U_n_20,
      \SRL_SIG_reg[0][2]_0\ => read_1_U0_n_16,
      \SRL_SIG_reg[0][3]\ => arg_out_data_values_s_U_n_21,
      \SRL_SIG_reg[0][3]_0\ => read_1_U0_n_15,
      \SRL_SIG_reg[0][4]\ => arg_out_data_values_s_U_n_22,
      \SRL_SIG_reg[0][4]_0\ => read_1_U0_n_14,
      \SRL_SIG_reg[0][5]\ => arg_out_data_values_s_U_n_23,
      \SRL_SIG_reg[0][5]_0\ => read_1_U0_n_13,
      \SRL_SIG_reg[0][6]\ => arg_out_data_values_s_U_n_24,
      \SRL_SIG_reg[0][6]_0\ => read_1_U0_n_12,
      \SRL_SIG_reg[0][7]\ => arg_out_data_values_s_U_n_25,
      \SRL_SIG_reg[0][7]_0\ => read_1_U0_n_11,
      \SRL_SIG_reg[0][8]\ => arg_out_data_values_s_U_n_26,
      \SRL_SIG_reg[0][8]_0\ => read_1_U0_n_10,
      \SRL_SIG_reg[0][9]\ => arg_out_data_values_s_U_n_27,
      \SRL_SIG_reg[0][9]_0\ => read_1_U0_n_9,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_3,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_data_values_s_empty_n => arg_out_data_values_s_empty_n,
      arg_out_data_values_s_full_n => arg_out_data_values_s_full_n,
      arg_out_tlast_values_full_n => arg_out_tlast_values_full_n,
      data(15) => unoptimized_conv_3_3_U0_n_6,
      data(14) => unoptimized_conv_3_3_U0_n_7,
      data(13) => unoptimized_conv_3_3_U0_n_8,
      data(12) => unoptimized_conv_3_3_U0_n_9,
      data(11) => unoptimized_conv_3_3_U0_n_10,
      data(10) => unoptimized_conv_3_3_U0_n_11,
      data(9) => unoptimized_conv_3_3_U0_n_12,
      data(8) => unoptimized_conv_3_3_U0_n_13,
      data(7) => unoptimized_conv_3_3_U0_n_14,
      data(6) => unoptimized_conv_3_3_U0_n_15,
      data(5) => unoptimized_conv_3_3_U0_n_16,
      data(4) => unoptimized_conv_3_3_U0_n_17,
      data(3) => unoptimized_conv_3_3_U0_n_18,
      data(2) => unoptimized_conv_3_3_U0_n_19,
      data(1) => unoptimized_conv_3_3_U0_n_20,
      data(0) => unoptimized_conv_3_3_U0_n_21,
      read_1_U0_ap_start => read_1_U0_ap_start,
      shiftReg_ce => shiftReg_ce_5
    );
arg_out_tlast_values_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w1_d2_A
     port map (
      E(0) => arg_out_tlast_values_U_n_2,
      Q(0) => ap_CS_fsm_state11,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_4,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_data_values_s_full_n => arg_out_data_values_s_full_n,
      arg_out_tlast_values_empty_n => arg_out_tlast_values_empty_n,
      arg_out_tlast_values_full_n => arg_out_tlast_values_full_n,
      internal_full_n_reg_0 => read_U0_n_1,
      \mOutPtr_reg[1]_0\ => start_for_unoptimdEe_U_n_4,
      read_U0_ap_start => read_U0_ap_start,
      shiftReg_ce => shiftReg_ce_5
    );
operator_int_1_U0: entity work.conv_3_3_conv_3_3_0_0_operator_int_1
     port map (
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_1,
      ap_done_reg_reg_0 => operator_int_1_U0_n_1,
      ap_done_reg_reg_1 => val_assign_channel_U_n_17,
      ap_rst_n_inv => ap_rst_n_inv,
      hw_uint_16_val_V_preg(15 downto 0) => hw_uint_16_val_V_preg(15 downto 0),
      \hw_uint_16_val_V_preg_reg[0]_0\ => p_0_U_n_19,
      \hw_uint_16_val_V_preg_reg[10]_0\ => p_0_U_n_29,
      \hw_uint_16_val_V_preg_reg[11]_0\ => p_0_U_n_30,
      \hw_uint_16_val_V_preg_reg[12]_0\ => p_0_U_n_31,
      \hw_uint_16_val_V_preg_reg[13]_0\ => p_0_U_n_32,
      \hw_uint_16_val_V_preg_reg[14]_0\ => p_0_U_n_33,
      \hw_uint_16_val_V_preg_reg[15]_0\ => p_0_U_n_18,
      \hw_uint_16_val_V_preg_reg[15]_1\ => p_0_U_n_34,
      \hw_uint_16_val_V_preg_reg[1]_0\ => p_0_U_n_20,
      \hw_uint_16_val_V_preg_reg[2]_0\ => p_0_U_n_21,
      \hw_uint_16_val_V_preg_reg[3]_0\ => p_0_U_n_22,
      \hw_uint_16_val_V_preg_reg[4]_0\ => p_0_U_n_23,
      \hw_uint_16_val_V_preg_reg[5]_0\ => p_0_U_n_24,
      \hw_uint_16_val_V_preg_reg[6]_0\ => p_0_U_n_25,
      \hw_uint_16_val_V_preg_reg[7]_0\ => p_0_U_n_26,
      \hw_uint_16_val_V_preg_reg[8]_0\ => p_0_U_n_27,
      \hw_uint_16_val_V_preg_reg[9]_0\ => p_0_U_n_28,
      operator_int_1_U0_ap_start => operator_int_1_U0_ap_start
    );
operator_int_U0: entity work.conv_3_3_conv_3_3_0_0_operator_int
     port map (
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_2,
      ap_done_reg_reg_0 => operator_int_U0_n_1,
      ap_done_reg_reg_1 => val_assign_1_channel_U_n_1,
      operator_int_U0_ap_start => operator_int_U0_ap_start
    );
p_0_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_1
     port map (
      D(15) => p_0_U_n_2,
      D(14) => p_0_U_n_3,
      D(13) => p_0_U_n_4,
      D(12) => p_0_U_n_5,
      D(11) => p_0_U_n_6,
      D(10) => p_0_U_n_7,
      D(9) => p_0_U_n_8,
      D(8) => p_0_U_n_9,
      D(7) => p_0_U_n_10,
      D(6) => p_0_U_n_11,
      D(5) => p_0_U_n_12,
      D(4) => p_0_U_n_13,
      D(3) => p_0_U_n_14,
      D(2) => p_0_U_n_15,
      D(1) => p_0_U_n_16,
      D(0) => p_0_U_n_17,
      \SRL_SIG_reg[0][0]\ => p_0_U_n_19,
      \SRL_SIG_reg[0][10]\ => p_0_U_n_29,
      \SRL_SIG_reg[0][11]\ => p_0_U_n_30,
      \SRL_SIG_reg[0][12]\ => p_0_U_n_31,
      \SRL_SIG_reg[0][13]\ => p_0_U_n_32,
      \SRL_SIG_reg[0][14]\ => p_0_U_n_33,
      \SRL_SIG_reg[0][15]\ => p_0_U_n_34,
      \SRL_SIG_reg[0][15]_0\ => operator_int_1_U0_n_1,
      \SRL_SIG_reg[0][15]_1\(15) => arg_out_data_values_s_U_n_2,
      \SRL_SIG_reg[0][15]_1\(14) => arg_out_data_values_s_U_n_3,
      \SRL_SIG_reg[0][15]_1\(13) => arg_out_data_values_s_U_n_4,
      \SRL_SIG_reg[0][15]_1\(12) => arg_out_data_values_s_U_n_5,
      \SRL_SIG_reg[0][15]_1\(11) => arg_out_data_values_s_U_n_6,
      \SRL_SIG_reg[0][15]_1\(10) => arg_out_data_values_s_U_n_7,
      \SRL_SIG_reg[0][15]_1\(9) => arg_out_data_values_s_U_n_8,
      \SRL_SIG_reg[0][15]_1\(8) => arg_out_data_values_s_U_n_9,
      \SRL_SIG_reg[0][15]_1\(7) => arg_out_data_values_s_U_n_10,
      \SRL_SIG_reg[0][15]_1\(6) => arg_out_data_values_s_U_n_11,
      \SRL_SIG_reg[0][15]_1\(5) => arg_out_data_values_s_U_n_12,
      \SRL_SIG_reg[0][15]_1\(4) => arg_out_data_values_s_U_n_13,
      \SRL_SIG_reg[0][15]_1\(3) => arg_out_data_values_s_U_n_14,
      \SRL_SIG_reg[0][15]_1\(2) => arg_out_data_values_s_U_n_15,
      \SRL_SIG_reg[0][15]_1\(1) => arg_out_data_values_s_U_n_16,
      \SRL_SIG_reg[0][15]_1\(0) => arg_out_data_values_s_U_n_17,
      \SRL_SIG_reg[0][1]\ => p_0_U_n_20,
      \SRL_SIG_reg[0][2]\ => p_0_U_n_21,
      \SRL_SIG_reg[0][3]\ => p_0_U_n_22,
      \SRL_SIG_reg[0][4]\ => p_0_U_n_23,
      \SRL_SIG_reg[0][5]\ => p_0_U_n_24,
      \SRL_SIG_reg[0][6]\ => p_0_U_n_25,
      \SRL_SIG_reg[0][7]\ => p_0_U_n_26,
      \SRL_SIG_reg[0][8]\ => p_0_U_n_27,
      \SRL_SIG_reg[0][9]\ => p_0_U_n_28,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_1,
      ap_done_reg_0 => ap_done_reg_3,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_data_values_s_empty_n => arg_out_data_values_s_empty_n,
      hw_uint_16_val_V_preg(15 downto 0) => hw_uint_16_val_V_preg(15 downto 0),
      internal_empty_n_reg_0 => p_0_U_n_18,
      operator_int_1_U0_ap_start => operator_int_1_U0_ap_start,
      read_1_U0_ap_continue => read_1_U0_ap_continue,
      read_1_U0_ap_start => read_1_U0_ap_start
    );
p_s_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_2
     port map (
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_2,
      ap_done_reg_0 => ap_done_reg_4,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_tlast_values_empty_n => arg_out_tlast_values_empty_n,
      internal_full_n_reg_0 => operator_int_U0_n_1,
      operator_int_U0_ap_start => operator_int_U0_ap_start,
      read_U0_ap_continue => read_U0_ap_continue,
      read_U0_ap_start => read_U0_ap_start
    );
read_1_U0: entity work.conv_3_3_conv_3_3_0_0_read_1
     port map (
      E(0) => read_1_U0_n_1,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_3,
      ap_done_reg_reg_0 => read_1_U0_n_2,
      \ap_return_preg_reg[0]_0\ => read_1_U0_n_18,
      \ap_return_preg_reg[0]_1\ => arg_out_data_values_s_U_n_18,
      \ap_return_preg_reg[10]_0\ => read_1_U0_n_8,
      \ap_return_preg_reg[10]_1\ => arg_out_data_values_s_U_n_28,
      \ap_return_preg_reg[11]_0\ => read_1_U0_n_7,
      \ap_return_preg_reg[11]_1\ => arg_out_data_values_s_U_n_29,
      \ap_return_preg_reg[12]_0\ => read_1_U0_n_6,
      \ap_return_preg_reg[12]_1\ => arg_out_data_values_s_U_n_30,
      \ap_return_preg_reg[13]_0\ => read_1_U0_n_5,
      \ap_return_preg_reg[13]_1\ => arg_out_data_values_s_U_n_31,
      \ap_return_preg_reg[14]_0\ => read_1_U0_n_4,
      \ap_return_preg_reg[14]_1\ => arg_out_data_values_s_U_n_32,
      \ap_return_preg_reg[15]_0\ => read_1_U0_n_3,
      \ap_return_preg_reg[15]_1\ => arg_out_data_values_s_U_n_33,
      \ap_return_preg_reg[1]_0\ => read_1_U0_n_17,
      \ap_return_preg_reg[1]_1\ => arg_out_data_values_s_U_n_19,
      \ap_return_preg_reg[2]_0\ => read_1_U0_n_16,
      \ap_return_preg_reg[2]_1\ => arg_out_data_values_s_U_n_20,
      \ap_return_preg_reg[3]_0\ => read_1_U0_n_15,
      \ap_return_preg_reg[3]_1\ => arg_out_data_values_s_U_n_21,
      \ap_return_preg_reg[4]_0\ => read_1_U0_n_14,
      \ap_return_preg_reg[4]_1\ => arg_out_data_values_s_U_n_22,
      \ap_return_preg_reg[5]_0\ => read_1_U0_n_13,
      \ap_return_preg_reg[5]_1\ => arg_out_data_values_s_U_n_23,
      \ap_return_preg_reg[6]_0\ => read_1_U0_n_12,
      \ap_return_preg_reg[6]_1\ => arg_out_data_values_s_U_n_24,
      \ap_return_preg_reg[7]_0\ => read_1_U0_n_11,
      \ap_return_preg_reg[7]_1\ => arg_out_data_values_s_U_n_25,
      \ap_return_preg_reg[8]_0\ => read_1_U0_n_10,
      \ap_return_preg_reg[8]_1\ => arg_out_data_values_s_U_n_26,
      \ap_return_preg_reg[9]_0\ => read_1_U0_n_9,
      \ap_return_preg_reg[9]_1\ => arg_out_data_values_s_U_n_27,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_data_values_s_empty_n => arg_out_data_values_s_empty_n,
      \mOutPtr_reg[1]\ => unoptimized_conv_3_3_U0_n_0,
      read_1_U0_ap_continue => read_1_U0_ap_continue,
      read_1_U0_ap_start => read_1_U0_ap_start,
      start_for_read_1_U0_full_n => start_for_read_1_U0_full_n,
      start_for_read_U0_full_n => start_for_read_U0_full_n,
      unoptimized_conv_3_3_U0_ap_start => unoptimized_conv_3_3_U0_ap_start
    );
read_U0: entity work.conv_3_3_conv_3_3_0_0_read_r
     port map (
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_4,
      ap_done_reg_reg_0 => read_U0_n_1,
      ap_rst_n => ap_rst_n,
      arg_out_tlast_values_empty_n => arg_out_tlast_values_empty_n,
      read_U0_ap_continue => read_U0_ap_continue,
      read_U0_ap_start => read_U0_ap_start
    );
start_for_read_1_U0_U: entity work.conv_3_3_conv_3_3_0_0_start_for_read_1_U0
     port map (
      E(0) => read_1_U0_n_1,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_3,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_data_values_s_empty_n => arg_out_data_values_s_empty_n,
      internal_full_n_reg_0 => start_for_unoptimdEe_U_n_4,
      internal_full_n_reg_1 => read_1_U0_n_2,
      read_1_U0_ap_start => read_1_U0_ap_start,
      start_for_read_1_U0_full_n => start_for_read_1_U0_full_n
    );
start_for_read_U0_U: entity work.conv_3_3_conv_3_3_0_0_start_for_read_U0
     port map (
      E(0) => arg_out_tlast_values_U_n_2,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_4,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_out_tlast_values_empty_n => arg_out_tlast_values_empty_n,
      internal_full_n_reg_0 => start_for_unoptimdEe_U_n_4,
      internal_full_n_reg_1 => read_U0_n_1,
      read_U0_ap_start => read_U0_ap_start,
      start_for_read_U0_full_n => start_for_read_U0_full_n
    );
start_for_unoptimdEe_U: entity work.conv_3_3_conv_3_3_0_0_start_for_unoptimdEe
     port map (
      E(0) => start_for_unoptimdEe_U_n_2,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_in0_hwstream_val_full_n => arg_in0_hwstream_val_full_n,
      internal_empty_n_reg_0 => start_for_unoptimdEe_U_n_4,
      internal_empty_n_reg_1 => unoptimized_conv_3_3_U0_n_1,
      internal_empty_n_reg_2 => this_assign_channel_U_n_2,
      internal_full_n_reg_0 => start_for_unoptimdEe_U_n_3,
      internal_full_n_reg_1 => unoptimized_conv_3_3_U0_n_0,
      \mOutPtr_reg[1]_0\ => unoptimized_conv_3_3_U0_n_5,
      \mOutPtr_reg[1]_1\(0) => unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read,
      start_for_read_1_U0_full_n => start_for_read_1_U0_full_n,
      start_for_read_U0_full_n => start_for_read_U0_full_n,
      start_for_unoptimized_conv_3_3_U0_full_n => start_for_unoptimized_conv_3_3_U0_full_n,
      start_once_reg => start_once_reg,
      unoptimized_conv_3_3_U0_ap_start => unoptimized_conv_3_3_U0_ap_start,
      write_U0_ap_start => write_U0_ap_start
    );
this_assign_channel_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_3
     port map (
      Block_proc75_U0_ap_continue => Block_proc75_U0_ap_continue,
      D(15) => this_assign_channel_U_n_3,
      D(14) => this_assign_channel_U_n_4,
      D(13) => this_assign_channel_U_n_5,
      D(12) => this_assign_channel_U_n_6,
      D(11) => this_assign_channel_U_n_7,
      D(10) => this_assign_channel_U_n_8,
      D(9) => this_assign_channel_U_n_9,
      D(8) => this_assign_channel_U_n_10,
      D(7) => this_assign_channel_U_n_11,
      D(6) => this_assign_channel_U_n_12,
      D(5) => this_assign_channel_U_n_13,
      D(4) => this_assign_channel_U_n_14,
      D(3) => this_assign_channel_U_n_15,
      D(2) => this_assign_channel_U_n_16,
      D(1) => this_assign_channel_U_n_17,
      D(0) => this_assign_channel_U_n_18,
      E(0) => shiftReg_ce,
      Q(0) => arg_in0_TVALID_int,
      \SRL_SIG_reg[0][15]\(15 downto 0) => data(15 downto 0),
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      internal_empty_n_reg_0 => this_assign_channel_U_n_2,
      \mOutPtr_reg[1]_0\(0) => Block_proc75_U0_n_3,
      shiftReg_ce => shiftReg_ce_0,
      start_for_unoptimized_conv_3_3_U0_full_n => start_for_unoptimized_conv_3_3_U0_full_n,
      start_once_reg => start_once_reg,
      write_U0_ap_start => write_U0_ap_start
    );
unoptimized_conv_3_3_U0: entity work.conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3
     port map (
      E(0) => unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read,
      Q(0) => ap_CS_fsm_state11,
      \ap_CS_fsm_reg[10]_0\(0) => shiftReg_ce_5,
      \ap_CS_fsm_reg[3]_0\ => unoptimized_conv_3_3_U0_n_1,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      arg_in0_hwstream_val_empty_n => arg_in0_hwstream_val_empty_n,
      arg_out_data_values_s_full_n => arg_out_data_values_s_full_n,
      arg_out_tlast_values_full_n => arg_out_tlast_values_full_n,
      d0(15 downto 0) => arg_in0_hwstream_val_dout(15 downto 0),
      data(15) => unoptimized_conv_3_3_U0_n_6,
      data(14) => unoptimized_conv_3_3_U0_n_7,
      data(13) => unoptimized_conv_3_3_U0_n_8,
      data(12) => unoptimized_conv_3_3_U0_n_9,
      data(11) => unoptimized_conv_3_3_U0_n_10,
      data(10) => unoptimized_conv_3_3_U0_n_11,
      data(9) => unoptimized_conv_3_3_U0_n_12,
      data(8) => unoptimized_conv_3_3_U0_n_13,
      data(7) => unoptimized_conv_3_3_U0_n_14,
      data(6) => unoptimized_conv_3_3_U0_n_15,
      data(5) => unoptimized_conv_3_3_U0_n_16,
      data(4) => unoptimized_conv_3_3_U0_n_17,
      data(3) => unoptimized_conv_3_3_U0_n_18,
      data(2) => unoptimized_conv_3_3_U0_n_19,
      data(1) => unoptimized_conv_3_3_U0_n_20,
      data(0) => unoptimized_conv_3_3_U0_n_21,
      \hw_output_s0_y_v33_a_reg_197_reg[4]_0\ => unoptimized_conv_3_3_U0_n_5,
      start_for_read_1_U0_full_n => start_for_read_1_U0_full_n,
      start_for_read_U0_full_n => start_for_read_U0_full_n,
      start_once_reg_reg_0 => unoptimized_conv_3_3_U0_n_0,
      unoptimized_conv_3_3_U0_ap_start => unoptimized_conv_3_3_U0_ap_start
    );
val_assign_1_channel_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w1_d2_A_4
     port map (
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_2,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      internal_empty_n_reg_0 => Block_proc7476_U0_n_3,
      internal_full_n_reg_0 => val_assign_1_channel_U_n_1,
      \mOutPtr_reg[1]_0\ => Block_proc7476_U0_n_0,
      operator_int_U0_ap_start => operator_int_U0_ap_start,
      val_assign_1_channel_empty_n => val_assign_1_channel_empty_n
    );
val_assign_channel_U: entity work.conv_3_3_conv_3_3_0_0_fifo_w16_d2_A_5
     port map (
      D(15) => val_assign_channel_U_n_18,
      D(14) => val_assign_channel_U_n_19,
      D(13) => val_assign_channel_U_n_20,
      D(12) => val_assign_channel_U_n_21,
      D(11) => val_assign_channel_U_n_22,
      D(10) => val_assign_channel_U_n_23,
      D(9) => val_assign_channel_U_n_24,
      D(8) => val_assign_channel_U_n_25,
      D(7) => val_assign_channel_U_n_26,
      D(6) => val_assign_channel_U_n_27,
      D(5) => val_assign_channel_U_n_28,
      D(4) => val_assign_channel_U_n_29,
      D(3) => val_assign_channel_U_n_30,
      D(2) => val_assign_channel_U_n_31,
      D(1) => val_assign_channel_U_n_32,
      D(0) => val_assign_channel_U_n_33,
      \SRL_SIG_reg[0][15]\(15) => val_assign_channel_U_n_1,
      \SRL_SIG_reg[0][15]\(14) => val_assign_channel_U_n_2,
      \SRL_SIG_reg[0][15]\(13) => val_assign_channel_U_n_3,
      \SRL_SIG_reg[0][15]\(12) => val_assign_channel_U_n_4,
      \SRL_SIG_reg[0][15]\(11) => val_assign_channel_U_n_5,
      \SRL_SIG_reg[0][15]\(10) => val_assign_channel_U_n_6,
      \SRL_SIG_reg[0][15]\(9) => val_assign_channel_U_n_7,
      \SRL_SIG_reg[0][15]\(8) => val_assign_channel_U_n_8,
      \SRL_SIG_reg[0][15]\(7) => val_assign_channel_U_n_9,
      \SRL_SIG_reg[0][15]\(6) => val_assign_channel_U_n_10,
      \SRL_SIG_reg[0][15]\(5) => val_assign_channel_U_n_11,
      \SRL_SIG_reg[0][15]\(4) => val_assign_channel_U_n_12,
      \SRL_SIG_reg[0][15]\(3) => val_assign_channel_U_n_13,
      \SRL_SIG_reg[0][15]\(2) => val_assign_channel_U_n_14,
      \SRL_SIG_reg[0][15]\(1) => val_assign_channel_U_n_15,
      \SRL_SIG_reg[0][15]\(0) => val_assign_channel_U_n_16,
      \SRL_SIG_reg[0][15]_0\(15) => p_0_U_n_2,
      \SRL_SIG_reg[0][15]_0\(14) => p_0_U_n_3,
      \SRL_SIG_reg[0][15]_0\(13) => p_0_U_n_4,
      \SRL_SIG_reg[0][15]_0\(12) => p_0_U_n_5,
      \SRL_SIG_reg[0][15]_0\(11) => p_0_U_n_6,
      \SRL_SIG_reg[0][15]_0\(10) => p_0_U_n_7,
      \SRL_SIG_reg[0][15]_0\(9) => p_0_U_n_8,
      \SRL_SIG_reg[0][15]_0\(8) => p_0_U_n_9,
      \SRL_SIG_reg[0][15]_0\(7) => p_0_U_n_10,
      \SRL_SIG_reg[0][15]_0\(6) => p_0_U_n_11,
      \SRL_SIG_reg[0][15]_0\(5) => p_0_U_n_12,
      \SRL_SIG_reg[0][15]_0\(4) => p_0_U_n_13,
      \SRL_SIG_reg[0][15]_0\(3) => p_0_U_n_14,
      \SRL_SIG_reg[0][15]_0\(2) => p_0_U_n_15,
      \SRL_SIG_reg[0][15]_0\(1) => p_0_U_n_16,
      \SRL_SIG_reg[0][15]_0\(0) => p_0_U_n_17,
      ap_clk => ap_clk,
      ap_done_reg => ap_done_reg_1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      internal_empty_n_reg_0 => Block_proc7476_U0_n_3,
      internal_full_n_reg_0 => val_assign_channel_U_n_17,
      \mOutPtr_reg[1]_0\ => Block_proc7476_U0_n_2,
      \odata_reg[0]\ => Block_proc7476_U0_n_1,
      \odata_reg[15]\(15) => Block_proc7476_U0_n_21,
      \odata_reg[15]\(14) => Block_proc7476_U0_n_22,
      \odata_reg[15]\(13) => Block_proc7476_U0_n_23,
      \odata_reg[15]\(12) => Block_proc7476_U0_n_24,
      \odata_reg[15]\(11) => Block_proc7476_U0_n_25,
      \odata_reg[15]\(10) => Block_proc7476_U0_n_26,
      \odata_reg[15]\(9) => Block_proc7476_U0_n_27,
      \odata_reg[15]\(8) => Block_proc7476_U0_n_28,
      \odata_reg[15]\(7) => Block_proc7476_U0_n_29,
      \odata_reg[15]\(6) => Block_proc7476_U0_n_30,
      \odata_reg[15]\(5) => Block_proc7476_U0_n_31,
      \odata_reg[15]\(4) => Block_proc7476_U0_n_32,
      \odata_reg[15]\(3) => Block_proc7476_U0_n_33,
      \odata_reg[15]\(2) => Block_proc7476_U0_n_34,
      \odata_reg[15]\(1) => Block_proc7476_U0_n_35,
      \odata_reg[15]\(0) => Block_proc7476_U0_n_36,
      operator_int_1_U0_ap_start => operator_int_1_U0_ap_start,
      val_assign_channel_empty_n => val_assign_channel_empty_n
    );
write_U0: entity work.conv_3_3_conv_3_3_0_0_write_r
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      start_once_reg => start_once_reg,
      start_once_reg_reg_0 => start_for_unoptimdEe_U_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity conv_3_3_conv_3_3_0_0 is
  port (
    arg_in0_TVALID : in STD_LOGIC;
    arg_in0_TREADY : out STD_LOGIC;
    arg_in0_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    arg_in0_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    arg_out_TVALID : out STD_LOGIC;
    arg_out_TREADY : in STD_LOGIC;
    arg_out_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arg_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of conv_3_3_conv_3_3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of conv_3_3_conv_3_3_0_0 : entity is "conv_3_3_conv_3_3_0_0,unoptimized_conv_3_3_rdai,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of conv_3_3_conv_3_3_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of conv_3_3_conv_3_3_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of conv_3_3_conv_3_3_0_0 : entity is "unoptimized_conv_3_3_rdai,Vivado 2020.1";
  attribute hls_module : string;
  attribute hls_module of conv_3_3_conv_3_3_0_0 : entity is "yes";
end conv_3_3_conv_3_3_0_0;

architecture STRUCTURE of conv_3_3_conv_3_3_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_in0:arg_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arg_in0_TREADY : signal is "xilinx.com:interface:axis:1.0 arg_in0 TREADY";
  attribute X_INTERFACE_INFO of arg_in0_TVALID : signal is "xilinx.com:interface:axis:1.0 arg_in0 TVALID";
  attribute X_INTERFACE_INFO of arg_out_TREADY : signal is "xilinx.com:interface:axis:1.0 arg_out TREADY";
  attribute X_INTERFACE_INFO of arg_out_TVALID : signal is "xilinx.com:interface:axis:1.0 arg_out TVALID";
  attribute X_INTERFACE_INFO of arg_in0_TDATA : signal is "xilinx.com:interface:axis:1.0 arg_in0 TDATA";
  attribute X_INTERFACE_INFO of arg_in0_TLAST : signal is "xilinx.com:interface:axis:1.0 arg_in0 TLAST";
  attribute X_INTERFACE_PARAMETER of arg_in0_TLAST : signal is "XIL_INTERFACENAME arg_in0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arg_out_TDATA : signal is "xilinx.com:interface:axis:1.0 arg_out TDATA";
  attribute X_INTERFACE_INFO of arg_out_TLAST : signal is "xilinx.com:interface:axis:1.0 arg_out TLAST";
  attribute X_INTERFACE_PARAMETER of arg_out_TLAST : signal is "XIL_INTERFACENAME arg_out, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.conv_3_3_conv_3_3_0_0_unoptimized_conv_3_3_rdai
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_in0_TDATA(15 downto 0) => arg_in0_TDATA(15 downto 0),
      arg_in0_TLAST(0) => arg_in0_TLAST(0),
      arg_in0_TREADY => arg_in0_TREADY,
      arg_in0_TVALID => arg_in0_TVALID,
      arg_out_TDATA(15 downto 0) => arg_out_TDATA(15 downto 0),
      arg_out_TLAST(0) => arg_out_TLAST(0),
      arg_out_TREADY => arg_out_TREADY,
      arg_out_TVALID => arg_out_TVALID
    );
end STRUCTURE;
