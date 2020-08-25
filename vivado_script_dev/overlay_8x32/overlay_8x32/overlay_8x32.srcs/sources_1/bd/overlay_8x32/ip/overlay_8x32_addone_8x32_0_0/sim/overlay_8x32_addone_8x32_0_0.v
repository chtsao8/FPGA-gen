// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: aha:halide_hardware:addone_8x32:1.0
// IP Revision: 2008141401

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module overlay_8x32_addone_8x32_0_0 (
  arg_0_TVALID,
  arg_0_TREADY,
  arg_0_TDATA,
  arg_0_TLAST,
  arg_1_TVALID,
  arg_1_TREADY,
  arg_1_TDATA,
  arg_1_TLAST,
  ap_clk,
  ap_rst_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TVALID" *)
output wire arg_0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TREADY" *)
input wire arg_0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TDATA" *)
output wire [31 : 0] arg_0_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_0, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_8x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TLAST" *)
output wire [0 : 0] arg_0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TVALID" *)
input wire arg_1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TREADY" *)
output wire arg_1_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TDATA" *)
input wire [7 : 0] arg_1_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_1, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_8x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TLAST" *)
input wire [0 : 0] arg_1_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_0:arg_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN overlay_8x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;

  hls_target inst (
    .arg_0_TVALID(arg_0_TVALID),
    .arg_0_TREADY(arg_0_TREADY),
    .arg_0_TDATA(arg_0_TDATA),
    .arg_0_TLAST(arg_0_TLAST),
    .arg_1_TVALID(arg_1_TVALID),
    .arg_1_TREADY(arg_1_TREADY),
    .arg_1_TDATA(arg_1_TDATA),
    .arg_1_TLAST(arg_1_TLAST),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n)
  );
endmodule
