// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Oct 13 14:49:21 2020
// Host        : nyengele-NUC8i7HNK running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nyengele/aha/fpga_builder/apps/conv_3_3/conv_3_3/conv_3_3.srcs/sources_1/bd/conv_3_3/ip/conv_3_3_zynq_ultra_ps_e_0_0/conv_3_3_zynq_ultra_ps_e_0_0_stub.v
// Design      : conv_3_3_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v3_3_2_zynq_ultra_ps_e,Vivado 2020.1" *)
module conv_3_3_zynq_ultra_ps_e_0_0(maxihpm0_fpd_aclk, maxigp0_awid, 
  maxigp0_awaddr, maxigp0_awlen, maxigp0_awsize, maxigp0_awburst, maxigp0_awlock, 
  maxigp0_awcache, maxigp0_awprot, maxigp0_awvalid, maxigp0_awuser, maxigp0_awready, 
  maxigp0_wdata, maxigp0_wstrb, maxigp0_wlast, maxigp0_wvalid, maxigp0_wready, maxigp0_bid, 
  maxigp0_bresp, maxigp0_bvalid, maxigp0_bready, maxigp0_arid, maxigp0_araddr, maxigp0_arlen, 
  maxigp0_arsize, maxigp0_arburst, maxigp0_arlock, maxigp0_arcache, maxigp0_arprot, 
  maxigp0_arvalid, maxigp0_aruser, maxigp0_arready, maxigp0_rid, maxigp0_rdata, 
  maxigp0_rresp, maxigp0_rlast, maxigp0_rvalid, maxigp0_rready, maxigp0_awqos, maxigp0_arqos, 
  saxihpc0_fpd_aclk, saxigp0_aruser, saxigp0_awuser, saxigp0_awid, saxigp0_awaddr, 
  saxigp0_awlen, saxigp0_awsize, saxigp0_awburst, saxigp0_awlock, saxigp0_awcache, 
  saxigp0_awprot, saxigp0_awvalid, saxigp0_awready, saxigp0_wdata, saxigp0_wstrb, 
  saxigp0_wlast, saxigp0_wvalid, saxigp0_wready, saxigp0_bid, saxigp0_bresp, saxigp0_bvalid, 
  saxigp0_bready, saxigp0_arid, saxigp0_araddr, saxigp0_arlen, saxigp0_arsize, 
  saxigp0_arburst, saxigp0_arlock, saxigp0_arcache, saxigp0_arprot, saxigp0_arvalid, 
  saxigp0_arready, saxigp0_rid, saxigp0_rdata, saxigp0_rresp, saxigp0_rlast, saxigp0_rvalid, 
  saxigp0_rready, saxigp0_awqos, saxigp0_arqos, pl_ps_irq0, pl_resetn0, pl_clk0)
/* synthesis syn_black_box black_box_pad_pin="maxihpm0_fpd_aclk,maxigp0_awid[15:0],maxigp0_awaddr[39:0],maxigp0_awlen[7:0],maxigp0_awsize[2:0],maxigp0_awburst[1:0],maxigp0_awlock,maxigp0_awcache[3:0],maxigp0_awprot[2:0],maxigp0_awvalid,maxigp0_awuser[15:0],maxigp0_awready,maxigp0_wdata[127:0],maxigp0_wstrb[15:0],maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid[15:0],maxigp0_bresp[1:0],maxigp0_bvalid,maxigp0_bready,maxigp0_arid[15:0],maxigp0_araddr[39:0],maxigp0_arlen[7:0],maxigp0_arsize[2:0],maxigp0_arburst[1:0],maxigp0_arlock,maxigp0_arcache[3:0],maxigp0_arprot[2:0],maxigp0_arvalid,maxigp0_aruser[15:0],maxigp0_arready,maxigp0_rid[15:0],maxigp0_rdata[127:0],maxigp0_rresp[1:0],maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos[3:0],maxigp0_arqos[3:0],saxihpc0_fpd_aclk,saxigp0_aruser,saxigp0_awuser,saxigp0_awid[5:0],saxigp0_awaddr[48:0],saxigp0_awlen[7:0],saxigp0_awsize[2:0],saxigp0_awburst[1:0],saxigp0_awlock,saxigp0_awcache[3:0],saxigp0_awprot[2:0],saxigp0_awvalid,saxigp0_awready,saxigp0_wdata[127:0],saxigp0_wstrb[15:0],saxigp0_wlast,saxigp0_wvalid,saxigp0_wready,saxigp0_bid[5:0],saxigp0_bresp[1:0],saxigp0_bvalid,saxigp0_bready,saxigp0_arid[5:0],saxigp0_araddr[48:0],saxigp0_arlen[7:0],saxigp0_arsize[2:0],saxigp0_arburst[1:0],saxigp0_arlock,saxigp0_arcache[3:0],saxigp0_arprot[2:0],saxigp0_arvalid,saxigp0_arready,saxigp0_rid[5:0],saxigp0_rdata[127:0],saxigp0_rresp[1:0],saxigp0_rlast,saxigp0_rvalid,saxigp0_rready,saxigp0_awqos[3:0],saxigp0_arqos[3:0],pl_ps_irq0[1:0],pl_resetn0,pl_clk0" */;
  input maxihpm0_fpd_aclk;
  output [15:0]maxigp0_awid;
  output [39:0]maxigp0_awaddr;
  output [7:0]maxigp0_awlen;
  output [2:0]maxigp0_awsize;
  output [1:0]maxigp0_awburst;
  output maxigp0_awlock;
  output [3:0]maxigp0_awcache;
  output [2:0]maxigp0_awprot;
  output maxigp0_awvalid;
  output [15:0]maxigp0_awuser;
  input maxigp0_awready;
  output [127:0]maxigp0_wdata;
  output [15:0]maxigp0_wstrb;
  output maxigp0_wlast;
  output maxigp0_wvalid;
  input maxigp0_wready;
  input [15:0]maxigp0_bid;
  input [1:0]maxigp0_bresp;
  input maxigp0_bvalid;
  output maxigp0_bready;
  output [15:0]maxigp0_arid;
  output [39:0]maxigp0_araddr;
  output [7:0]maxigp0_arlen;
  output [2:0]maxigp0_arsize;
  output [1:0]maxigp0_arburst;
  output maxigp0_arlock;
  output [3:0]maxigp0_arcache;
  output [2:0]maxigp0_arprot;
  output maxigp0_arvalid;
  output [15:0]maxigp0_aruser;
  input maxigp0_arready;
  input [15:0]maxigp0_rid;
  input [127:0]maxigp0_rdata;
  input [1:0]maxigp0_rresp;
  input maxigp0_rlast;
  input maxigp0_rvalid;
  output maxigp0_rready;
  output [3:0]maxigp0_awqos;
  output [3:0]maxigp0_arqos;
  input saxihpc0_fpd_aclk;
  input saxigp0_aruser;
  input saxigp0_awuser;
  input [5:0]saxigp0_awid;
  input [48:0]saxigp0_awaddr;
  input [7:0]saxigp0_awlen;
  input [2:0]saxigp0_awsize;
  input [1:0]saxigp0_awburst;
  input saxigp0_awlock;
  input [3:0]saxigp0_awcache;
  input [2:0]saxigp0_awprot;
  input saxigp0_awvalid;
  output saxigp0_awready;
  input [127:0]saxigp0_wdata;
  input [15:0]saxigp0_wstrb;
  input saxigp0_wlast;
  input saxigp0_wvalid;
  output saxigp0_wready;
  output [5:0]saxigp0_bid;
  output [1:0]saxigp0_bresp;
  output saxigp0_bvalid;
  input saxigp0_bready;
  input [5:0]saxigp0_arid;
  input [48:0]saxigp0_araddr;
  input [7:0]saxigp0_arlen;
  input [2:0]saxigp0_arsize;
  input [1:0]saxigp0_arburst;
  input saxigp0_arlock;
  input [3:0]saxigp0_arcache;
  input [2:0]saxigp0_arprot;
  input saxigp0_arvalid;
  output saxigp0_arready;
  output [5:0]saxigp0_rid;
  output [127:0]saxigp0_rdata;
  output [1:0]saxigp0_rresp;
  output saxigp0_rlast;
  output saxigp0_rvalid;
  input saxigp0_rready;
  input [3:0]saxigp0_awqos;
  input [3:0]saxigp0_arqos;
  input [1:0]pl_ps_irq0;
  output pl_resetn0;
  output pl_clk0;
endmodule
