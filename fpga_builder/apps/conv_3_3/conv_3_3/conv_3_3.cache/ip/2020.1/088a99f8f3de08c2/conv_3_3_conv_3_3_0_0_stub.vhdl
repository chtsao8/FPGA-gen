-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Oct 13 14:49:09 2020
-- Host        : nyengele-NUC8i7HNK running 64-bit Ubuntu 20.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ conv_3_3_conv_3_3_0_0_stub.vhdl
-- Design      : conv_3_3_conv_3_3_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "arg_in0_TVALID,arg_in0_TREADY,arg_in0_TDATA[15:0],arg_in0_TLAST[0:0],arg_out_TVALID,arg_out_TREADY,arg_out_TDATA[15:0],arg_out_TLAST[0:0],ap_clk,ap_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "unoptimized_conv_3_3_rdai,Vivado 2020.1";
begin
end;
