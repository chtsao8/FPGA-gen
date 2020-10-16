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


// IP VLNV: aha:halide_hardware:conv_3_3:1.0
// IP Revision: 2010131440

(* X_CORE_INFO = "unoptimized_conv_3_3_rdai,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "conv_3_3_conv_3_3_0_0,unoptimized_conv_3_3_rdai,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module conv_3_3_conv_3_3_0_0 (
  arg_in0_TVALID,
  arg_in0_TREADY,
  arg_in0_TDATA,
  arg_in0_TLAST,
  arg_out_TVALID,
  arg_out_TREADY,
  arg_out_TDATA,
  arg_out_TLAST,
  ap_clk,
  ap_rst_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TVALID" *)
input wire arg_in0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TREADY" *)
output wire arg_in0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TDATA" *)
input wire [15 : 0] arg_in0_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_in0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TLAST" *)
input wire [0 : 0] arg_in0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TVALID" *)
output wire arg_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TREADY" *)
input wire arg_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TDATA" *)
output wire [15 : 0] arg_out_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_out, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TLAST" *)
output wire [0 : 0] arg_out_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_in0:arg_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;

  unoptimized_conv_3_3_rdai inst (
    .arg_in0_TVALID(arg_in0_TVALID),
    .arg_in0_TREADY(arg_in0_TREADY),
    .arg_in0_TDATA(arg_in0_TDATA),
    .arg_in0_TLAST(arg_in0_TLAST),
    .arg_out_TVALID(arg_out_TVALID),
    .arg_out_TREADY(arg_out_TREADY),
    .arg_out_TDATA(arg_out_TDATA),
    .arg_out_TLAST(arg_out_TLAST),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n)
  );
endmodule
