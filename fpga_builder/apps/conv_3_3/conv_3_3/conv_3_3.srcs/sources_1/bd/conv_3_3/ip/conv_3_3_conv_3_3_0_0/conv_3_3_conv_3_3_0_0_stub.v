// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Oct 13 14:49:10 2020
// Host        : nyengele-NUC8i7HNK running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nyengele/aha/fpga_builder/apps/conv_3_3/conv_3_3/conv_3_3.srcs/sources_1/bd/conv_3_3/ip/conv_3_3_conv_3_3_0_0/conv_3_3_conv_3_3_0_0_stub.v
// Design      : conv_3_3_conv_3_3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "unoptimized_conv_3_3_rdai,Vivado 2020.1" *)
module conv_3_3_conv_3_3_0_0(arg_in0_TVALID, arg_in0_TREADY, 
  arg_in0_TDATA, arg_in0_TLAST, arg_out_TVALID, arg_out_TREADY, arg_out_TDATA, arg_out_TLAST, 
  ap_clk, ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="arg_in0_TVALID,arg_in0_TREADY,arg_in0_TDATA[15:0],arg_in0_TLAST[0:0],arg_out_TVALID,arg_out_TREADY,arg_out_TDATA[15:0],arg_out_TLAST[0:0],ap_clk,ap_rst_n" */;
  input arg_in0_TVALID;
  output arg_in0_TREADY;
  input [15:0]arg_in0_TDATA;
  input [0:0]arg_in0_TLAST;
  output arg_out_TVALID;
  input arg_out_TREADY;
  output [15:0]arg_out_TDATA;
  output [0:0]arg_out_TLAST;
  input ap_clk;
  input ap_rst_n;
endmodule
