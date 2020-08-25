-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Aug 14 16:16:11 2020
-- Host        : charles-XPS-13-9370 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/charles/tmp/vivado_script_dev/overlay_32x32/overlay_32x32/overlay_32x32.srcs/sources_1/bd/overlay_32x32/ip/overlay_32x32_addone_32x32_0_0/overlay_32x32_addone_32x32_0_0_stub.vhdl
-- Design      : overlay_32x32_addone_32x32_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overlay_32x32_addone_32x32_0_0 is
  Port ( 
    arg_0_TVALID : out STD_LOGIC;
    arg_0_TREADY : in STD_LOGIC;
    arg_0_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    arg_0_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    arg_1_TVALID : in STD_LOGIC;
    arg_1_TREADY : out STD_LOGIC;
    arg_1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    arg_1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );

end overlay_32x32_addone_32x32_0_0;

architecture stub of overlay_32x32_addone_32x32_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "arg_0_TVALID,arg_0_TREADY,arg_0_TDATA[31:0],arg_0_TLAST[0:0],arg_1_TVALID,arg_1_TREADY,arg_1_TDATA[31:0],arg_1_TLAST[0:0],ap_clk,ap_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hls_target,Vivado 2020.1";
begin
end;
