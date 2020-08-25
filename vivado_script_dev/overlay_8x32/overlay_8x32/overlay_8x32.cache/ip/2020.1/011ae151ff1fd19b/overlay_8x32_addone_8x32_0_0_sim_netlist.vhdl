-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Aug 17 18:38:43 2020
-- Host        : charles-XPS-13-9370 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ overlay_8x32_addone_8x32_0_0_sim_netlist.vhdl
-- Design      : overlay_8x32_addone_8x32_0_0
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
    \mOutPtr_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d1_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d1_S is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mOutPtr[0]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__0\ : label is "soft_lutpair33";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\internal_empty_n_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \mOutPtr_reg[0]_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_empty_n_reg_0,
      Q => p_in_1_stencil_stream_3_empty_n,
      R => '0'
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_full_n_reg_0,
      Q => p_in_1_stencil_stream_3_full_n,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S_shiftReg is
  port (
    \ireg_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \SRL_SIG_reg[0][4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \SRL_SIG_reg[0][2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \odata_reg[6]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S_shiftReg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S_shiftReg is
  signal \SRL_SIG_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^srl_sig_reg[0][2]_0\ : STD_LOGIC;
  signal \^srl_sig_reg[0][4]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ireg[1]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ireg[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ireg[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ireg[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ireg[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ireg[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \odata[2]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \odata[6]_i_3\ : label is "soft_lutpair29";
begin
  \SRL_SIG_reg[0][2]_0\ <= \^srl_sig_reg[0][2]_0\;
  \SRL_SIG_reg[0][4]_0\(2 downto 0) <= \^srl_sig_reg[0][4]_0\(2 downto 0);
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(0),
      Q => \^srl_sig_reg[0][4]_0\(0),
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(1),
      Q => \^srl_sig_reg[0][4]_0\(1),
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(2),
      Q => \SRL_SIG_reg[0]\(2),
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(3),
      Q => \SRL_SIG_reg[0]\(3),
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(4),
      Q => \^srl_sig_reg[0][4]_0\(2),
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(5),
      Q => \SRL_SIG_reg[0]\(5),
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(6),
      Q => \SRL_SIG_reg[0]\(6),
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \SRL_SIG_reg[0][7]_0\(7),
      Q => \SRL_SIG_reg[0]\(7),
      R => '0'
    );
\ireg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^srl_sig_reg[0][4]_0\(0),
      O => D(0)
    );
\ireg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^srl_sig_reg[0][4]_0\(0),
      I1 => \^srl_sig_reg[0][4]_0\(1),
      O => D(1)
    );
\ireg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^srl_sig_reg[0][4]_0\(1),
      I1 => \^srl_sig_reg[0][4]_0\(0),
      I2 => \SRL_SIG_reg[0]\(2),
      O => D(2)
    );
\ireg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(2),
      I1 => \^srl_sig_reg[0][4]_0\(0),
      I2 => \^srl_sig_reg[0][4]_0\(1),
      I3 => \SRL_SIG_reg[0]\(3),
      O => D(3)
    );
\ireg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(3),
      I1 => \^srl_sig_reg[0][4]_0\(1),
      I2 => \^srl_sig_reg[0][4]_0\(0),
      I3 => \SRL_SIG_reg[0]\(2),
      I4 => \^srl_sig_reg[0][4]_0\(2),
      O => D(4)
    );
\ireg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^srl_sig_reg[0][4]_0\(2),
      I1 => \SRL_SIG_reg[0]\(2),
      I2 => \^srl_sig_reg[0][4]_0\(0),
      I3 => \^srl_sig_reg[0][4]_0\(1),
      I4 => \SRL_SIG_reg[0]\(3),
      I5 => \SRL_SIG_reg[0]\(5),
      O => D(5)
    );
\ireg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^srl_sig_reg[0][2]_0\,
      I1 => \^srl_sig_reg[0][4]_0\(2),
      I2 => \SRL_SIG_reg[0]\(5),
      I3 => \SRL_SIG_reg[0]\(6),
      O => D(6)
    );
\ireg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^srl_sig_reg[0][2]_0\,
      I1 => \SRL_SIG_reg[0]\(6),
      I2 => \SRL_SIG_reg[0]\(5),
      I3 => \^srl_sig_reg[0][4]_0\(2),
      I4 => \SRL_SIG_reg[0]\(7),
      O => D(7)
    );
\odata[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBB888"
    )
        port map (
      I0 => Q(0),
      I1 => Q(4),
      I2 => \^srl_sig_reg[0][4]_0\(1),
      I3 => \^srl_sig_reg[0][4]_0\(0),
      I4 => \SRL_SIG_reg[0]\(2),
      O => \ireg_reg[6]\(0)
    );
\odata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => Q(1),
      I1 => \odata_reg[6]\,
      I2 => \SRL_SIG_reg[0]\(2),
      I3 => \^srl_sig_reg[0][4]_0\(0),
      I4 => \^srl_sig_reg[0][4]_0\(1),
      I5 => \SRL_SIG_reg[0]\(3),
      O => \ireg_reg[6]\(1)
    );
\odata[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBB888"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => \^srl_sig_reg[0][4]_0\(2),
      I3 => \^srl_sig_reg[0][2]_0\,
      I4 => \SRL_SIG_reg[0]\(5),
      O => \ireg_reg[6]\(2)
    );
\odata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => Q(3),
      I1 => \odata_reg[6]\,
      I2 => \^srl_sig_reg[0][2]_0\,
      I3 => \^srl_sig_reg[0][4]_0\(2),
      I4 => \SRL_SIG_reg[0]\(5),
      I5 => \SRL_SIG_reg[0]\(6),
      O => \ireg_reg[6]\(3)
    );
\odata[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(2),
      I1 => \^srl_sig_reg[0][4]_0\(0),
      I2 => \^srl_sig_reg[0][4]_0\(1),
      I3 => \SRL_SIG_reg[0]\(3),
      O => \^srl_sig_reg[0][2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    indvar_flatten_reg_75_reg_4_sp_1 : out STD_LOGIC;
    \indvar_flatten_reg_75_reg[4]_0\ : out STD_LOGIC;
    indvar_flatten_reg_75_reg_0_sp_1 : out STD_LOGIC;
    indvar_flatten_reg_75_reg_12_sp_1 : out STD_LOGIC;
    indvar_flatten_reg_75_reg_8_sp_1 : out STD_LOGIC;
    internal_full_n_reg : out STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ireg_reg[0]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    \ireg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    indvar_flatten_reg_75_reg : in STD_LOGIC_VECTOR ( 16 downto 0 );
    p_in_1_stencil_stream_3_full_n : in STD_LOGIC;
    p_in_1_stencil_stream_2_full_n : in STD_LOGIC;
    \ireg_reg[8]_0\ : in STD_LOGIC;
    \ireg_reg[8]_1\ : in STD_LOGIC;
    \ireg_reg[8]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[8]_3\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^indvar_flatten_reg_75_reg[4]_0\ : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_0_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_12_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_4_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_8_sn_1 : STD_LOGIC;
  signal \ireg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arg_1_TREADY_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[3]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata[6]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata[7]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata[8]_i_2\ : label is "soft_lutpair4";
begin
  Q(0) <= \^q\(0);
  \indvar_flatten_reg_75_reg[4]_0\ <= \^indvar_flatten_reg_75_reg[4]_0\;
  indvar_flatten_reg_75_reg_0_sp_1 <= indvar_flatten_reg_75_reg_0_sn_1;
  indvar_flatten_reg_75_reg_12_sp_1 <= indvar_flatten_reg_75_reg_12_sn_1;
  indvar_flatten_reg_75_reg_4_sp_1 <= indvar_flatten_reg_75_reg_4_sn_1;
  indvar_flatten_reg_75_reg_8_sp_1 <= indvar_flatten_reg_75_reg_8_sn_1;
\SRL_SIG[0][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(4),
      I1 => indvar_flatten_reg_75_reg(3),
      I2 => indvar_flatten_reg_75_reg(6),
      I3 => indvar_flatten_reg_75_reg(5),
      O => \^indvar_flatten_reg_75_reg[4]_0\
    );
\SRL_SIG[0][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(8),
      I1 => indvar_flatten_reg_75_reg(7),
      I2 => indvar_flatten_reg_75_reg(10),
      I3 => indvar_flatten_reg_75_reg(9),
      O => indvar_flatten_reg_75_reg_8_sn_1
    );
\SRL_SIG[0][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(12),
      I1 => indvar_flatten_reg_75_reg(11),
      I2 => indvar_flatten_reg_75_reg(14),
      I3 => indvar_flatten_reg_75_reg(13),
      O => indvar_flatten_reg_75_reg_12_sn_1
    );
\SRL_SIG[0][7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(0),
      I1 => indvar_flatten_reg_75_reg(15),
      I2 => indvar_flatten_reg_75_reg(16),
      I3 => indvar_flatten_reg_75_reg(2),
      I4 => indvar_flatten_reg_75_reg(1),
      O => indvar_flatten_reg_75_reg_0_sn_1
    );
arg_1_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \ireg_reg[8]_3\(8),
      I1 => ap_rst_n,
      I2 => \^q\(0),
      O => arg_1_TREADY
    );
\ireg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000AAAAFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => indvar_flatten_reg_75_reg_4_sn_1,
      I2 => \ireg_reg[0]_0\,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => \ireg_reg[0]_1\(0),
      I5 => ap_rst_n,
      O => \ireg[8]_i_1_n_0\
    );
\ireg[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^indvar_flatten_reg_75_reg[4]_0\,
      I1 => indvar_flatten_reg_75_reg_0_sn_1,
      I2 => indvar_flatten_reg_75_reg_12_sn_1,
      I3 => indvar_flatten_reg_75_reg_8_sn_1,
      O => indvar_flatten_reg_75_reg_4_sn_1
    );
\ireg[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0070FFFF"
    )
        port map (
      I0 => p_in_1_stencil_stream_3_full_n,
      I1 => p_in_1_stencil_stream_2_full_n,
      I2 => \ireg_reg[8]_0\,
      I3 => \ireg_reg[8]_1\,
      I4 => \ireg_reg[8]_2\(0),
      O => internal_full_n_reg
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(5),
      Q => \ireg_reg_n_0_[5]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(6),
      Q => \ireg_reg_n_0_[6]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(7),
      Q => \ireg_reg_n_0_[7]\,
      R => \ireg[8]_i_1_n_0\
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[8]_3\(8),
      Q => \^q\(0),
      R => \ireg[8]_i_1_n_0\
    );
\odata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(0),
      O => D(0)
    );
\odata[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(1),
      O => D(1)
    );
\odata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(2),
      O => D(2)
    );
\odata[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(3),
      O => D(3)
    );
\odata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(4),
      O => D(4)
    );
\odata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(5),
      O => D(5)
    );
\odata[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[6]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(6),
      O => D(6)
    );
\odata[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[8]_3\(7),
      O => D(7)
    );
\odata[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ireg_reg[8]_3\(8),
      I1 => \^q\(0),
      O => D(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arg_0_TREADY : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[1]\ : in STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ : entity is "ibuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata[1]_i_1\ : label is "soft_lutpair10";
begin
  Q(0) <= \^q\(0);
\ireg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => arg_0_TREADY,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[1]_i_1_n_0\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[1]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[1]_i_1_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[1]_0\(1),
      Q => \^q\(0),
      R => \ireg[1]_i_1_n_0\
    );
\odata[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \ireg_reg[1]_0\(0),
      O => D(0)
    );
\odata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \odata_reg[1]\,
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\ is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_rst_n_2 : out STD_LOGIC;
    ap_rst_n_3 : out STD_LOGIC;
    \icmp_ln36_reg_222_reg[0]\ : out STD_LOGIC;
    ap_rst_n_4 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n_5 : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]_0\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    indvar_flatten_reg_820 : out STD_LOGIC;
    \ireg_reg[32]_1\ : out STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_6 : out STD_LOGIC;
    ap_rst_n_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[1]\ : out STD_LOGIC;
    \mOutPtr_reg[1]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \tmp_last_V_reg_208_reg[0]\ : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : in STD_LOGIC;
    \indvar_flatten_reg_82_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_1 : in STD_LOGIC;
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\ : in STD_LOGIC;
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\ : in STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg : in STD_LOGIC;
    p_in_1_stencil_stream_2_empty_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_2\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    \p_hw_output_1_y_sca_reg_93_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \p_hw_output_1_y_sca_reg_93_reg[0]_0\ : in STD_LOGIC;
    Loop_2_proc21_U0_ap_start : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    \count_reg[1]\ : in STD_LOGIC;
    \count_reg[1]_0\ : in STD_LOGIC;
    internal_full_n_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \odata_reg[32]_0\ : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    icmp_ln36_reg_222_pp0_iter1_reg : in STD_LOGIC;
    \ireg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_reg[4]\ : in STD_LOGIC;
    \odata_reg[4]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \tmp_last_V_reg_208_reg[0]_0\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_1\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_2\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\ : entity is "ibuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_4_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_5_n_0\ : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_2_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_2_n_0 : STD_LOGIC;
  signal \^ap_rst_n_3\ : STD_LOGIC;
  signal \^ap_rst_n_7\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^icmp_ln36_reg_222_reg[0]\ : STD_LOGIC;
  signal \ireg[32]_i_1_n_0\ : STD_LOGIC;
  signal \^ireg_reg[32]_0\ : STD_LOGIC;
  signal \^ireg_reg[32]_1\ : STD_LOGIC;
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \icmp_ln36_reg_222[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ireg[32]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \odata[0]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \odata[1]_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \odata[32]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \odata[6]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[8]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[8]_i_1\ : label is "soft_lutpair11";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  ap_rst_n_3 <= \^ap_rst_n_3\;
  ap_rst_n_7(0) <= \^ap_rst_n_7\(0);
  \icmp_ln36_reg_222_reg[0]\ <= \^icmp_ln36_reg_222_reg[0]\;
  \ireg_reg[32]_0\ <= \^ireg_reg[32]_0\;
  \ireg_reg[32]_1\ <= \^ireg_reg[32]_1\;
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8FCF8FFFFFFFF"
    )
        port map (
      I0 => \ap_CS_fsm_reg[1]_0\,
      I1 => \odata_reg[32]\(1),
      I2 => \ap_CS_fsm[1]_i_2_n_0\,
      I3 => \ap_CS_fsm_reg[1]_1\,
      I4 => \ap_CS_fsm_reg[1]_2\,
      I5 => ap_enable_reg_pp0_iter0_reg_1,
      O => D(0)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40400040"
    )
        port map (
      I0 => icmp_ln36_reg_222_pp0_iter1_reg,
      I1 => \ap_CS_fsm_reg[1]_2\,
      I2 => \odata_reg[32]\(1),
      I3 => ap_rst_n,
      I4 => \^q\(4),
      O => \ap_CS_fsm[1]_i_2_n_0\
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAEA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\,
      I1 => \ap_CS_fsm_reg[2]_0\,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => \indvar_flatten_reg_82_reg[0]\,
      I4 => \ap_CS_fsm[2]_i_4_n_0\,
      O => D(1)
    );
\ap_CS_fsm[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202000200020002"
    )
        port map (
      I0 => \ap_CS_fsm_reg[1]_2\,
      I1 => \ap_CS_fsm_reg[1]_0\,
      I2 => \odata_reg[32]\(0),
      I3 => \ap_CS_fsm[2]_i_5_n_0\,
      I4 => icmp_ln36_reg_222_pp0_iter1_reg,
      I5 => \odata_reg[32]\(1),
      O => \ap_CS_fsm[2]_i_4_n_0\
    );
\ap_CS_fsm[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \odata_reg[32]\(1),
      I1 => \^q\(4),
      I2 => ap_rst_n,
      O => \ap_CS_fsm[2]_i_5_n_0\
    );
\ap_enable_reg_pp0_iter0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A8A8A008A"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_enable_reg_pp0_iter0_reg_1,
      I3 => \odata_reg[32]\(1),
      I4 => ap_enable_reg_pp0_iter0_i_2_n_0,
      I5 => \indvar_flatten_reg_82_reg[0]\,
      O => ap_rst_n_5
    );
ap_enable_reg_pp0_iter0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF022202220222"
    )
        port map (
      I0 => \ap_CS_fsm_reg[1]_0\,
      I1 => internal_empty_n_reg_1,
      I2 => p_in_1_stencil_stream_2_empty_n,
      I3 => p_in_1_stencil_stream_3_empty_n,
      I4 => \^q\(4),
      I5 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\,
      O => ap_enable_reg_pp0_iter0_i_2_n_0
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A800000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => \ap_CS_fsm_reg[1]_0\,
      I4 => \indvar_flatten_reg_82_reg[0]\,
      I5 => ap_enable_reg_pp0_iter0_i_2_n_0,
      O => ap_rst_n_0
    );
\ap_enable_reg_pp0_iter1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55515151FFFFFFFF"
    )
        port map (
      I0 => \^ireg_reg[32]_1\,
      I1 => \ap_CS_fsm_reg[1]_0\,
      I2 => internal_empty_n_reg_1,
      I3 => p_in_1_stencil_stream_2_empty_n,
      I4 => p_in_1_stencil_stream_3_empty_n,
      I5 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\,
      O => ap_block_pp0_stage0_subdone
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB000000FB000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0_reg_1,
      I1 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\,
      I2 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\,
      I3 => ap_enable_reg_pp0_iter2_i_2_n_0,
      I4 => ap_rst_n,
      I5 => \^q\(4),
      O => ap_rst_n_1
    );
ap_enable_reg_pp0_iter2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFBBF400F400"
    )
        port map (
      I0 => \^ireg_reg[32]_1\,
      I1 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\,
      I2 => internal_empty_n_reg_1,
      I3 => \ap_CS_fsm_reg[1]_0\,
      I4 => icmp_ln36_reg_222_pp0_iter1_reg,
      I5 => \ap_CS_fsm_reg[1]_2\,
      O => ap_enable_reg_pp0_iter2_i_2_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFA0A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => arg_0_TREADY,
      I2 => \count_reg[1]\,
      I3 => \^ap_rst_n_3\,
      I4 => \count_reg[1]_0\,
      O => ap_rst_n_6
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => \count_reg[1]\,
      I1 => arg_0_TREADY,
      I2 => \count_reg[1]_0\,
      I3 => \^ap_rst_n_3\,
      O => count(0)
    );
\icmp_ln36_reg_222[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => ap_rst_n,
      I2 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\,
      I3 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\,
      I4 => \odata_reg[32]\(1),
      O => \^ireg_reg[32]_0\
    );
internal_empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A0A8A0A8A0A800"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ap_rst_n_3\,
      I2 => p_in_1_stencil_stream_3_empty_n,
      I3 => E(0),
      I4 => \^icmp_ln36_reg_222_reg[0]\,
      I5 => internal_empty_n_reg,
      O => ap_rst_n_2
    );
\internal_empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A0A8A0A8A0A800"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ap_rst_n_3\,
      I2 => p_in_1_stencil_stream_2_empty_n,
      I3 => E(0),
      I4 => \^icmp_ln36_reg_222_reg[0]\,
      I5 => internal_empty_n_reg_0,
      O => ap_rst_n_4
    );
\internal_full_n_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888088888"
    )
        port map (
      I0 => internal_full_n_reg(1),
      I1 => internal_full_n_reg(0),
      I2 => \odata_reg[32]\(1),
      I3 => \^q\(4),
      I4 => ap_rst_n,
      I5 => \odata_reg[32]_0\,
      O => \mOutPtr_reg[1]\
    );
internal_full_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => internal_empty_n_reg_1,
      I1 => \ap_CS_fsm_reg[1]_0\,
      I2 => p_in_1_stencil_stream_3_empty_n,
      I3 => p_in_1_stencil_stream_2_empty_n,
      I4 => \odata_reg[32]\(1),
      I5 => \^q\(4),
      O => \^icmp_ln36_reg_222_reg[0]\
    );
internal_full_n_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888088888"
    )
        port map (
      I0 => internal_full_n_reg_0(1),
      I1 => internal_full_n_reg_0(0),
      I2 => \odata_reg[32]\(1),
      I3 => \^q\(4),
      I4 => ap_rst_n,
      I5 => \odata_reg[32]_0\,
      O => \mOutPtr_reg[1]_0\
    );
\ireg[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => arg_0_TREADY,
      I2 => \ireg_reg[0]_0\(0),
      I3 => ap_rst_n,
      O => \ireg[32]_i_1_n_0\
    );
\ireg[32]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_rst_n_3\,
      O => \^ap_rst_n_7\(0)
    );
\ireg[32]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \odata_reg[32]_0\,
      I1 => ap_rst_n,
      I2 => \^q\(4),
      I3 => \odata_reg[32]\(1),
      O => \^ap_rst_n_3\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(2),
      Q => \^q\(0),
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \^ap_rst_n_7\(0),
      Q => \^q\(4),
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(3),
      Q => \^q\(1),
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(5),
      Q => \^q\(2),
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(6),
      Q => \^q\(3),
      R => \ireg[32]_i_1_n_0\
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_2\(0),
      D => \ireg_reg[7]_0\(7),
      Q => \ireg_reg_n_0_[7]\,
      R => \ireg[32]_i_1_n_0\
    );
\odata[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(4),
      I2 => \odata_reg[4]_0\(0),
      O => \ap_CS_fsm_reg[1]\(0)
    );
\odata[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \^q\(4),
      I2 => \odata_reg[4]_0\(0),
      I3 => \odata_reg[4]_0\(1),
      O => \ap_CS_fsm_reg[1]\(1)
    );
\odata[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \odata_reg[32]_0\,
      I1 => \odata_reg[32]\(1),
      I2 => \^q\(4),
      O => \ap_CS_fsm_reg[1]\(4)
    );
\odata[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \^q\(4),
      I2 => \odata_reg[4]\,
      I3 => \odata_reg[4]_0\(2),
      O => \ap_CS_fsm_reg[1]\(2)
    );
\odata[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(4),
      I1 => ap_rst_n,
      O => \^ireg_reg[32]_1\
    );
\odata[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ireg_reg_n_0_[7]\,
      I1 => \^q\(4),
      I2 => \ireg_reg[7]_0\(7),
      O => \ap_CS_fsm_reg[1]\(3)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAFAAA"
    )
        port map (
      I0 => \p_hw_output_1_x_sca_1_reg_104[8]_i_4_n_0\,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \odata_reg[32]\(0),
      I3 => Loop_2_proc21_U0_ap_start,
      I4 => \indvar_flatten_reg_82_reg[0]\,
      O => ap_enable_reg_pp0_iter0_reg_0(0)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \indvar_flatten_reg_82_reg[0]\,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \^ireg_reg[32]_0\,
      O => indvar_flatten_reg_820
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000700070007000"
    )
        port map (
      I0 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\,
      I1 => \odata_reg[32]\(1),
      I2 => Loop_2_proc21_U0_ap_start,
      I3 => \odata_reg[32]\(0),
      I4 => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\,
      I5 => \^ireg_reg[32]_1\,
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_4_n_0\
    );
\p_hw_output_1_y_sca_reg_93[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^ireg_reg[32]_0\,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \p_hw_output_1_y_sca_reg_93_reg[0]\(0),
      I3 => \p_hw_output_1_y_sca_reg_93_reg[0]_0\,
      I4 => \indvar_flatten_reg_82_reg[0]\,
      O => ap_enable_reg_pp0_iter0_reg(0)
    );
\tmp_last_V_reg_208[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFF80000000"
    )
        port map (
      I0 => \tmp_last_V_reg_208_reg[0]_0\,
      I1 => \tmp_last_V_reg_208_reg[0]_1\,
      I2 => \tmp_last_V_reg_208_reg[0]_2\,
      I3 => \indvar_flatten_reg_82_reg[0]\,
      I4 => \^ireg_reg[32]_0\,
      I5 => \tmp_last_V_reg_208_reg[0]_3\(0),
      O => \tmp_last_V_reg_208_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    \odata_reg[8]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_rst_n_2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[8]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln24_reg_111_reg[0]\ : out STD_LOGIC;
    arg_1_TREADY_int : out STD_LOGIC;
    indvar_flatten_reg_75 : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln24_reg_111_reg[0]_0\ : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : in STD_LOGIC;
    \indvar_flatten_reg_75_reg[0]\ : in STD_LOGIC;
    \indvar_flatten_reg_75_reg[0]_0\ : in STD_LOGIC;
    internal_full_n_reg : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    p_in_1_stencil_stream_2_full_n : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    \odata_reg[0]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    p_in_1_stencil_stream_3_full_n : in STD_LOGIC;
    \SRL_SIG_reg[0][0]\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_1\ : in STD_LOGIC;
    \SRL_SIG_reg[0][0]_2\ : in STD_LOGIC;
    \mOutPtr_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \indvar_flatten_reg_75_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln24_reg_111_reg[0]_1\ : in STD_LOGIC;
    \ireg_reg[8]\ : in STD_LOGIC;
    \ireg_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[8]_2\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \SRL_SIG[0][7]_i_2_n_0\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_3_n_0 : STD_LOGIC;
  signal \^icmp_ln24_reg_111_reg[0]\ : STD_LOGIC;
  signal internal_full_n_i_2_n_0 : STD_LOGIC;
  signal \^odata_reg[8]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_75[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ireg[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmp_value_V_reg_102[7]_i_1\ : label is "soft_lutpair6";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \icmp_ln24_reg_111_reg[0]\ <= \^icmp_ln24_reg_111_reg[0]\;
  \odata_reg[8]_0\ <= \^odata_reg[8]_0\;
\SRL_SIG[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
        port map (
      I0 => \SRL_SIG[0][7]_i_2_n_0\,
      I1 => \SRL_SIG_reg[0][0]\,
      I2 => \SRL_SIG_reg[0][0]_0\,
      I3 => \SRL_SIG_reg[0][0]_1\,
      I4 => \SRL_SIG_reg[0][0]_2\,
      I5 => \mOutPtr_reg[1]\,
      O => \^odata_reg[8]_0\
    );
\SRL_SIG[0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(8),
      I1 => ap_enable_reg_pp0_iter0,
      O => \SRL_SIG[0][7]_i_2_n_0\
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A000A000A000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter1_reg_0,
      I3 => \indvar_flatten_reg_75_reg[0]\,
      I4 => ap_enable_reg_pp0_iter1_i_3_n_0,
      I5 => \indvar_flatten_reg_75_reg[0]_0\,
      O => ap_rst_n_0
    );
ap_enable_reg_pp0_iter1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0001FFFF"
    )
        port map (
      I0 => \SRL_SIG_reg[0][0]_2\,
      I1 => \SRL_SIG_reg[0][0]_1\,
      I2 => \SRL_SIG_reg[0][0]_0\,
      I3 => \SRL_SIG_reg[0][0]\,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => \^q\(8),
      O => ap_enable_reg_pp0_iter1_i_3_n_0
    );
\icmp_ln24_reg_111[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => \odata_reg[0]_0\,
      I1 => ap_enable_reg_pp0_iter1_i_3_n_0,
      I2 => \^icmp_ln24_reg_111_reg[0]\,
      I3 => \icmp_ln24_reg_111_reg[0]_1\,
      O => \icmp_ln24_reg_111_reg[0]_0\
    );
\indvar_flatten_reg_75[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F00FF00FF00FF"
    )
        port map (
      I0 => \indvar_flatten_reg_75_reg[0]_1\(0),
      I1 => \indvar_flatten_reg_75_reg[0]_0\,
      I2 => \odata_reg[0]_0\,
      I3 => \indvar_flatten_reg_75_reg[0]\,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => \^q\(8),
      O => indvar_flatten_reg_75
    );
\indvar_flatten_reg_75[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \^q\(8),
      I2 => \^icmp_ln24_reg_111_reg[0]\,
      I3 => \odata_reg[0]_0\,
      O => arg_1_TREADY_int
    );
internal_full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFFFFFF5D5D5D5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => internal_full_n_i_2_n_0,
      I2 => internal_full_n_reg,
      I3 => internal_full_n_reg_0,
      I4 => \^odata_reg[8]_0\,
      I5 => p_in_1_stencil_stream_2_full_n,
      O => ap_rst_n_1
    );
\internal_full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFFFFFF5D5D5D5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => internal_full_n_i_2_n_0,
      I2 => internal_full_n_reg,
      I3 => internal_full_n_reg_1,
      I4 => \^odata_reg[8]_0\,
      I5 => p_in_1_stencil_stream_3_full_n,
      O => ap_rst_n_2
    );
internal_full_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555554"
    )
        port map (
      I0 => \SRL_SIG[0][7]_i_2_n_0\,
      I1 => \SRL_SIG_reg[0][0]\,
      I2 => \SRL_SIG_reg[0][0]_2\,
      I3 => \SRL_SIG_reg[0][0]_1\,
      I4 => \SRL_SIG_reg[0][0]_0\,
      I5 => \mOutPtr_reg[1]\,
      O => internal_full_n_i_2_n_0
    );
\ireg[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF00"
    )
        port map (
      I0 => \odata_reg[0]_0\,
      I1 => \ireg_reg[8]\,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => \^q\(8),
      I4 => \ireg_reg[8]_0\(0),
      O => ap_enable_reg_pp0_iter0_reg(0)
    );
\ireg[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0000"
    )
        port map (
      I0 => \icmp_ln24_reg_111_reg[0]_1\,
      I1 => ap_enable_reg_pp0_iter1_reg_0,
      I2 => p_in_1_stencil_stream_2_full_n,
      I3 => p_in_1_stencil_stream_3_full_n,
      I4 => \indvar_flatten_reg_75_reg[0]_1\(0),
      O => \^icmp_ln24_reg_111_reg[0]\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACAFACACACACAC"
    )
        port map (
      I0 => \^odata_reg[8]_0\,
      I1 => \mOutPtr_reg[1]\,
      I2 => \mOutPtr_reg[1]_0\,
      I3 => \odata_reg[0]_0\,
      I4 => \^q\(8),
      I5 => ap_enable_reg_pp0_iter0,
      O => E(0)
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA5565AA55AA9A"
    )
        port map (
      I0 => \mOutPtr_reg[1]_2\(0),
      I1 => \SRL_SIG[0][7]_i_2_n_0\,
      I2 => \odata_reg[0]_0\,
      I3 => \mOutPtr_reg[1]_0\,
      I4 => \mOutPtr_reg[1]\,
      I5 => \mOutPtr_reg[1]_2\(1),
      O => \mOutPtr_reg[0]\(0)
    );
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA5565AA55AA9A"
    )
        port map (
      I0 => \mOutPtr_reg[1]_1\(0),
      I1 => \SRL_SIG[0][7]_i_2_n_0\,
      I2 => \odata_reg[0]_0\,
      I3 => \mOutPtr_reg[1]_0\,
      I4 => \mOutPtr_reg[1]\,
      I5 => \mOutPtr_reg[1]_1\(1),
      O => D(0)
    );
\odata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => \^q\(8),
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \^icmp_ln24_reg_111_reg[0]\,
      I3 => \odata_reg[0]_0\,
      O => p_0_in
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(0),
      Q => \^q\(0),
      R => SS(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(1),
      Q => \^q\(1),
      R => SS(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(2),
      Q => \^q\(2),
      R => SS(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(3),
      Q => \^q\(3),
      R => SS(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(4),
      Q => \^q\(4),
      R => SS(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(5),
      Q => \^q\(5),
      R => SS(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(6),
      Q => \^q\(6),
      R => SS(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(7),
      Q => \^q\(7),
      R => SS(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => \odata_reg[8]_2\(8),
      Q => \^q\(8),
      R => SS(0)
    );
\tmp_value_V_reg_102[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => \^q\(8),
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \^icmp_ln24_reg_111_reg[0]\,
      I3 => \odata_reg[0]_0\,
      O => \odata_reg[8]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_0_TREADY : in STD_LOGIC;
    \ireg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
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
\ireg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => arg_0_TREADY,
      I1 => \^q\(1),
      I2 => \ireg_reg[1]\(0),
      O => E(0)
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
      R => SR(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__1_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    arg_0_TREADY_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    p_in_1_stencil_stream_2_empty_n : in STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : in STD_LOGIC;
    \odata_reg[32]_0\ : in STD_LOGIC;
    \odata_reg[32]_1\ : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    \ireg_reg[32]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\ : entity is "obuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \odata[7]_i_2_n_0\ : STD_LOGIC;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  SR(0) <= \^sr\(0);
\ireg[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => arg_0_TREADY,
      I1 => \^q\(8),
      I2 => \ireg_reg[32]\(0),
      O => arg_0_TREADY_0(0)
    );
\odata[32]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => p_in_1_stencil_stream_2_empty_n,
      I1 => p_in_1_stencil_stream_3_empty_n,
      I2 => \odata_reg[32]_0\,
      I3 => \odata_reg[32]_1\,
      O => internal_empty_n_reg
    );
\odata[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\odata[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => arg_0_TREADY,
      I1 => \^q\(8),
      O => \odata[7]_i_2_n_0\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\odata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[7]_i_2_n_0\,
      D => D(7),
      Q => \^q\(7),
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
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    internal_empty_n4_out : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_Loop_2_bkb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_Loop_2_bkb is
  signal \^loop_2_proc21_u0_ap_start\ : STD_LOGIC;
  signal \internal_empty_n_i_1__1_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__1_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_2__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_3_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^start_for_loop_2_proc21_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_full_n_i_2__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__0\ : label is "soft_lutpair34";
begin
  Loop_2_proc21_U0_ap_start <= \^loop_2_proc21_u0_ap_start\;
  start_for_Loop_2_proc21_U0_full_n <= \^start_for_loop_2_proc21_u0_full_n\;
\internal_empty_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A800"
    )
        port map (
      I0 => ap_rst_n,
      I1 => internal_empty_n4_out,
      I2 => \^loop_2_proc21_u0_ap_start\,
      I3 => \mOutPtr[1]_i_3_n_0\,
      I4 => \mOutPtr_reg_n_0_[0]\,
      I5 => \mOutPtr_reg_n_0_[1]\,
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
      Q => \^loop_2_proc21_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5D5F5D5F5D5FFFF"
    )
        port map (
      I0 => ap_rst_n,
      I1 => start_once_reg,
      I2 => \^start_for_loop_2_proc21_u0_full_n\,
      I3 => \internal_full_n_i_2__1_n_0\,
      I4 => internal_full_n_reg_0,
      I5 => internal_full_n_reg_1,
      O => \internal_full_n_i_1__1_n_0\
    );
\internal_full_n_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      O => \internal_full_n_i_2__1_n_0\
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
\mOutPtr[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr[1]_i_3_n_0\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_2__0_n_0\
    );
\mOutPtr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4FFF"
    )
        port map (
      I0 => start_once_reg,
      I1 => \^start_for_loop_2_proc21_u0_full_n\,
      I2 => \mOutPtr_reg[1]_0\(0),
      I3 => \^loop_2_proc21_u0_ap_start\,
      I4 => internal_full_n_reg_1,
      O => \mOutPtr[1]_i_3_n_0\
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
      D => \mOutPtr[1]_i_2__0_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S is
  port (
    p_in_1_stencil_stream_2_full_n : out STD_LOGIC;
    p_in_1_stencil_stream_2_empty_n : out STD_LOGIC;
    \ireg_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \SRL_SIG_reg[0][4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \SRL_SIG_reg[0][2]\ : out STD_LOGIC;
    \mOutPtr_reg[0]_0\ : out STD_LOGIC;
    \mOutPtr_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \odata_reg[6]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S is
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \^moutptr_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1\ : label is "soft_lutpair32";
begin
  \mOutPtr_reg[1]_0\(1 downto 0) <= \^moutptr_reg[1]_0\(1 downto 0);
U_fifo_w8_d1_S_ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S_shiftReg
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      Q(4 downto 0) => Q(4 downto 0),
      \SRL_SIG_reg[0][2]_0\ => \SRL_SIG_reg[0][2]\,
      \SRL_SIG_reg[0][4]_0\(2 downto 0) => \SRL_SIG_reg[0][4]\(2 downto 0),
      \SRL_SIG_reg[0][7]_0\(7 downto 0) => \SRL_SIG_reg[0][7]\(7 downto 0),
      ap_clk => ap_clk,
      \ireg_reg[6]\(3 downto 0) => \ireg_reg[6]\(3 downto 0),
      \odata_reg[6]\ => \odata_reg[6]\
    );
\internal_empty_n_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^moutptr_reg[1]_0\(0),
      I1 => \^moutptr_reg[1]_0\(1),
      O => \mOutPtr_reg[0]_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_empty_n_reg_0,
      Q => p_in_1_stencil_stream_2_empty_n,
      R => '0'
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_full_n_reg_0,
      Q => p_in_1_stencil_stream_2_full_n,
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
      CE => \mOutPtr_reg[0]_1\(0),
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
      CE => \mOutPtr_reg[0]_1\(0),
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
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    \odata_reg[8]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    indvar_flatten_reg_75_reg_4_sp_1 : out STD_LOGIC;
    ap_rst_n_2 : out STD_LOGIC;
    \indvar_flatten_reg_75_reg[4]_0\ : out STD_LOGIC;
    indvar_flatten_reg_75_reg_8_sp_1 : out STD_LOGIC;
    indvar_flatten_reg_75_reg_12_sp_1 : out STD_LOGIC;
    indvar_flatten_reg_75_reg_0_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln24_reg_111_reg[0]\ : out STD_LOGIC;
    arg_1_TREADY_int : out STD_LOGIC;
    indvar_flatten_reg_75 : out STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    \icmp_ln24_reg_111_reg[0]_0\ : out STD_LOGIC;
    \odata_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : in STD_LOGIC;
    \indvar_flatten_reg_75_reg[0]_0\ : in STD_LOGIC;
    \indvar_flatten_reg_75_reg[0]_1\ : in STD_LOGIC;
    internal_full_n_reg : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    p_in_1_stencil_stream_2_full_n : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    p_in_1_stencil_stream_3_full_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \indvar_flatten_reg_75_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    indvar_flatten_reg_75_reg : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \icmp_ln24_reg_111_reg[0]_1\ : in STD_LOGIC;
    \ireg_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both is
  signal arg_1_TVALID_int : STD_LOGIC;
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_6 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal \^icmp_ln24_reg_111_reg[0]\ : STD_LOGIC;
  signal \^indvar_flatten_reg_75_reg[4]_0\ : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_0_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_12_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_4_sn_1 : STD_LOGIC;
  signal indvar_flatten_reg_75_reg_8_sn_1 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  \icmp_ln24_reg_111_reg[0]\ <= \^icmp_ln24_reg_111_reg[0]\;
  \indvar_flatten_reg_75_reg[4]_0\ <= \^indvar_flatten_reg_75_reg[4]_0\;
  indvar_flatten_reg_75_reg_0_sp_1 <= indvar_flatten_reg_75_reg_0_sn_1;
  indvar_flatten_reg_75_reg_12_sp_1 <= indvar_flatten_reg_75_reg_12_sn_1;
  indvar_flatten_reg_75_reg_4_sp_1 <= indvar_flatten_reg_75_reg_4_sn_1;
  indvar_flatten_reg_75_reg_8_sp_1 <= indvar_flatten_reg_75_reg_8_sn_1;
ibuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf
     port map (
      D(8) => ibuf_inst_n_8,
      D(7) => ibuf_inst_n_9,
      D(6) => ibuf_inst_n_10,
      D(5) => ibuf_inst_n_11,
      D(4) => ibuf_inst_n_12,
      D(3) => ibuf_inst_n_13,
      D(2) => ibuf_inst_n_14,
      D(1) => ibuf_inst_n_15,
      D(0) => ibuf_inst_n_16,
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_rst_n => ap_rst_n,
      arg_1_TREADY => arg_1_TREADY,
      indvar_flatten_reg_75_reg(16 downto 0) => indvar_flatten_reg_75_reg(16 downto 0),
      \indvar_flatten_reg_75_reg[4]_0\ => \^indvar_flatten_reg_75_reg[4]_0\,
      indvar_flatten_reg_75_reg_0_sp_1 => indvar_flatten_reg_75_reg_0_sn_1,
      indvar_flatten_reg_75_reg_12_sp_1 => indvar_flatten_reg_75_reg_12_sn_1,
      indvar_flatten_reg_75_reg_4_sp_1 => indvar_flatten_reg_75_reg_4_sn_1,
      indvar_flatten_reg_75_reg_8_sp_1 => indvar_flatten_reg_75_reg_8_sn_1,
      internal_full_n_reg => ibuf_inst_n_6,
      \ireg_reg[0]_0\ => \^icmp_ln24_reg_111_reg[0]\,
      \ireg_reg[0]_1\(0) => arg_1_TVALID_int,
      \ireg_reg[8]_0\ => ap_enable_reg_pp0_iter1_reg_0,
      \ireg_reg[8]_1\ => \icmp_ln24_reg_111_reg[0]_1\,
      \ireg_reg[8]_2\(0) => \indvar_flatten_reg_75_reg[0]_2\(0),
      \ireg_reg[8]_3\(8 downto 0) => \ireg_reg[8]\(8 downto 0),
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n
    );
obuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(8) => arg_1_TVALID_int,
      Q(7 downto 0) => \odata_reg[7]\(7 downto 0),
      \SRL_SIG_reg[0][0]\ => \^indvar_flatten_reg_75_reg[4]_0\,
      \SRL_SIG_reg[0][0]_0\ => indvar_flatten_reg_75_reg_8_sn_1,
      \SRL_SIG_reg[0][0]_1\ => indvar_flatten_reg_75_reg_12_sn_1,
      \SRL_SIG_reg[0][0]_2\ => indvar_flatten_reg_75_reg_0_sn_1,
      SS(0) => SS(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg(0) => ireg01_out,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg,
      ap_enable_reg_pp0_iter1_reg_0 => ap_enable_reg_pp0_iter1_reg_0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      ap_rst_n_1 => ap_rst_n_1,
      ap_rst_n_2 => ap_rst_n_2,
      arg_1_TREADY_int => arg_1_TREADY_int,
      \icmp_ln24_reg_111_reg[0]\ => \^icmp_ln24_reg_111_reg[0]\,
      \icmp_ln24_reg_111_reg[0]_0\ => \icmp_ln24_reg_111_reg[0]_0\,
      \icmp_ln24_reg_111_reg[0]_1\ => \icmp_ln24_reg_111_reg[0]_1\,
      indvar_flatten_reg_75 => indvar_flatten_reg_75,
      \indvar_flatten_reg_75_reg[0]\ => \indvar_flatten_reg_75_reg[0]_0\,
      \indvar_flatten_reg_75_reg[0]_0\ => \indvar_flatten_reg_75_reg[0]_1\,
      \indvar_flatten_reg_75_reg[0]_1\(0) => \indvar_flatten_reg_75_reg[0]_2\(0),
      internal_full_n_reg => internal_full_n_reg,
      internal_full_n_reg_0 => internal_full_n_reg_0,
      internal_full_n_reg_1 => internal_full_n_reg_1,
      \ireg_reg[8]\ => ibuf_inst_n_6,
      \ireg_reg[8]_0\(0) => p_0_in,
      \mOutPtr_reg[0]\(0) => \mOutPtr_reg[0]\(0),
      \mOutPtr_reg[1]\ => \mOutPtr_reg[1]\,
      \mOutPtr_reg[1]_0\ => \mOutPtr_reg[1]_0\,
      \mOutPtr_reg[1]_1\(1 downto 0) => Q(1 downto 0),
      \mOutPtr_reg[1]_2\(1 downto 0) => \mOutPtr_reg[1]_1\(1 downto 0),
      \odata_reg[0]_0\ => indvar_flatten_reg_75_reg_4_sn_1,
      \odata_reg[8]_0\ => \odata_reg[8]\,
      \odata_reg[8]_1\(0) => \odata_reg[8]_0\(0),
      \odata_reg[8]_2\(8) => ibuf_inst_n_8,
      \odata_reg[8]_2\(7) => ibuf_inst_n_9,
      \odata_reg[8]_2\(6) => ibuf_inst_n_10,
      \odata_reg[8]_2\(5) => ibuf_inst_n_11,
      \odata_reg[8]_2\(4) => ibuf_inst_n_12,
      \odata_reg[8]_2\(3) => ibuf_inst_n_13,
      \odata_reg[8]_2\(2) => ibuf_inst_n_14,
      \odata_reg[8]_2\(1) => ibuf_inst_n_15,
      \odata_reg[8]_2\(0) => ibuf_inst_n_16,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\ is
  port (
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_0_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \odata_reg[1]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\ : entity is "regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized0\ is
  signal cdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TREADY => arg_0_TREADY,
      \ireg_reg[0]_0\(0) => obuf_inst_n_0,
      \ireg_reg[1]_0\(1 downto 0) => D(1 downto 0),
      \odata_reg[1]\ => \odata_reg[1]\
    );
obuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      E(0) => ireg01_out,
      Q(1) => obuf_inst_n_0,
      Q(0) => arg_0_TLAST(0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      arg_0_TREADY => arg_0_TREADY,
      \ireg_reg[1]\(0) => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_rst_n_2 : out STD_LOGIC;
    ap_rst_n_3 : out STD_LOGIC;
    \icmp_ln36_reg_222_reg[0]\ : out STD_LOGIC;
    ap_rst_n_4 : out STD_LOGIC;
    \odata_reg[32]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_rst_n_5 : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln36_reg_2220 : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    indvar_flatten_reg_820 : out STD_LOGIC;
    \ireg_reg[32]\ : out STD_LOGIC;
    ap_rst_n_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[1]\ : out STD_LOGIC;
    \mOutPtr_reg[1]_0\ : out STD_LOGIC;
    arg_0_TREADY_0 : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n4_out : out STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC;
    \indvar_flatten_reg_82_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_1 : in STD_LOGIC;
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\ : in STD_LOGIC;
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\ : in STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg_0 : in STD_LOGIC;
    p_in_1_stencil_stream_2_empty_n : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    \mOutPtr_reg[1]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    \p_hw_output_1_y_sca_reg_93_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \p_hw_output_1_y_sca_reg_93_reg[0]_0\ : in STD_LOGIC;
    Loop_2_proc21_U0_ap_start : in STD_LOGIC;
    \odata_reg[32]_0\ : in STD_LOGIC;
    internal_full_n_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    internal_full_n_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    icmp_ln36_reg_222_pp0_iter1_reg : in STD_LOGIC;
    start_for_Loop_2_proc21_U0_full_n : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    \ireg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_reg[4]\ : in STD_LOGIC;
    \odata_reg[4]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \tmp_last_V_reg_208_reg[0]_0\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_1\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_2\ : in STD_LOGIC;
    \tmp_last_V_reg_208_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\ : entity is "regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal \^arg_0_tready_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal ibuf_inst_n_20 : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_25 : STD_LOGIC;
  signal ibuf_inst_n_26 : STD_LOGIC;
  signal ibuf_inst_n_27 : STD_LOGIC;
  signal ibuf_inst_n_28 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_1 : STD_LOGIC;
  signal \^odata_reg[32]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of internal_empty_n_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__1\ : label is "soft_lutpair17";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  SR(0) <= \^sr\(0);
  arg_0_TREADY_0 <= \^arg_0_tready_0\;
  \odata_reg[32]\(8 downto 0) <= \^odata_reg[32]\(8 downto 0);
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000400F4"
    )
        port map (
      I0 => \^arg_0_tready_0\,
      I1 => \mOutPtr_reg[1]_1\(2),
      I2 => \mOutPtr_reg[1]_1\(0),
      I3 => \mOutPtr_reg[1]_1\(1),
      I4 => Loop_2_proc21_U0_ap_start,
      O => D(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => arg_0_TREADY,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      O => \^arg_0_tready_0\
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111101010101"
    )
        port map (
      I0 => \mOutPtr_reg[1]_1\(1),
      I1 => \mOutPtr_reg[1]_1\(0),
      I2 => \mOutPtr_reg[1]_1\(2),
      I3 => arg_0_TREADY,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[0]\,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ibuf_inst_n_20,
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
      Q(4 downto 0) => \^q\(4 downto 0),
      \ap_CS_fsm_reg[1]\(4) => ibuf_inst_n_24,
      \ap_CS_fsm_reg[1]\(3) => ibuf_inst_n_25,
      \ap_CS_fsm_reg[1]\(2) => ibuf_inst_n_26,
      \ap_CS_fsm_reg[1]\(1) => ibuf_inst_n_27,
      \ap_CS_fsm_reg[1]\(0) => ibuf_inst_n_28,
      \ap_CS_fsm_reg[1]_0\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_fsm_reg[1]_1\ => \ap_CS_fsm_reg[1]_0\,
      \ap_CS_fsm_reg[1]_2\ => \ap_CS_fsm_reg[1]_1\,
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm[2]_i_2_n_0\,
      \ap_CS_fsm_reg[2]_0\ => \ap_CS_fsm_reg[2]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg(0) => ap_enable_reg_pp0_iter0_reg(0),
      ap_enable_reg_pp0_iter0_reg_0(0) => ap_enable_reg_pp0_iter0_reg_0(0),
      ap_enable_reg_pp0_iter0_reg_1 => ap_enable_reg_pp0_iter0_reg_1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      ap_rst_n_1 => ap_rst_n_1,
      ap_rst_n_2 => ap_rst_n_2,
      ap_rst_n_3 => ap_rst_n_3,
      ap_rst_n_4 => ap_rst_n_4,
      ap_rst_n_5 => ap_rst_n_5,
      ap_rst_n_6 => ibuf_inst_n_20,
      ap_rst_n_7(0) => ap_rst_n_6(0),
      arg_0_TREADY => arg_0_TREADY,
      count(0) => count(1),
      \count_reg[1]\ => \count_reg_n_0_[0]\,
      \count_reg[1]_0\ => \count_reg_n_0_[1]\,
      icmp_ln36_reg_222_pp0_iter1_reg => icmp_ln36_reg_222_pp0_iter1_reg,
      \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\ => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\,
      \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\ => \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\,
      \icmp_ln36_reg_222_reg[0]\ => \icmp_ln36_reg_222_reg[0]\,
      indvar_flatten_reg_820 => indvar_flatten_reg_820,
      \indvar_flatten_reg_82_reg[0]\ => \indvar_flatten_reg_82_reg[0]\,
      internal_empty_n_reg => internal_empty_n_reg_0,
      internal_empty_n_reg_0 => internal_empty_n_reg_1,
      internal_empty_n_reg_1 => \odata_reg[32]_0\,
      internal_full_n_reg(1 downto 0) => internal_full_n_reg(1 downto 0),
      internal_full_n_reg_0(1 downto 0) => internal_full_n_reg_0(1 downto 0),
      \ireg_reg[0]_0\(0) => \^odata_reg[32]\(8),
      \ireg_reg[32]_0\ => icmp_ln36_reg_2220,
      \ireg_reg[32]_1\ => \ireg_reg[32]\,
      \ireg_reg[32]_2\(0) => ireg01_out,
      \ireg_reg[7]_0\(7 downto 0) => \ireg_reg[7]\(7 downto 0),
      \mOutPtr_reg[1]\ => \mOutPtr_reg[1]\,
      \mOutPtr_reg[1]_0\ => \mOutPtr_reg[1]_0\,
      \odata_reg[32]\(1 downto 0) => \mOutPtr_reg[1]_1\(1 downto 0),
      \odata_reg[32]_0\ => obuf_inst_n_1,
      \odata_reg[4]\ => \odata_reg[4]\,
      \odata_reg[4]_0\(2 downto 0) => \odata_reg[4]_0\(2 downto 0),
      \p_hw_output_1_y_sca_reg_93_reg[0]\(0) => \p_hw_output_1_y_sca_reg_93_reg[0]\(0),
      \p_hw_output_1_y_sca_reg_93_reg[0]_0\ => \p_hw_output_1_y_sca_reg_93_reg[0]_0\,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      \tmp_last_V_reg_208_reg[0]\ => \tmp_last_V_reg_208_reg[0]\,
      \tmp_last_V_reg_208_reg[0]_0\ => \tmp_last_V_reg_208_reg[0]_0\,
      \tmp_last_V_reg_208_reg[0]_1\ => \tmp_last_V_reg_208_reg[0]_1\,
      \tmp_last_V_reg_208_reg[0]_2\ => \tmp_last_V_reg_208_reg[0]_2\,
      \tmp_last_V_reg_208_reg[0]_3\(0) => \tmp_last_V_reg_208_reg[0]_3\(0)
    );
internal_empty_n_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F700"
    )
        port map (
      I0 => \mOutPtr_reg[1]_1\(2),
      I1 => Loop_2_proc21_U0_ap_start,
      I2 => \^arg_0_tready_0\,
      I3 => start_for_Loop_2_proc21_U0_full_n,
      I4 => start_once_reg,
      O => internal_empty_n4_out
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4040BF40"
    )
        port map (
      I0 => \^arg_0_tready_0\,
      I1 => Loop_2_proc21_U0_ap_start,
      I2 => \mOutPtr_reg[1]_1\(2),
      I3 => start_for_Loop_2_proc21_U0_full_n,
      I4 => start_once_reg,
      O => internal_empty_n_reg(0)
    );
obuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized1\
     port map (
      D(8) => ibuf_inst_n_24,
      D(7) => ibuf_inst_n_25,
      D(6 downto 5) => \odata_reg[6]\(3 downto 2),
      D(4) => ibuf_inst_n_26,
      D(3 downto 2) => \odata_reg[6]\(1 downto 0),
      D(1) => ibuf_inst_n_27,
      D(0) => ibuf_inst_n_28,
      Q(8 downto 0) => \^odata_reg[32]\(8 downto 0),
      SR(0) => \^sr\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TREADY => arg_0_TREADY,
      arg_0_TREADY_0(0) => ireg01_out,
      internal_empty_n_reg => obuf_inst_n_1,
      \ireg_reg[32]\(0) => \^q\(4),
      \odata_reg[32]_0\ => \ap_CS_fsm_reg[1]\,
      \odata_reg[32]_1\ => \odata_reg[32]_0\,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20 is
  port (
    start_once_reg : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    shiftReg_ce : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_1_TREADY : out STD_LOGIC;
    \tmp_value_V_reg_102_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    p_in_1_stencil_stream_2_full_n : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    p_in_1_stencil_stream_3_full_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_for_Loop_2_proc21_U0_full_n : in STD_LOGIC;
    \ireg_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20 is
  signal \SRL_SIG[0][7]_i_7_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_3_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[2]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_2_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_4_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal arg_1_TREADY_int : STD_LOGIC;
  signal \icmp_ln24_reg_111_reg_n_0_[0]\ : STD_LOGIC;
  signal indvar_flatten_reg_75 : STD_LOGIC;
  signal \indvar_flatten_reg_75[0]_i_4_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_75[0]_i_5_n_0\ : STD_LOGIC;
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
  signal regslice_both_arg_1_V_value_V_U_n_13 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_17 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_18 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_19 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_20 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_21 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_22 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_23 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_24 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_25 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_4 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_6 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_7 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_8 : STD_LOGIC;
  signal regslice_both_arg_1_V_value_V_U_n_9 : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
  signal start_once_reg_i_1_n_0 : STD_LOGIC;
  signal tmp_value_V_reg_1020 : STD_LOGIC;
  signal \NLW_indvar_flatten_reg_75_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_indvar_flatten_reg_75_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][7]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_3\ : label is "soft_lutpair9";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_75[0]_i_4\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_75_reg[0]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_75_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_75_reg[8]_i_1\ : label is 16;
begin
  start_once_reg <= \^start_once_reg\;
\SRL_SIG[0][7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \icmp_ln24_reg_111_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_0,
      I3 => p_in_1_stencil_stream_3_full_n,
      I4 => p_in_1_stencil_stream_2_full_n,
      O => \SRL_SIG[0][7]_i_7_n_0\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF001F"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_Loop_2_proc21_U0_full_n,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => \ap_CS_fsm_reg_n_0_[2]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFEFAFFFAFFFAF"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_2__0_n_0\,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \ap_CS_fsm[1]_i_3_n_0\,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => regslice_both_arg_1_V_value_V_U_n_4,
      I5 => ap_enable_reg_pp0_iter0,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00202020"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \icmp_ln24_reg_111_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_0,
      I3 => p_in_1_stencil_stream_3_full_n,
      I4 => p_in_1_stencil_stream_2_full_n,
      O => \ap_CS_fsm[1]_i_2__0_n_0\
    );
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_Loop_2_proc21_U0_full_n,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      O => \ap_CS_fsm[1]_i_3_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => regslice_both_arg_1_V_value_V_U_n_13,
      I1 => ap_enable_reg_pp0_iter0,
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
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A8A8A8A8A8A"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \ap_CS_fsm[1]_i_3_n_0\,
      I3 => regslice_both_arg_1_V_value_V_U_n_4,
      I4 => \indvar_flatten_reg_75[0]_i_4_n_0\,
      I5 => ap_CS_fsm_pp0_stage0,
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
ap_enable_reg_pp0_iter1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => regslice_both_arg_1_V_value_V_U_n_6,
      I2 => regslice_both_arg_1_V_value_V_U_n_9,
      I3 => regslice_both_arg_1_V_value_V_U_n_8,
      I4 => regslice_both_arg_1_V_value_V_U_n_7,
      I5 => ap_enable_reg_pp0_iter1_i_4_n_0,
      O => ap_enable_reg_pp0_iter1_i_2_n_0
    );
ap_enable_reg_pp0_iter1_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404040"
    )
        port map (
      I0 => \icmp_ln24_reg_111_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => p_in_1_stencil_stream_3_full_n,
      I4 => p_in_1_stencil_stream_2_full_n,
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
      D => regslice_both_arg_1_V_value_V_U_n_17,
      Q => \icmp_ln24_reg_111_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_reg_75[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8F"
    )
        port map (
      I0 => p_in_1_stencil_stream_3_full_n,
      I1 => p_in_1_stencil_stream_2_full_n,
      I2 => ap_enable_reg_pp0_iter1_reg_n_0,
      I3 => \icmp_ln24_reg_111_reg_n_0_[0]\,
      O => \indvar_flatten_reg_75[0]_i_4_n_0\
    );
\indvar_flatten_reg_75[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten_reg_75_reg(0),
      O => \indvar_flatten_reg_75[0]_i_5_n_0\
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
      S(0) => \indvar_flatten_reg_75[0]_i_5_n_0\
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
regslice_both_arg_1_V_value_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => SS(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_i_2_n_0,
      ap_enable_reg_pp0_iter1_reg_0 => ap_enable_reg_pp0_iter1_reg_n_0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_arg_1_V_value_V_U_n_0,
      ap_rst_n_1 => ap_rst_n_0,
      ap_rst_n_2 => ap_rst_n_1,
      arg_1_TREADY => arg_1_TREADY,
      arg_1_TREADY_int => arg_1_TREADY_int,
      \icmp_ln24_reg_111_reg[0]\ => regslice_both_arg_1_V_value_V_U_n_13,
      \icmp_ln24_reg_111_reg[0]_0\ => regslice_both_arg_1_V_value_V_U_n_17,
      \icmp_ln24_reg_111_reg[0]_1\ => \icmp_ln24_reg_111_reg_n_0_[0]\,
      indvar_flatten_reg_75 => indvar_flatten_reg_75,
      indvar_flatten_reg_75_reg(16 downto 0) => indvar_flatten_reg_75_reg(16 downto 0),
      \indvar_flatten_reg_75_reg[0]_0\ => \ap_CS_fsm[1]_i_3_n_0\,
      \indvar_flatten_reg_75_reg[0]_1\ => \indvar_flatten_reg_75[0]_i_4_n_0\,
      \indvar_flatten_reg_75_reg[0]_2\(0) => ap_CS_fsm_pp0_stage0,
      \indvar_flatten_reg_75_reg[4]_0\ => regslice_both_arg_1_V_value_V_U_n_6,
      indvar_flatten_reg_75_reg_0_sp_1 => regslice_both_arg_1_V_value_V_U_n_9,
      indvar_flatten_reg_75_reg_12_sp_1 => regslice_both_arg_1_V_value_V_U_n_8,
      indvar_flatten_reg_75_reg_4_sp_1 => regslice_both_arg_1_V_value_V_U_n_4,
      indvar_flatten_reg_75_reg_8_sp_1 => regslice_both_arg_1_V_value_V_U_n_7,
      internal_full_n_reg => internal_full_n_reg,
      internal_full_n_reg_0 => internal_full_n_reg_0,
      internal_full_n_reg_1 => internal_full_n_reg_1,
      \ireg_reg[8]\(8 downto 0) => \ireg_reg[8]\(8 downto 0),
      \mOutPtr_reg[0]\(0) => \mOutPtr_reg[0]\(0),
      \mOutPtr_reg[1]\ => \SRL_SIG[0][7]_i_7_n_0\,
      \mOutPtr_reg[1]_0\ => \mOutPtr_reg[1]\,
      \mOutPtr_reg[1]_1\(1 downto 0) => \mOutPtr_reg[1]_0\(1 downto 0),
      \odata_reg[7]\(7) => regslice_both_arg_1_V_value_V_U_n_18,
      \odata_reg[7]\(6) => regslice_both_arg_1_V_value_V_U_n_19,
      \odata_reg[7]\(5) => regslice_both_arg_1_V_value_V_U_n_20,
      \odata_reg[7]\(4) => regslice_both_arg_1_V_value_V_U_n_21,
      \odata_reg[7]\(3) => regslice_both_arg_1_V_value_V_U_n_22,
      \odata_reg[7]\(2) => regslice_both_arg_1_V_value_V_U_n_23,
      \odata_reg[7]\(1) => regslice_both_arg_1_V_value_V_U_n_24,
      \odata_reg[7]\(0) => regslice_both_arg_1_V_value_V_U_n_25,
      \odata_reg[8]\ => shiftReg_ce,
      \odata_reg[8]_0\(0) => tmp_value_V_reg_1020,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n
    );
start_once_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_Loop_2_proc21_U0_full_n,
      I2 => \ap_CS_fsm_reg_n_0_[2]\,
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
      D => regslice_both_arg_1_V_value_V_U_n_25,
      Q => \tmp_value_V_reg_102_reg[7]_0\(0),
      R => '0'
    );
\tmp_value_V_reg_102_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_24,
      Q => \tmp_value_V_reg_102_reg[7]_0\(1),
      R => '0'
    );
\tmp_value_V_reg_102_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_23,
      Q => \tmp_value_V_reg_102_reg[7]_0\(2),
      R => '0'
    );
\tmp_value_V_reg_102_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_22,
      Q => \tmp_value_V_reg_102_reg[7]_0\(3),
      R => '0'
    );
\tmp_value_V_reg_102_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_21,
      Q => \tmp_value_V_reg_102_reg[7]_0\(4),
      R => '0'
    );
\tmp_value_V_reg_102_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_20,
      Q => \tmp_value_V_reg_102_reg[7]_0\(5),
      R => '0'
    );
\tmp_value_V_reg_102_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_19,
      Q => \tmp_value_V_reg_102_reg[7]_0\(6),
      R => '0'
    );
\tmp_value_V_reg_102_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_value_V_reg_1020,
      D => regslice_both_arg_1_V_value_V_U_n_18,
      Q => \tmp_value_V_reg_102_reg[7]_0\(7),
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
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    \icmp_ln36_reg_222_reg[0]_0\ : out STD_LOGIC;
    ap_rst_n_2 : out STD_LOGIC;
    \odata_reg[32]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ireg_reg[32]\ : out STD_LOGIC;
    \mOutPtr_reg[1]\ : out STD_LOGIC;
    \mOutPtr_reg[1]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_0_TREADY_0 : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n4_out : out STD_LOGIC;
    \ap_CS_fsm_reg[2]_1\ : out STD_LOGIC;
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    p_in_1_stencil_stream_3_empty_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg_0 : in STD_LOGIC;
    p_in_1_stencil_stream_2_empty_n : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    Loop_2_proc21_U0_ap_start : in STD_LOGIC;
    internal_full_n_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    internal_full_n_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_for_Loop_2_proc21_U0_full_n : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_reg[4]\ : in STD_LOGIC;
    \odata_reg[4]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \odata_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_2_proc21;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_2_proc21 is
  signal Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_ln36_1_fu_121_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ap_CS_fsm[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_4_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_3_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_reg_n_0 : STD_LOGIC;
  signal \^ap_rst_n_1\ : STD_LOGIC;
  signal icmp_ln36_fu_115_p2 : STD_LOGIC;
  signal icmp_ln36_reg_2220 : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_6_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_7_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_8_n_0\ : STD_LOGIC;
  signal \icmp_ln36_reg_222[0]_i_9_n_0\ : STD_LOGIC;
  signal icmp_ln36_reg_222_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln36_reg_222_reg_n_0_[0]\ : STD_LOGIC;
  signal indvar_flatten_reg_82 : STD_LOGIC;
  signal indvar_flatten_reg_820 : STD_LOGIC;
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
  signal p_hw_output_1_x_sca_1_reg_104 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\ : STD_LOGIC;
  signal \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0\ : STD_LOGIC;
  signal p_hw_output_1_x_sca_fu_187_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_hw_output_1_y_sca_reg_93 : STD_LOGIC;
  signal \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\ : STD_LOGIC;
  signal p_hw_output_1_y_sca_reg_93_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal regslice_both_arg_0_V_value_V_U_n_1 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_2 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_24 : STD_LOGIC;
  signal regslice_both_arg_0_V_value_V_U_n_36 : STD_LOGIC;
  signal tmp_last_V_reg_208 : STD_LOGIC;
  signal \tmp_last_V_reg_208[0]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_indvar_flatten_reg_82_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_indvar_flatten_reg_82_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_3__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_3\ : label is "soft_lutpair25";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of \icmp_ln36_reg_222[0]_i_5\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_82_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_82_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_reg_82_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[8]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[8]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \p_hw_output_1_x_sca_1_reg_104[8]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \p_hw_output_1_y_sca_reg_93[8]_i_2\ : label is "soft_lutpair24";
begin
  SS(0) <= \^ss\(0);
  \ap_CS_fsm_reg[2]_0\(0) <= \^ap_cs_fsm_reg[2]_0\(0);
  ap_rst_n_1 <= \^ap_rst_n_1\;
\ap_CS_fsm[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \icmp_ln36_reg_222[0]_i_9_n_0\,
      I1 => \icmp_ln36_reg_222[0]_i_8_n_0\,
      I2 => \icmp_ln36_reg_222[0]_i_7_n_0\,
      I3 => \icmp_ln36_reg_222[0]_i_6_n_0\,
      I4 => ap_enable_reg_pp0_iter0,
      O => \ap_CS_fsm[1]_i_3__0_n_0\
    );
\ap_CS_fsm[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => Loop_2_proc21_U0_ap_start,
      O => \ap_CS_fsm[1]_i_4_n_0\
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => ap_enable_reg_pp0_iter2_reg_n_0,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_CS_fsm_pp0_stage0,
      O => \ap_CS_fsm[2]_i_3_n_0\
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
      Q => \^ap_cs_fsm_reg[2]_0\(0),
      R => \^ss\(0)
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_0_V_value_V_U_n_24,
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
\icmp_ln36_reg_222[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \icmp_ln36_reg_222[0]_i_5_n_0\,
      O => icmp_ln36_fu_115_p2
    );
\icmp_ln36_reg_222[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => \icmp_ln36_reg_222_reg_n_0_[0]\,
      I2 => p_in_1_stencil_stream_2_empty_n,
      I3 => p_in_1_stencil_stream_3_empty_n,
      O => \icmp_ln36_reg_222[0]_i_3_n_0\
    );
\icmp_ln36_reg_222[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2_reg_n_0,
      I1 => icmp_ln36_reg_222_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter1_reg_n_0,
      I3 => \icmp_ln36_reg_222_reg_n_0_[0]\,
      O => \icmp_ln36_reg_222[0]_i_4_n_0\
    );
\icmp_ln36_reg_222[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \icmp_ln36_reg_222[0]_i_6_n_0\,
      I1 => \icmp_ln36_reg_222[0]_i_7_n_0\,
      I2 => \icmp_ln36_reg_222[0]_i_8_n_0\,
      I3 => \icmp_ln36_reg_222[0]_i_9_n_0\,
      O => \icmp_ln36_reg_222[0]_i_5_n_0\
    );
\icmp_ln36_reg_222[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(4),
      I1 => indvar_flatten_reg_82_reg(3),
      I2 => indvar_flatten_reg_82_reg(6),
      I3 => indvar_flatten_reg_82_reg(5),
      O => \icmp_ln36_reg_222[0]_i_6_n_0\
    );
\icmp_ln36_reg_222[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(0),
      I1 => indvar_flatten_reg_82_reg(15),
      I2 => indvar_flatten_reg_82_reg(16),
      I3 => indvar_flatten_reg_82_reg(2),
      I4 => indvar_flatten_reg_82_reg(1),
      O => \icmp_ln36_reg_222[0]_i_7_n_0\
    );
\icmp_ln36_reg_222[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(12),
      I1 => indvar_flatten_reg_82_reg(11),
      I2 => indvar_flatten_reg_82_reg(14),
      I3 => indvar_flatten_reg_82_reg(13),
      O => \icmp_ln36_reg_222[0]_i_8_n_0\
    );
\icmp_ln36_reg_222[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => indvar_flatten_reg_82_reg(8),
      I1 => indvar_flatten_reg_82_reg(7),
      I2 => indvar_flatten_reg_82_reg(10),
      I3 => indvar_flatten_reg_82_reg(9),
      O => \icmp_ln36_reg_222[0]_i_9_n_0\
    );
\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => icmp_ln36_reg_2220,
      D => \icmp_ln36_reg_222_reg_n_0_[0]\,
      Q => icmp_ln36_reg_222_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln36_reg_222_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => icmp_ln36_reg_2220,
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
      CE => indvar_flatten_reg_820,
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
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_13\,
      Q => indvar_flatten_reg_82_reg(10),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_12\,
      Q => indvar_flatten_reg_82_reg(11),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_11\,
      Q => indvar_flatten_reg_82_reg(12),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_10\,
      Q => indvar_flatten_reg_82_reg(13),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_9\,
      Q => indvar_flatten_reg_82_reg(14),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_8\,
      Q => indvar_flatten_reg_82_reg(15),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
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
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_14\,
      Q => indvar_flatten_reg_82_reg(1),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_13\,
      Q => indvar_flatten_reg_82_reg(2),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_12\,
      Q => indvar_flatten_reg_82_reg(3),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_11\,
      Q => indvar_flatten_reg_82_reg(4),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_10\,
      Q => indvar_flatten_reg_82_reg(5),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_9\,
      Q => indvar_flatten_reg_82_reg(6),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[0]_i_1_n_8\,
      Q => indvar_flatten_reg_82_reg(7),
      R => indvar_flatten_reg_82
    );
\indvar_flatten_reg_82_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
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
      CE => indvar_flatten_reg_820,
      D => \indvar_flatten_reg_82_reg[8]_i_1_n_14\,
      Q => indvar_flatten_reg_82_reg(9),
      R => indvar_flatten_reg_82
    );
\internal_full_n_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[2]_0\(0),
      I1 => Loop_2_proc21_U0_ap_start,
      O => \ap_CS_fsm_reg[2]_1\
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
      I0 => p_hw_output_1_x_sca_1_reg_104(0),
      I1 => p_hw_output_1_x_sca_1_reg_104(1),
      O => p_hw_output_1_x_sca_fu_187_p2(1)
    );
\p_hw_output_1_x_sca_1_reg_104[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(1),
      I1 => p_hw_output_1_x_sca_1_reg_104(0),
      I2 => p_hw_output_1_x_sca_1_reg_104(2),
      O => p_hw_output_1_x_sca_fu_187_p2(2)
    );
\p_hw_output_1_x_sca_1_reg_104[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(2),
      I1 => p_hw_output_1_x_sca_1_reg_104(0),
      I2 => p_hw_output_1_x_sca_1_reg_104(1),
      I3 => p_hw_output_1_x_sca_1_reg_104(3),
      O => p_hw_output_1_x_sca_fu_187_p2(3)
    );
\p_hw_output_1_x_sca_1_reg_104[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(3),
      I1 => p_hw_output_1_x_sca_1_reg_104(1),
      I2 => p_hw_output_1_x_sca_1_reg_104(0),
      I3 => p_hw_output_1_x_sca_1_reg_104(2),
      I4 => p_hw_output_1_x_sca_1_reg_104(4),
      O => p_hw_output_1_x_sca_fu_187_p2(4)
    );
\p_hw_output_1_x_sca_1_reg_104[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(4),
      I1 => p_hw_output_1_x_sca_1_reg_104(2),
      I2 => p_hw_output_1_x_sca_1_reg_104(0),
      I3 => p_hw_output_1_x_sca_1_reg_104(1),
      I4 => p_hw_output_1_x_sca_1_reg_104(3),
      I5 => p_hw_output_1_x_sca_1_reg_104(5),
      O => p_hw_output_1_x_sca_fu_187_p2(5)
    );
\p_hw_output_1_x_sca_1_reg_104[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\,
      I1 => p_hw_output_1_x_sca_1_reg_104(6),
      O => p_hw_output_1_x_sca_fu_187_p2(6)
    );
\p_hw_output_1_x_sca_1_reg_104[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(6),
      I1 => \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\,
      I2 => p_hw_output_1_x_sca_1_reg_104(7),
      O => p_hw_output_1_x_sca_fu_187_p2(7)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F808080"
    )
        port map (
      I0 => \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\,
      I1 => p_hw_output_1_x_sca_1_reg_104(6),
      I2 => p_hw_output_1_x_sca_1_reg_104(7),
      I3 => p_hw_output_1_x_sca_1_reg_104(8),
      I4 => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\,
      O => p_hw_output_1_x_sca_fu_187_p2(8)
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(4),
      I1 => p_hw_output_1_x_sca_1_reg_104(2),
      I2 => p_hw_output_1_x_sca_1_reg_104(0),
      I3 => p_hw_output_1_x_sca_1_reg_104(1),
      I4 => p_hw_output_1_x_sca_1_reg_104(3),
      I5 => p_hw_output_1_x_sca_1_reg_104(5),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(2),
      I1 => p_hw_output_1_x_sca_1_reg_104(3),
      I2 => p_hw_output_1_x_sca_1_reg_104(0),
      I3 => p_hw_output_1_x_sca_1_reg_104(1),
      I4 => \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0\,
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_hw_output_1_x_sca_1_reg_104(5),
      I1 => p_hw_output_1_x_sca_1_reg_104(4),
      I2 => p_hw_output_1_x_sca_1_reg_104(7),
      I3 => p_hw_output_1_x_sca_1_reg_104(6),
      O => \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0\
    );
\p_hw_output_1_x_sca_1_reg_104_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(0),
      Q => p_hw_output_1_x_sca_1_reg_104(0),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(1),
      Q => p_hw_output_1_x_sca_1_reg_104(1),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(2),
      Q => p_hw_output_1_x_sca_1_reg_104(2),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(3),
      Q => p_hw_output_1_x_sca_1_reg_104(3),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(4),
      Q => p_hw_output_1_x_sca_1_reg_104(4),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(5),
      Q => p_hw_output_1_x_sca_1_reg_104(5),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(6),
      Q => p_hw_output_1_x_sca_1_reg_104(6),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
      D => p_hw_output_1_x_sca_fu_187_p2(7),
      Q => p_hw_output_1_x_sca_1_reg_104(7),
      R => indvar_flatten_reg_82
    );
\p_hw_output_1_x_sca_1_reg_104_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_820,
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
      I0 => p_hw_output_1_y_sca_reg_93_reg(0),
      I1 => p_hw_output_1_y_sca_reg_93_reg(1),
      O => add_ln36_1_fu_121_p2(1)
    );
\p_hw_output_1_y_sca_reg_93[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(1),
      I1 => p_hw_output_1_y_sca_reg_93_reg(0),
      I2 => p_hw_output_1_y_sca_reg_93_reg(2),
      O => add_ln36_1_fu_121_p2(2)
    );
\p_hw_output_1_y_sca_reg_93[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(2),
      I1 => p_hw_output_1_y_sca_reg_93_reg(0),
      I2 => p_hw_output_1_y_sca_reg_93_reg(1),
      I3 => p_hw_output_1_y_sca_reg_93_reg(3),
      O => add_ln36_1_fu_121_p2(3)
    );
\p_hw_output_1_y_sca_reg_93[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(3),
      I1 => p_hw_output_1_y_sca_reg_93_reg(1),
      I2 => p_hw_output_1_y_sca_reg_93_reg(0),
      I3 => p_hw_output_1_y_sca_reg_93_reg(2),
      I4 => p_hw_output_1_y_sca_reg_93_reg(4),
      O => add_ln36_1_fu_121_p2(4)
    );
\p_hw_output_1_y_sca_reg_93[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(4),
      I1 => p_hw_output_1_y_sca_reg_93_reg(2),
      I2 => p_hw_output_1_y_sca_reg_93_reg(0),
      I3 => p_hw_output_1_y_sca_reg_93_reg(1),
      I4 => p_hw_output_1_y_sca_reg_93_reg(3),
      I5 => p_hw_output_1_y_sca_reg_93_reg(5),
      O => add_ln36_1_fu_121_p2(5)
    );
\p_hw_output_1_y_sca_reg_93[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      I1 => p_hw_output_1_y_sca_reg_93_reg(6),
      O => add_ln36_1_fu_121_p2(6)
    );
\p_hw_output_1_y_sca_reg_93[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(6),
      I1 => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      I2 => p_hw_output_1_y_sca_reg_93_reg(7),
      O => add_ln36_1_fu_121_p2(7)
    );
\p_hw_output_1_y_sca_reg_93[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      I1 => p_hw_output_1_y_sca_reg_93_reg(6),
      I2 => p_hw_output_1_y_sca_reg_93_reg(7),
      I3 => p_hw_output_1_y_sca_reg_93_reg(8),
      O => add_ln36_1_fu_121_p2(8)
    );
\p_hw_output_1_y_sca_reg_93[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(4),
      I1 => p_hw_output_1_y_sca_reg_93_reg(2),
      I2 => p_hw_output_1_y_sca_reg_93_reg(0),
      I3 => p_hw_output_1_y_sca_reg_93_reg(1),
      I4 => p_hw_output_1_y_sca_reg_93_reg(3),
      I5 => p_hw_output_1_y_sca_reg_93_reg(5),
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
      D(1) => Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
      D(0) => tmp_last_V_reg_208,
      SR(0) => \^ss\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TLAST(0) => arg_0_TLAST(0),
      arg_0_TREADY => arg_0_TREADY,
      \odata_reg[1]\ => \^ap_rst_n_1\
    );
regslice_both_arg_0_V_value_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1\
     port map (
      D(2 downto 0) => ap_NS_fsm(2 downto 0),
      E(0) => E(0),
      Loop_2_proc21_U0_ap_start => Loop_2_proc21_U0_ap_start,
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => \^ss\(0),
      \ap_CS_fsm_reg[1]\ => ap_enable_reg_pp0_iter1_reg_n_0,
      \ap_CS_fsm_reg[1]_0\ => \ap_CS_fsm[1]_i_3__0_n_0\,
      \ap_CS_fsm_reg[1]_1\ => ap_enable_reg_pp0_iter2_reg_n_0,
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm[2]_i_3_n_0\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg(0) => p_hw_output_1_y_sca_reg_93,
      ap_enable_reg_pp0_iter0_reg_0(0) => indvar_flatten_reg_82,
      ap_enable_reg_pp0_iter0_reg_1 => \ap_CS_fsm[1]_i_4_n_0\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_arg_0_V_value_V_U_n_1,
      ap_rst_n_1 => regslice_both_arg_0_V_value_V_U_n_2,
      ap_rst_n_2 => ap_rst_n_0,
      ap_rst_n_3 => \^ap_rst_n_1\,
      ap_rst_n_4 => ap_rst_n_2,
      ap_rst_n_5 => regslice_both_arg_0_V_value_V_U_n_24,
      ap_rst_n_6(0) => Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
      arg_0_TREADY => arg_0_TREADY,
      arg_0_TREADY_0 => arg_0_TREADY_0,
      icmp_ln36_reg_2220 => icmp_ln36_reg_2220,
      icmp_ln36_reg_222_pp0_iter1_reg => icmp_ln36_reg_222_pp0_iter1_reg,
      \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]\ => \icmp_ln36_reg_222[0]_i_4_n_0\,
      \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0\ => \icmp_ln36_reg_222[0]_i_3_n_0\,
      \icmp_ln36_reg_222_reg[0]\ => \icmp_ln36_reg_222_reg[0]_0\,
      indvar_flatten_reg_820 => indvar_flatten_reg_820,
      \indvar_flatten_reg_82_reg[0]\ => \icmp_ln36_reg_222[0]_i_5_n_0\,
      internal_empty_n4_out => internal_empty_n4_out,
      internal_empty_n_reg(0) => internal_empty_n_reg(0),
      internal_empty_n_reg_0 => internal_empty_n_reg_0,
      internal_empty_n_reg_1 => internal_empty_n_reg_1,
      internal_full_n_reg(1 downto 0) => internal_full_n_reg(1 downto 0),
      internal_full_n_reg_0(1 downto 0) => internal_full_n_reg_0(1 downto 0),
      \ireg_reg[32]\ => \ireg_reg[32]\,
      \ireg_reg[7]\(7 downto 0) => D(7 downto 0),
      \mOutPtr_reg[1]\ => \mOutPtr_reg[1]\,
      \mOutPtr_reg[1]_0\ => \mOutPtr_reg[1]_0\,
      \mOutPtr_reg[1]_1\(2) => \^ap_cs_fsm_reg[2]_0\(0),
      \mOutPtr_reg[1]_1\(1) => ap_CS_fsm_pp0_stage0,
      \mOutPtr_reg[1]_1\(0) => \ap_CS_fsm_reg_n_0_[0]\,
      \odata_reg[32]\(8 downto 0) => \odata_reg[32]\(8 downto 0),
      \odata_reg[32]_0\ => \icmp_ln36_reg_222_reg_n_0_[0]\,
      \odata_reg[4]\ => \odata_reg[4]\,
      \odata_reg[4]_0\(2 downto 0) => \odata_reg[4]_0\(2 downto 0),
      \odata_reg[6]\(3 downto 0) => \odata_reg[6]\(3 downto 0),
      \p_hw_output_1_y_sca_reg_93_reg[0]\(0) => p_hw_output_1_x_sca_1_reg_104(8),
      \p_hw_output_1_y_sca_reg_93_reg[0]_0\ => \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0\,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      start_for_Loop_2_proc21_U0_full_n => start_for_Loop_2_proc21_U0_full_n,
      start_once_reg => start_once_reg,
      \tmp_last_V_reg_208_reg[0]\ => regslice_both_arg_0_V_value_V_U_n_36,
      \tmp_last_V_reg_208_reg[0]_0\ => \tmp_last_V_reg_208[0]_i_2_n_0\,
      \tmp_last_V_reg_208_reg[0]_1\ => \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0\,
      \tmp_last_V_reg_208_reg[0]_2\ => \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0\,
      \tmp_last_V_reg_208_reg[0]_3\(0) => tmp_last_V_reg_208
    );
\tmp_last_V_reg_208[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => p_hw_output_1_y_sca_reg_93_reg(6),
      I1 => p_hw_output_1_x_sca_1_reg_104(8),
      I2 => p_hw_output_1_x_sca_1_reg_104(6),
      I3 => p_hw_output_1_x_sca_1_reg_104(7),
      I4 => p_hw_output_1_y_sca_reg_93_reg(8),
      I5 => p_hw_output_1_y_sca_reg_93_reg(7),
      O => \tmp_last_V_reg_208[0]_i_2_n_0\
    );
\tmp_last_V_reg_208_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_arg_0_V_value_V_U_n_36,
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
    arg_0_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_1_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \<const0>\ : STD_LOGIC;
  signal Loop_1_proc20_U0_n_1 : STD_LOGIC;
  signal Loop_1_proc20_U0_n_3 : STD_LOGIC;
  signal Loop_1_proc20_U0_n_4 : STD_LOGIC;
  signal Loop_1_proc20_U0_n_5 : STD_LOGIC;
  signal Loop_1_proc20_U0_n_6 : STD_LOGIC;
  signal Loop_2_proc21_U0_ap_start : STD_LOGIC;
  signal Loop_2_proc21_U0_n_19 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_2 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_20 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_21 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_23 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_24 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_26 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_3 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_4 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_5 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_6 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_7 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_8 : STD_LOGIC;
  signal Loop_2_proc21_U0_n_9 : STD_LOGIC;
  signal \SRL_SIG_reg[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal \^arg_0_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arg_0_TDATA_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internal_empty_n4_out : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_10 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_11 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_12 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_2 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_3 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_4 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_5 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_U_n_9 : STD_LOGIC;
  signal p_in_1_stencil_stream_2_empty_n : STD_LOGIC;
  signal p_in_1_stencil_stream_2_full_n : STD_LOGIC;
  signal p_in_1_stencil_stream_3_U_n_2 : STD_LOGIC;
  signal p_in_1_stencil_stream_3_U_n_3 : STD_LOGIC;
  signal p_in_1_stencil_stream_3_U_n_4 : STD_LOGIC;
  signal p_in_1_stencil_stream_3_empty_n : STD_LOGIC;
  signal p_in_1_stencil_stream_3_full_n : STD_LOGIC;
  signal \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in\ : STD_LOGIC;
  signal shiftReg_ce : STD_LOGIC;
  signal start_for_Loop_2_proc21_U0_full_n : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal tmp_value_V_reg_102 : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  arg_0_TDATA(31) <= \<const0>\;
  arg_0_TDATA(30) <= \<const0>\;
  arg_0_TDATA(29) <= \<const0>\;
  arg_0_TDATA(28) <= \<const0>\;
  arg_0_TDATA(27) <= \<const0>\;
  arg_0_TDATA(26) <= \<const0>\;
  arg_0_TDATA(25) <= \<const0>\;
  arg_0_TDATA(24) <= \<const0>\;
  arg_0_TDATA(23) <= \<const0>\;
  arg_0_TDATA(22) <= \<const0>\;
  arg_0_TDATA(21) <= \<const0>\;
  arg_0_TDATA(20) <= \<const0>\;
  arg_0_TDATA(19) <= \<const0>\;
  arg_0_TDATA(18) <= \<const0>\;
  arg_0_TDATA(17) <= \<const0>\;
  arg_0_TDATA(16) <= \<const0>\;
  arg_0_TDATA(15) <= \<const0>\;
  arg_0_TDATA(14) <= \<const0>\;
  arg_0_TDATA(13) <= \<const0>\;
  arg_0_TDATA(12) <= \<const0>\;
  arg_0_TDATA(11) <= \<const0>\;
  arg_0_TDATA(10) <= \<const0>\;
  arg_0_TDATA(9) <= \<const0>\;
  arg_0_TDATA(8) <= \<const0>\;
  arg_0_TDATA(7 downto 0) <= \^arg_0_tdata\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Loop_1_proc20_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_1_proc20
     port map (
      D(0) => Loop_1_proc20_U0_n_5,
      E(0) => Loop_1_proc20_U0_n_3,
      Q(1) => p_in_1_stencil_stream_2_U_n_11,
      Q(0) => p_in_1_stencil_stream_2_U_n_12,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => Loop_1_proc20_U0_n_1,
      ap_rst_n_1 => Loop_1_proc20_U0_n_4,
      arg_1_TREADY => arg_1_TREADY,
      internal_full_n_reg => Loop_2_proc21_U0_n_8,
      internal_full_n_reg_0 => Loop_2_proc21_U0_n_21,
      internal_full_n_reg_1 => Loop_2_proc21_U0_n_20,
      \ireg_reg[8]\(8) => arg_1_TVALID,
      \ireg_reg[8]\(7 downto 0) => arg_1_TDATA(7 downto 0),
      \mOutPtr_reg[0]\(0) => Loop_1_proc20_U0_n_6,
      \mOutPtr_reg[1]\ => Loop_2_proc21_U0_n_7,
      \mOutPtr_reg[1]_0\(1) => p_in_1_stencil_stream_3_U_n_3,
      \mOutPtr_reg[1]_0\(0) => p_in_1_stencil_stream_3_U_n_4,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n,
      shiftReg_ce => shiftReg_ce,
      start_for_Loop_2_proc21_U0_full_n => start_for_Loop_2_proc21_U0_full_n,
      start_once_reg => start_once_reg,
      \tmp_value_V_reg_102_reg[7]_0\(7 downto 0) => tmp_value_V_reg_102(7 downto 0)
    );
Loop_2_proc21_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Loop_2_proc21
     port map (
      D(7 downto 0) => arg_0_TDATA_int(7 downto 0),
      E(0) => shiftReg_ce,
      Loop_2_proc21_U0_ap_start => Loop_2_proc21_U0_ap_start,
      Q(4) => \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in\,
      Q(3) => Loop_2_proc21_U0_n_2,
      Q(2) => Loop_2_proc21_U0_n_3,
      Q(1) => Loop_2_proc21_U0_n_4,
      Q(0) => Loop_2_proc21_U0_n_5,
      SS(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[2]_0\(0) => ap_CS_fsm_state5,
      \ap_CS_fsm_reg[2]_1\ => Loop_2_proc21_U0_n_26,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => Loop_2_proc21_U0_n_6,
      ap_rst_n_1 => Loop_2_proc21_U0_n_7,
      ap_rst_n_2 => Loop_2_proc21_U0_n_9,
      arg_0_TLAST(0) => arg_0_TLAST(0),
      arg_0_TREADY => arg_0_TREADY,
      arg_0_TREADY_0 => Loop_2_proc21_U0_n_23,
      \icmp_ln36_reg_222_reg[0]_0\ => Loop_2_proc21_U0_n_8,
      internal_empty_n4_out => internal_empty_n4_out,
      internal_empty_n_reg(0) => Loop_2_proc21_U0_n_24,
      internal_empty_n_reg_0 => p_in_1_stencil_stream_3_U_n_2,
      internal_empty_n_reg_1 => p_in_1_stencil_stream_2_U_n_10,
      internal_full_n_reg(1) => p_in_1_stencil_stream_3_U_n_3,
      internal_full_n_reg(0) => p_in_1_stencil_stream_3_U_n_4,
      internal_full_n_reg_0(1) => p_in_1_stencil_stream_2_U_n_11,
      internal_full_n_reg_0(0) => p_in_1_stencil_stream_2_U_n_12,
      \ireg_reg[32]\ => Loop_2_proc21_U0_n_19,
      \mOutPtr_reg[1]\ => Loop_2_proc21_U0_n_20,
      \mOutPtr_reg[1]_0\ => Loop_2_proc21_U0_n_21,
      \odata_reg[32]\(8) => arg_0_TVALID,
      \odata_reg[32]\(7 downto 0) => \^arg_0_tdata\(7 downto 0),
      \odata_reg[4]\ => p_in_1_stencil_stream_2_U_n_9,
      \odata_reg[4]_0\(2) => \SRL_SIG_reg[0]\(4),
      \odata_reg[4]_0\(1 downto 0) => \SRL_SIG_reg[0]\(1 downto 0),
      \odata_reg[6]\(3) => p_in_1_stencil_stream_2_U_n_2,
      \odata_reg[6]\(2) => p_in_1_stencil_stream_2_U_n_3,
      \odata_reg[6]\(1) => p_in_1_stencil_stream_2_U_n_4,
      \odata_reg[6]\(0) => p_in_1_stencil_stream_2_U_n_5,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      start_for_Loop_2_proc21_U0_full_n => start_for_Loop_2_proc21_U0_full_n,
      start_once_reg => start_once_reg
    );
p_in_1_stencil_stream_2_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w8_d1_S
     port map (
      D(7 downto 0) => arg_0_TDATA_int(7 downto 0),
      E(0) => shiftReg_ce,
      Q(4) => \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in\,
      Q(3) => Loop_2_proc21_U0_n_2,
      Q(2) => Loop_2_proc21_U0_n_3,
      Q(1) => Loop_2_proc21_U0_n_4,
      Q(0) => Loop_2_proc21_U0_n_5,
      \SRL_SIG_reg[0][2]\ => p_in_1_stencil_stream_2_U_n_9,
      \SRL_SIG_reg[0][4]\(2) => \SRL_SIG_reg[0]\(4),
      \SRL_SIG_reg[0][4]\(1 downto 0) => \SRL_SIG_reg[0]\(1 downto 0),
      \SRL_SIG_reg[0][7]\(7 downto 0) => tmp_value_V_reg_102(7 downto 0),
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      internal_empty_n_reg_0 => Loop_2_proc21_U0_n_9,
      internal_full_n_reg_0 => Loop_1_proc20_U0_n_1,
      \ireg_reg[6]\(3) => p_in_1_stencil_stream_2_U_n_2,
      \ireg_reg[6]\(2) => p_in_1_stencil_stream_2_U_n_3,
      \ireg_reg[6]\(1) => p_in_1_stencil_stream_2_U_n_4,
      \ireg_reg[6]\(0) => p_in_1_stencil_stream_2_U_n_5,
      \mOutPtr_reg[0]_0\ => p_in_1_stencil_stream_2_U_n_10,
      \mOutPtr_reg[0]_1\(0) => Loop_1_proc20_U0_n_3,
      \mOutPtr_reg[1]_0\(1) => p_in_1_stencil_stream_2_U_n_11,
      \mOutPtr_reg[1]_0\(0) => p_in_1_stencil_stream_2_U_n_12,
      \mOutPtr_reg[1]_1\(0) => Loop_1_proc20_U0_n_5,
      \odata_reg[6]\ => Loop_2_proc21_U0_n_19,
      p_in_1_stencil_stream_2_empty_n => p_in_1_stencil_stream_2_empty_n,
      p_in_1_stencil_stream_2_full_n => p_in_1_stencil_stream_2_full_n
    );
p_in_1_stencil_stream_3_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d1_S
     port map (
      D(0) => Loop_1_proc20_U0_n_6,
      E(0) => Loop_1_proc20_U0_n_3,
      Q(1) => p_in_1_stencil_stream_3_U_n_3,
      Q(0) => p_in_1_stencil_stream_3_U_n_4,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      internal_empty_n_reg_0 => Loop_2_proc21_U0_n_6,
      internal_full_n_reg_0 => Loop_1_proc20_U0_n_4,
      \mOutPtr_reg[0]_0\ => p_in_1_stencil_stream_3_U_n_2,
      p_in_1_stencil_stream_3_empty_n => p_in_1_stencil_stream_3_empty_n,
      p_in_1_stencil_stream_3_full_n => p_in_1_stencil_stream_3_full_n
    );
start_for_Loop_2_bkb_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_Loop_2_bkb
     port map (
      E(0) => Loop_2_proc21_U0_n_24,
      Loop_2_proc21_U0_ap_start => Loop_2_proc21_U0_ap_start,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_empty_n4_out => internal_empty_n4_out,
      internal_full_n_reg_0 => Loop_2_proc21_U0_n_26,
      internal_full_n_reg_1 => Loop_2_proc21_U0_n_23,
      \mOutPtr_reg[1]_0\(0) => ap_CS_fsm_state5,
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
    arg_0_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_1_TVALID : in STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    arg_1_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    arg_1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "overlay_8x32_addone_8x32_0_0,hls_target,{}";
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
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_0:arg_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN overlay_8x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arg_0_TREADY : signal is "xilinx.com:interface:axis:1.0 arg_0 TREADY";
  attribute X_INTERFACE_INFO of arg_0_TVALID : signal is "xilinx.com:interface:axis:1.0 arg_0 TVALID";
  attribute X_INTERFACE_INFO of arg_1_TREADY : signal is "xilinx.com:interface:axis:1.0 arg_1 TREADY";
  attribute X_INTERFACE_INFO of arg_1_TVALID : signal is "xilinx.com:interface:axis:1.0 arg_1 TVALID";
  attribute X_INTERFACE_INFO of arg_0_TDATA : signal is "xilinx.com:interface:axis:1.0 arg_0 TDATA";
  attribute X_INTERFACE_INFO of arg_0_TLAST : signal is "xilinx.com:interface:axis:1.0 arg_0 TLAST";
  attribute X_INTERFACE_PARAMETER of arg_0_TLAST : signal is "XIL_INTERFACENAME arg_0, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_8x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arg_1_TDATA : signal is "xilinx.com:interface:axis:1.0 arg_1 TDATA";
  attribute X_INTERFACE_INFO of arg_1_TLAST : signal is "xilinx.com:interface:axis:1.0 arg_1 TLAST";
  attribute X_INTERFACE_PARAMETER of arg_1_TLAST : signal is "XIL_INTERFACENAME arg_1, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_8x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hls_target
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      arg_0_TDATA(31 downto 0) => arg_0_TDATA(31 downto 0),
      arg_0_TLAST(0) => arg_0_TLAST(0),
      arg_0_TREADY => arg_0_TREADY,
      arg_0_TVALID => arg_0_TVALID,
      arg_1_TDATA(7 downto 0) => arg_1_TDATA(7 downto 0),
      arg_1_TLAST(0) => arg_1_TLAST(0),
      arg_1_TREADY => arg_1_TREADY,
      arg_1_TVALID => arg_1_TVALID
    );
end STRUCTURE;
