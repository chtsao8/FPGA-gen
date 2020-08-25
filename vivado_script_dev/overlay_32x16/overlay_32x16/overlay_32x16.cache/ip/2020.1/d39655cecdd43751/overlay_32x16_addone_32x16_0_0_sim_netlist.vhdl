-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Aug 17 18:18:05 2020
-- Host        : charles-XPS-13-9370 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ overlay_32x16_addone_32x16_0_0_sim_netlist.vhdl
-- Design      : overlay_32x16_addone_32x16_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d1_S is
  port (
    p_in_1_stencil_stream_3_full_n : out STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d1_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d1_S is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal internal_empty_n_i_1_n_0 : STD_LOGIC;
  signal \internal_empty_n_i_2__1_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__0_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_2__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \^p_in_1_stencil_stream_3_empty_n\ : STD_LOGIC;
  signal \^p_in_1_stencil_stream_3_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \internal_full_n_i_2__0\ : label is "soft_lutpair41";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  p_in_1_stencil_stream_3_empty_n <= \^p_in_1_stencil_stream_3_empty_n\;
  p_in_1_stencil_stream_3_full_n <= \^p_in_1_stencil_stream_3_full_n\;
internal_empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0E0F0C00000"
    )
        port map (
      I0 => \internal_empty_n_i_2__1_n_0\,
      I1 => internal_full_n_reg_1(0),
      I2 => ap_rst_n,
      I3 => internal_full_n_reg_0,
      I4 => shiftReg_ce,
      I5 => \^p_in_1_stencil_stream_3_empty_n\,
      O => internal_empty_n_i_1_n_0
    );
\internal_empty_n_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \internal_empty_n_i_2__1_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_empty_n_i_1_n_0,
      Q => \^p_in_1_stencil_stream_3_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C8C8CCFFFFFFFFF"
    )
        port map (
      I0 => \internal_full_n_i_2__0_n_0\,
      I1 => \^p_in_1_stencil_stream_3_full_n\,
      I2 => shiftReg_ce,
      I3 => internal_full_n_reg_0,
      I4 => internal_full_n_reg_1(0),
      I5 => ap_rst_n,
      O => \internal_full_n_i_1__0_n_0\
    );
\internal_full_n_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \internal_full_n_i_2__0_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__0_n_0\,
      Q => \^p_in_1_stencil_stream_3_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \mOutPtr[0]_i_1__0_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(1),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S_shiftReg is
  port (
    \SRL_SIG_reg[0][15]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][15]_1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \odata_reg[3]\ : in STD_LOGIC;
    \odata_reg[1]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S_shiftReg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S_shiftReg is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \SRL_SIG_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \odata[11]_i_2_n_0\ : STD_LOGIC;
  signal \odata[14]_i_2_n_0\ : STD_LOGIC;
  signal \odata[15]_i_4_n_0\ : STD_LOGIC;
  signal \odata[15]_i_5_n_0\ : STD_LOGIC;
  signal \odata[4]_i_2_n_0\ : STD_LOGIC;
  signal \odata[5]_i_2_n_0\ : STD_LOGIC;
  signal \odata[8]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ireg[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ireg[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ireg[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ireg[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ireg[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ireg[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ireg[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ireg[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ireg[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ireg[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ireg[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \odata[11]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \odata[15]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \odata[1]_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \odata[2]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \odata[4]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \odata[5]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \odata[7]_i_1__0\ : label is "soft_lutpair33";
begin
  Q(0) <= \^q\(0);
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\SRL_SIG_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(10),
      Q => \SRL_SIG_reg[0]\(10),
      R => '0'
    );
\SRL_SIG_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(11),
      Q => \SRL_SIG_reg[0]\(11),
      R => '0'
    );
\SRL_SIG_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(12),
      Q => \SRL_SIG_reg[0]\(12),
      R => '0'
    );
\SRL_SIG_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(13),
      Q => \SRL_SIG_reg[0]\(13),
      R => '0'
    );
\SRL_SIG_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(14),
      Q => \SRL_SIG_reg[0]\(14),
      R => '0'
    );
\SRL_SIG_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(15),
      Q => \SRL_SIG_reg[0]\(15),
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(1),
      Q => \SRL_SIG_reg[0]\(1),
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(2),
      Q => \SRL_SIG_reg[0]\(2),
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(3),
      Q => \SRL_SIG_reg[0]\(3),
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(4),
      Q => \SRL_SIG_reg[0]\(4),
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(5),
      Q => \SRL_SIG_reg[0]\(5),
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(6),
      Q => \SRL_SIG_reg[0]\(6),
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(7),
      Q => \SRL_SIG_reg[0]\(7),
      R => '0'
    );
\SRL_SIG_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(8),
      Q => \SRL_SIG_reg[0]\(8),
      R => '0'
    );
\SRL_SIG_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(9),
      Q => \SRL_SIG_reg[0]\(9),
      R => '0'
    );
\ireg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \SRL_SIG_reg[0][15]_1\(0)
    );
\ireg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(10),
      I1 => \SRL_SIG_reg[0]\(8),
      I2 => \SRL_SIG_reg[0]\(7),
      I3 => \odata[8]_i_2_n_0\,
      I4 => \SRL_SIG_reg[0]\(6),
      I5 => \SRL_SIG_reg[0]\(9),
      O => \SRL_SIG_reg[0][15]_1\(10)
    );
\ireg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(11),
      I1 => \SRL_SIG_reg[0]\(9),
      I2 => \odata[11]_i_2_n_0\,
      I3 => \SRL_SIG_reg[0]\(10),
      O => \SRL_SIG_reg[0][15]_1\(11)
    );
\ireg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(12),
      I1 => \SRL_SIG_reg[0]\(10),
      I2 => \odata[11]_i_2_n_0\,
      I3 => \SRL_SIG_reg[0]\(9),
      I4 => \SRL_SIG_reg[0]\(11),
      O => \SRL_SIG_reg[0][15]_1\(12)
    );
\ireg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(13),
      I1 => \SRL_SIG_reg[0]\(11),
      I2 => \SRL_SIG_reg[0]\(9),
      I3 => \odata[11]_i_2_n_0\,
      I4 => \SRL_SIG_reg[0]\(10),
      I5 => \SRL_SIG_reg[0]\(12),
      O => \SRL_SIG_reg[0][15]_1\(13)
    );
\ireg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(14),
      I1 => \SRL_SIG_reg[0]\(13),
      I2 => \SRL_SIG_reg[0]\(12),
      I3 => \SRL_SIG_reg[0]\(11),
      I4 => \odata[15]_i_5_n_0\,
      O => \SRL_SIG_reg[0][15]_1\(14)
    );
\ireg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(15),
      I1 => \SRL_SIG_reg[0]\(12),
      I2 => \SRL_SIG_reg[0]\(13),
      I3 => \SRL_SIG_reg[0]\(14),
      I4 => \SRL_SIG_reg[0]\(11),
      I5 => \odata[15]_i_5_n_0\,
      O => \SRL_SIG_reg[0][15]_1\(15)
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(1),
      I1 => \^q\(0),
      O => \SRL_SIG_reg[0][15]_1\(1)
    );
\ireg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(2),
      I1 => \SRL_SIG_reg[0]\(1),
      I2 => \^q\(0),
      O => \SRL_SIG_reg[0][15]_1\(2)
    );
\ireg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(3),
      I1 => \^q\(0),
      I2 => \SRL_SIG_reg[0]\(1),
      I3 => \SRL_SIG_reg[0]\(2),
      O => \SRL_SIG_reg[0][15]_1\(3)
    );
\ireg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(4),
      I1 => \SRL_SIG_reg[0]\(2),
      I2 => \SRL_SIG_reg[0]\(1),
      I3 => \^q\(0),
      I4 => \SRL_SIG_reg[0]\(3),
      O => \SRL_SIG_reg[0][15]_1\(4)
    );
\ireg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(5),
      I1 => \SRL_SIG_reg[0]\(3),
      I2 => \^q\(0),
      I3 => \SRL_SIG_reg[0]\(1),
      I4 => \SRL_SIG_reg[0]\(2),
      I5 => \SRL_SIG_reg[0]\(4),
      O => \SRL_SIG_reg[0][15]_1\(5)
    );
\ireg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(6),
      I1 => \odata[8]_i_2_n_0\,
      O => \SRL_SIG_reg[0][15]_1\(6)
    );
\ireg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(7),
      I1 => \odata[8]_i_2_n_0\,
      I2 => \SRL_SIG_reg[0]\(6),
      O => \SRL_SIG_reg[0][15]_1\(7)
    );
\ireg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(6),
      I1 => \odata[8]_i_2_n_0\,
      I2 => \SRL_SIG_reg[0]\(7),
      I3 => \SRL_SIG_reg[0]\(8),
      O => \SRL_SIG_reg[0][15]_1\(8)
    );
\ireg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(9),
      I1 => \SRL_SIG_reg[0]\(6),
      I2 => \odata[8]_i_2_n_0\,
      I3 => \SRL_SIG_reg[0]\(7),
      I4 => \SRL_SIG_reg[0]\(8),
      O => \SRL_SIG_reg[0][15]_1\(9)
    );
\odata[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6A006A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(10),
      I1 => \odata[11]_i_2_n_0\,
      I2 => \SRL_SIG_reg[0]\(9),
      I3 => \odata_reg[1]\(15),
      I4 => \odata_reg[1]\(9),
      O => \SRL_SIG_reg[0][15]_0\(9)
    );
\odata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(11),
      I1 => \SRL_SIG_reg[0]\(9),
      I2 => \odata[11]_i_2_n_0\,
      I3 => \SRL_SIG_reg[0]\(10),
      I4 => \odata_reg[3]\,
      I5 => \odata_reg[1]\(10),
      O => \SRL_SIG_reg[0][15]_0\(10)
    );
\odata[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(8),
      I1 => \SRL_SIG_reg[0]\(7),
      I2 => \odata[8]_i_2_n_0\,
      I3 => \SRL_SIG_reg[0]\(6),
      O => \odata[11]_i_2_n_0\
    );
\odata[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6A006A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(12),
      I1 => \odata[15]_i_5_n_0\,
      I2 => \SRL_SIG_reg[0]\(11),
      I3 => \odata_reg[1]\(15),
      I4 => \odata_reg[1]\(11),
      O => \SRL_SIG_reg[0][15]_0\(11)
    );
\odata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(13),
      I1 => \SRL_SIG_reg[0]\(11),
      I2 => \odata[15]_i_5_n_0\,
      I3 => \SRL_SIG_reg[0]\(12),
      I4 => \odata_reg[3]\,
      I5 => \odata_reg[1]\(12),
      O => \SRL_SIG_reg[0][15]_0\(12)
    );
\odata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAFFFF9AAA0000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(14),
      I1 => \odata[14]_i_2_n_0\,
      I2 => \SRL_SIG_reg[0]\(11),
      I3 => \odata[15]_i_5_n_0\,
      I4 => \odata_reg[3]\,
      I5 => \odata_reg[1]\(13),
      O => \SRL_SIG_reg[0][15]_0\(13)
    );
\odata[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(13),
      I1 => \SRL_SIG_reg[0]\(12),
      O => \odata[14]_i_2_n_0\
    );
\odata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAFFFF9AAA0000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(15),
      I1 => \odata[15]_i_4_n_0\,
      I2 => \SRL_SIG_reg[0]\(11),
      I3 => \odata[15]_i_5_n_0\,
      I4 => \odata_reg[3]\,
      I5 => \odata_reg[1]\(14),
      O => \SRL_SIG_reg[0][15]_0\(14)
    );
\odata[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(12),
      I1 => \SRL_SIG_reg[0]\(13),
      I2 => \SRL_SIG_reg[0]\(14),
      O => \odata[15]_i_4_n_0\
    );
\odata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(10),
      I1 => \SRL_SIG_reg[0]\(8),
      I2 => \SRL_SIG_reg[0]\(7),
      I3 => \odata[8]_i_2_n_0\,
      I4 => \SRL_SIG_reg[0]\(6),
      I5 => \SRL_SIG_reg[0]\(9),
      O => \odata[15]_i_5_n_0\
    );
\odata[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(1),
      I1 => \^q\(0),
      I2 => \odata_reg[1]\(15),
      I3 => \odata_reg[1]\(0),
      O => \SRL_SIG_reg[0][15]_0\(0)
    );
\odata[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6A006A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(2),
      I1 => \SRL_SIG_reg[0]\(1),
      I2 => \^q\(0),
      I3 => \odata_reg[1]\(15),
      I4 => \odata_reg[1]\(1),
      O => \SRL_SIG_reg[0][15]_0\(1)
    );
\odata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(3),
      I1 => \^q\(0),
      I2 => \SRL_SIG_reg[0]\(1),
      I3 => \SRL_SIG_reg[0]\(2),
      I4 => \odata_reg[3]\,
      I5 => \odata_reg[1]\(2),
      O => \SRL_SIG_reg[0][15]_0\(2)
    );
\odata[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(4),
      I1 => \odata[4]_i_2_n_0\,
      I2 => \odata_reg[1]\(15),
      I3 => \odata_reg[1]\(3),
      O => \SRL_SIG_reg[0][15]_0\(3)
    );
\odata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(2),
      I1 => \SRL_SIG_reg[0]\(1),
      I2 => \^q\(0),
      I3 => \SRL_SIG_reg[0]\(3),
      O => \odata[4]_i_2_n_0\
    );
\odata[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(5),
      I1 => \odata[5]_i_2_n_0\,
      I2 => \odata_reg[1]\(15),
      I3 => \odata_reg[1]\(4),
      O => \SRL_SIG_reg[0][15]_0\(4)
    );
\odata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(3),
      I1 => \^q\(0),
      I2 => \SRL_SIG_reg[0]\(1),
      I3 => \SRL_SIG_reg[0]\(2),
      I4 => \SRL_SIG_reg[0]\(4),
      O => \odata[5]_i_2_n_0\
    );
\odata[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(6),
      I1 => \odata[8]_i_2_n_0\,
      I2 => \odata_reg[1]\(15),
      I3 => \odata_reg[1]\(5),
      O => \SRL_SIG_reg[0][15]_0\(5)
    );
\odata[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9A009A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(7),
      I1 => \odata[8]_i_2_n_0\,
      I2 => \SRL_SIG_reg[0]\(6),
      I3 => \odata_reg[1]\(15),
      I4 => \odata_reg[1]\(6),
      O => \SRL_SIG_reg[0][15]_0\(6)
    );
\odata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF20FFFFDF200000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(6),
      I1 => \odata[8]_i_2_n_0\,
      I2 => \SRL_SIG_reg[0]\(7),
      I3 => \SRL_SIG_reg[0]\(8),
      I4 => \odata_reg[3]\,
      I5 => \odata_reg[1]\(7),
      O => \SRL_SIG_reg[0][15]_0\(7)
    );
\odata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(4),
      I1 => \SRL_SIG_reg[0]\(2),
      I2 => \SRL_SIG_reg[0]\(1),
      I3 => \^q\(0),
      I4 => \SRL_SIG_reg[0]\(3),
      I5 => \SRL_SIG_reg[0]\(5),
      O => \odata[8]_i_2_n_0\
    );
\odata[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(9),
      I1 => \odata[11]_i_2_n_0\,
      I2 => \odata_reg[1]\(15),
      I3 => \odata_reg[1]\(8),
      O => \SRL_SIG_reg[0][15]_0\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf is
  port (
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    indvar_flatten_reg_75_reg_9_sp_1 : out STD_LOGIC;
    \indvar_flatten_reg_75_reg[9]_0\ : out STD_LOGIC;
    indvar_flatten_reg_75_reg_13_sp_1 : out STD_LOGIC;
    indvar_flatten_reg_75_reg_1_sp_1 : out STD_LOGIC;
    indvar_flatten_reg_75_reg_3_sp_1 : out STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    \ireg_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]_1\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_in_1_stencil_stream_3_full_n : in STD_LOGIC;
    p_in_1_stencil_stream_2_full_n : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC;
    \ireg_reg[0]_1\ : in STD_LOGIC;
    indvar_flatten_reg_75_reg : in STD_LOGIC_VECTOR ( 16 downto 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf is
  signal \^ap_cs_fsm_reg[1]\ : STD_LOGIC;
  signal \^indvar_flatten_reg_75_reg[9]_0\ : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_13_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_1_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_3_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_9_sn_1 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal \^ireg_reg[32]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute SOFT_HLUTNM of arg_1_TREADY_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[11]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[13]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata[14]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata[15]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata[32]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[8]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[9]_i_1\ : label is "soft_lutpair3";
begin
  \ap_CS_fsm_reg[1]\ <= \^ap_cs_fsm_reg[1]\;
  \indvar_flatten_reg_75_reg[9]_0\ <= \^indvar_flatten_reg_75_reg[9]_0\;
  indvar_flatten_reg_75_reg_13_sp_1 <= indvar_flatten_reg_75_reg_13_sn_1;
  indvar_flatten_reg_75_reg_1_sp_1 <= indvar_flatten_reg_75_reg_1_sn_1;
  indvar_flatten_reg_75_reg_3_sp_1 <= indvar_flatten_reg_75_reg_3_sn_1;
  indvar_flatten_reg_75_reg_9_sp_1 <= indvar_flatten_reg_75_reg_9_sn_1;
  \ireg_reg[32]_0\(0) <= \^ireg_reg[32]_0\(0);
\SRL_SIG[0][15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(9),
      I1 => indvar_flatten_reg_75_reg(10),
      I2 => indvar_flatten_reg_75_reg(7),
      I3 => indvar_flatten_reg_75_reg(8),
      O => \^indvar_flatten_reg_75_reg[9]_0\
    );
\SRL_SIG[0][15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(13),
      I1 => indvar_flatten_reg_75_reg(14),
      I2 => indvar_flatten_reg_75_reg(11),
      I3 => indvar_flatten_reg_75_reg(12),
      O => indvar_flatten_reg_75_reg_13_sn_1
    );
\SRL_SIG[0][15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(1),
      I1 => indvar_flatten_reg_75_reg(2),
      I2 => indvar_flatten_reg_75_reg(15),
      I3 => indvar_flatten_reg_75_reg(16),
      I4 => indvar_flatten_reg_75_reg(0),
      O => indvar_flatten_reg_75_reg_1_sn_1
    );
\SRL_SIG[0][15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(3),
      I1 => indvar_flatten_reg_75_reg(4),
      I2 => indvar_flatten_reg_75_reg(5),
      I3 => indvar_flatten_reg_75_reg(6),
      O => indvar_flatten_reg_75_reg_3_sn_1
    );
arg_1_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => D(16),
      I1 => ap_rst_n,
      I2 => \^ireg_reg[32]_0\(0),
      O => arg_1_TREADY
    );
\ireg[32]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => \^ireg_reg[32]_0\(0),
      I1 => \ireg_reg[0]_2\(0),
      I2 => indvar_flatten_reg_75_reg_9_sn_1,
      I3 => \^ap_cs_fsm_reg[1]\,
      I4 => ap_enable_reg_pp0_iter0,
      O => ireg01_out
    );
\ireg[32]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^indvar_flatten_reg_75_reg[9]_0\,
      I1 => indvar_flatten_reg_75_reg_13_sn_1,
      I2 => indvar_flatten_reg_75_reg_1_sn_1,
      I3 => indvar_flatten_reg_75_reg_3_sn_1,
      O => indvar_flatten_reg_75_reg_9_sn_1
    );
\ireg[32]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA80AA"
    )
        port map (
      I0 => Q(0),
      I1 => p_in_1_stencil_stream_3_full_n,
      I2 => p_in_1_stencil_stream_2_full_n,
      I3 => \ireg_reg[0]_0\,
      I4 => \ireg_reg[0]_1\,
      O => \^ap_cs_fsm_reg[1]\
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
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => D(16),
      Q => \^ireg_reg[32]_0\(0),
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
\odata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[0]\,
      O => \ireg_reg[32]_1\(0)
    );
\odata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(10),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[10]\,
      O => \ireg_reg[32]_1\(10)
    );
\odata[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(11),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[11]\,
      O => \ireg_reg[32]_1\(11)
    );
\odata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(12),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[12]\,
      O => \ireg_reg[32]_1\(12)
    );
\odata[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(13),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[13]\,
      O => \ireg_reg[32]_1\(13)
    );
\odata[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(14),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[14]\,
      O => \ireg_reg[32]_1\(14)
    );
\odata[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(15),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[15]\,
      O => \ireg_reg[32]_1\(15)
    );
\odata[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[1]\,
      O => \ireg_reg[32]_1\(1)
    );
\odata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[2]\,
      O => \ireg_reg[32]_1\(2)
    );
\odata[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ireg_reg[32]_0\(0),
      I1 => D(16),
      O => \ireg_reg[32]_1\(16)
    );
\odata[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(3),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[3]\,
      O => \ireg_reg[32]_1\(3)
    );
\odata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(4),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[4]\,
      O => \ireg_reg[32]_1\(4)
    );
\odata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(5),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[5]\,
      O => \ireg_reg[32]_1\(5)
    );
\odata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(6),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[6]\,
      O => \ireg_reg[32]_1\(6)
    );
\odata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(7),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[7]\,
      O => \ireg_reg[32]_1\(7)
    );
\odata[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(8),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[8]\,
      O => \ireg_reg[32]_1\(8)
    );
\odata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(9),
      I1 => \^ireg_reg[32]_0\(0),
      I2 => \ireg_reg_n_0_[9]\,
      O => \ireg_reg[32]_1\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arg_0_TREADY : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ : entity is "ibuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ireg01_out : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \odata[1]_i_1\ : label is "soft_lutpair14";
begin
  Q(0) <= \^q\(0);
\ireg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[0]_0\(0),
      I2 => arg_0_TREADY,
      O => ireg01_out
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(1),
      Q => \^q\(0),
      R => SR(0)
    );
\odata[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[1]_0\(0),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_0_[0]\,
      O => D(0)
    );
\odata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[1]_0\(1),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\ is
  port (
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[16]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    \icmp_ln36_reg_222_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    count : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[16]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_hw_output_1_y_sca_reg_93_reg[8]\ : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    \ireg_reg[16]_5\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    Loop_2_proc21_U0_ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_NS_fsm1 : in STD_LOGIC;
    icmp_ln36_fu_115_p2 : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    icmp_ln36_reg_222_pp0_iter1_reg : in STD_LOGIC;
    \p_hw_output_1_x_sca_1_reg_104_reg[8]\ : in STD_LOGIC;
    \p_hw_output_1_y_sca_reg_93_reg[0]\ : in STD_LOGIC;
    \p_hw_output_1_y_sca_reg_93_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_in_1_stencil_stream_2_empty_n : in STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : in STD_LOGIC;
    \icmp_ln36_reg_222_reg[0]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_1 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_3 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_4 : in STD_LOGIC;
    \ireg_reg[16]_6\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    \odata_reg[16]\ : in STD_LOGIC;
    \odata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    shiftReg_ce : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp_last_V_reg_208_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_last_V_reg_208_reg[0]_0\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_1\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln36_reg_222_reg[0]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \ireg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\ : entity is "ibuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\ is
  signal \ap_CS_fsm[2]_i_3_n_0\ : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_2_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_3_n_0 : STD_LOGIC;
  signal \^ap_rst_n_0\ : STD_LOGIC;
  signal \^icmp_ln36_reg_222_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^internal_empty_n_reg\ : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal \^ireg_reg[16]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \odata[15]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \odata[16]_i_1\ : label is "soft_lutpair17";
begin
  ap_rst_n_0 <= \^ap_rst_n_0\;
  \icmp_ln36_reg_222_reg[0]\(0) <= \^icmp_ln36_reg_222_reg[0]\(0);
  internal_empty_n_reg <= \^internal_empty_n_reg\;
  \ireg_reg[16]_0\(15 downto 0) <= \^ireg_reg[16]_0\(15 downto 0);
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAABFAAAAAAAA"
    )
        port map (
      I0 => ap_NS_fsm1,
      I1 => icmp_ln36_fu_115_p2,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => \ap_CS_fsm_reg[2]\,
      I4 => \ap_CS_fsm[2]_i_3_n_0\,
      I5 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA80AAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]_0\,
      I1 => icmp_ln36_fu_115_p2,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => \ap_CS_fsm_reg[2]\,
      I4 => \ap_CS_fsm[2]_i_3_n_0\,
      I5 => Q(1),
      O => D(1)
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFBAA"
    )
        port map (
      I0 => \ireg_reg[16]_5\,
      I1 => ap_rst_n,
      I2 => \^ireg_reg[16]_0\(15),
      I3 => \ap_CS_fsm_reg[2]\,
      I4 => icmp_ln36_reg_222_pp0_iter1_reg,
      O => \ap_CS_fsm[2]_i_3_n_0\
    );
\ap_enable_reg_pp0_iter0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8000000F800F800"
    )
        port map (
      I0 => Q(0),
      I1 => Loop_2_proc21_U0_ap_start,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => ap_rst_n,
      I4 => ap_enable_reg_pp0_iter0_i_2_n_0,
      I5 => Q(1),
      O => \ap_CS_fsm_reg[0]_0\
    );
ap_enable_reg_pp0_iter0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg_0,
      I1 => ap_enable_reg_pp0_iter0_reg_1,
      I2 => ap_enable_reg_pp0_iter0_reg_2,
      I3 => ap_enable_reg_pp0_iter0_reg_3,
      I4 => ap_enable_reg_pp0_iter0_i_3_n_0,
      I5 => ap_enable_reg_pp0_iter0_reg_4,
      O => ap_enable_reg_pp0_iter0_i_2_n_0
    );
ap_enable_reg_pp0_iter0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808AA08"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(15),
      I1 => \ap_CS_fsm_reg[2]\,
      I2 => icmp_ln36_reg_222_pp0_iter1_reg,
      I3 => \ireg_reg[16]_5\,
      I4 => \ireg_reg[16]_6\,
      O => ap_enable_reg_pp0_iter0_i_3_n_0
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_i_2_n_0,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => \ireg_reg[16]_5\,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter0_reg
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A0C0A0C0A0C0"
    )
        port map (
      I0 => \ireg_reg[16]_5\,
      I1 => \ap_CS_fsm_reg[2]\,
      I2 => ap_rst_n,
      I3 => ap_block_pp0_stage0_subdone,
      I4 => Loop_2_proc21_U0_ap_start,
      I5 => Q(0),
      O => ap_enable_reg_pp0_iter1_reg
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAC0EAC0"
    )
        port map (
      I0 => \^icmp_ln36_reg_222_reg[0]\(0),
      I1 => ap_rst_n,
      I2 => \count_reg[0]\,
      I3 => \count_reg[0]_0\,
      I4 => arg_0_TREADY,
      O => ap_rst_n_1
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \count_reg[0]\,
      I1 => arg_0_TREADY,
      I2 => \^icmp_ln36_reg_222_reg[0]\(0),
      I3 => \count_reg[0]_0\,
      O => count(0)
    );
\icmp_ln36_reg_222[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0E0E0E00000000"
    )
        port map (
      I0 => \^ap_rst_n_0\,
      I1 => \icmp_ln36_reg_222_reg[0]_1\,
      I2 => \icmp_ln36_reg_222_reg[0]_0\,
      I3 => p_in_1_stencil_stream_3_empty_n,
      I4 => p_in_1_stencil_stream_2_empty_n,
      I5 => Q(1),
      O => \^internal_empty_n_reg\
    );
\ireg[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(15),
      I1 => \ireg_reg[0]_0\(0),
      I2 => arg_0_TREADY,
      O => ireg01_out
    );
\ireg[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^ap_rst_n_0\,
      I1 => \ireg_reg[16]_6\,
      I2 => \ireg_reg[16]_5\,
      I3 => Q(1),
      I4 => p_in_1_stencil_stream_2_empty_n,
      I5 => p_in_1_stencil_stream_3_empty_n,
      O => \^icmp_ln36_reg_222_reg[0]\(0)
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[15]_0\(0),
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
      D => \ireg_reg[15]_0\(10),
      Q => \^ireg_reg[16]_0\(9),
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
      Q => \^ireg_reg[16]_0\(10),
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
      Q => \^ireg_reg[16]_0\(11),
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
      Q => \^ireg_reg[16]_0\(12),
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
      Q => \^ireg_reg[16]_0\(13),
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
      Q => \^ireg_reg[16]_0\(14),
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \^icmp_ln36_reg_222_reg[0]\(0),
      Q => \^ireg_reg[16]_0\(15),
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
      Q => \^ireg_reg[16]_0\(0),
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
      Q => \^ireg_reg[16]_0\(1),
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
      Q => \^ireg_reg[16]_0\(2),
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
      Q => \^ireg_reg[16]_0\(3),
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
      Q => \^ireg_reg[16]_0\(4),
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
      Q => \^ireg_reg[16]_0\(5),
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
      Q => \^ireg_reg[16]_0\(6),
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
      Q => \^ireg_reg[16]_0\(7),
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
      Q => \^ireg_reg[16]_0\(8),
      R => SR(0)
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(15),
      I1 => shiftReg_ce,
      I2 => \odata_reg[16]\,
      O => \ireg_reg[16]_2\(0)
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FEFE01"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(15),
      I1 => shiftReg_ce,
      I2 => \odata_reg[16]\,
      I3 => \mOutPtr_reg[1]_0\(0),
      I4 => \mOutPtr_reg[1]_0\(1),
      O => \ireg_reg[16]_4\(0)
    );
\mOutPtr[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FEFE01"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(15),
      I1 => shiftReg_ce,
      I2 => \odata_reg[16]\,
      I3 => \mOutPtr_reg[1]\(0),
      I4 => \mOutPtr_reg[1]\(1),
      O => \ireg_reg[16]_3\(0)
    );
\odata[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \odata_reg[0]\(0),
      I1 => \^ireg_reg[16]_0\(15),
      I2 => \ireg_reg_n_0_[0]\,
      O => \ireg_reg[16]_1\(0)
    );
\odata[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ireg_reg[16]_0\(15),
      O => \^ap_rst_n_0\
    );
\odata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ireg_reg[16]_0\(15),
      I1 => \odata_reg[16]\,
      O => \ireg_reg[16]_1\(1)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888888888888"
    )
        port map (
      I0 => Q(0),
      I1 => Loop_2_proc21_U0_ap_start,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => Q(1),
      I4 => ap_block_pp0_stage0_subdone,
      I5 => \p_hw_output_1_x_sca_1_reg_104_reg[8]\,
      O => \ap_CS_fsm_reg[0]\(0)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \p_hw_output_1_x_sca_1_reg_104_reg[8]\,
      I1 => ap_block_pp0_stage0_subdone,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter0,
      O => \ap_CS_fsm_reg[1]\(0)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F0F000F0F"
    )
        port map (
      I0 => p_in_1_stencil_stream_2_empty_n,
      I1 => p_in_1_stencil_stream_3_empty_n,
      I2 => \icmp_ln36_reg_222_reg[0]_0\,
      I3 => icmp_ln36_reg_222_pp0_iter1_reg,
      I4 => \ap_CS_fsm_reg[2]\,
      I5 => \^ap_rst_n_0\,
      O => ap_block_pp0_stage0_subdone
    );
\p_hw_output_1_y_sca_reg_93[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => Q(1),
      I2 => ap_block_pp0_stage0_subdone,
      I3 => \p_hw_output_1_x_sca_1_reg_104_reg[8]\,
      I4 => \p_hw_output_1_y_sca_reg_93_reg[0]\,
      I5 => \p_hw_output_1_y_sca_reg_93_reg[0]_0\(0),
      O => E(0)
    );
\tmp_last_V_reg_208[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFFFF04000000"
    )
        port map (
      I0 => \tmp_last_V_reg_208_reg[0]\(0),
      I1 => \tmp_last_V_reg_208_reg[0]_0\,
      I2 => \tmp_last_V_reg_208_reg[0]_1\,
      I3 => \^internal_empty_n_reg\,
      I4 => \p_hw_output_1_x_sca_1_reg_104_reg[8]\,
      I5 => \tmp_last_V_reg_208_reg[0]_2\(0),
      O => \p_hw_output_1_y_sca_reg_93_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf is
  port (
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    shiftReg_ce : out STD_LOGIC;
    indvar_flatten_reg_75 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    arg_1_TREADY_int : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln24_reg_111_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_NS_fsm15_out : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \SRL_SIG_reg[0][0]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_2\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_3\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_1 : in STD_LOGIC;
    \odata_reg[0]_0\ : in STD_LOGIC;
    \odata_reg[0]_1\ : in STD_LOGIC;
    icmp_ln24_fu_86_p2 : in STD_LOGIC;
    \icmp_ln24_reg_111_reg[0]_0\ : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \SRL_SIG[0][15]_i_2_n_0\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_3_n_0 : STD_LOGIC;
  signal \icmp_ln24_reg_111[0]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][15]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_75[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_75[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmp_value_V_reg_102[15]_i_1\ : label is "soft_lutpair10";
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
\SRL_SIG[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => \SRL_SIG[0][15]_i_2_n_0\,
      I1 => \SRL_SIG_reg[0][0]\,
      I2 => \SRL_SIG_reg[0][0]_0\,
      I3 => \SRL_SIG_reg[0][0]_1\,
      I4 => \SRL_SIG_reg[0][0]_2\,
      I5 => \SRL_SIG_reg[0][0]_3\,
      O => shiftReg_ce
    );
\SRL_SIG[0][15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \^q\(16),
      O => \SRL_SIG[0][15]_i_2_n_0\
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C550C0000000000"
    )
        port map (
      I0 => ap_NS_fsm15_out,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_enable_reg_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter1_i_3_n_0,
      I4 => ap_enable_reg_pp0_iter1_reg_0,
      I5 => ap_rst_n,
      O => ap_enable_reg_pp0_iter0_reg
    );
ap_enable_reg_pp0_iter1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => \SRL_SIG[0][15]_i_2_n_0\,
      I1 => \SRL_SIG_reg[0][0]\,
      I2 => \SRL_SIG_reg[0][0]_0\,
      I3 => \SRL_SIG_reg[0][0]_1\,
      I4 => \SRL_SIG_reg[0][0]_2\,
      I5 => ap_enable_reg_pp0_iter1_reg_1,
      O => ap_enable_reg_pp0_iter1_i_3_n_0
    );
\icmp_ln24_reg_111[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => icmp_ln24_fu_86_p2,
      I1 => \icmp_ln24_reg_111[0]_i_2_n_0\,
      I2 => \odata_reg[0]_0\,
      I3 => \icmp_ln24_reg_111_reg[0]_0\,
      O => \icmp_ln24_reg_111_reg[0]\
    );
\icmp_ln24_reg_111[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFFFFFF"
    )
        port map (
      I0 => \SRL_SIG_reg[0][0]_2\,
      I1 => \SRL_SIG_reg[0][0]_1\,
      I2 => \SRL_SIG_reg[0][0]_0\,
      I3 => \SRL_SIG_reg[0][0]\,
      I4 => \^q\(16),
      I5 => ap_enable_reg_pp0_iter0,
      O => \icmp_ln24_reg_111[0]_i_2_n_0\
    );
\indvar_flatten_reg_75[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => ap_NS_fsm15_out,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \odata_reg[0]_0\,
      I3 => \odata_reg[0]_1\,
      I4 => \^q\(16),
      O => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(16),
      I1 => \odata_reg[0]_1\,
      I2 => \odata_reg[0]_0\,
      I3 => ap_enable_reg_pp0_iter0,
      O => arg_1_TREADY_int
    );
\ireg[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5550000FFFFFFFF"
    )
        port map (
      I0 => \^q\(16),
      I1 => \odata_reg[0]_1\,
      I2 => \odata_reg[0]_0\,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => \ireg_reg[0]\(0),
      I5 => ap_rst_n,
      O => SR(0)
    );
\odata[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \odata_reg[0]_0\,
      I2 => \odata_reg[0]_1\,
      I3 => \^q\(16),
      O => p_0_in
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(0),
      Q => \^q\(0),
      R => SS(0)
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(10),
      Q => \^q\(10),
      R => SS(0)
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(11),
      Q => \^q\(11),
      R => SS(0)
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(12),
      Q => \^q\(12),
      R => SS(0)
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(13),
      Q => \^q\(13),
      R => SS(0)
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(14),
      Q => \^q\(14),
      R => SS(0)
    );
\odata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(15),
      Q => \^q\(15),
      R => SS(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(1),
      Q => \^q\(1),
      R => SS(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(2),
      Q => \^q\(2),
      R => SS(0)
    );
\odata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(16),
      Q => \^q\(16),
      R => SS(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(3),
      Q => \^q\(3),
      R => SS(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(4),
      Q => \^q\(4),
      R => SS(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(5),
      Q => \^q\(5),
      R => SS(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(6),
      Q => \^q\(6),
      R => SS(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(7),
      Q => \^q\(7),
      R => SS(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(8),
      Q => \^q\(8),
      R => SS(0)
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(9),
      Q => \^q\(9),
      R => SS(0)
    );
\tmp_value_V_reg_102[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => \odata_reg[0]_0\,
      I1 => \odata_reg[0]_1\,
      I2 => \^q\(16),
      I3 => ap_enable_reg_pp0_iter0,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_0_TREADY : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\ : entity is "obuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \odata[0]_i_1__1_n_0\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\ireg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => arg_0_TREADY,
      I2 => \ireg_reg[0]\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\odata[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => arg_0_TREADY,
      I1 => \^q\(1),
      O => \odata[0]_i_1__1_n_0\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__1_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => \odata_reg[1]_0\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__1_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => \odata_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \odata_reg[16]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    \ireg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\ : entity is "obuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \odata[15]_i_2_n_0\ : STD_LOGIC;
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
  SR(0) <= \^sr\(0);
\ireg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(16),
      I1 => arg_0_TREADY,
      I2 => \ireg_reg[0]\(0),
      I3 => ap_rst_n,
      O => \odata_reg[16]_0\(0)
    );
\odata[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\odata[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => arg_0_TREADY,
      I1 => \^q\(16),
      O => \odata[15]_i_2_n_0\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\odata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\odata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[15]_i_2_n_0\,
      D => D(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_Loop_2_bkb is
  port (
    start_for_Loop_2_proc21_U0_full_n : out STD_LOGIC;
    Loop_2_proc21_U0_ap_start : out STD_LOGIC;
    ap_NS_fsm1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_once_reg : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_Loop_2_bkb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_Loop_2_bkb is
  signal \^loop_2_proc21_u0_ap_start\ : STD_LOGIC;
  signal \internal_empty_n_i_1__1_n_0\ : STD_LOGIC;
  signal internal_empty_n_i_2_n_0 : STD_LOGIC;
  signal \internal_full_n_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^start_for_loop_2_proc21_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of internal_empty_n_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2\ : label is "soft_lutpair42";
begin
  Loop_2_proc21_U0_ap_start <= \^loop_2_proc21_u0_ap_start\;
  start_for_Loop_2_proc21_U0_full_n <= \^start_for_loop_2_proc21_u0_full_n\;
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^loop_2_proc21_u0_ap_start\,
      I1 => Q(0),
      O => ap_NS_fsm1
    );
\internal_empty_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \mOutPtr_reg[1]_0\,
      I3 => internal_empty_n_i_2_n_0,
      I4 => \^loop_2_proc21_u0_ap_start\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__1_n_0\
    );
internal_empty_n_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^start_for_loop_2_proc21_u0_full_n\,
      I1 => start_once_reg,
      O => internal_empty_n_i_2_n_0
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__1_n_0\,
      Q => \^loop_2_proc21_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFD5555"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => start_once_reg,
      I4 => \^start_for_loop_2_proc21_u0_full_n\,
      I5 => \mOutPtr_reg[1]_0\,
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
      Q => \^start_for_loop_2_proc21_u0_full_n\,
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
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D02F2FD0"
    )
        port map (
      I0 => \^start_for_loop_2_proc21_u0_full_n\,
      I1 => start_once_reg,
      I2 => \mOutPtr_reg[1]_0\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      I4 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S is
  port (
    p_in_1_stencil_stream_2_full_n : out STD_LOGIC;
    p_in_1_stencil_stream_2_empty_n : out STD_LOGIC;
    \SRL_SIG_reg[0][15]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[0][15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    \odata_reg[1]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[3]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S is
  signal \internal_empty_n_i_1__0_n_0\ : STD_LOGIC;
  signal \internal_empty_n_i_2__0_n_0\ : STD_LOGIC;
  signal internal_full_n_i_1_n_0 : STD_LOGIC;
  signal internal_full_n_i_2_n_0 : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \^moutptr_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^p_in_1_stencil_stream_2_empty_n\ : STD_LOGIC;
  signal \^p_in_1_stencil_stream_2_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of internal_full_n_i_2 : label is "soft_lutpair40";
begin
  \mOutPtr_reg[1]_0\(1 downto 0) <= \^moutptr_reg[1]_0\(1 downto 0);
  p_in_1_stencil_stream_2_empty_n <= \^p_in_1_stencil_stream_2_empty_n\;
  p_in_1_stencil_stream_2_full_n <= \^p_in_1_stencil_stream_2_full_n\;
U_fifo_w32_d1_S_ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S_shiftReg
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(0) => Q(0),
      \SRL_SIG_reg[0][15]_0\(14 downto 0) => \SRL_SIG_reg[0][15]\(14 downto 0),
      \SRL_SIG_reg[0][15]_1\(15 downto 0) => \SRL_SIG_reg[0][15]_0\(15 downto 0),
      ap_clk => ap_clk,
      \odata_reg[1]\(15 downto 0) => \odata_reg[1]\(15 downto 0),
      \odata_reg[3]\ => \odata_reg[3]\,
      shiftReg_ce => shiftReg_ce
    );
\internal_empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0E0F0C00000"
    )
        port map (
      I0 => \internal_empty_n_i_2__0_n_0\,
      I1 => \odata_reg[1]\(15),
      I2 => ap_rst_n,
      I3 => internal_full_n_reg_0,
      I4 => shiftReg_ce,
      I5 => \^p_in_1_stencil_stream_2_empty_n\,
      O => \internal_empty_n_i_1__0_n_0\
    );
\internal_empty_n_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^moutptr_reg[1]_0\(1),
      I1 => \^moutptr_reg[1]_0\(0),
      O => \internal_empty_n_i_2__0_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__0_n_0\,
      Q => \^p_in_1_stencil_stream_2_empty_n\,
      R => '0'
    );
internal_full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C8C8CCFFFFFFFFF"
    )
        port map (
      I0 => internal_full_n_i_2_n_0,
      I1 => \^p_in_1_stencil_stream_2_full_n\,
      I2 => shiftReg_ce,
      I3 => internal_full_n_reg_0,
      I4 => \odata_reg[1]\(15),
      I5 => ap_rst_n,
      O => internal_full_n_i_1_n_0
    );
internal_full_n_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^moutptr_reg[1]_0\(1),
      I1 => \^moutptr_reg[1]_0\(0),
      O => internal_full_n_i_2_n_0
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_full_n_i_1_n_0,
      Q => \^p_in_1_stencil_stream_2_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^moutptr_reg[1]_0\(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \^moutptr_reg[1]_0\(0),
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr_reg[1]_1\(0),
      Q => \^moutptr_reg[1]_0\(1),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both is
  port (
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    shiftReg_ce : out STD_LOGIC;
    indvar_flatten_reg_75 : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    indvar_flatten_reg_75_reg_9_sp_1 : out STD_LOGIC;
    arg_1_TREADY_int : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_1_TREADY : out STD_LOGIC;
    \icmp_ln24_reg_111_reg[0]\ : out STD_LOGIC;
    \odata_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_NS_fsm15_out : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \SRL_SIG_reg[0][0]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_in_1_stencil_stream_3_full_n : in STD_LOGIC;
    p_in_1_stencil_stream_2_full_n : in STD_LOGIC;
    \icmp_ln24_reg_111_reg[0]_0\ : in STD_LOGIC;
    indvar_flatten_reg_75_reg : in STD_LOGIC_VECTOR ( 16 downto 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    icmp_ln24_fu_86_p2 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both is
  signal \^ap_cs_fsm_reg[1]\ : STD_LOGIC;
  signal arg_1_TVALID_int : STD_LOGIC;
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_17 : STD_LOGIC;
  signal ibuf_inst_n_18 : STD_LOGIC;
  signal ibuf_inst_n_19 : STD_LOGIC;
  signal ibuf_inst_n_2 : STD_LOGIC;
  signal ibuf_inst_n_20 : STD_LOGIC;
  signal ibuf_inst_n_21 : STD_LOGIC;
  signal ibuf_inst_n_22 : STD_LOGIC;
  signal ibuf_inst_n_23 : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_4 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_9_sn_1 : STD_LOGIC;
  signal obuf_inst_n_23 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  \ap_CS_fsm_reg[1]\ <= \^ap_cs_fsm_reg[1]\;
  indvar_flatten_reg_75_reg_9_sp_1 <= indvar_flatten_reg_75_reg_9_sn_1;
ibuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf
     port map (
      D(16 downto 0) => D(16 downto 0),
      Q(0) => Q(0),
      SR(0) => obuf_inst_n_23,
      \ap_CS_fsm_reg[1]\ => \^ap_cs_fsm_reg[1]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_rst_n => ap_rst_n,
      arg_1_TREADY => arg_1_TREADY,
      indvar_flatten_reg_75_reg(16 downto 0) => indvar_flatten_reg_75_reg(16 downto 0),
      \indvar_flatten_reg_75_reg[9]_0\ => ibuf_inst_n_2,
      indvar_flatten_reg_75_reg_13_sp_1 => ibuf_inst_n_3,
      indvar_flatten_reg_75_reg_1_sp_1 => ibuf_inst_n_4,
      indvar_flatten_reg_75_reg_3_sp_1 => ibuf_inst_n_5,
      indvar_flatten_reg_75_reg_9_sp_1 => indvar_flatten_reg_75_reg_9_sn_1,
      \ireg_reg[0]_0\ => ap_enable_reg_pp0_iter1_reg_0,
      \ireg_reg[0]_1\ => \icmp_ln24_reg_111_reg[0]_0\,
      \ireg_reg[0]_2\(0) => arg_1_TVALID_int,
      \ireg_reg[32]_0\(0) => p_0_in,
      \ireg_reg[32]_1\(16) => ibuf_inst_n_8,
      \ireg_reg[32]_1\(15) => ibuf_inst_n_9,
      \ireg_reg[32]_1\(14) => ibuf_inst_n_10,
      \ireg_reg[32]_1\(13) => ibuf_inst_n_11,
      \ireg_reg[32]_1\(12) => ibuf_inst_n_12,
      \ireg_reg[32]_1\(11) => ibuf_inst_n_13,
      \ireg_reg[32]_1\(10) => ibuf_inst_n_14,
      \ireg_reg[32]_1\(9) => ibuf_inst_n_15,
      \ireg_reg[32]_1\(8) => ibuf_inst_n_16,
      \ireg_reg[32]_1\(7) => ibuf_inst_n_17,
      \ireg_reg[32]_1\(6) => ibuf_inst_n_18,
      \ireg_reg[32]_1\(5) => ibuf_inst_n_19,
      \ireg_reg[32]_1\(4) => ibuf_inst_n_20,
      \ireg_reg[32]_1\(3) => ibuf_inst_n_21,
      \ireg_reg[32]_1\(2) => ibuf_inst_n_22,
      \ireg_reg[32]_1\(1) => ibuf_inst_n_23,
      \ireg_reg[32]_1\(0) => ibuf_inst_n_24,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n
    );
obuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf
     port map (
      D(16) => ibuf_inst_n_8,
      D(15) => ibuf_inst_n_9,
      D(14) => ibuf_inst_n_10,
      D(13) => ibuf_inst_n_11,
      D(12) => ibuf_inst_n_12,
      D(11) => ibuf_inst_n_13,
      D(10) => ibuf_inst_n_14,
      D(9) => ibuf_inst_n_15,
      D(8) => ibuf_inst_n_16,
      D(7) => ibuf_inst_n_17,
      D(6) => ibuf_inst_n_18,
      D(5) => ibuf_inst_n_19,
      D(4) => ibuf_inst_n_20,
      D(3) => ibuf_inst_n_21,
      D(2) => ibuf_inst_n_22,
      D(1) => ibuf_inst_n_23,
      D(0) => ibuf_inst_n_24,
      E(0) => E(0),
      Q(16) => arg_1_TVALID_int,
      Q(15 downto 0) => \odata_reg[15]\(15 downto 0),
      SR(0) => obuf_inst_n_23,
      \SRL_SIG_reg[0][0]\ => ibuf_inst_n_2,
      \SRL_SIG_reg[0][0]_0\ => ibuf_inst_n_3,
      \SRL_SIG_reg[0][0]_1\ => ibuf_inst_n_4,
      \SRL_SIG_reg[0][0]_2\ => ibuf_inst_n_5,
      \SRL_SIG_reg[0][0]_3\ => \SRL_SIG_reg[0][0]\,
      SS(0) => SS(0),
      ap_NS_fsm15_out => ap_NS_fsm15_out,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg,
      ap_enable_reg_pp0_iter1_reg_0 => ap_enable_reg_pp0_iter1_reg_0,
      ap_enable_reg_pp0_iter1_reg_1 => ap_enable_reg_pp0_iter1_reg_1,
      ap_rst_n => ap_rst_n,
      arg_1_TREADY_int => arg_1_TREADY_int,
      icmp_ln24_fu_86_p2 => icmp_ln24_fu_86_p2,
      \icmp_ln24_reg_111_reg[0]\ => \icmp_ln24_reg_111_reg[0]\,
      \icmp_ln24_reg_111_reg[0]_0\ => \icmp_ln24_reg_111_reg[0]_0\,
      indvar_flatten_reg_75 => indvar_flatten_reg_75,
      \ireg_reg[0]\(0) => p_0_in,
      \odata_reg[0]_0\ => \^ap_cs_fsm_reg[1]\,
      \odata_reg[0]_1\ => indvar_flatten_reg_75_reg_9_sn_1,
      shiftReg_ce => shiftReg_ce
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\ is
  port (
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    arg_0_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\ : entity is "regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\ is
  signal cdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal obuf_inst_n_0 : STD_LOGIC;
  signal obuf_inst_n_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_2,
      ap_clk => ap_clk,
      arg_0_TREADY => arg_0_TREADY,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[1]_0\(1) => Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
      \ireg_reg[1]_0\(0) => D(0)
    );
obuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(1) => obuf_inst_n_0,
      Q(0) => arg_0_TLAST(0),
      SR(0) => obuf_inst_n_2,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TREADY => arg_0_TREADY,
      \ireg_reg[0]\(0) => p_0_in,
      \odata_reg[1]_0\(0) => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ireg_reg[16]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC;
    Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    \odata_reg[16]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \ireg_reg[16]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_hw_output_1_y_sca_reg_93_reg[8]\ : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    \ireg_reg[16]_3\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    Loop_2_proc21_U0_ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_NS_fsm1 : in STD_LOGIC;
    icmp_ln36_fu_115_p2 : in STD_LOGIC;
    icmp_ln36_reg_222_pp0_iter1_reg : in STD_LOGIC;
    \p_hw_output_1_x_sca_1_reg_104_reg[8]\ : in STD_LOGIC;
    \p_hw_output_1_y_sca_reg_93_reg[0]\ : in STD_LOGIC;
    \p_hw_output_1_y_sca_reg_93_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_in_1_stencil_stream_2_empty_n : in STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : in STD_LOGIC;
    \icmp_ln36_reg_222_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_1 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_3 : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_4 : in STD_LOGIC;
    \ireg_reg[16]_4\ : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    \odata_reg[16]_0\ : in STD_LOGIC;
    \odata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    shiftReg_ce : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp_last_V_reg_208_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_last_V_reg_208_reg[0]_0\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_1\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln36_reg_222_reg[0]_0\ : in STD_LOGIC;
    \ireg_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \odata_reg[15]\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\ : entity is "regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[0]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_27 : STD_LOGIC;
  signal ibuf_inst_n_28 : STD_LOGIC;
  signal \^ireg_reg[16]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal obuf_inst_n_18 : STD_LOGIC;
  signal \^odata_reg[16]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_3\ : label is "soft_lutpair19";
begin
  SR(0) <= \^sr\(0);
  \ireg_reg[16]\(15 downto 0) <= \^ireg_reg[16]\(15 downto 0);
  \odata_reg[16]\(16 downto 0) <= \^odata_reg[16]\(16 downto 0);
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"003A"
    )
        port map (
      I0 => \ap_CS_fsm[0]_i_2_n_0\,
      I1 => Loop_2_proc21_U0_ap_start,
      I2 => Q(0),
      I3 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => Q(2),
      I1 => arg_0_TREADY,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      O => \ap_CS_fsm[0]_i_2_n_0\
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555545454545"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => arg_0_TREADY,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[0]\,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ibuf_inst_n_24,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => count(1),
      Q => \count_reg_n_0_[1]\,
      R => \^sr\(0)
    );
ibuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\
     port map (
      D(1 downto 0) => D(2 downto 1),
      E(0) => E(0),
      Loop_2_proc21_U0_ap_start => Loop_2_proc21_U0_ap_start,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => obuf_inst_n_18,
      \ap_CS_fsm_reg[0]\(0) => \ap_CS_fsm_reg[0]\(0),
      \ap_CS_fsm_reg[0]_0\ => \ap_CS_fsm_reg[0]_0\,
      \ap_CS_fsm_reg[1]\(0) => \ap_CS_fsm_reg[1]\(0),
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm_reg[2]\,
      \ap_CS_fsm_reg[2]_0\ => \ap_CS_fsm[2]_i_2_n_0\,
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter0_reg_0 => ap_enable_reg_pp0_iter0_reg_0,
      ap_enable_reg_pp0_iter0_reg_1 => ap_enable_reg_pp0_iter0_reg_1,
      ap_enable_reg_pp0_iter0_reg_2 => ap_enable_reg_pp0_iter0_reg_2,
      ap_enable_reg_pp0_iter0_reg_3 => ap_enable_reg_pp0_iter0_reg_3,
      ap_enable_reg_pp0_iter0_reg_4 => ap_enable_reg_pp0_iter0_reg_4,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      ap_rst_n_1 => ibuf_inst_n_24,
      arg_0_TREADY => arg_0_TREADY,
      count(0) => count(1),
      \count_reg[0]\ => \count_reg_n_0_[0]\,
      \count_reg[0]_0\ => \count_reg_n_0_[1]\,
      icmp_ln36_fu_115_p2 => icmp_ln36_fu_115_p2,
      icmp_ln36_reg_222_pp0_iter1_reg => icmp_ln36_reg_222_pp0_iter1_reg,
      \icmp_ln36_reg_222_reg[0]\(0) => Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
      \icmp_ln36_reg_222_reg[0]_0\ => \icmp_ln36_reg_222_reg[0]\,
      \icmp_ln36_reg_222_reg[0]_1\ => \icmp_ln36_reg_222_reg[0]_0\,
      internal_empty_n_reg => internal_empty_n_reg_0,
      \ireg_reg[0]_0\(0) => \^odata_reg[16]\(16),
      \ireg_reg[15]_0\(15 downto 0) => \ireg_reg[15]\(15 downto 0),
      \ireg_reg[16]_0\(15 downto 0) => \^ireg_reg[16]\(15 downto 0),
      \ireg_reg[16]_1\(1) => ibuf_inst_n_27,
      \ireg_reg[16]_1\(0) => ibuf_inst_n_28,
      \ireg_reg[16]_2\(0) => \ireg_reg[16]_0\(0),
      \ireg_reg[16]_3\(0) => \ireg_reg[16]_1\(0),
      \ireg_reg[16]_4\(0) => \ireg_reg[16]_2\(0),
      \ireg_reg[16]_5\ => \ireg_reg[16]_3\,
      \ireg_reg[16]_6\ => \ireg_reg[16]_4\,
      \mOutPtr_reg[1]\(1 downto 0) => \mOutPtr_reg[1]\(1 downto 0),
      \mOutPtr_reg[1]_0\(1 downto 0) => \mOutPtr_reg[1]_0\(1 downto 0),
      \odata_reg[0]\(0) => \odata_reg[0]\(0),
      \odata_reg[16]\ => \odata_reg[16]_0\,
      \p_hw_output_1_x_sca_1_reg_104_reg[8]\ => \p_hw_output_1_x_sca_1_reg_104_reg[8]\,
      \p_hw_output_1_y_sca_reg_93_reg[0]\ => \p_hw_output_1_y_sca_reg_93_reg[0]\,
      \p_hw_output_1_y_sca_reg_93_reg[0]_0\(0) => \p_hw_output_1_y_sca_reg_93_reg[0]_0\(0),
      \p_hw_output_1_y_sca_reg_93_reg[8]\ => \p_hw_output_1_y_sca_reg_93_reg[8]\,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      shiftReg_ce => shiftReg_ce,
      \tmp_last_V_reg_208_reg[0]\(0) => \tmp_last_V_reg_208_reg[0]\(0),
      \tmp_last_V_reg_208_reg[0]_0\ => \tmp_last_V_reg_208_reg[0]_0\,
      \tmp_last_V_reg_208_reg[0]_1\ => \tmp_last_V_reg_208_reg[0]_1\,
      \tmp_last_V_reg_208_reg[0]_2\(0) => \tmp_last_V_reg_208_reg[0]_2\(0)
    );
\mOutPtr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2220000"
    )
        port map (
      I0 => Loop_2_proc21_U0_ap_start,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => arg_0_TREADY,
      I4 => Q(2),
      O => internal_empty_n_reg
    );
obuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\
     port map (
      D(16) => ibuf_inst_n_27,
      D(15 downto 1) => \odata_reg[15]\(14 downto 0),
      D(0) => ibuf_inst_n_28,
      Q(16 downto 0) => \^odata_reg[16]\(16 downto 0),
      SR(0) => \^sr\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TREADY => arg_0_TREADY,
      \ireg_reg[0]\(0) => \^ireg_reg[16]\(15),
      \odata_reg[16]_0\(0) => obuf_inst_n_18
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20 is
  port (
    start_once_reg : out STD_LOGIC;
    shiftReg_ce : out STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    p_in_1_stencil_stream_2_full_n : in STD_LOGIC;
    p_in_1_stencil_stream_3_full_n : in STD_LOGIC;
    start_for_Loop_2_proc21_U0_full_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \mOutPtr_reg[1]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20 is
  signal \SRL_SIG[0][15]_i_7_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_5_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_6_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_7_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[2]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_NS_fsm15_out : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_2_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_4_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal arg_1_TREADY_int : STD_LOGIC;
  signal icmp_ln24_fu_86_p2 : STD_LOGIC;
  signal \icmp_ln24_reg_111_reg_n_0_[0]\ : STD_LOGIC;
  signal indvar_flatten_reg_75 : STD_LOGIC;
  signal \indvar_flatten_reg_75[0]_i_4_n_0\ : STD_LOGIC;
  signal indvar_flatten_reg_75_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_10\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_11\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_12\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_13\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_14\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_15\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_8\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[0]_i_3_n_9\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_reg_75_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_0 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_10 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_11 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_12 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_13 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_14 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_15 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_16 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_17 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_18 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_19 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_20 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_21 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_22 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_23 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_24 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_3 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_4 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_8 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_9 : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
  signal start_once_reg_i_1_n_0 : STD_LOGIC;
  signal tmp_value_V_reg_1020 : STD_LOGIC;
  signal \NLW_indvar_flatten_reg_75_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_indvar_flatten_reg_75_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][15]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_3\ : label is "soft_lutpair11";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_75_reg[0]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_75_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_75_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of start_once_reg_i_1 : label is "soft_lutpair13";
begin
  start_once_reg <= \^start_once_reg\;
\SRL_SIG[0][15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => p_in_1_stencil_stream_2_full_n,
      I1 => p_in_1_stencil_stream_3_full_n,
      I2 => ap_enable_reg_pp0_iter1_reg_n_0,
      I3 => \icmp_ln24_reg_111_reg_n_0_[0]\,
      I4 => ap_CS_fsm_pp0_stage0,
      O => \SRL_SIG[0][15]_i_7_n_0\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF57"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => start_for_Loop_2_proc21_U0_full_n,
      I2 => \^start_once_reg\,
      I3 => \ap_CS_fsm_reg_n_0_[2]\,
      I4 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFAAAAAAAA"
    )
        port map (
      I0 => ap_NS_fsm15_out,
      I1 => \ap_CS_fsm[1]_i_3_n_0\,
      I2 => icmp_ln24_fu_86_p2,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => start_for_Loop_2_proc21_U0_full_n,
      I2 => \^start_once_reg\,
      O => ap_NS_fsm15_out
    );
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \icmp_ln24_reg_111_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => p_in_1_stencil_stream_2_full_n,
      I3 => p_in_1_stencil_stream_3_full_n,
      O => \ap_CS_fsm[1]_i_3_n_0\
    );
\ap_CS_fsm[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_5_n_0\,
      I1 => \ap_CS_fsm[1]_i_6_n_0\,
      I2 => \ap_CS_fsm[1]_i_7_n_0\,
      I3 => indvar_flatten_reg_75_reg(12),
      I4 => indvar_flatten_reg_75_reg(1),
      I5 => indvar_flatten_reg_75_reg(4),
      O => icmp_ln24_fu_86_p2
    );
\ap_CS_fsm[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(14),
      I1 => indvar_flatten_reg_75_reg(16),
      I2 => indvar_flatten_reg_75_reg(8),
      I3 => indvar_flatten_reg_75_reg(6),
      I4 => indvar_flatten_reg_75_reg(5),
      I5 => indvar_flatten_reg_75_reg(0),
      O => \ap_CS_fsm[1]_i_5_n_0\
    );
\ap_CS_fsm[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(3),
      I1 => indvar_flatten_reg_75_reg(11),
      I2 => indvar_flatten_reg_75_reg(15),
      I3 => indvar_flatten_reg_75_reg(9),
      O => \ap_CS_fsm[1]_i_6_n_0\
    );
\ap_CS_fsm[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(7),
      I1 => indvar_flatten_reg_75_reg(10),
      I2 => indvar_flatten_reg_75_reg(2),
      I3 => indvar_flatten_reg_75_reg(13),
      O => \ap_CS_fsm[1]_i_7_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => regslice_both_arg_1_V_value_V_U_n_3,
      I2 => regslice_both_arg_1_V_value_V_U_n_4,
      O => ap_NS_fsm(2)
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
      S => SS(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage0,
      R => SS(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \ap_CS_fsm_reg_n_0_[2]\,
      R => SS(0)
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD00000"
    )
        port map (
      I0 => regslice_both_arg_1_V_value_V_U_n_3,
      I1 => regslice_both_arg_1_V_value_V_U_n_4,
      I2 => ap_NS_fsm15_out,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter0_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_0,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_i_4_n_0,
      I1 => \ap_CS_fsm[1]_i_7_n_0\,
      I2 => \ap_CS_fsm[1]_i_6_n_0\,
      I3 => \ap_CS_fsm[1]_i_5_n_0\,
      I4 => \ap_CS_fsm[1]_i_3_n_0\,
      O => ap_enable_reg_pp0_iter1_i_2_n_0
    );
ap_enable_reg_pp0_iter1_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(12),
      I1 => indvar_flatten_reg_75_reg(1),
      I2 => indvar_flatten_reg_75_reg(4),
      O => ap_enable_reg_pp0_iter1_i_4_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_1_V_value_V_U_n_0,
      Q => ap_enable_reg_pp0_iter1_reg_n_0,
      R => '0'
    );
\icmp_ln24_reg_111_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_1_V_value_V_U_n_8,
      Q => \icmp_ln24_reg_111_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_reg_75[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(0),
      O => \indvar_flatten_reg_75[0]_i_4_n_0\
    );
\indvar_flatten_reg_75_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_15\,
      Q => indvar_flatten_reg_75_reg(0),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[0]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \indvar_flatten_reg_75_reg[0]_i_3_n_0\,
      CO(6) => \indvar_flatten_reg_75_reg[0]_i_3_n_1\,
      CO(5) => \indvar_flatten_reg_75_reg[0]_i_3_n_2\,
      CO(4) => \indvar_flatten_reg_75_reg[0]_i_3_n_3\,
      CO(3) => \indvar_flatten_reg_75_reg[0]_i_3_n_4\,
      CO(2) => \indvar_flatten_reg_75_reg[0]_i_3_n_5\,
      CO(1) => \indvar_flatten_reg_75_reg[0]_i_3_n_6\,
      CO(0) => \indvar_flatten_reg_75_reg[0]_i_3_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \indvar_flatten_reg_75_reg[0]_i_3_n_8\,
      O(6) => \indvar_flatten_reg_75_reg[0]_i_3_n_9\,
      O(5) => \indvar_flatten_reg_75_reg[0]_i_3_n_10\,
      O(4) => \indvar_flatten_reg_75_reg[0]_i_3_n_11\,
      O(3) => \indvar_flatten_reg_75_reg[0]_i_3_n_12\,
      O(2) => \indvar_flatten_reg_75_reg[0]_i_3_n_13\,
      O(1) => \indvar_flatten_reg_75_reg[0]_i_3_n_14\,
      O(0) => \indvar_flatten_reg_75_reg[0]_i_3_n_15\,
      S(7 downto 1) => indvar_flatten_reg_75_reg(7 downto 1),
      S(0) => \indvar_flatten_reg_75[0]_i_4_n_0\
    );
\indvar_flatten_reg_75_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_13\,
      Q => indvar_flatten_reg_75_reg(10),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_12\,
      Q => indvar_flatten_reg_75_reg(11),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_11\,
      Q => indvar_flatten_reg_75_reg(12),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_10\,
      Q => indvar_flatten_reg_75_reg(13),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_9\,
      Q => indvar_flatten_reg_75_reg(14),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_8\,
      Q => indvar_flatten_reg_75_reg(15),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[16]_i_1_n_15\,
      Q => indvar_flatten_reg_75_reg(16),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_reg_75_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_indvar_flatten_reg_75_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_indvar_flatten_reg_75_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \indvar_flatten_reg_75_reg[16]_i_1_n_15\,
      S(7 downto 1) => B"0000000",
      S(0) => indvar_flatten_reg_75_reg(16)
    );
\indvar_flatten_reg_75_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_14\,
      Q => indvar_flatten_reg_75_reg(1),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_13\,
      Q => indvar_flatten_reg_75_reg(2),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_12\,
      Q => indvar_flatten_reg_75_reg(3),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_11\,
      Q => indvar_flatten_reg_75_reg(4),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_10\,
      Q => indvar_flatten_reg_75_reg(5),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_9\,
      Q => indvar_flatten_reg_75_reg(6),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[0]_i_3_n_8\,
      Q => indvar_flatten_reg_75_reg(7),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_15\,
      Q => indvar_flatten_reg_75_reg(8),
      R => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_reg_75_reg[0]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_reg_75_reg[8]_i_1_n_0\,
      CO(6) => \indvar_flatten_reg_75_reg[8]_i_1_n_1\,
      CO(5) => \indvar_flatten_reg_75_reg[8]_i_1_n_2\,
      CO(4) => \indvar_flatten_reg_75_reg[8]_i_1_n_3\,
      CO(3) => \indvar_flatten_reg_75_reg[8]_i_1_n_4\,
      CO(2) => \indvar_flatten_reg_75_reg[8]_i_1_n_5\,
      CO(1) => \indvar_flatten_reg_75_reg[8]_i_1_n_6\,
      CO(0) => \indvar_flatten_reg_75_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_reg_75_reg[8]_i_1_n_8\,
      O(6) => \indvar_flatten_reg_75_reg[8]_i_1_n_9\,
      O(5) => \indvar_flatten_reg_75_reg[8]_i_1_n_10\,
      O(4) => \indvar_flatten_reg_75_reg[8]_i_1_n_11\,
      O(3) => \indvar_flatten_reg_75_reg[8]_i_1_n_12\,
      O(2) => \indvar_flatten_reg_75_reg[8]_i_1_n_13\,
      O(1) => \indvar_flatten_reg_75_reg[8]_i_1_n_14\,
      O(0) => \indvar_flatten_reg_75_reg[8]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_reg_75_reg(15 downto 8)
    );
\indvar_flatten_reg_75_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => arg_1_TREADY_int,
      D => \indvar_flatten_reg_75_reg[8]_i_1_n_14\,
      Q => indvar_flatten_reg_75_reg(9),
      R => indvar_flatten_reg_75
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_Loop_2_proc21_U0_full_n,
      I2 => \mOutPtr_reg[1]\,
      O => E(0)
    );
regslice_both_arg_1_V_value_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both
     port map (
      D(16 downto 0) => D(16 downto 0),
      E(0) => tmp_value_V_reg_1020,
      Q(0) => ap_CS_fsm_pp0_stage0,
      \SRL_SIG_reg[0][0]\ => \SRL_SIG[0][15]_i_7_n_0\,
      SS(0) => SS(0),
      \ap_CS_fsm_reg[1]\ => regslice_both_arg_1_V_value_V_U_n_3,
      ap_NS_fsm15_out => ap_NS_fsm15_out,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => regslice_both_arg_1_V_value_V_U_n_0,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_i_2_n_0,
      ap_enable_reg_pp0_iter1_reg_0 => ap_enable_reg_pp0_iter1_reg_n_0,
      ap_enable_reg_pp0_iter1_reg_1 => \ap_CS_fsm[1]_i_3_n_0\,
      ap_rst_n => ap_rst_n,
      arg_1_TREADY => arg_1_TREADY,
      arg_1_TREADY_int => arg_1_TREADY_int,
      icmp_ln24_fu_86_p2 => icmp_ln24_fu_86_p2,
      \icmp_ln24_reg_111_reg[0]\ => regslice_both_arg_1_V_value_V_U_n_8,
      \icmp_ln24_reg_111_reg[0]_0\ => \icmp_ln24_reg_111_reg_n_0_[0]\,
      indvar_flatten_reg_75 => indvar_flatten_reg_75,
      indvar_flatten_reg_75_reg(16 downto 0) => indvar_flatten_reg_75_reg(16 downto 0),
      indvar_flatten_reg_75_reg_9_sp_1 => regslice_both_arg_1_V_value_V_U_n_4,
      \odata_reg[15]\(15) => regslice_both_arg_1_V_value_V_U_n_9,
      \odata_reg[15]\(14) => regslice_both_arg_1_V_value_V_U_n_10,
      \odata_reg[15]\(13) => regslice_both_arg_1_V_value_V_U_n_11,
      \odata_reg[15]\(12) => regslice_both_arg_1_V_value_V_U_n_12,
      \odata_reg[15]\(11) => regslice_both_arg_1_V_value_V_U_n_13,
      \odata_reg[15]\(10) => regslice_both_arg_1_V_value_V_U_n_14,
      \odata_reg[15]\(9) => regslice_both_arg_1_V_value_V_U_n_15,
      \odata_reg[15]\(8) => regslice_both_arg_1_V_value_V_U_n_16,
      \odata_reg[15]\(7) => regslice_both_arg_1_V_value_V_U_n_17,
      \odata_reg[15]\(6) => regslice_both_arg_1_V_value_V_U_n_18,
      \odata_reg[15]\(5) => regslice_both_arg_1_V_value_V_U_n_19,
      \odata_reg[15]\(4) => regslice_both_arg_1_V_value_V_U_n_20,
      \odata_reg[15]\(3) => regslice_both_arg_1_V_value_V_U_n_21,
      \odata_reg[15]\(2) => regslice_both_arg_1_V_value_V_U_n_22,
      \odata_reg[15]\(1) => regslice_both_arg_1_V_value_V_U_n_23,
      \odata_reg[15]\(0) => regslice_both_arg_1_V_value_V_U_n_24,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n,
      shiftReg_ce => shiftReg_ce
    );
start_once_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[2]\,
      I1 => start_for_Loop_2_proc21_U0_full_n,
      I2 => \^start_once_reg\,
      O => start_once_reg_i_1_n_0
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => start_once_reg_i_1_n_0,
      Q => \^start_once_reg\,
      R => SS(0)
    );
\tmp_value_V_reg_102_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_24,
      Q => Q(0),
      R => '0'
    );
\tmp_value_V_reg_102_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_14,
      Q => Q(10),
      R => '0'
    );
\tmp_value_V_reg_102_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_13,
      Q => Q(11),
      R => '0'
    );
\tmp_value_V_reg_102_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_12,
      Q => Q(12),
      R => '0'
    );
\tmp_value_V_reg_102_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_11,
      Q => Q(13),
      R => '0'
    );
\tmp_value_V_reg_102_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_10,
      Q => Q(14),
      R => '0'
    );
\tmp_value_V_reg_102_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_9,
      Q => Q(15),
      R => '0'
    );
\tmp_value_V_reg_102_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_23,
      Q => Q(1),
      R => '0'
    );
\tmp_value_V_reg_102_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_22,
      Q => Q(2),
      R => '0'
    );
\tmp_value_V_reg_102_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_21,
      Q => Q(3),
      R => '0'
    );
\tmp_value_V_reg_102_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_20,
      Q => Q(4),
      R => '0'
    );
\tmp_value_V_reg_102_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_19,
      Q => Q(5),
      R => '0'
    );
\tmp_value_V_reg_102_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_18,
      Q => Q(6),
      R => '0'
    );
\tmp_value_V_reg_102_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_17,
      Q => Q(7),
      R => '0'
    );
\tmp_value_V_reg_102_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_16,
      Q => Q(8),
      R => '0'
    );
\tmp_value_V_reg_102_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_15,
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_2_proc21 is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_0 : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    \odata_reg[16]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[16]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Loop_2_proc21_U0_ap_start : in STD_LOGIC;
    ap_NS_fsm1 : in STD_LOGIC;
    p_in_1_stencil_stream_2_empty_n : in STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    \odata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    shiftReg_ce : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \odata_reg[15]\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_2_proc21;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_2_proc21 is
  signal Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_ln36_1_fu_121_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_4_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_reg_n_0 : STD_LOGIC;
  signal icmp_ln36_fu_115_p2 : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_6_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_7_n_0\ : STD_LOGIC;
  signal icmp_ln36_reg_222_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln36_reg_222_reg_n_0_[0]\ : STD_LOGIC;
  signal indvar_flatten_reg_82 : STD_LOGIC;
  signal \indvar_flatten_reg_82[0]_i_2_n_0\ : STD_LOGIC;
  signal indvar_flatten_reg_82_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_reg_82_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \^internal_empty_n_reg\ : STD_LOGIC;
  signal p_hw_output_1_x_sca_1_reg_104 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_10_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_11_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_12_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_8_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_9_n_0\ : STD_LOGIC;
  signal p_hw_output_1_x_sca_fu_187_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_hw_output_1_y_sca_reg_93 : STD_LOGIC;
  signal \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\ : STD_LOGIC;
  signal p_hw_output_1_y_sca_reg_93_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal regslice_both_arg_0_V_value_V_U_n_1 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_2 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_25 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_48 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_49 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_50 : STD_LOGIC;
  signal tmp_last_V_reg_208 : STD_LOGIC;
  signal \tmp_last_V_reg_208[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_last_V_reg_208[0]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_indvar_flatten_reg_82_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_indvar_flatten_reg_82_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \icmp_ln36_reg_222[0]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \icmp_ln36_reg_222[0]_i_4\ : label is "soft_lutpair25";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_82_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_82_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_82_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \odata[16]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[8]_i_12\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[8]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[8]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tmp_last_V_reg_208[0]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tmp_last_V_reg_208[0]_i_3\ : label is "soft_lutpair21";
begin
  Q(0) <= \^q\(0);
  SS(0) <= \^ss\(0);
  internal_empty_n_reg <= \^internal_empty_n_reg\;
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^q\(0),
      S => \^ss\(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage0,
      R => \^ss\(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state5,
      R => \^ss\(0)
    );
ap_enable_reg_pp0_iter0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \icmp_ln36_reg_222_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => p_in_1_stencil_stream_3_empty_n,
      I3 => p_in_1_stencil_stream_2_empty_n,
      O => ap_enable_reg_pp0_iter0_i_4_n_0
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_0_V_value_V_U_n_25,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_0_V_value_V_U_n_1,
      Q => ap_enable_reg_pp0_iter1_reg_n_0,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_0_V_value_V_U_n_2,
      Q => ap_enable_reg_pp0_iter2_reg_n_0,
      R => '0'
    );
\icmp_ln36_reg_222[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \icmp_ln36_reg_222[0]_i_5_n_0\,
      I1 => \icmp_ln36_reg_222[0]_i_6_n_0\,
      I2 => \icmp_ln36_reg_222[0]_i_7_n_0\,
      I3 => indvar_flatten_reg_82_reg(7),
      I4 => indvar_flatten_reg_82_reg(0),
      I5 => indvar_flatten_reg_82_reg(12),
      O => icmp_ln36_fu_115_p2
    );
\icmp_ln36_reg_222[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BB"
    )
        port map (
      I0 => \icmp_ln36_reg_222_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => icmp_ln36_reg_222_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter2_reg_n_0,
      O => \icmp_ln36_reg_222[0]_i_3_n_0\
    );
\icmp_ln36_reg_222[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => \icmp_ln36_reg_222_reg_n_0_[0]\,
      O => \icmp_ln36_reg_222[0]_i_4_n_0\
    );
\icmp_ln36_reg_222[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(6),
      I1 => indvar_flatten_reg_82_reg(11),
      I2 => indvar_flatten_reg_82_reg(13),
      I3 => indvar_flatten_reg_82_reg(1),
      I4 => indvar_flatten_reg_82_reg(10),
      I5 => indvar_flatten_reg_82_reg(2),
      O => \icmp_ln36_reg_222[0]_i_5_n_0\
    );
\icmp_ln36_reg_222[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(8),
      I1 => indvar_flatten_reg_82_reg(9),
      I2 => indvar_flatten_reg_82_reg(15),
      I3 => indvar_flatten_reg_82_reg(4),
      O => \icmp_ln36_reg_222[0]_i_6_n_0\
    );
\icmp_ln36_reg_222[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(16),
      I1 => indvar_flatten_reg_82_reg(3),
      I2 => indvar_flatten_reg_82_reg(5),
      I3 => indvar_flatten_reg_82_reg(14),
      O => \icmp_ln36_reg_222[0]_i_7_n_0\
    );
\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_49,
      D => \icmp_ln36_reg_222_reg_n_0_[0]\,
      Q => icmp_ln36_reg_222_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln36_reg_222_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_49,
      D => icmp_ln36_fu_115_p2,
      Q => \icmp_ln36_reg_222_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_reg_82[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(0),
      O => \indvar_flatten_reg_82[0]_i_2_n_0\
    );
\indvar_flatten_reg_82_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_15\,
      Q => indvar_flatten_reg_82_reg(0),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \indvar_flatten_reg_82_reg[0]_i_1_n_0\,
      CO(6) => \indvar_flatten_reg_82_reg[0]_i_1_n_1\,
      CO(5) => \indvar_flatten_reg_82_reg[0]_i_1_n_2\,
      CO(4) => \indvar_flatten_reg_82_reg[0]_i_1_n_3\,
      CO(3) => \indvar_flatten_reg_82_reg[0]_i_1_n_4\,
      CO(2) => \indvar_flatten_reg_82_reg[0]_i_1_n_5\,
      CO(1) => \indvar_flatten_reg_82_reg[0]_i_1_n_6\,
      CO(0) => \indvar_flatten_reg_82_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \indvar_flatten_reg_82_reg[0]_i_1_n_8\,
      O(6) => \indvar_flatten_reg_82_reg[0]_i_1_n_9\,
      O(5) => \indvar_flatten_reg_82_reg[0]_i_1_n_10\,
      O(4) => \indvar_flatten_reg_82_reg[0]_i_1_n_11\,
      O(3) => \indvar_flatten_reg_82_reg[0]_i_1_n_12\,
      O(2) => \indvar_flatten_reg_82_reg[0]_i_1_n_13\,
      O(1) => \indvar_flatten_reg_82_reg[0]_i_1_n_14\,
      O(0) => \indvar_flatten_reg_82_reg[0]_i_1_n_15\,
      S(7 downto 1) => indvar_flatten_reg_82_reg(7 downto 1),
      S(0) => \indvar_flatten_reg_82[0]_i_2_n_0\
    );
\indvar_flatten_reg_82_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_13\,
      Q => indvar_flatten_reg_82_reg(10),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_12\,
      Q => indvar_flatten_reg_82_reg(11),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_11\,
      Q => indvar_flatten_reg_82_reg(12),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_10\,
      Q => indvar_flatten_reg_82_reg(13),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_9\,
      Q => indvar_flatten_reg_82_reg(14),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_8\,
      Q => indvar_flatten_reg_82_reg(15),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[16]_i_1_n_15\,
      Q => indvar_flatten_reg_82_reg(16),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_reg_82_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_indvar_flatten_reg_82_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_indvar_flatten_reg_82_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \indvar_flatten_reg_82_reg[16]_i_1_n_15\,
      S(7 downto 1) => B"0000000",
      S(0) => indvar_flatten_reg_82_reg(16)
    );
\indvar_flatten_reg_82_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_14\,
      Q => indvar_flatten_reg_82_reg(1),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_13\,
      Q => indvar_flatten_reg_82_reg(2),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_12\,
      Q => indvar_flatten_reg_82_reg(3),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_11\,
      Q => indvar_flatten_reg_82_reg(4),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_10\,
      Q => indvar_flatten_reg_82_reg(5),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_9\,
      Q => indvar_flatten_reg_82_reg(6),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_8\,
      Q => indvar_flatten_reg_82_reg(7),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_15\,
      Q => indvar_flatten_reg_82_reg(8),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_reg_82_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_reg_82_reg[8]_i_1_n_0\,
      CO(6) => \indvar_flatten_reg_82_reg[8]_i_1_n_1\,
      CO(5) => \indvar_flatten_reg_82_reg[8]_i_1_n_2\,
      CO(4) => \indvar_flatten_reg_82_reg[8]_i_1_n_3\,
      CO(3) => \indvar_flatten_reg_82_reg[8]_i_1_n_4\,
      CO(2) => \indvar_flatten_reg_82_reg[8]_i_1_n_5\,
      CO(1) => \indvar_flatten_reg_82_reg[8]_i_1_n_6\,
      CO(0) => \indvar_flatten_reg_82_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_reg_82_reg[8]_i_1_n_8\,
      O(6) => \indvar_flatten_reg_82_reg[8]_i_1_n_9\,
      O(5) => \indvar_flatten_reg_82_reg[8]_i_1_n_10\,
      O(4) => \indvar_flatten_reg_82_reg[8]_i_1_n_11\,
      O(3) => \indvar_flatten_reg_82_reg[8]_i_1_n_12\,
      O(2) => \indvar_flatten_reg_82_reg[8]_i_1_n_13\,
      O(1) => \indvar_flatten_reg_82_reg[8]_i_1_n_14\,
      O(0) => \indvar_flatten_reg_82_reg[8]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_reg_82_reg(15 downto 8)
    );
\indvar_flatten_reg_82_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_14\,
      Q => indvar_flatten_reg_82_reg(9),
      R => indvar_flatten_reg_82
    );
\odata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => p_in_1_stencil_stream_3_empty_n,
      I1 => p_in_1_stencil_stream_2_empty_n,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_enable_reg_pp0_iter1_reg_n_0,
      I4 => \icmp_ln36_reg_222_reg_n_0_[0]\,
      O => \^internal_empty_n_reg\
    );
\p_hw_output_1_x_sca_1_reg_104[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(0),
      O => p_hw_output_1_x_sca_fu_187_p2(0)
    );
\p_hw_output_1_x_sca_1_reg_104[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(1),
      I1 => p_hw_output_1_x_sca_1_reg_104(0),
      O => p_hw_output_1_x_sca_fu_187_p2(1)
    );
\p_hw_output_1_x_sca_1_reg_104[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(2),
      I1 => p_hw_output_1_x_sca_1_reg_104(0),
      I2 => p_hw_output_1_x_sca_1_reg_104(1),
      O => p_hw_output_1_x_sca_fu_187_p2(2)
    );
\p_hw_output_1_x_sca_1_reg_104[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(3),
      I1 => p_hw_output_1_x_sca_1_reg_104(1),
      I2 => p_hw_output_1_x_sca_1_reg_104(0),
      I3 => p_hw_output_1_x_sca_1_reg_104(2),
      O => p_hw_output_1_x_sca_fu_187_p2(3)
    );
\p_hw_output_1_x_sca_1_reg_104[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(4),
      I1 => p_hw_output_1_x_sca_1_reg_104(2),
      I2 => p_hw_output_1_x_sca_1_reg_104(0),
      I3 => p_hw_output_1_x_sca_1_reg_104(1),
      I4 => p_hw_output_1_x_sca_1_reg_104(3),
      O => p_hw_output_1_x_sca_fu_187_p2(4)
    );
\p_hw_output_1_x_sca_1_reg_104[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(5),
      I1 => p_hw_output_1_x_sca_1_reg_104(3),
      I2 => p_hw_output_1_x_sca_1_reg_104(1),
      I3 => p_hw_output_1_x_sca_1_reg_104(0),
      I4 => p_hw_output_1_x_sca_1_reg_104(2),
      I5 => p_hw_output_1_x_sca_1_reg_104(4),
      O => p_hw_output_1_x_sca_fu_187_p2(5)
    );
\p_hw_output_1_x_sca_1_reg_104[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(6),
      I1 => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\,
      O => p_hw_output_1_x_sca_fu_187_p2(6)
    );
\p_hw_output_1_x_sca_1_reg_104[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(7),
      I1 => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\,
      I2 => p_hw_output_1_x_sca_1_reg_104(6),
      O => p_hw_output_1_x_sca_fu_187_p2(7)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(1),
      I1 => indvar_flatten_reg_82_reg(2),
      I2 => indvar_flatten_reg_82_reg(15),
      I3 => indvar_flatten_reg_82_reg(16),
      I4 => indvar_flatten_reg_82_reg(0),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_10_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(5),
      I1 => indvar_flatten_reg_82_reg(6),
      I2 => indvar_flatten_reg_82_reg(3),
      I3 => indvar_flatten_reg_82_reg(4),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_11_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(0),
      I1 => p_hw_output_1_x_sca_1_reg_104(1),
      I2 => p_hw_output_1_x_sca_1_reg_104(2),
      I3 => p_hw_output_1_x_sca_1_reg_104(7),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_12_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"807F8080"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(6),
      I1 => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\,
      I2 => p_hw_output_1_x_sca_1_reg_104(7),
      I3 => \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0\,
      I4 => p_hw_output_1_x_sca_1_reg_104(8),
      O => p_hw_output_1_x_sca_fu_187_p2(8)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \p_hw_output_1_x_sca_1_reg_104[8]_i_8_n_0\,
      I1 => \p_hw_output_1_x_sca_1_reg_104[8]_i_9_n_0\,
      I2 => \p_hw_output_1_x_sca_1_reg_104[8]_i_10_n_0\,
      I3 => \p_hw_output_1_x_sca_1_reg_104[8]_i_11_n_0\,
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(5),
      I1 => p_hw_output_1_x_sca_1_reg_104(3),
      I2 => p_hw_output_1_x_sca_1_reg_104(1),
      I3 => p_hw_output_1_x_sca_1_reg_104(0),
      I4 => p_hw_output_1_x_sca_1_reg_104(2),
      I5 => p_hw_output_1_x_sca_1_reg_104(4),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(6),
      I1 => p_hw_output_1_x_sca_1_reg_104(3),
      I2 => p_hw_output_1_x_sca_1_reg_104(5),
      I3 => p_hw_output_1_x_sca_1_reg_104(4),
      I4 => \p_hw_output_1_x_sca_1_reg_104[8]_i_12_n_0\,
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(9),
      I1 => indvar_flatten_reg_82_reg(10),
      I2 => indvar_flatten_reg_82_reg(7),
      I3 => indvar_flatten_reg_82_reg(8),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_8_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(13),
      I1 => indvar_flatten_reg_82_reg(14),
      I2 => indvar_flatten_reg_82_reg(11),
      I3 => indvar_flatten_reg_82_reg(12),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_9_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(0),
      Q => p_hw_output_1_x_sca_1_reg_104(0),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(1),
      Q => p_hw_output_1_x_sca_1_reg_104(1),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(2),
      Q => p_hw_output_1_x_sca_1_reg_104(2),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(3),
      Q => p_hw_output_1_x_sca_1_reg_104(3),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(4),
      Q => p_hw_output_1_x_sca_1_reg_104(4),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(5),
      Q => p_hw_output_1_x_sca_1_reg_104(5),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(6),
      Q => p_hw_output_1_x_sca_1_reg_104(6),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(7),
      Q => p_hw_output_1_x_sca_1_reg_104(7),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_arg_0_V_value_V_U_n_50,
      D => p_hw_output_1_x_sca_fu_187_p2(8),
      Q => p_hw_output_1_x_sca_1_reg_104(8),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(0),
      O => add_ln36_1_fu_121_p2(0)
    );
\p_hw_output_1_y_sca_reg_93[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(1),
      I1 => p_hw_output_1_y_sca_reg_93_reg(0),
      O => add_ln36_1_fu_121_p2(1)
    );
\p_hw_output_1_y_sca_reg_93[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(2),
      I1 => p_hw_output_1_y_sca_reg_93_reg(0),
      I2 => p_hw_output_1_y_sca_reg_93_reg(1),
      O => add_ln36_1_fu_121_p2(2)
    );
\p_hw_output_1_y_sca_reg_93[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(3),
      I1 => p_hw_output_1_y_sca_reg_93_reg(1),
      I2 => p_hw_output_1_y_sca_reg_93_reg(0),
      I3 => p_hw_output_1_y_sca_reg_93_reg(2),
      O => add_ln36_1_fu_121_p2(3)
    );
\p_hw_output_1_y_sca_reg_93[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(4),
      I1 => p_hw_output_1_y_sca_reg_93_reg(2),
      I2 => p_hw_output_1_y_sca_reg_93_reg(0),
      I3 => p_hw_output_1_y_sca_reg_93_reg(1),
      I4 => p_hw_output_1_y_sca_reg_93_reg(3),
      O => add_ln36_1_fu_121_p2(4)
    );
\p_hw_output_1_y_sca_reg_93[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(5),
      I1 => p_hw_output_1_y_sca_reg_93_reg(3),
      I2 => p_hw_output_1_y_sca_reg_93_reg(1),
      I3 => p_hw_output_1_y_sca_reg_93_reg(0),
      I4 => p_hw_output_1_y_sca_reg_93_reg(2),
      I5 => p_hw_output_1_y_sca_reg_93_reg(4),
      O => add_ln36_1_fu_121_p2(5)
    );
\p_hw_output_1_y_sca_reg_93[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(6),
      I1 => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      O => add_ln36_1_fu_121_p2(6)
    );
\p_hw_output_1_y_sca_reg_93[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(7),
      I1 => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      I2 => p_hw_output_1_y_sca_reg_93_reg(6),
      O => add_ln36_1_fu_121_p2(7)
    );
\p_hw_output_1_y_sca_reg_93[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(8),
      I1 => p_hw_output_1_y_sca_reg_93_reg(6),
      I2 => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      I3 => p_hw_output_1_y_sca_reg_93_reg(7),
      O => add_ln36_1_fu_121_p2(8)
    );
\p_hw_output_1_y_sca_reg_93[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(5),
      I1 => p_hw_output_1_y_sca_reg_93_reg(3),
      I2 => p_hw_output_1_y_sca_reg_93_reg(1),
      I3 => p_hw_output_1_y_sca_reg_93_reg(0),
      I4 => p_hw_output_1_y_sca_reg_93_reg(2),
      I5 => p_hw_output_1_y_sca_reg_93_reg(4),
      O => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\
    );
\p_hw_output_1_y_sca_reg_93_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(0),
      Q => p_hw_output_1_y_sca_reg_93_reg(0),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(1),
      Q => p_hw_output_1_y_sca_reg_93_reg(1),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(2),
      Q => p_hw_output_1_y_sca_reg_93_reg(2),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(3),
      Q => p_hw_output_1_y_sca_reg_93_reg(3),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(4),
      Q => p_hw_output_1_y_sca_reg_93_reg(4),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(5),
      Q => p_hw_output_1_y_sca_reg_93_reg(5),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(6),
      Q => p_hw_output_1_y_sca_reg_93_reg(6),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(7),
      Q => p_hw_output_1_y_sca_reg_93_reg(7),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_y_sca_reg_93_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_hw_output_1_y_sca_reg_93,
      D => add_ln36_1_fu_121_p2(8),
      Q => p_hw_output_1_y_sca_reg_93_reg(8),
      R => indvar_flatten_reg_82
    );
regslice_both_arg_0_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\
     port map (
      D(0) => tmp_last_V_reg_208,
      Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read => Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
      SR(0) => \^ss\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TLAST(0) => arg_0_TLAST(0),
      arg_0_TREADY => arg_0_TREADY
    );
regslice_both_arg_0_V_value_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\
     port map (
      D(2 downto 0) => ap_NS_fsm(2 downto 0),
      E(0) => p_hw_output_1_y_sca_reg_93,
      Loop_2_proc21_U0_ap_start => Loop_2_proc21_U0_ap_start,
      Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read => Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
      Q(2) => ap_CS_fsm_state5,
      Q(1) => ap_CS_fsm_pp0_stage0,
      Q(0) => \^q\(0),
      SR(0) => \^ss\(0),
      \ap_CS_fsm_reg[0]\(0) => indvar_flatten_reg_82,
      \ap_CS_fsm_reg[0]_0\ => regslice_both_arg_0_V_value_V_U_n_25,
      \ap_CS_fsm_reg[1]\(0) => regslice_both_arg_0_V_value_V_U_n_50,
      \ap_CS_fsm_reg[2]\ => ap_enable_reg_pp0_iter2_reg_n_0,
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => regslice_both_arg_0_V_value_V_U_n_1,
      ap_enable_reg_pp0_iter0_reg_0 => \p_hw_output_1_x_sca_1_reg_104[8]_i_11_n_0\,
      ap_enable_reg_pp0_iter0_reg_1 => \p_hw_output_1_x_sca_1_reg_104[8]_i_10_n_0\,
      ap_enable_reg_pp0_iter0_reg_2 => \p_hw_output_1_x_sca_1_reg_104[8]_i_9_n_0\,
      ap_enable_reg_pp0_iter0_reg_3 => \p_hw_output_1_x_sca_1_reg_104[8]_i_8_n_0\,
      ap_enable_reg_pp0_iter0_reg_4 => ap_enable_reg_pp0_iter0_i_4_n_0,
      ap_enable_reg_pp0_iter1_reg => regslice_both_arg_0_V_value_V_U_n_2,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      arg_0_TREADY => arg_0_TREADY,
      icmp_ln36_fu_115_p2 => icmp_ln36_fu_115_p2,
      icmp_ln36_reg_222_pp0_iter1_reg => icmp_ln36_reg_222_pp0_iter1_reg,
      \icmp_ln36_reg_222_reg[0]\ => \icmp_ln36_reg_222[0]_i_4_n_0\,
      \icmp_ln36_reg_222_reg[0]_0\ => \icmp_ln36_reg_222[0]_i_3_n_0\,
      internal_empty_n_reg => internal_empty_n_reg_0,
      internal_empty_n_reg_0 => regslice_both_arg_0_V_value_V_U_n_49,
      \ireg_reg[15]\(15 downto 0) => \ireg_reg[15]\(15 downto 0),
      \ireg_reg[16]\(15 downto 0) => \ireg_reg[16]\(15 downto 0),
      \ireg_reg[16]_0\(0) => E(0),
      \ireg_reg[16]_1\(0) => D(0),
      \ireg_reg[16]_2\(0) => \ireg_reg[16]_0\(0),
      \ireg_reg[16]_3\ => ap_enable_reg_pp0_iter1_reg_n_0,
      \ireg_reg[16]_4\ => \icmp_ln36_reg_222_reg_n_0_[0]\,
      \mOutPtr_reg[1]\(1 downto 0) => \mOutPtr_reg[1]\(1 downto 0),
      \mOutPtr_reg[1]_0\(1 downto 0) => \mOutPtr_reg[1]_0\(1 downto 0),
      \odata_reg[0]\(0) => \odata_reg[0]\(0),
      \odata_reg[15]\(14 downto 0) => \odata_reg[15]\(14 downto 0),
      \odata_reg[16]\(16 downto 0) => \odata_reg[16]\(16 downto 0),
      \odata_reg[16]_0\ => \^internal_empty_n_reg\,
      \p_hw_output_1_x_sca_1_reg_104_reg[8]\ => \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\,
      \p_hw_output_1_y_sca_reg_93_reg[0]\ => \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0\,
      \p_hw_output_1_y_sca_reg_93_reg[0]_0\(0) => p_hw_output_1_x_sca_1_reg_104(8),
      \p_hw_output_1_y_sca_reg_93_reg[8]\ => regslice_both_arg_0_V_value_V_U_n_48,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      shiftReg_ce => shiftReg_ce,
      \tmp_last_V_reg_208_reg[0]\(0) => p_hw_output_1_y_sca_reg_93_reg(8),
      \tmp_last_V_reg_208_reg[0]_0\ => \tmp_last_V_reg_208[0]_i_2_n_0\,
      \tmp_last_V_reg_208_reg[0]_1\ => \tmp_last_V_reg_208[0]_i_3_n_0\,
      \tmp_last_V_reg_208_reg[0]_2\(0) => tmp_last_V_reg_208
    );
\tmp_last_V_reg_208[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(7),
      I1 => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      I2 => p_hw_output_1_y_sca_reg_93_reg(6),
      O => \tmp_last_V_reg_208[0]_i_2_n_0\
    );
\tmp_last_V_reg_208[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(8),
      I1 => p_hw_output_1_x_sca_1_reg_104(6),
      I2 => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\,
      I3 => p_hw_output_1_x_sca_1_reg_104(7),
      O => \tmp_last_V_reg_208[0]_i_3_n_0\
    );
\tmp_last_V_reg_208_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_0_V_value_V_U_n_48,
      Q => tmp_last_V_reg_208,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hls_target is
  port (
    arg_0_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    arg_1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    arg_1_TVALID : in STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    arg_0_TVALID : out STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC
  );
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hls_target : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hls_target;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hls_target is
  signal Loop_1_proc20_U0_n_3 : STD_LOGIC;
  signal Loop_2_proc21_U0_ap_start : STD_LOGIC;
  signal Loop_2_proc21_U0_n_1 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_10 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_11 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_12 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_13 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_14 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_15 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_16 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_17 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_18 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_19 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_20 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_3 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_38 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_39 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_4 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_40 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_5 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_6 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_7 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_8 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_9 : STD_LOGIC;
  signal \SRL_SIG_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal arg_0_TDATA_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_in_1_stencil_stream_2_U_n_10 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_11 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_12 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_13 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_14 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_15 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_16 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_18 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_19 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_2 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_3 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_4 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_5 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_6 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_7 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_8 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_9 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_empty_n : STD_LOGIC;
  signal p_in_1_stencil_stream_2_full_n : STD_LOGIC;
  signal p_in_1_stencil_stream_3_U_n_2 : STD_LOGIC;
  signal p_in_1_stencil_stream_3_U_n_3 : STD_LOGIC;
  signal p_in_1_stencil_stream_3_empty_n : STD_LOGIC;
  signal p_in_1_stencil_stream_3_full_n : STD_LOGIC;
  signal \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in\ : STD_LOGIC;
  signal shiftReg_ce : STD_LOGIC;
  signal start_for_Loop_2_proc21_U0_full_n : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal tmp_value_V_reg_102 : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
Loop_1_proc20_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20
     port map (
      D(16) => arg_1_TVALID,
      D(15 downto 0) => arg_1_TDATA(15 downto 0),
      E(0) => Loop_1_proc20_U0_n_3,
      Q(15 downto 0) => tmp_value_V_reg_102(15 downto 0),
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_1_TREADY => arg_1_TREADY,
      \mOutPtr_reg[1]\ => Loop_2_proc21_U0_n_20,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n,
      shiftReg_ce => shiftReg_ce,
      start_for_Loop_2_proc21_U0_full_n => start_for_Loop_2_proc21_U0_full_n,
      start_once_reg => start_once_reg
    );
Loop_2_proc21_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_2_proc21
     port map (
      D(0) => Loop_2_proc21_U0_n_39,
      E(0) => Loop_2_proc21_U0_n_38,
      Loop_2_proc21_U0_ap_start => Loop_2_proc21_U0_ap_start,
      Q(0) => Loop_2_proc21_U0_n_1,
      SS(0) => ap_rst_n_inv,
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => Loop_2_proc21_U0_n_18,
      arg_0_TLAST(0) => arg_0_TLAST(0),
      arg_0_TREADY => arg_0_TREADY,
      internal_empty_n_reg => Loop_2_proc21_U0_n_19,
      internal_empty_n_reg_0 => Loop_2_proc21_U0_n_20,
      \ireg_reg[15]\(15 downto 0) => arg_0_TDATA_int(15 downto 0),
      \ireg_reg[16]\(15) => \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in\,
      \ireg_reg[16]\(14) => Loop_2_proc21_U0_n_3,
      \ireg_reg[16]\(13) => Loop_2_proc21_U0_n_4,
      \ireg_reg[16]\(12) => Loop_2_proc21_U0_n_5,
      \ireg_reg[16]\(11) => Loop_2_proc21_U0_n_6,
      \ireg_reg[16]\(10) => Loop_2_proc21_U0_n_7,
      \ireg_reg[16]\(9) => Loop_2_proc21_U0_n_8,
      \ireg_reg[16]\(8) => Loop_2_proc21_U0_n_9,
      \ireg_reg[16]\(7) => Loop_2_proc21_U0_n_10,
      \ireg_reg[16]\(6) => Loop_2_proc21_U0_n_11,
      \ireg_reg[16]\(5) => Loop_2_proc21_U0_n_12,
      \ireg_reg[16]\(4) => Loop_2_proc21_U0_n_13,
      \ireg_reg[16]\(3) => Loop_2_proc21_U0_n_14,
      \ireg_reg[16]\(2) => Loop_2_proc21_U0_n_15,
      \ireg_reg[16]\(1) => Loop_2_proc21_U0_n_16,
      \ireg_reg[16]\(0) => Loop_2_proc21_U0_n_17,
      \ireg_reg[16]_0\(0) => Loop_2_proc21_U0_n_40,
      \mOutPtr_reg[1]\(1) => p_in_1_stencil_stream_2_U_n_18,
      \mOutPtr_reg[1]\(0) => p_in_1_stencil_stream_2_U_n_19,
      \mOutPtr_reg[1]_0\(1) => p_in_1_stencil_stream_3_U_n_2,
      \mOutPtr_reg[1]_0\(0) => p_in_1_stencil_stream_3_U_n_3,
      \odata_reg[0]\(0) => \SRL_SIG_reg[0]\(0),
      \odata_reg[15]\(14) => p_in_1_stencil_stream_2_U_n_2,
      \odata_reg[15]\(13) => p_in_1_stencil_stream_2_U_n_3,
      \odata_reg[15]\(12) => p_in_1_stencil_stream_2_U_n_4,
      \odata_reg[15]\(11) => p_in_1_stencil_stream_2_U_n_5,
      \odata_reg[15]\(10) => p_in_1_stencil_stream_2_U_n_6,
      \odata_reg[15]\(9) => p_in_1_stencil_stream_2_U_n_7,
      \odata_reg[15]\(8) => p_in_1_stencil_stream_2_U_n_8,
      \odata_reg[15]\(7) => p_in_1_stencil_stream_2_U_n_9,
      \odata_reg[15]\(6) => p_in_1_stencil_stream_2_U_n_10,
      \odata_reg[15]\(5) => p_in_1_stencil_stream_2_U_n_11,
      \odata_reg[15]\(4) => p_in_1_stencil_stream_2_U_n_12,
      \odata_reg[15]\(3) => p_in_1_stencil_stream_2_U_n_13,
      \odata_reg[15]\(2) => p_in_1_stencil_stream_2_U_n_14,
      \odata_reg[15]\(1) => p_in_1_stencil_stream_2_U_n_15,
      \odata_reg[15]\(0) => p_in_1_stencil_stream_2_U_n_16,
      \odata_reg[16]\(16) => arg_0_TVALID,
      \odata_reg[16]\(15 downto 0) => arg_0_TDATA(15 downto 0),
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      shiftReg_ce => shiftReg_ce
    );
p_in_1_stencil_stream_2_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w32_d1_S
     port map (
      D(15 downto 0) => tmp_value_V_reg_102(15 downto 0),
      E(0) => Loop_2_proc21_U0_n_38,
      Q(0) => \SRL_SIG_reg[0]\(0),
      \SRL_SIG_reg[0][15]\(14) => p_in_1_stencil_stream_2_U_n_2,
      \SRL_SIG_reg[0][15]\(13) => p_in_1_stencil_stream_2_U_n_3,
      \SRL_SIG_reg[0][15]\(12) => p_in_1_stencil_stream_2_U_n_4,
      \SRL_SIG_reg[0][15]\(11) => p_in_1_stencil_stream_2_U_n_5,
      \SRL_SIG_reg[0][15]\(10) => p_in_1_stencil_stream_2_U_n_6,
      \SRL_SIG_reg[0][15]\(9) => p_in_1_stencil_stream_2_U_n_7,
      \SRL_SIG_reg[0][15]\(8) => p_in_1_stencil_stream_2_U_n_8,
      \SRL_SIG_reg[0][15]\(7) => p_in_1_stencil_stream_2_U_n_9,
      \SRL_SIG_reg[0][15]\(6) => p_in_1_stencil_stream_2_U_n_10,
      \SRL_SIG_reg[0][15]\(5) => p_in_1_stencil_stream_2_U_n_11,
      \SRL_SIG_reg[0][15]\(4) => p_in_1_stencil_stream_2_U_n_12,
      \SRL_SIG_reg[0][15]\(3) => p_in_1_stencil_stream_2_U_n_13,
      \SRL_SIG_reg[0][15]\(2) => p_in_1_stencil_stream_2_U_n_14,
      \SRL_SIG_reg[0][15]\(1) => p_in_1_stencil_stream_2_U_n_15,
      \SRL_SIG_reg[0][15]\(0) => p_in_1_stencil_stream_2_U_n_16,
      \SRL_SIG_reg[0][15]_0\(15 downto 0) => arg_0_TDATA_int(15 downto 0),
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_full_n_reg_0 => Loop_2_proc21_U0_n_19,
      \mOutPtr_reg[1]_0\(1) => p_in_1_stencil_stream_2_U_n_18,
      \mOutPtr_reg[1]_0\(0) => p_in_1_stencil_stream_2_U_n_19,
      \mOutPtr_reg[1]_1\(0) => Loop_2_proc21_U0_n_39,
      \odata_reg[1]\(15) => \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in\,
      \odata_reg[1]\(14) => Loop_2_proc21_U0_n_3,
      \odata_reg[1]\(13) => Loop_2_proc21_U0_n_4,
      \odata_reg[1]\(12) => Loop_2_proc21_U0_n_5,
      \odata_reg[1]\(11) => Loop_2_proc21_U0_n_6,
      \odata_reg[1]\(10) => Loop_2_proc21_U0_n_7,
      \odata_reg[1]\(9) => Loop_2_proc21_U0_n_8,
      \odata_reg[1]\(8) => Loop_2_proc21_U0_n_9,
      \odata_reg[1]\(7) => Loop_2_proc21_U0_n_10,
      \odata_reg[1]\(6) => Loop_2_proc21_U0_n_11,
      \odata_reg[1]\(5) => Loop_2_proc21_U0_n_12,
      \odata_reg[1]\(4) => Loop_2_proc21_U0_n_13,
      \odata_reg[1]\(3) => Loop_2_proc21_U0_n_14,
      \odata_reg[1]\(2) => Loop_2_proc21_U0_n_15,
      \odata_reg[1]\(1) => Loop_2_proc21_U0_n_16,
      \odata_reg[1]\(0) => Loop_2_proc21_U0_n_17,
      \odata_reg[3]\ => Loop_2_proc21_U0_n_18,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      shiftReg_ce => shiftReg_ce
    );
p_in_1_stencil_stream_3_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d1_S
     port map (
      D(0) => Loop_2_proc21_U0_n_40,
      E(0) => Loop_2_proc21_U0_n_38,
      Q(1) => p_in_1_stencil_stream_3_U_n_2,
      Q(0) => p_in_1_stencil_stream_3_U_n_3,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_full_n_reg_0 => Loop_2_proc21_U0_n_19,
      internal_full_n_reg_1(0) => \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in\,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n,
      shiftReg_ce => shiftReg_ce
    );
start_for_Loop_2_bkb_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_Loop_2_bkb
     port map (
      E(0) => Loop_1_proc20_U0_n_3,
      Loop_2_proc21_U0_ap_start => Loop_2_proc21_U0_ap_start,
      Q(0) => Loop_2_proc21_U0_n_1,
      SS(0) => ap_rst_n_inv,
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \mOutPtr_reg[1]_0\ => Loop_2_proc21_U0_n_20,
      start_for_Loop_2_proc21_U0_full_n => start_for_Loop_2_proc21_U0_full_n,
      start_once_reg => start_once_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    arg_0_TVALID : out STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    arg_0_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_1_TVALID : in STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    arg_1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    arg_1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "overlay_32x16_addone_32x16_0_0,hls_target,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hls_target,Vivado 2020.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_0:arg_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN overlay_32x16_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arg_0_TREADY : signal is "xilinx.com:interface:axis:1.0 arg_0 TREADY";
  attribute X_INTERFACE_INFO of arg_0_TVALID : signal is "xilinx.com:interface:axis:1.0 arg_0 TVALID";
  attribute X_INTERFACE_INFO of arg_1_TREADY : signal is "xilinx.com:interface:axis:1.0 arg_1 TREADY";
  attribute X_INTERFACE_INFO of arg_1_TVALID : signal is "xilinx.com:interface:axis:1.0 arg_1 TVALID";
  attribute X_INTERFACE_INFO of arg_0_TDATA : signal is "xilinx.com:interface:axis:1.0 arg_0 TDATA";
  attribute X_INTERFACE_INFO of arg_0_TLAST : signal is "xilinx.com:interface:axis:1.0 arg_0 TLAST";
  attribute X_INTERFACE_PARAMETER of arg_0_TLAST : signal is "XIL_INTERFACENAME arg_0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_32x16_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arg_1_TDATA : signal is "xilinx.com:interface:axis:1.0 arg_1 TDATA";
  attribute X_INTERFACE_INFO of arg_1_TLAST : signal is "xilinx.com:interface:axis:1.0 arg_1 TLAST";
  attribute X_INTERFACE_PARAMETER of arg_1_TLAST : signal is "XIL_INTERFACENAME arg_1, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_32x16_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hls_target
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TDATA(15 downto 0) => arg_0_TDATA(15 downto 0),
      arg_0_TLAST(0) => arg_0_TLAST(0),
      arg_0_TREADY => arg_0_TREADY,
      arg_0_TVALID => arg_0_TVALID,
      arg_1_TDATA(31 downto 0) => arg_1_TDATA(31 downto 0),
      arg_1_TLAST(0) => arg_1_TLAST(0),
      arg_1_TREADY => arg_1_TREADY,
      arg_1_TVALID => arg_1_TVALID
    );
end STRUCTURE;
