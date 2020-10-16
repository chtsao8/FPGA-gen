// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Oct 13 14:49:09 2020
// Host        : nyengele-NUC8i7HNK running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ conv_3_3_conv_3_3_0_0_sim_netlist.v
// Design      : conv_3_3_conv_3_3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Block_proc7476
   (internal_empty_n_reg,
    ap_rst_n_0,
    internal_empty_n_reg_0,
    ap_rst_n_1,
    Q,
    \ireg_reg[15] ,
    ap_rst_n_inv,
    ap_clk,
    arg_out_TREADY,
    ap_rst_n,
    val_assign_1_channel_empty_n,
    val_assign_channel_empty_n,
    D,
    \odata_reg[15] );
  output internal_empty_n_reg;
  output ap_rst_n_0;
  output internal_empty_n_reg_0;
  output ap_rst_n_1;
  output [16:0]Q;
  output [15:0]\ireg_reg[15] ;
  input ap_rst_n_inv;
  input ap_clk;
  input arg_out_TREADY;
  input ap_rst_n;
  input val_assign_1_channel_empty_n;
  input val_assign_channel_empty_n;
  input [15:0]D;
  input [15:0]\odata_reg[15] ;

  wire [15:0]D;
  wire [16:0]Q;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_inv;
  wire arg_out_TREADY;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire [15:0]\ireg_reg[15] ;
  wire [15:0]\odata_reg[15] ;
  wire regslice_both_arg_out_V_data_V_U_n_21;
  wire regslice_both_arg_out_V_data_V_U_n_22;
  wire val_assign_1_channel_empty_n;
  wire val_assign_channel_empty_n;

  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_out_V_data_V_U_n_22),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_out_V_data_V_U_n_21),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_10 regslice_both_arg_out_V_data_V_U
       (.D({regslice_both_arg_out_V_data_V_U_n_21,regslice_both_arg_out_V_data_V_U_n_22}),
        .Q({ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ap_rst_n_1(ap_rst_n_1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_TREADY(arg_out_TREADY),
        .internal_empty_n_reg(internal_empty_n_reg),
        .internal_empty_n_reg_0(internal_empty_n_reg_0),
        .\ireg_reg[15] (\ireg_reg[15] ),
        .\ireg_reg[15]_0 (D),
        .\odata_reg[15] (\odata_reg[15] ),
        .\odata_reg[16] (Q),
        .val_assign_1_channel_empty_n(val_assign_1_channel_empty_n),
        .val_assign_channel_empty_n(val_assign_channel_empty_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Block_proc75
   (ap_done_reg,
    ap_rst_n_inv,
    arg_in0_TREADY,
    E,
    Q,
    internal_full_n_reg,
    \ap_return_preg_reg[15]_0 ,
    ap_clk,
    ap_rst_n,
    D,
    shiftReg_ce,
    Block_proc75_U0_ap_continue);
  output ap_done_reg;
  output ap_rst_n_inv;
  output arg_in0_TREADY;
  output [0:0]E;
  output [0:0]Q;
  output [0:0]internal_full_n_reg;
  output [15:0]\ap_return_preg_reg[15]_0 ;
  input ap_clk;
  input ap_rst_n;
  input [16:0]D;
  input shiftReg_ce;
  input Block_proc75_U0_ap_continue;

  wire Block_proc75_U0_ap_continue;
  wire [16:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_done_reg;
  wire [15:0]\ap_return_preg_reg[15]_0 ;
  wire \ap_return_preg_reg_n_0_[0] ;
  wire \ap_return_preg_reg_n_0_[10] ;
  wire \ap_return_preg_reg_n_0_[11] ;
  wire \ap_return_preg_reg_n_0_[12] ;
  wire \ap_return_preg_reg_n_0_[13] ;
  wire \ap_return_preg_reg_n_0_[14] ;
  wire \ap_return_preg_reg_n_0_[15] ;
  wire \ap_return_preg_reg_n_0_[1] ;
  wire \ap_return_preg_reg_n_0_[2] ;
  wire \ap_return_preg_reg_n_0_[3] ;
  wire \ap_return_preg_reg_n_0_[4] ;
  wire \ap_return_preg_reg_n_0_[5] ;
  wire \ap_return_preg_reg_n_0_[6] ;
  wire \ap_return_preg_reg_n_0_[7] ;
  wire \ap_return_preg_reg_n_0_[8] ;
  wire \ap_return_preg_reg_n_0_[9] ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_in0_TREADY;
  wire [0:0]internal_full_n_reg;
  wire regslice_both_arg_in0_V_data_V_U_n_10;
  wire regslice_both_arg_in0_V_data_V_U_n_11;
  wire regslice_both_arg_in0_V_data_V_U_n_12;
  wire regslice_both_arg_in0_V_data_V_U_n_13;
  wire regslice_both_arg_in0_V_data_V_U_n_14;
  wire regslice_both_arg_in0_V_data_V_U_n_15;
  wire regslice_both_arg_in0_V_data_V_U_n_16;
  wire regslice_both_arg_in0_V_data_V_U_n_17;
  wire regslice_both_arg_in0_V_data_V_U_n_18;
  wire regslice_both_arg_in0_V_data_V_U_n_19;
  wire regslice_both_arg_in0_V_data_V_U_n_20;
  wire regslice_both_arg_in0_V_data_V_U_n_22;
  wire regslice_both_arg_in0_V_data_V_U_n_4;
  wire regslice_both_arg_in0_V_data_V_U_n_5;
  wire regslice_both_arg_in0_V_data_V_U_n_6;
  wire regslice_both_arg_in0_V_data_V_U_n_7;
  wire regslice_both_arg_in0_V_data_V_U_n_8;
  wire regslice_both_arg_in0_V_data_V_U_n_9;
  wire shiftReg_ce;

  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_in0_V_data_V_U_n_20),
        .Q(ap_done_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_19),
        .Q(\ap_return_preg_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[10] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_9),
        .Q(\ap_return_preg_reg_n_0_[10] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[11] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_8),
        .Q(\ap_return_preg_reg_n_0_[11] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[12] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_7),
        .Q(\ap_return_preg_reg_n_0_[12] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[13] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_6),
        .Q(\ap_return_preg_reg_n_0_[13] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[14] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_5),
        .Q(\ap_return_preg_reg_n_0_[14] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[15] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_4),
        .Q(\ap_return_preg_reg_n_0_[15] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[1] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_18),
        .Q(\ap_return_preg_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[2] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_17),
        .Q(\ap_return_preg_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[3] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_16),
        .Q(\ap_return_preg_reg_n_0_[3] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[4] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_15),
        .Q(\ap_return_preg_reg_n_0_[4] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[5] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_14),
        .Q(\ap_return_preg_reg_n_0_[5] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[6] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_13),
        .Q(\ap_return_preg_reg_n_0_[6] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[7] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_12),
        .Q(\ap_return_preg_reg_n_0_[7] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[8] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_11),
        .Q(\ap_return_preg_reg_n_0_[8] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[9] 
       (.C(ap_clk),
        .CE(regslice_both_arg_in0_V_data_V_U_n_22),
        .D(regslice_both_arg_in0_V_data_V_U_n_10),
        .Q(\ap_return_preg_reg_n_0_[9] ),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both regslice_both_arg_in0_V_data_V_U
       (.Block_proc75_U0_ap_continue(Block_proc75_U0_ap_continue),
        .D(D),
        .E(E),
        .Q({Q,regslice_both_arg_in0_V_data_V_U_n_4,regslice_both_arg_in0_V_data_V_U_n_5,regslice_both_arg_in0_V_data_V_U_n_6,regslice_both_arg_in0_V_data_V_U_n_7,regslice_both_arg_in0_V_data_V_U_n_8,regslice_both_arg_in0_V_data_V_U_n_9,regslice_both_arg_in0_V_data_V_U_n_10,regslice_both_arg_in0_V_data_V_U_n_11,regslice_both_arg_in0_V_data_V_U_n_12,regslice_both_arg_in0_V_data_V_U_n_13,regslice_both_arg_in0_V_data_V_U_n_14,regslice_both_arg_in0_V_data_V_U_n_15,regslice_both_arg_in0_V_data_V_U_n_16,regslice_both_arg_in0_V_data_V_U_n_17,regslice_both_arg_in0_V_data_V_U_n_18,regslice_both_arg_in0_V_data_V_U_n_19}),
        .SR(ap_rst_n_inv),
        .\SRL_SIG_reg[0][0] (\ap_return_preg_reg_n_0_[0] ),
        .\SRL_SIG_reg[0][10] (\ap_return_preg_reg_n_0_[10] ),
        .\SRL_SIG_reg[0][11] (\ap_return_preg_reg_n_0_[11] ),
        .\SRL_SIG_reg[0][12] (\ap_return_preg_reg_n_0_[12] ),
        .\SRL_SIG_reg[0][13] (\ap_return_preg_reg_n_0_[13] ),
        .\SRL_SIG_reg[0][14] (\ap_return_preg_reg_n_0_[14] ),
        .\SRL_SIG_reg[0][15] (\ap_return_preg_reg_n_0_[15] ),
        .\SRL_SIG_reg[0][1] (\ap_return_preg_reg_n_0_[1] ),
        .\SRL_SIG_reg[0][2] (\ap_return_preg_reg_n_0_[2] ),
        .\SRL_SIG_reg[0][3] (\ap_return_preg_reg_n_0_[3] ),
        .\SRL_SIG_reg[0][4] (\ap_return_preg_reg_n_0_[4] ),
        .\SRL_SIG_reg[0][5] (\ap_return_preg_reg_n_0_[5] ),
        .\SRL_SIG_reg[0][6] (\ap_return_preg_reg_n_0_[6] ),
        .\SRL_SIG_reg[0][7] (\ap_return_preg_reg_n_0_[7] ),
        .\SRL_SIG_reg[0][8] (\ap_return_preg_reg_n_0_[8] ),
        .\SRL_SIG_reg[0][9] (\ap_return_preg_reg_n_0_[9] ),
        .ap_clk(ap_clk),
        .\ap_return_preg_reg[15] (\ap_return_preg_reg[15]_0 ),
        .ap_rst_n(ap_rst_n),
        .arg_in0_TREADY(arg_in0_TREADY),
        .internal_full_n_reg(regslice_both_arg_in0_V_data_V_U_n_20),
        .internal_full_n_reg_0(internal_full_n_reg),
        .\ireg_reg[0] (ap_done_reg),
        .\odata_reg[16] (regslice_both_arg_in0_V_data_V_U_n_22),
        .shiftReg_ce(shiftReg_ce));
endmodule

(* CHECK_LICENSE_TYPE = "conv_3_3_conv_3_3_0_0,unoptimized_conv_3_3_rdai,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "unoptimized_conv_3_3_rdai,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (arg_in0_TVALID,
    arg_in0_TREADY,
    arg_in0_TDATA,
    arg_in0_TLAST,
    arg_out_TVALID,
    arg_out_TREADY,
    arg_out_TDATA,
    arg_out_TLAST,
    ap_clk,
    ap_rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TVALID" *) input arg_in0_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TREADY" *) output arg_in0_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TDATA" *) input [15:0]arg_in0_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_in0 TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_in0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [0:0]arg_in0_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TVALID" *) output arg_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TREADY" *) input arg_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TDATA" *) output [15:0]arg_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_out TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_out, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]arg_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_in0:arg_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;

  wire ap_clk;
  wire ap_rst_n;
  wire [15:0]arg_in0_TDATA;
  wire [0:0]arg_in0_TLAST;
  wire arg_in0_TREADY;
  wire arg_in0_TVALID;
  wire [15:0]arg_out_TDATA;
  wire [0:0]arg_out_TLAST;
  wire arg_out_TREADY;
  wire arg_out_TVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_3_3_rdai inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_in0_TDATA(arg_in0_TDATA),
        .arg_in0_TLAST(arg_in0_TLAST),
        .arg_in0_TREADY(arg_in0_TREADY),
        .arg_in0_TVALID(arg_in0_TVALID),
        .arg_out_TDATA(arg_out_TDATA),
        .arg_out_TLAST(arg_out_TLAST),
        .arg_out_TREADY(arg_out_TREADY),
        .arg_out_TVALID(arg_out_TVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A
   (arg_in0_hwstream_val_full_n,
    arg_in0_hwstream_val_empty_n,
    shiftReg_ce,
    d0,
    ap_clk,
    unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read,
    ap_rst_n,
    write_U0_ap_start,
    start_once_reg,
    start_for_unoptimized_conv_3_3_U0_full_n,
    ap_rst_n_inv,
    E,
    D);
  output arg_in0_hwstream_val_full_n;
  output arg_in0_hwstream_val_empty_n;
  output shiftReg_ce;
  output [15:0]d0;
  input ap_clk;
  input unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read;
  input ap_rst_n;
  input write_U0_ap_start;
  input start_once_reg;
  input start_for_unoptimized_conv_3_3_U0_full_n;
  input ap_rst_n_inv;
  input [0:0]E;
  input [15:0]D;

  wire [15:0]D;
  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_in0_hwstream_val_empty_n;
  wire arg_in0_hwstream_val_full_n;
  wire [15:0]d0;
  wire internal_empty_n_i_1__1_n_0;
  wire internal_full_n_i_1__1_n_0;
  wire \mOutPtr[0]_i_1__3_n_0 ;
  wire \mOutPtr[1]_i_2__1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire shiftReg_ce;
  wire start_for_unoptimized_conv_3_3_U0_full_n;
  wire start_once_reg;
  wire unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read;
  wire write_U0_ap_start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_9 U_fifo_w16_d2_A_ram
       (.D(D),
        .E(shiftReg_ce),
        .Q({\mOutPtr_reg_n_0_[1] ,\mOutPtr_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .arg_in0_hwstream_val_full_n(arg_in0_hwstream_val_full_n),
        .d0(d0),
        .start_for_unoptimized_conv_3_3_U0_full_n(start_for_unoptimized_conv_3_3_U0_full_n),
        .start_once_reg(start_once_reg),
        .write_U0_ap_start(write_U0_ap_start));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read),
        .I3(shiftReg_ce),
        .I4(arg_in0_hwstream_val_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_0),
        .Q(arg_in0_hwstream_val_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1__1
       (.I0(arg_in0_hwstream_val_full_n),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(shiftReg_ce),
        .I4(unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_0),
        .Q(arg_in0_hwstream_val_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__3 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_2__1 
       (.I0(unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read),
        .I1(shiftReg_ce),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__3_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_0
   (arg_out_data_values_s_full_n,
    arg_out_data_values_s_empty_n,
    D,
    \SRL_SIG_reg[0][0] ,
    \SRL_SIG_reg[0][1] ,
    \SRL_SIG_reg[0][2] ,
    \SRL_SIG_reg[0][3] ,
    \SRL_SIG_reg[0][4] ,
    \SRL_SIG_reg[0][5] ,
    \SRL_SIG_reg[0][6] ,
    \SRL_SIG_reg[0][7] ,
    \SRL_SIG_reg[0][8] ,
    \SRL_SIG_reg[0][9] ,
    \SRL_SIG_reg[0][10] ,
    \SRL_SIG_reg[0][11] ,
    \SRL_SIG_reg[0][12] ,
    \SRL_SIG_reg[0][13] ,
    \SRL_SIG_reg[0][14] ,
    \SRL_SIG_reg[0][15] ,
    ap_clk,
    \SRL_SIG_reg[0][15]_0 ,
    \SRL_SIG_reg[0][0]_0 ,
    \SRL_SIG_reg[0][1]_0 ,
    \SRL_SIG_reg[0][2]_0 ,
    \SRL_SIG_reg[0][3]_0 ,
    \SRL_SIG_reg[0][4]_0 ,
    \SRL_SIG_reg[0][5]_0 ,
    \SRL_SIG_reg[0][6]_0 ,
    \SRL_SIG_reg[0][7]_0 ,
    \SRL_SIG_reg[0][8]_0 ,
    \SRL_SIG_reg[0][9]_0 ,
    \SRL_SIG_reg[0][10]_0 ,
    \SRL_SIG_reg[0][11]_0 ,
    \SRL_SIG_reg[0][12]_0 ,
    \SRL_SIG_reg[0][13]_0 ,
    \SRL_SIG_reg[0][14]_0 ,
    \SRL_SIG_reg[0][15]_1 ,
    ap_done_reg,
    read_1_U0_ap_start,
    shiftReg_ce,
    ap_rst_n,
    arg_out_tlast_values_full_n,
    Q,
    ap_rst_n_inv,
    data);
  output arg_out_data_values_s_full_n;
  output arg_out_data_values_s_empty_n;
  output [15:0]D;
  output \SRL_SIG_reg[0][0] ;
  output \SRL_SIG_reg[0][1] ;
  output \SRL_SIG_reg[0][2] ;
  output \SRL_SIG_reg[0][3] ;
  output \SRL_SIG_reg[0][4] ;
  output \SRL_SIG_reg[0][5] ;
  output \SRL_SIG_reg[0][6] ;
  output \SRL_SIG_reg[0][7] ;
  output \SRL_SIG_reg[0][8] ;
  output \SRL_SIG_reg[0][9] ;
  output \SRL_SIG_reg[0][10] ;
  output \SRL_SIG_reg[0][11] ;
  output \SRL_SIG_reg[0][12] ;
  output \SRL_SIG_reg[0][13] ;
  output \SRL_SIG_reg[0][14] ;
  output \SRL_SIG_reg[0][15] ;
  input ap_clk;
  input \SRL_SIG_reg[0][15]_0 ;
  input \SRL_SIG_reg[0][0]_0 ;
  input \SRL_SIG_reg[0][1]_0 ;
  input \SRL_SIG_reg[0][2]_0 ;
  input \SRL_SIG_reg[0][3]_0 ;
  input \SRL_SIG_reg[0][4]_0 ;
  input \SRL_SIG_reg[0][5]_0 ;
  input \SRL_SIG_reg[0][6]_0 ;
  input \SRL_SIG_reg[0][7]_0 ;
  input \SRL_SIG_reg[0][8]_0 ;
  input \SRL_SIG_reg[0][9]_0 ;
  input \SRL_SIG_reg[0][10]_0 ;
  input \SRL_SIG_reg[0][11]_0 ;
  input \SRL_SIG_reg[0][12]_0 ;
  input \SRL_SIG_reg[0][13]_0 ;
  input \SRL_SIG_reg[0][14]_0 ;
  input \SRL_SIG_reg[0][15]_1 ;
  input ap_done_reg;
  input read_1_U0_ap_start;
  input shiftReg_ce;
  input ap_rst_n;
  input arg_out_tlast_values_full_n;
  input [0:0]Q;
  input ap_rst_n_inv;
  input [15:0]data;

  wire [15:0]D;
  wire [0:0]Q;
  wire \SRL_SIG_reg[0][0] ;
  wire \SRL_SIG_reg[0][0]_0 ;
  wire \SRL_SIG_reg[0][10] ;
  wire \SRL_SIG_reg[0][10]_0 ;
  wire \SRL_SIG_reg[0][11] ;
  wire \SRL_SIG_reg[0][11]_0 ;
  wire \SRL_SIG_reg[0][12] ;
  wire \SRL_SIG_reg[0][12]_0 ;
  wire \SRL_SIG_reg[0][13] ;
  wire \SRL_SIG_reg[0][13]_0 ;
  wire \SRL_SIG_reg[0][14] ;
  wire \SRL_SIG_reg[0][14]_0 ;
  wire \SRL_SIG_reg[0][15] ;
  wire \SRL_SIG_reg[0][15]_0 ;
  wire \SRL_SIG_reg[0][15]_1 ;
  wire \SRL_SIG_reg[0][1] ;
  wire \SRL_SIG_reg[0][1]_0 ;
  wire \SRL_SIG_reg[0][2] ;
  wire \SRL_SIG_reg[0][2]_0 ;
  wire \SRL_SIG_reg[0][3] ;
  wire \SRL_SIG_reg[0][3]_0 ;
  wire \SRL_SIG_reg[0][4] ;
  wire \SRL_SIG_reg[0][4]_0 ;
  wire \SRL_SIG_reg[0][5] ;
  wire \SRL_SIG_reg[0][5]_0 ;
  wire \SRL_SIG_reg[0][6] ;
  wire \SRL_SIG_reg[0][6]_0 ;
  wire \SRL_SIG_reg[0][7] ;
  wire \SRL_SIG_reg[0][7]_0 ;
  wire \SRL_SIG_reg[0][8] ;
  wire \SRL_SIG_reg[0][8]_0 ;
  wire \SRL_SIG_reg[0][9] ;
  wire \SRL_SIG_reg[0][9]_0 ;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_data_values_s_empty_n;
  wire arg_out_data_values_s_full_n;
  wire arg_out_tlast_values_full_n;
  wire [15:0]data;
  wire internal_empty_n_i_1__5_n_0;
  wire internal_full_n_i_1__5_n_0;
  wire \mOutPtr[0]_i_1__1_n_0 ;
  wire \mOutPtr[1]_i_1__4_n_0 ;
  wire \mOutPtr[1]_i_2__5_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire read_1_U0_ap_start;
  wire shiftReg_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_8 U_fifo_w16_d2_A_ram
       (.D(D),
        .Q({\mOutPtr_reg_n_0_[1] ,\mOutPtr_reg_n_0_[0] }),
        .\SRL_SIG_reg[0][0]_0 (\SRL_SIG_reg[0][0] ),
        .\SRL_SIG_reg[0][0]_1 (\SRL_SIG_reg[0][0]_0 ),
        .\SRL_SIG_reg[0][10]_0 (\SRL_SIG_reg[0][10] ),
        .\SRL_SIG_reg[0][10]_1 (\SRL_SIG_reg[0][10]_0 ),
        .\SRL_SIG_reg[0][11]_0 (\SRL_SIG_reg[0][11] ),
        .\SRL_SIG_reg[0][11]_1 (\SRL_SIG_reg[0][11]_0 ),
        .\SRL_SIG_reg[0][12]_0 (\SRL_SIG_reg[0][12] ),
        .\SRL_SIG_reg[0][12]_1 (\SRL_SIG_reg[0][12]_0 ),
        .\SRL_SIG_reg[0][13]_0 (\SRL_SIG_reg[0][13] ),
        .\SRL_SIG_reg[0][13]_1 (\SRL_SIG_reg[0][13]_0 ),
        .\SRL_SIG_reg[0][14]_0 (\SRL_SIG_reg[0][14] ),
        .\SRL_SIG_reg[0][14]_1 (\SRL_SIG_reg[0][14]_0 ),
        .\SRL_SIG_reg[0][15]_0 (\SRL_SIG_reg[0][15] ),
        .\SRL_SIG_reg[0][15]_1 (\SRL_SIG_reg[0][15]_0 ),
        .\SRL_SIG_reg[0][15]_2 (\SRL_SIG_reg[0][15]_1 ),
        .\SRL_SIG_reg[0][1]_0 (\SRL_SIG_reg[0][1] ),
        .\SRL_SIG_reg[0][1]_1 (\SRL_SIG_reg[0][1]_0 ),
        .\SRL_SIG_reg[0][2]_0 (\SRL_SIG_reg[0][2] ),
        .\SRL_SIG_reg[0][2]_1 (\SRL_SIG_reg[0][2]_0 ),
        .\SRL_SIG_reg[0][3]_0 (\SRL_SIG_reg[0][3] ),
        .\SRL_SIG_reg[0][3]_1 (\SRL_SIG_reg[0][3]_0 ),
        .\SRL_SIG_reg[0][4]_0 (\SRL_SIG_reg[0][4] ),
        .\SRL_SIG_reg[0][4]_1 (\SRL_SIG_reg[0][4]_0 ),
        .\SRL_SIG_reg[0][5]_0 (\SRL_SIG_reg[0][5] ),
        .\SRL_SIG_reg[0][5]_1 (\SRL_SIG_reg[0][5]_0 ),
        .\SRL_SIG_reg[0][6]_0 (\SRL_SIG_reg[0][6] ),
        .\SRL_SIG_reg[0][6]_1 (\SRL_SIG_reg[0][6]_0 ),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .\SRL_SIG_reg[0][7]_1 (\SRL_SIG_reg[0][7]_0 ),
        .\SRL_SIG_reg[0][8]_0 (\SRL_SIG_reg[0][8] ),
        .\SRL_SIG_reg[0][8]_1 (\SRL_SIG_reg[0][8]_0 ),
        .\SRL_SIG_reg[0][9]_0 (\SRL_SIG_reg[0][9] ),
        .\SRL_SIG_reg[0][9]_1 (\SRL_SIG_reg[0][9]_0 ),
        .ap_clk(ap_clk),
        .data(data),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__5
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\SRL_SIG_reg[0][15]_0 ),
        .I3(shiftReg_ce),
        .I4(arg_out_data_values_s_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__5_n_0),
        .Q(arg_out_data_values_s_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1__5
       (.I0(arg_out_data_values_s_full_n),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(shiftReg_ce),
        .I4(\SRL_SIG_reg[0][15]_0 ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__5_n_0),
        .Q(arg_out_data_values_s_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h808080807F808080)) 
    \mOutPtr[1]_i_1__4 
       (.I0(arg_out_data_values_s_full_n),
        .I1(arg_out_tlast_values_full_n),
        .I2(Q),
        .I3(arg_out_data_values_s_empty_n),
        .I4(read_1_U0_ap_start),
        .I5(ap_done_reg),
        .O(\mOutPtr[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFBFFFBF0040)) 
    \mOutPtr[1]_i_2__5 
       (.I0(ap_done_reg),
        .I1(read_1_U0_ap_start),
        .I2(arg_out_data_values_s_empty_n),
        .I3(shiftReg_ce),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__5_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__4_n_0 ),
        .D(\mOutPtr[0]_i_1__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__4_n_0 ),
        .D(\mOutPtr[1]_i_2__5_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_1
   (read_1_U0_ap_continue,
    operator_int_1_U0_ap_start,
    D,
    internal_empty_n_reg_0,
    \SRL_SIG_reg[0][0] ,
    \SRL_SIG_reg[0][1] ,
    \SRL_SIG_reg[0][2] ,
    \SRL_SIG_reg[0][3] ,
    \SRL_SIG_reg[0][4] ,
    \SRL_SIG_reg[0][5] ,
    \SRL_SIG_reg[0][6] ,
    \SRL_SIG_reg[0][7] ,
    \SRL_SIG_reg[0][8] ,
    \SRL_SIG_reg[0][9] ,
    \SRL_SIG_reg[0][10] ,
    \SRL_SIG_reg[0][11] ,
    \SRL_SIG_reg[0][12] ,
    \SRL_SIG_reg[0][13] ,
    \SRL_SIG_reg[0][14] ,
    \SRL_SIG_reg[0][15] ,
    ap_clk,
    ap_done_reg,
    ap_rst_n,
    \SRL_SIG_reg[0][15]_0 ,
    ap_done_reg_0,
    arg_out_data_values_s_empty_n,
    read_1_U0_ap_start,
    hw_uint_16_val_V_preg,
    ap_rst_n_inv,
    \SRL_SIG_reg[0][15]_1 );
  output read_1_U0_ap_continue;
  output operator_int_1_U0_ap_start;
  output [15:0]D;
  output internal_empty_n_reg_0;
  output \SRL_SIG_reg[0][0] ;
  output \SRL_SIG_reg[0][1] ;
  output \SRL_SIG_reg[0][2] ;
  output \SRL_SIG_reg[0][3] ;
  output \SRL_SIG_reg[0][4] ;
  output \SRL_SIG_reg[0][5] ;
  output \SRL_SIG_reg[0][6] ;
  output \SRL_SIG_reg[0][7] ;
  output \SRL_SIG_reg[0][8] ;
  output \SRL_SIG_reg[0][9] ;
  output \SRL_SIG_reg[0][10] ;
  output \SRL_SIG_reg[0][11] ;
  output \SRL_SIG_reg[0][12] ;
  output \SRL_SIG_reg[0][13] ;
  output \SRL_SIG_reg[0][14] ;
  output \SRL_SIG_reg[0][15] ;
  input ap_clk;
  input ap_done_reg;
  input ap_rst_n;
  input \SRL_SIG_reg[0][15]_0 ;
  input ap_done_reg_0;
  input arg_out_data_values_s_empty_n;
  input read_1_U0_ap_start;
  input [15:0]hw_uint_16_val_V_preg;
  input ap_rst_n_inv;
  input [15:0]\SRL_SIG_reg[0][15]_1 ;

  wire [15:0]D;
  wire \SRL_SIG_reg[0][0] ;
  wire \SRL_SIG_reg[0][10] ;
  wire \SRL_SIG_reg[0][11] ;
  wire \SRL_SIG_reg[0][12] ;
  wire \SRL_SIG_reg[0][13] ;
  wire \SRL_SIG_reg[0][14] ;
  wire \SRL_SIG_reg[0][15] ;
  wire \SRL_SIG_reg[0][15]_0 ;
  wire [15:0]\SRL_SIG_reg[0][15]_1 ;
  wire \SRL_SIG_reg[0][1] ;
  wire \SRL_SIG_reg[0][2] ;
  wire \SRL_SIG_reg[0][3] ;
  wire \SRL_SIG_reg[0][4] ;
  wire \SRL_SIG_reg[0][5] ;
  wire \SRL_SIG_reg[0][6] ;
  wire \SRL_SIG_reg[0][7] ;
  wire \SRL_SIG_reg[0][8] ;
  wire \SRL_SIG_reg[0][9] ;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_data_values_s_empty_n;
  wire [15:0]hw_uint_16_val_V_preg;
  wire internal_empty_n_i_1__4_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__4_n_0;
  wire \mOutPtr[0]_i_1__0_n_0 ;
  wire \mOutPtr[1]_i_1__8_n_0 ;
  wire \mOutPtr[1]_i_2__4_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire operator_int_1_U0_ap_start;
  wire read_1_U0_ap_continue;
  wire read_1_U0_ap_start;
  wire shiftReg_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_7 U_fifo_w16_d2_A_ram
       (.D(D),
        .Q({\mOutPtr_reg_n_0_[1] ,\mOutPtr_reg_n_0_[0] }),
        .\SRL_SIG_reg[0][0]_0 (\SRL_SIG_reg[0][0] ),
        .\SRL_SIG_reg[0][10]_0 (\SRL_SIG_reg[0][10] ),
        .\SRL_SIG_reg[0][11]_0 (\SRL_SIG_reg[0][11] ),
        .\SRL_SIG_reg[0][12]_0 (\SRL_SIG_reg[0][12] ),
        .\SRL_SIG_reg[0][13]_0 (\SRL_SIG_reg[0][13] ),
        .\SRL_SIG_reg[0][14]_0 (\SRL_SIG_reg[0][14] ),
        .\SRL_SIG_reg[0][15]_0 (\SRL_SIG_reg[0][15] ),
        .\SRL_SIG_reg[0][15]_1 (read_1_U0_ap_continue),
        .\SRL_SIG_reg[0][15]_2 (\SRL_SIG_reg[0][15]_0 ),
        .\SRL_SIG_reg[0][15]_3 (\SRL_SIG_reg[0][15]_1 ),
        .\SRL_SIG_reg[0][1]_0 (\SRL_SIG_reg[0][1] ),
        .\SRL_SIG_reg[0][2]_0 (\SRL_SIG_reg[0][2] ),
        .\SRL_SIG_reg[0][3]_0 (\SRL_SIG_reg[0][3] ),
        .\SRL_SIG_reg[0][4]_0 (\SRL_SIG_reg[0][4] ),
        .\SRL_SIG_reg[0][5]_0 (\SRL_SIG_reg[0][5] ),
        .\SRL_SIG_reg[0][6]_0 (\SRL_SIG_reg[0][6] ),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .\SRL_SIG_reg[0][8]_0 (\SRL_SIG_reg[0][8] ),
        .\SRL_SIG_reg[0][9]_0 (\SRL_SIG_reg[0][9] ),
        .ap_clk(ap_clk),
        .ap_done_reg_0(ap_done_reg_0),
        .arg_out_data_values_s_empty_n(arg_out_data_values_s_empty_n),
        .hw_uint_16_val_V_preg(hw_uint_16_val_V_preg),
        .read_1_U0_ap_start(read_1_U0_ap_start),
        .shiftReg_ce(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hw_uint_16_val_V_preg[15]_i_1 
       (.I0(operator_int_1_U0_ap_start),
        .I1(ap_done_reg),
        .O(internal_empty_n_reg_0));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__4
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(ap_done_reg),
        .I3(shiftReg_ce),
        .I4(operator_int_1_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_0),
        .Q(operator_int_1_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AAAAFFFFFFFFFF)) 
    internal_full_n_i_1__4
       (.I0(read_1_U0_ap_continue),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(shiftReg_ce),
        .I4(\SRL_SIG_reg[0][15]_0 ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__4_n_0),
        .Q(read_1_U0_ap_continue),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF800F80007FFF800)) 
    \mOutPtr[1]_i_1__8 
       (.I0(read_1_U0_ap_start),
        .I1(arg_out_data_values_s_empty_n),
        .I2(ap_done_reg_0),
        .I3(read_1_U0_ap_continue),
        .I4(operator_int_1_U0_ap_start),
        .I5(ap_done_reg),
        .O(\mOutPtr[1]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h04FBFB04)) 
    \mOutPtr[1]_i_2__4 
       (.I0(ap_done_reg),
        .I1(operator_int_1_U0_ap_start),
        .I2(shiftReg_ce),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__8_n_0 ),
        .D(\mOutPtr[0]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__8_n_0 ),
        .D(\mOutPtr[1]_i_2__4_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_3
   (Block_proc75_U0_ap_continue,
    write_U0_ap_start,
    internal_empty_n_reg_0,
    D,
    ap_clk,
    start_once_reg,
    start_for_unoptimized_conv_3_3_U0_full_n,
    E,
    shiftReg_ce,
    ap_rst_n,
    ap_done_reg,
    Q,
    ap_rst_n_inv,
    \mOutPtr_reg[1]_0 ,
    \SRL_SIG_reg[0][15] );
  output Block_proc75_U0_ap_continue;
  output write_U0_ap_start;
  output internal_empty_n_reg_0;
  output [15:0]D;
  input ap_clk;
  input start_once_reg;
  input start_for_unoptimized_conv_3_3_U0_full_n;
  input [0:0]E;
  input shiftReg_ce;
  input ap_rst_n;
  input ap_done_reg;
  input [0:0]Q;
  input ap_rst_n_inv;
  input [0:0]\mOutPtr_reg[1]_0 ;
  input [15:0]\SRL_SIG_reg[0][15] ;

  wire Block_proc75_U0_ap_continue;
  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [15:0]\SRL_SIG_reg[0][15] ;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__0_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__0_n_0;
  wire \mOutPtr[0]_i_1__2_n_0 ;
  wire \mOutPtr[1]_i_2__0_n_0 ;
  wire [0:0]\mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire shiftReg_ce;
  wire start_for_unoptimized_conv_3_3_U0_full_n;
  wire start_once_reg;
  wire write_U0_ap_start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_6 U_fifo_w16_d2_A_ram
       (.D(D),
        .E(E),
        .Q({\mOutPtr_reg_n_0_[1] ,\mOutPtr_reg_n_0_[0] }),
        .\SRL_SIG_reg[0][15]_0 (\SRL_SIG_reg[0][15] ),
        .ap_clk(ap_clk));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(shiftReg_ce),
        .I3(E),
        .I4(write_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_0),
        .Q(write_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1__0
       (.I0(Block_proc75_U0_ap_continue),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(E),
        .I4(shiftReg_ce),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    internal_full_n_i_2
       (.I0(write_U0_ap_start),
        .I1(start_once_reg),
        .I2(start_for_unoptimized_conv_3_3_U0_full_n),
        .O(internal_empty_n_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_0),
        .Q(Block_proc75_U0_ap_continue),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__2 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h222ADDD5DDD5222A)) 
    \mOutPtr[1]_i_2__0 
       (.I0(shiftReg_ce),
        .I1(Block_proc75_U0_ap_continue),
        .I2(ap_done_reg),
        .I3(Q),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[1]_0 ),
        .D(\mOutPtr[0]_i_1__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[1]_0 ),
        .D(\mOutPtr[1]_i_2__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_5
   (val_assign_channel_empty_n,
    \SRL_SIG_reg[0][15] ,
    internal_full_n_reg_0,
    D,
    ap_clk,
    \mOutPtr_reg[1]_0 ,
    ap_done_reg,
    operator_int_1_U0_ap_start,
    internal_empty_n_reg_0,
    ap_rst_n,
    \odata_reg[0] ,
    \odata_reg[15] ,
    ap_rst_n_inv,
    \SRL_SIG_reg[0][15]_0 );
  output val_assign_channel_empty_n;
  output [15:0]\SRL_SIG_reg[0][15] ;
  output internal_full_n_reg_0;
  output [15:0]D;
  input ap_clk;
  input \mOutPtr_reg[1]_0 ;
  input ap_done_reg;
  input operator_int_1_U0_ap_start;
  input internal_empty_n_reg_0;
  input ap_rst_n;
  input \odata_reg[0] ;
  input [15:0]\odata_reg[15] ;
  input ap_rst_n_inv;
  input [15:0]\SRL_SIG_reg[0][15]_0 ;

  wire [15:0]D;
  wire [15:0]\SRL_SIG_reg[0][15] ;
  wire [15:0]\SRL_SIG_reg[0][15]_0 ;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__9_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__9_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1__7_n_0 ;
  wire \mOutPtr[1]_i_2__9_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire \odata_reg[0] ;
  wire [15:0]\odata_reg[15] ;
  wire operator_int_1_U0_ap_continue;
  wire operator_int_1_U0_ap_start;
  wire shiftReg_ce;
  wire val_assign_channel_empty_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg U_fifo_w16_d2_A_ram
       (.D(D),
        .E(shiftReg_ce),
        .Q({\mOutPtr_reg_n_0_[1] ,\mOutPtr_reg_n_0_[0] }),
        .\SRL_SIG_reg[0][15]_0 (\SRL_SIG_reg[0][15] ),
        .\SRL_SIG_reg[0][15]_1 (\SRL_SIG_reg[0][15]_0 ),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg),
        .\odata_reg[0] (\odata_reg[0] ),
        .\odata_reg[15] (\odata_reg[15] ),
        .operator_int_1_U0_ap_continue(operator_int_1_U0_ap_continue),
        .operator_int_1_U0_ap_start(operator_int_1_U0_ap_start));
  LUT4 #(
    .INIT(16'h4440)) 
    ap_done_reg_i_1__2
       (.I0(operator_int_1_U0_ap_continue),
        .I1(ap_rst_n),
        .I2(ap_done_reg),
        .I3(operator_int_1_U0_ap_start),
        .O(internal_full_n_reg_0));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__9
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_empty_n_reg_0),
        .I3(shiftReg_ce),
        .I4(val_assign_channel_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__9_n_0),
        .Q(val_assign_channel_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDDDD5FFFFDDDD)) 
    internal_full_n_i_1__9
       (.I0(ap_rst_n),
        .I1(operator_int_1_U0_ap_continue),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(\mOutPtr_reg[1]_0 ),
        .I5(shiftReg_ce),
        .O(internal_full_n_i_1__9_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__9_n_0),
        .Q(operator_int_1_U0_ap_continue),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE01FE0E0)) 
    \mOutPtr[1]_i_1__7 
       (.I0(operator_int_1_U0_ap_start),
        .I1(ap_done_reg),
        .I2(operator_int_1_U0_ap_continue),
        .I3(internal_empty_n_reg_0),
        .I4(val_assign_channel_empty_n),
        .O(\mOutPtr[1]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'h222ADDD5DDD5222A)) 
    \mOutPtr[1]_i_2__9 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(operator_int_1_U0_ap_continue),
        .I2(ap_done_reg),
        .I3(operator_int_1_U0_ap_start),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__7_n_0 ),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__7_n_0 ),
        .D(\mOutPtr[1]_i_2__9_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg
   (\SRL_SIG_reg[0][15]_0 ,
    E,
    D,
    Q,
    \odata_reg[0] ,
    \odata_reg[15] ,
    operator_int_1_U0_ap_continue,
    ap_done_reg,
    operator_int_1_U0_ap_start,
    \SRL_SIG_reg[0][15]_1 ,
    ap_clk);
  output [15:0]\SRL_SIG_reg[0][15]_0 ;
  output [0:0]E;
  output [15:0]D;
  input [1:0]Q;
  input \odata_reg[0] ;
  input [15:0]\odata_reg[15] ;
  input operator_int_1_U0_ap_continue;
  input ap_done_reg;
  input operator_int_1_U0_ap_start;
  input [15:0]\SRL_SIG_reg[0][15]_1 ;
  input ap_clk;

  wire [15:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [15:0]\SRL_SIG_reg[0][15]_0 ;
  wire [15:0]\SRL_SIG_reg[0][15]_1 ;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][10] ;
  wire \SRL_SIG_reg_n_0_[0][11] ;
  wire \SRL_SIG_reg_n_0_[0][12] ;
  wire \SRL_SIG_reg_n_0_[0][13] ;
  wire \SRL_SIG_reg_n_0_[0][14] ;
  wire \SRL_SIG_reg_n_0_[0][15] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[0][8] ;
  wire \SRL_SIG_reg_n_0_[0][9] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][10] ;
  wire \SRL_SIG_reg_n_0_[1][11] ;
  wire \SRL_SIG_reg_n_0_[1][12] ;
  wire \SRL_SIG_reg_n_0_[1][13] ;
  wire \SRL_SIG_reg_n_0_[1][14] ;
  wire \SRL_SIG_reg_n_0_[1][15] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire \SRL_SIG_reg_n_0_[1][8] ;
  wire \SRL_SIG_reg_n_0_[1][9] ;
  wire ap_clk;
  wire ap_done_reg;
  wire \odata_reg[0] ;
  wire [15:0]\odata_reg[15] ;
  wire operator_int_1_U0_ap_continue;
  wire operator_int_1_U0_ap_start;

  LUT3 #(
    .INIT(8'hA8)) 
    \SRL_SIG[0][15]_i_1__2 
       (.I0(operator_int_1_U0_ap_continue),
        .I1(ap_done_reg),
        .I2(operator_int_1_U0_ap_start),
        .O(E));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [10]),
        .Q(\SRL_SIG_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [11]),
        .Q(\SRL_SIG_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [12]),
        .Q(\SRL_SIG_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [13]),
        .Q(\SRL_SIG_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [14]),
        .Q(\SRL_SIG_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [15]),
        .Q(\SRL_SIG_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [8]),
        .Q(\SRL_SIG_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_1 [9]),
        .Q(\SRL_SIG_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][10] ),
        .Q(\SRL_SIG_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][11] ),
        .Q(\SRL_SIG_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][12] ),
        .Q(\SRL_SIG_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][13] ),
        .Q(\SRL_SIG_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][14] ),
        .Q(\SRL_SIG_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][15] ),
        .Q(\SRL_SIG_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][8] ),
        .Q(\SRL_SIG_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][9] ),
        .Q(\SRL_SIG_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[0]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][0] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[10]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][10] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][10] ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[11]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][11] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][11] ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[12]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][12] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][12] ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[13]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][13] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][13] ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[14]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][14] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][14] ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[15]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][15] ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[1]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[2]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[3]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[4]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[5]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[6]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][6] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[7]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][7] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[8]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][8] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][8] ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[9]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][9] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][9] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[0]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][0] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [0]),
        .O(\SRL_SIG_reg[0][15]_0 [0]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[10]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][10] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][10] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [10]),
        .O(\SRL_SIG_reg[0][15]_0 [10]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[11]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][11] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][11] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [11]),
        .O(\SRL_SIG_reg[0][15]_0 [11]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[12]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][12] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][12] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [12]),
        .O(\SRL_SIG_reg[0][15]_0 [12]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[13]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][13] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][13] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [13]),
        .O(\SRL_SIG_reg[0][15]_0 [13]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[14]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][14] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][14] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [14]),
        .O(\SRL_SIG_reg[0][15]_0 [14]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[15]_i_3 
       (.I0(\SRL_SIG_reg_n_0_[0][15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][15] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [15]),
        .O(\SRL_SIG_reg[0][15]_0 [15]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[1]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][1] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [1]),
        .O(\SRL_SIG_reg[0][15]_0 [1]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[2]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][2] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [2]),
        .O(\SRL_SIG_reg[0][15]_0 [2]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[3]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][3] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [3]),
        .O(\SRL_SIG_reg[0][15]_0 [3]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[4]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][4] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [4]),
        .O(\SRL_SIG_reg[0][15]_0 [4]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[5]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][5] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [5]),
        .O(\SRL_SIG_reg[0][15]_0 [5]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[6]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][6] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [6]),
        .O(\SRL_SIG_reg[0][15]_0 [6]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[7]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][7] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [7]),
        .O(\SRL_SIG_reg[0][15]_0 [7]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[8]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][8] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][8] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [8]),
        .O(\SRL_SIG_reg[0][15]_0 [8]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[9]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][9] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][9] ),
        .I4(\odata_reg[0] ),
        .I5(\odata_reg[15] [9]),
        .O(\SRL_SIG_reg[0][15]_0 [9]));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_6
   (D,
    Q,
    E,
    \SRL_SIG_reg[0][15]_0 ,
    ap_clk);
  output [15:0]D;
  input [1:0]Q;
  input [0:0]E;
  input [15:0]\SRL_SIG_reg[0][15]_0 ;
  input ap_clk;

  wire [15:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [15:0]\SRL_SIG_reg[0] ;
  wire [15:0]\SRL_SIG_reg[0][15]_0 ;
  wire [15:0]\SRL_SIG_reg[1] ;
  wire ap_clk;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][0]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][10]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][11]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [11]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][12]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [12]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][13]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [13]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][14]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [14]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][15]_i_2__2 
       (.I0(\SRL_SIG_reg[0] [15]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][1]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][2]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][3]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][4]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][5]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][6]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][7]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][8]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][9]_i_1__2 
       (.I0(\SRL_SIG_reg[0] [9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [9]),
        .O(D[9]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [0]),
        .Q(\SRL_SIG_reg[0] [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [10]),
        .Q(\SRL_SIG_reg[0] [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [11]),
        .Q(\SRL_SIG_reg[0] [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [12]),
        .Q(\SRL_SIG_reg[0] [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [13]),
        .Q(\SRL_SIG_reg[0] [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [14]),
        .Q(\SRL_SIG_reg[0] [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [15]),
        .Q(\SRL_SIG_reg[0] [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [1]),
        .Q(\SRL_SIG_reg[0] [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [2]),
        .Q(\SRL_SIG_reg[0] [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [3]),
        .Q(\SRL_SIG_reg[0] [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [4]),
        .Q(\SRL_SIG_reg[0] [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [5]),
        .Q(\SRL_SIG_reg[0] [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [6]),
        .Q(\SRL_SIG_reg[0] [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [7]),
        .Q(\SRL_SIG_reg[0] [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [8]),
        .Q(\SRL_SIG_reg[0] [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][15]_0 [9]),
        .Q(\SRL_SIG_reg[0] [9]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [0]),
        .Q(\SRL_SIG_reg[1] [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [10]),
        .Q(\SRL_SIG_reg[1] [10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [11]),
        .Q(\SRL_SIG_reg[1] [11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [12]),
        .Q(\SRL_SIG_reg[1] [12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [13]),
        .Q(\SRL_SIG_reg[1] [13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [14]),
        .Q(\SRL_SIG_reg[1] [14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [15]),
        .Q(\SRL_SIG_reg[1] [15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [1]),
        .Q(\SRL_SIG_reg[1] [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [2]),
        .Q(\SRL_SIG_reg[1] [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [3]),
        .Q(\SRL_SIG_reg[1] [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [4]),
        .Q(\SRL_SIG_reg[1] [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [5]),
        .Q(\SRL_SIG_reg[1] [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [6]),
        .Q(\SRL_SIG_reg[1] [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [7]),
        .Q(\SRL_SIG_reg[1] [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [8]),
        .Q(\SRL_SIG_reg[1] [8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0] [9]),
        .Q(\SRL_SIG_reg[1] [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_7
   (shiftReg_ce,
    D,
    \SRL_SIG_reg[0][0]_0 ,
    \SRL_SIG_reg[0][1]_0 ,
    \SRL_SIG_reg[0][2]_0 ,
    \SRL_SIG_reg[0][3]_0 ,
    \SRL_SIG_reg[0][4]_0 ,
    \SRL_SIG_reg[0][5]_0 ,
    \SRL_SIG_reg[0][6]_0 ,
    \SRL_SIG_reg[0][7]_0 ,
    \SRL_SIG_reg[0][8]_0 ,
    \SRL_SIG_reg[0][9]_0 ,
    \SRL_SIG_reg[0][10]_0 ,
    \SRL_SIG_reg[0][11]_0 ,
    \SRL_SIG_reg[0][12]_0 ,
    \SRL_SIG_reg[0][13]_0 ,
    \SRL_SIG_reg[0][14]_0 ,
    \SRL_SIG_reg[0][15]_0 ,
    \SRL_SIG_reg[0][15]_1 ,
    ap_done_reg_0,
    arg_out_data_values_s_empty_n,
    read_1_U0_ap_start,
    hw_uint_16_val_V_preg,
    \SRL_SIG_reg[0][15]_2 ,
    Q,
    \SRL_SIG_reg[0][15]_3 ,
    ap_clk);
  output shiftReg_ce;
  output [15:0]D;
  output \SRL_SIG_reg[0][0]_0 ;
  output \SRL_SIG_reg[0][1]_0 ;
  output \SRL_SIG_reg[0][2]_0 ;
  output \SRL_SIG_reg[0][3]_0 ;
  output \SRL_SIG_reg[0][4]_0 ;
  output \SRL_SIG_reg[0][5]_0 ;
  output \SRL_SIG_reg[0][6]_0 ;
  output \SRL_SIG_reg[0][7]_0 ;
  output \SRL_SIG_reg[0][8]_0 ;
  output \SRL_SIG_reg[0][9]_0 ;
  output \SRL_SIG_reg[0][10]_0 ;
  output \SRL_SIG_reg[0][11]_0 ;
  output \SRL_SIG_reg[0][12]_0 ;
  output \SRL_SIG_reg[0][13]_0 ;
  output \SRL_SIG_reg[0][14]_0 ;
  output \SRL_SIG_reg[0][15]_0 ;
  input \SRL_SIG_reg[0][15]_1 ;
  input ap_done_reg_0;
  input arg_out_data_values_s_empty_n;
  input read_1_U0_ap_start;
  input [15:0]hw_uint_16_val_V_preg;
  input \SRL_SIG_reg[0][15]_2 ;
  input [1:0]Q;
  input [15:0]\SRL_SIG_reg[0][15]_3 ;
  input ap_clk;

  wire [15:0]D;
  wire [1:0]Q;
  wire \SRL_SIG_reg[0][0]_0 ;
  wire \SRL_SIG_reg[0][10]_0 ;
  wire \SRL_SIG_reg[0][11]_0 ;
  wire \SRL_SIG_reg[0][12]_0 ;
  wire \SRL_SIG_reg[0][13]_0 ;
  wire \SRL_SIG_reg[0][14]_0 ;
  wire \SRL_SIG_reg[0][15]_0 ;
  wire \SRL_SIG_reg[0][15]_1 ;
  wire \SRL_SIG_reg[0][15]_2 ;
  wire [15:0]\SRL_SIG_reg[0][15]_3 ;
  wire \SRL_SIG_reg[0][1]_0 ;
  wire \SRL_SIG_reg[0][2]_0 ;
  wire \SRL_SIG_reg[0][3]_0 ;
  wire \SRL_SIG_reg[0][4]_0 ;
  wire \SRL_SIG_reg[0][5]_0 ;
  wire \SRL_SIG_reg[0][6]_0 ;
  wire \SRL_SIG_reg[0][7]_0 ;
  wire \SRL_SIG_reg[0][8]_0 ;
  wire \SRL_SIG_reg[0][9]_0 ;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][10] ;
  wire \SRL_SIG_reg_n_0_[0][11] ;
  wire \SRL_SIG_reg_n_0_[0][12] ;
  wire \SRL_SIG_reg_n_0_[0][13] ;
  wire \SRL_SIG_reg_n_0_[0][14] ;
  wire \SRL_SIG_reg_n_0_[0][15] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[0][8] ;
  wire \SRL_SIG_reg_n_0_[0][9] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][10] ;
  wire \SRL_SIG_reg_n_0_[1][11] ;
  wire \SRL_SIG_reg_n_0_[1][12] ;
  wire \SRL_SIG_reg_n_0_[1][13] ;
  wire \SRL_SIG_reg_n_0_[1][14] ;
  wire \SRL_SIG_reg_n_0_[1][15] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire \SRL_SIG_reg_n_0_[1][8] ;
  wire \SRL_SIG_reg_n_0_[1][9] ;
  wire ap_clk;
  wire ap_done_reg_0;
  wire arg_out_data_values_s_empty_n;
  wire [15:0]hw_uint_16_val_V_preg;
  wire read_1_U0_ap_start;
  wire shiftReg_ce;

  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][0]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[0]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][0] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][10]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[10]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][10] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][10] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][11]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[11]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][11] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][11] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][12]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[12]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][12] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][12] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][13]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[13]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][13] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][13] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][14]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[14]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][14] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][14] ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hA888)) 
    \SRL_SIG[0][15]_i_1__1 
       (.I0(\SRL_SIG_reg[0][15]_1 ),
        .I1(ap_done_reg_0),
        .I2(arg_out_data_values_s_empty_n),
        .I3(read_1_U0_ap_start),
        .O(shiftReg_ce));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][15]_i_2__0 
       (.I0(hw_uint_16_val_V_preg[15]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][15] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][15] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][1]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[1]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][1] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][2]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[2]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][3]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[3]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][3] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][4]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[4]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][4] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][5]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[5]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][5] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][6]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[6]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][6] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][6] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][7]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[7]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][7] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][8]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[8]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][8] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][8] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B888B8B8)) 
    \SRL_SIG[0][9]_i_1__0 
       (.I0(hw_uint_16_val_V_preg[9]),
        .I1(\SRL_SIG_reg[0][15]_2 ),
        .I2(\SRL_SIG_reg_n_0_[0][9] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\SRL_SIG_reg_n_0_[1][9] ),
        .O(D[9]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [10]),
        .Q(\SRL_SIG_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [11]),
        .Q(\SRL_SIG_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [12]),
        .Q(\SRL_SIG_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [13]),
        .Q(\SRL_SIG_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [14]),
        .Q(\SRL_SIG_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [15]),
        .Q(\SRL_SIG_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [8]),
        .Q(\SRL_SIG_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][15]_3 [9]),
        .Q(\SRL_SIG_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][10] ),
        .Q(\SRL_SIG_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][11] ),
        .Q(\SRL_SIG_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][12] ),
        .Q(\SRL_SIG_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][13] ),
        .Q(\SRL_SIG_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][14] ),
        .Q(\SRL_SIG_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][15] ),
        .Q(\SRL_SIG_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][8] ),
        .Q(\SRL_SIG_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][9] ),
        .Q(\SRL_SIG_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[0]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][0] ),
        .O(\SRL_SIG_reg[0][0]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[10]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][10] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][10] ),
        .O(\SRL_SIG_reg[0][10]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[11]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][11] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][11] ),
        .O(\SRL_SIG_reg[0][11]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[12]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][12] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][12] ),
        .O(\SRL_SIG_reg[0][12]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[13]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][13] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][13] ),
        .O(\SRL_SIG_reg[0][13]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[14]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][14] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][14] ),
        .O(\SRL_SIG_reg[0][14]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[15]_i_2 
       (.I0(\SRL_SIG_reg_n_0_[0][15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][15] ),
        .O(\SRL_SIG_reg[0][15]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[1]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][1] ),
        .O(\SRL_SIG_reg[0][1]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[2]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][2] ),
        .O(\SRL_SIG_reg[0][2]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[3]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][3] ),
        .O(\SRL_SIG_reg[0][3]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[4]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][4] ),
        .O(\SRL_SIG_reg[0][4]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[5]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][5] ),
        .O(\SRL_SIG_reg[0][5]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[6]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][6] ),
        .O(\SRL_SIG_reg[0][6]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[7]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][7] ),
        .O(\SRL_SIG_reg[0][7]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[8]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][8] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][8] ),
        .O(\SRL_SIG_reg[0][8]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \hw_uint_16_val_V_preg[9]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][9] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][9] ),
        .O(\SRL_SIG_reg[0][9]_0 ));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_8
   (D,
    \SRL_SIG_reg[0][0]_0 ,
    \SRL_SIG_reg[0][1]_0 ,
    \SRL_SIG_reg[0][2]_0 ,
    \SRL_SIG_reg[0][3]_0 ,
    \SRL_SIG_reg[0][4]_0 ,
    \SRL_SIG_reg[0][5]_0 ,
    \SRL_SIG_reg[0][6]_0 ,
    \SRL_SIG_reg[0][7]_0 ,
    \SRL_SIG_reg[0][8]_0 ,
    \SRL_SIG_reg[0][9]_0 ,
    \SRL_SIG_reg[0][10]_0 ,
    \SRL_SIG_reg[0][11]_0 ,
    \SRL_SIG_reg[0][12]_0 ,
    \SRL_SIG_reg[0][13]_0 ,
    \SRL_SIG_reg[0][14]_0 ,
    \SRL_SIG_reg[0][15]_0 ,
    Q,
    \SRL_SIG_reg[0][15]_1 ,
    \SRL_SIG_reg[0][0]_1 ,
    \SRL_SIG_reg[0][1]_1 ,
    \SRL_SIG_reg[0][2]_1 ,
    \SRL_SIG_reg[0][3]_1 ,
    \SRL_SIG_reg[0][4]_1 ,
    \SRL_SIG_reg[0][5]_1 ,
    \SRL_SIG_reg[0][6]_1 ,
    \SRL_SIG_reg[0][7]_1 ,
    \SRL_SIG_reg[0][8]_1 ,
    \SRL_SIG_reg[0][9]_1 ,
    \SRL_SIG_reg[0][10]_1 ,
    \SRL_SIG_reg[0][11]_1 ,
    \SRL_SIG_reg[0][12]_1 ,
    \SRL_SIG_reg[0][13]_1 ,
    \SRL_SIG_reg[0][14]_1 ,
    \SRL_SIG_reg[0][15]_2 ,
    shiftReg_ce,
    data,
    ap_clk);
  output [15:0]D;
  output \SRL_SIG_reg[0][0]_0 ;
  output \SRL_SIG_reg[0][1]_0 ;
  output \SRL_SIG_reg[0][2]_0 ;
  output \SRL_SIG_reg[0][3]_0 ;
  output \SRL_SIG_reg[0][4]_0 ;
  output \SRL_SIG_reg[0][5]_0 ;
  output \SRL_SIG_reg[0][6]_0 ;
  output \SRL_SIG_reg[0][7]_0 ;
  output \SRL_SIG_reg[0][8]_0 ;
  output \SRL_SIG_reg[0][9]_0 ;
  output \SRL_SIG_reg[0][10]_0 ;
  output \SRL_SIG_reg[0][11]_0 ;
  output \SRL_SIG_reg[0][12]_0 ;
  output \SRL_SIG_reg[0][13]_0 ;
  output \SRL_SIG_reg[0][14]_0 ;
  output \SRL_SIG_reg[0][15]_0 ;
  input [1:0]Q;
  input \SRL_SIG_reg[0][15]_1 ;
  input \SRL_SIG_reg[0][0]_1 ;
  input \SRL_SIG_reg[0][1]_1 ;
  input \SRL_SIG_reg[0][2]_1 ;
  input \SRL_SIG_reg[0][3]_1 ;
  input \SRL_SIG_reg[0][4]_1 ;
  input \SRL_SIG_reg[0][5]_1 ;
  input \SRL_SIG_reg[0][6]_1 ;
  input \SRL_SIG_reg[0][7]_1 ;
  input \SRL_SIG_reg[0][8]_1 ;
  input \SRL_SIG_reg[0][9]_1 ;
  input \SRL_SIG_reg[0][10]_1 ;
  input \SRL_SIG_reg[0][11]_1 ;
  input \SRL_SIG_reg[0][12]_1 ;
  input \SRL_SIG_reg[0][13]_1 ;
  input \SRL_SIG_reg[0][14]_1 ;
  input \SRL_SIG_reg[0][15]_2 ;
  input shiftReg_ce;
  input [15:0]data;
  input ap_clk;

  wire [15:0]D;
  wire [1:0]Q;
  wire \SRL_SIG_reg[0][0]_0 ;
  wire \SRL_SIG_reg[0][0]_1 ;
  wire \SRL_SIG_reg[0][10]_0 ;
  wire \SRL_SIG_reg[0][10]_1 ;
  wire \SRL_SIG_reg[0][11]_0 ;
  wire \SRL_SIG_reg[0][11]_1 ;
  wire \SRL_SIG_reg[0][12]_0 ;
  wire \SRL_SIG_reg[0][12]_1 ;
  wire \SRL_SIG_reg[0][13]_0 ;
  wire \SRL_SIG_reg[0][13]_1 ;
  wire \SRL_SIG_reg[0][14]_0 ;
  wire \SRL_SIG_reg[0][14]_1 ;
  wire \SRL_SIG_reg[0][15]_0 ;
  wire \SRL_SIG_reg[0][15]_1 ;
  wire \SRL_SIG_reg[0][15]_2 ;
  wire \SRL_SIG_reg[0][1]_0 ;
  wire \SRL_SIG_reg[0][1]_1 ;
  wire \SRL_SIG_reg[0][2]_0 ;
  wire \SRL_SIG_reg[0][2]_1 ;
  wire \SRL_SIG_reg[0][3]_0 ;
  wire \SRL_SIG_reg[0][3]_1 ;
  wire \SRL_SIG_reg[0][4]_0 ;
  wire \SRL_SIG_reg[0][4]_1 ;
  wire \SRL_SIG_reg[0][5]_0 ;
  wire \SRL_SIG_reg[0][5]_1 ;
  wire \SRL_SIG_reg[0][6]_0 ;
  wire \SRL_SIG_reg[0][6]_1 ;
  wire \SRL_SIG_reg[0][7]_0 ;
  wire \SRL_SIG_reg[0][7]_1 ;
  wire \SRL_SIG_reg[0][8]_0 ;
  wire \SRL_SIG_reg[0][8]_1 ;
  wire \SRL_SIG_reg[0][9]_0 ;
  wire \SRL_SIG_reg[0][9]_1 ;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][10] ;
  wire \SRL_SIG_reg_n_0_[0][11] ;
  wire \SRL_SIG_reg_n_0_[0][12] ;
  wire \SRL_SIG_reg_n_0_[0][13] ;
  wire \SRL_SIG_reg_n_0_[0][14] ;
  wire \SRL_SIG_reg_n_0_[0][15] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[0][8] ;
  wire \SRL_SIG_reg_n_0_[0][9] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][10] ;
  wire \SRL_SIG_reg_n_0_[1][11] ;
  wire \SRL_SIG_reg_n_0_[1][12] ;
  wire \SRL_SIG_reg_n_0_[1][13] ;
  wire \SRL_SIG_reg_n_0_[1][14] ;
  wire \SRL_SIG_reg_n_0_[1][15] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire \SRL_SIG_reg_n_0_[1][8] ;
  wire \SRL_SIG_reg_n_0_[1][9] ;
  wire ap_clk;
  wire [15:0]data;
  wire shiftReg_ce;

  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][0]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][0] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][0]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][10]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][10] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][10] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][10]_1 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][11]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][11] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][11] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][11]_1 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][12]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][12] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][12] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][12]_1 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][13]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][13] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][13] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][13]_1 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][14]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][14] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][14] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][14]_1 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][15]_i_2 
       (.I0(\SRL_SIG_reg_n_0_[0][15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][15] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][15]_2 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][1]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][1] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][1]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][2]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][2] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][2]_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][3]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][3] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][3]_1 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][4]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][4] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][4]_1 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][5]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][5] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][5]_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][6]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][6] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][6]_1 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][7] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][7]_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][8]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][8] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][8] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][8]_1 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \SRL_SIG[0][9]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][9] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][9] ),
        .I4(\SRL_SIG_reg[0][15]_1 ),
        .I5(\SRL_SIG_reg[0][9]_1 ),
        .O(D[9]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[10]),
        .Q(\SRL_SIG_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[11]),
        .Q(\SRL_SIG_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[12]),
        .Q(\SRL_SIG_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[13]),
        .Q(\SRL_SIG_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[14]),
        .Q(\SRL_SIG_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[15]),
        .Q(\SRL_SIG_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[8]),
        .Q(\SRL_SIG_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(data[9]),
        .Q(\SRL_SIG_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][10] ),
        .Q(\SRL_SIG_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][11] ),
        .Q(\SRL_SIG_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][12] ),
        .Q(\SRL_SIG_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][13] ),
        .Q(\SRL_SIG_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][14] ),
        .Q(\SRL_SIG_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][15] ),
        .Q(\SRL_SIG_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][8] ),
        .Q(\SRL_SIG_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][9] ),
        .Q(\SRL_SIG_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[0]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][0] ),
        .O(\SRL_SIG_reg[0][0]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[10]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][10] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][10] ),
        .O(\SRL_SIG_reg[0][10]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[11]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][11] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][11] ),
        .O(\SRL_SIG_reg[0][11]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[12]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][12] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][12] ),
        .O(\SRL_SIG_reg[0][12]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[13]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][13] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][13] ),
        .O(\SRL_SIG_reg[0][13]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[14]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][14] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][14] ),
        .O(\SRL_SIG_reg[0][14]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[15]_i_2 
       (.I0(\SRL_SIG_reg_n_0_[0][15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][15] ),
        .O(\SRL_SIG_reg[0][15]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[1]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][1] ),
        .O(\SRL_SIG_reg[0][1]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[2]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][2] ),
        .O(\SRL_SIG_reg[0][2]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[3]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][3] ),
        .O(\SRL_SIG_reg[0][3]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[4]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][4] ),
        .O(\SRL_SIG_reg[0][4]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[5]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][5] ),
        .O(\SRL_SIG_reg[0][5]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[6]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][6] ),
        .O(\SRL_SIG_reg[0][6]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[7]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][7] ),
        .O(\SRL_SIG_reg[0][7]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[8]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][8] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][8] ),
        .O(\SRL_SIG_reg[0][8]_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ap_return_preg[9]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[0][9] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][9] ),
        .O(\SRL_SIG_reg[0][9]_0 ));
endmodule

(* ORIG_REF_NAME = "fifo_w16_d2_A_shiftReg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_shiftReg_9
   (E,
    d0,
    arg_in0_hwstream_val_full_n,
    write_U0_ap_start,
    start_once_reg,
    start_for_unoptimized_conv_3_3_U0_full_n,
    Q,
    D,
    ap_clk);
  output [0:0]E;
  output [15:0]d0;
  input arg_in0_hwstream_val_full_n;
  input write_U0_ap_start;
  input start_once_reg;
  input start_for_unoptimized_conv_3_3_U0_full_n;
  input [1:0]Q;
  input [15:0]D;
  input ap_clk;

  wire [15:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][10] ;
  wire \SRL_SIG_reg_n_0_[0][11] ;
  wire \SRL_SIG_reg_n_0_[0][12] ;
  wire \SRL_SIG_reg_n_0_[0][13] ;
  wire \SRL_SIG_reg_n_0_[0][14] ;
  wire \SRL_SIG_reg_n_0_[0][15] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[0][8] ;
  wire \SRL_SIG_reg_n_0_[0][9] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][10] ;
  wire \SRL_SIG_reg_n_0_[1][11] ;
  wire \SRL_SIG_reg_n_0_[1][12] ;
  wire \SRL_SIG_reg_n_0_[1][13] ;
  wire \SRL_SIG_reg_n_0_[1][14] ;
  wire \SRL_SIG_reg_n_0_[1][15] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire \SRL_SIG_reg_n_0_[1][8] ;
  wire \SRL_SIG_reg_n_0_[1][9] ;
  wire ap_clk;
  wire arg_in0_hwstream_val_full_n;
  wire [15:0]d0;
  wire start_for_unoptimized_conv_3_3_U0_full_n;
  wire start_once_reg;
  wire write_U0_ap_start;

  LUT4 #(
    .INIT(16'h8880)) 
    \SRL_SIG[0][15]_i_1 
       (.I0(arg_in0_hwstream_val_full_n),
        .I1(write_U0_ap_start),
        .I2(start_once_reg),
        .I3(start_for_unoptimized_conv_3_3_U0_full_n),
        .O(E));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(E),
        .D(D[10]),
        .Q(\SRL_SIG_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(E),
        .D(D[11]),
        .Q(\SRL_SIG_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(E),
        .D(D[12]),
        .Q(\SRL_SIG_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(E),
        .D(D[13]),
        .Q(\SRL_SIG_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(E),
        .D(D[14]),
        .Q(\SRL_SIG_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(E),
        .D(D[15]),
        .Q(\SRL_SIG_reg_n_0_[0][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(E),
        .D(D[4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(E),
        .D(D[5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(E),
        .D(D[6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(E),
        .D(D[7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(E),
        .D(D[8]),
        .Q(\SRL_SIG_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(E),
        .D(D[9]),
        .Q(\SRL_SIG_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][10] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][10] ),
        .Q(\SRL_SIG_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][11] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][11] ),
        .Q(\SRL_SIG_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][12] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][12] ),
        .Q(\SRL_SIG_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][13] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][13] ),
        .Q(\SRL_SIG_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][14] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][14] ),
        .Q(\SRL_SIG_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][15] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][15] ),
        .Q(\SRL_SIG_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][8] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][8] ),
        .Q(\SRL_SIG_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][9] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg_n_0_[0][9] ),
        .Q(\SRL_SIG_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_27
       (.I0(\SRL_SIG_reg_n_0_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][7] ),
        .O(d0[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_28
       (.I0(\SRL_SIG_reg_n_0_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][6] ),
        .O(d0[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_29
       (.I0(\SRL_SIG_reg_n_0_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][5] ),
        .O(d0[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_30
       (.I0(\SRL_SIG_reg_n_0_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][4] ),
        .O(d0[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_31
       (.I0(\SRL_SIG_reg_n_0_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][3] ),
        .O(d0[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_32
       (.I0(\SRL_SIG_reg_n_0_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][2] ),
        .O(d0[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_33
       (.I0(\SRL_SIG_reg_n_0_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][1] ),
        .O(d0[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_34
       (.I0(\SRL_SIG_reg_n_0_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][0] ),
        .O(d0[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_0_i_35
       (.I0(\SRL_SIG_reg_n_0_[0][8] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][8] ),
        .O(d0[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_1_i_1
       (.I0(\SRL_SIG_reg_n_0_[0][15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][15] ),
        .O(d0[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_1_i_2
       (.I0(\SRL_SIG_reg_n_0_[0][14] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][14] ),
        .O(d0[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_1_i_3
       (.I0(\SRL_SIG_reg_n_0_[0][13] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][13] ),
        .O(d0[13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_1_i_4
       (.I0(\SRL_SIG_reg_n_0_[0][12] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][12] ),
        .O(d0[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_1_i_5
       (.I0(\SRL_SIG_reg_n_0_[0][11] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][11] ),
        .O(d0[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_1_i_6
       (.I0(\SRL_SIG_reg_n_0_[0][10] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][10] ),
        .O(d0[10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    ram_reg_bram_1_i_7
       (.I0(\SRL_SIG_reg_n_0_[0][9] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_0_[1][9] ),
        .O(d0[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d2_A
   (arg_out_tlast_values_full_n,
    arg_out_tlast_values_empty_n,
    E,
    ap_clk,
    read_U0_ap_start,
    ap_done_reg,
    \mOutPtr_reg[1]_0 ,
    arg_out_data_values_s_full_n,
    Q,
    ap_rst_n,
    shiftReg_ce,
    internal_full_n_reg_0,
    ap_rst_n_inv);
  output arg_out_tlast_values_full_n;
  output arg_out_tlast_values_empty_n;
  output [0:0]E;
  input ap_clk;
  input read_U0_ap_start;
  input ap_done_reg;
  input \mOutPtr_reg[1]_0 ;
  input arg_out_data_values_s_full_n;
  input [0:0]Q;
  input ap_rst_n;
  input shiftReg_ce;
  input internal_full_n_reg_0;
  input ap_rst_n_inv;

  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_data_values_s_full_n;
  wire arg_out_tlast_values_empty_n;
  wire arg_out_tlast_values_full_n;
  wire internal_empty_n_i_1__6_n_0;
  wire internal_full_n_i_1__6_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__4_n_0 ;
  wire \mOutPtr[1]_i_1__5_n_0 ;
  wire \mOutPtr[1]_i_2__6_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire read_U0_ap_start;
  wire shiftReg_ce;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__6
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_full_n_reg_0),
        .I3(shiftReg_ce),
        .I4(arg_out_tlast_values_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__6_n_0),
        .Q(arg_out_tlast_values_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__6
       (.I0(ap_rst_n),
        .I1(arg_out_tlast_values_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(shiftReg_ce),
        .I5(internal_full_n_reg_0),
        .O(internal_full_n_i_1__6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__6_n_0),
        .Q(arg_out_tlast_values_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__4 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \mOutPtr[1]_i_1__3 
       (.I0(arg_out_tlast_values_empty_n),
        .I1(read_U0_ap_start),
        .I2(ap_done_reg),
        .I3(\mOutPtr_reg[1]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h808080807F808080)) 
    \mOutPtr[1]_i_1__5 
       (.I0(arg_out_data_values_s_full_n),
        .I1(arg_out_tlast_values_full_n),
        .I2(Q),
        .I3(arg_out_tlast_values_empty_n),
        .I4(read_U0_ap_start),
        .I5(ap_done_reg),
        .O(\mOutPtr[1]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h1000EFFFEFFF1000)) 
    \mOutPtr[1]_i_2__6 
       (.I0(shiftReg_ce),
        .I1(ap_done_reg),
        .I2(read_U0_ap_start),
        .I3(arg_out_tlast_values_empty_n),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__6_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__5_n_0 ),
        .D(\mOutPtr[0]_i_1__4_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__5_n_0 ),
        .D(\mOutPtr[1]_i_2__6_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d2_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d2_A_2
   (read_U0_ap_continue,
    operator_int_U0_ap_start,
    ap_clk,
    ap_done_reg,
    ap_rst_n,
    internal_full_n_reg_0,
    ap_done_reg_0,
    arg_out_tlast_values_empty_n,
    read_U0_ap_start,
    ap_rst_n_inv);
  output read_U0_ap_continue;
  output operator_int_U0_ap_start;
  input ap_clk;
  input ap_done_reg;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input ap_done_reg_0;
  input arg_out_tlast_values_empty_n;
  input read_U0_ap_start;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_tlast_values_empty_n;
  wire internal_empty_n_i_1__7_n_0;
  wire internal_full_n_i_1__7_n_0;
  wire internal_full_n_i_2__0_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__5_n_0 ;
  wire \mOutPtr[1]_i_1__9_n_0 ;
  wire \mOutPtr[1]_i_2__7_n_0 ;
  wire \mOutPtr[1]_i_3__3_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire operator_int_U0_ap_start;
  wire read_U0_ap_continue;
  wire read_U0_ap_start;

  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__7
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(ap_done_reg),
        .I3(internal_full_n_i_2__0_n_0),
        .I4(operator_int_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__7_n_0),
        .Q(operator_int_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDD5DDDDDDDDFFFF)) 
    internal_full_n_i_1__7
       (.I0(ap_rst_n),
        .I1(read_U0_ap_continue),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(internal_full_n_i_2__0_n_0),
        .I5(internal_full_n_reg_0),
        .O(internal_full_n_i_1__7_n_0));
  LUT4 #(
    .INIT(16'hA888)) 
    internal_full_n_i_2__0
       (.I0(read_U0_ap_continue),
        .I1(ap_done_reg_0),
        .I2(arg_out_tlast_values_empty_n),
        .I3(read_U0_ap_start),
        .O(internal_full_n_i_2__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__7_n_0),
        .Q(read_U0_ap_continue),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__5 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hF800F80007FFF800)) 
    \mOutPtr[1]_i_1__9 
       (.I0(read_U0_ap_start),
        .I1(arg_out_tlast_values_empty_n),
        .I2(ap_done_reg_0),
        .I3(read_U0_ap_continue),
        .I4(operator_int_U0_ap_start),
        .I5(ap_done_reg),
        .O(\mOutPtr[1]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \mOutPtr[1]_i_2__7 
       (.I0(\mOutPtr[1]_i_3__3_n_0 ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__7_n_0 ));
  LUT6 #(
    .INIT(64'h0000022222222222)) 
    \mOutPtr[1]_i_3__3 
       (.I0(operator_int_U0_ap_start),
        .I1(ap_done_reg),
        .I2(read_U0_ap_start),
        .I3(arg_out_tlast_values_empty_n),
        .I4(ap_done_reg_0),
        .I5(read_U0_ap_continue),
        .O(\mOutPtr[1]_i_3__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__9_n_0 ),
        .D(\mOutPtr[0]_i_1__5_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__9_n_0 ),
        .D(\mOutPtr[1]_i_2__7_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d2_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d2_A_4
   (val_assign_1_channel_empty_n,
    internal_full_n_reg_0,
    ap_clk,
    ap_done_reg,
    operator_int_U0_ap_start,
    \mOutPtr_reg[1]_0 ,
    internal_empty_n_reg_0,
    ap_rst_n,
    ap_rst_n_inv);
  output val_assign_1_channel_empty_n;
  output internal_full_n_reg_0;
  input ap_clk;
  input ap_done_reg;
  input operator_int_U0_ap_start;
  input \mOutPtr_reg[1]_0 ;
  input internal_empty_n_reg_0;
  input ap_rst_n;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_done_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__8_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__8_n_0;
  wire internal_full_n_i_2__2_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__6_n_0 ;
  wire \mOutPtr[1]_i_1__6_n_0 ;
  wire \mOutPtr[1]_i_2__8_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire operator_int_U0_ap_continue;
  wire operator_int_U0_ap_start;
  wire val_assign_1_channel_empty_n;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    ap_done_reg_i_1__3
       (.I0(operator_int_U0_ap_continue),
        .I1(ap_rst_n),
        .I2(ap_done_reg),
        .I3(operator_int_U0_ap_start),
        .O(internal_full_n_reg_0));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    internal_empty_n_i_1__8
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_empty_n_reg_0),
        .I3(internal_full_n_i_2__2_n_0),
        .I4(val_assign_1_channel_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__8_n_0),
        .Q(val_assign_1_channel_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__8
       (.I0(ap_rst_n),
        .I1(operator_int_U0_ap_continue),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(internal_full_n_i_2__2_n_0),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(internal_full_n_i_1__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    internal_full_n_i_2__2
       (.I0(operator_int_U0_ap_continue),
        .I1(ap_done_reg),
        .I2(operator_int_U0_ap_start),
        .O(internal_full_n_i_2__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__8_n_0),
        .Q(operator_int_U0_ap_continue),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__6 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__6_n_0 ));
  LUT5 #(
    .INIT(32'hE01FE0E0)) 
    \mOutPtr[1]_i_1__6 
       (.I0(operator_int_U0_ap_start),
        .I1(ap_done_reg),
        .I2(operator_int_U0_ap_continue),
        .I3(internal_empty_n_reg_0),
        .I4(val_assign_1_channel_empty_n),
        .O(\mOutPtr[1]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h5700A8FFA8FF5700)) 
    \mOutPtr[1]_i_2__8 
       (.I0(operator_int_U0_ap_continue),
        .I1(ap_done_reg),
        .I2(operator_int_U0_ap_start),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__8_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__6_n_0 ),
        .D(\mOutPtr[0]_i_1__6_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__6_n_0 ),
        .D(\mOutPtr[1]_i_2__8_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf
   (arg_in0_TREADY,
    Q,
    \ireg_reg[16]_0 ,
    D,
    ap_rst_n,
    \ireg_reg[0]_0 ,
    \ireg_reg[0]_1 ,
    SR,
    ap_clk);
  output arg_in0_TREADY;
  output [0:0]Q;
  output [16:0]\ireg_reg[16]_0 ;
  input [16:0]D;
  input ap_rst_n;
  input [0:0]\ireg_reg[0]_0 ;
  input \ireg_reg[0]_1 ;
  input [0:0]SR;
  input ap_clk;

  wire [16:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire arg_in0_TREADY;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire [16:0]\ireg_reg[16]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h20)) 
    arg_in0_TREADY_INST_0
       (.I0(D[16]),
        .I1(Q),
        .I2(ap_rst_n),
        .O(arg_in0_TREADY));
  LUT3 #(
    .INIT(8'h40)) 
    \ireg[16]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(\ireg_reg[0]_1 ),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[10]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[11]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[12]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[13]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[14]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[15]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[16]),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[8]),
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[9]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_1__0 
       (.I0(D[0]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[0] ),
        .O(\ireg_reg[16]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[10]_i_1__0 
       (.I0(D[10]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[10] ),
        .O(\ireg_reg[16]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[11]_i_1__0 
       (.I0(D[11]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[11] ),
        .O(\ireg_reg[16]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[12]_i_1__0 
       (.I0(D[12]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[12] ),
        .O(\ireg_reg[16]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[13]_i_1__0 
       (.I0(D[13]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[13] ),
        .O(\ireg_reg[16]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[14]_i_1__0 
       (.I0(D[14]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[14] ),
        .O(\ireg_reg[16]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[15]_i_1__0 
       (.I0(D[15]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[15] ),
        .O(\ireg_reg[16]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[16]_i_2 
       (.I0(Q),
        .I1(D[16]),
        .O(\ireg_reg[16]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[1]_i_1__0 
       (.I0(D[1]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[1] ),
        .O(\ireg_reg[16]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[2]_i_1__0 
       (.I0(D[2]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[2] ),
        .O(\ireg_reg[16]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[3]_i_1__0 
       (.I0(D[3]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[3] ),
        .O(\ireg_reg[16]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[4]_i_1__0 
       (.I0(D[4]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[4] ),
        .O(\ireg_reg[16]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[5]_i_1__0 
       (.I0(D[5]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[5] ),
        .O(\ireg_reg[16]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[6]_i_1__0 
       (.I0(D[6]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[6] ),
        .O(\ireg_reg[16]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[7]_i_1__0 
       (.I0(D[7]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[7] ),
        .O(\ireg_reg[16]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[8]_i_1__0 
       (.I0(D[8]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[8] ),
        .O(\ireg_reg[16]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[9]_i_1__0 
       (.I0(D[9]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[9] ),
        .O(\ireg_reg[16]_0 [9]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf_11
   (count,
    ap_rst_n_0,
    internal_empty_n_reg,
    ap_rst_n_1,
    internal_empty_n_reg_0,
    ap_rst_n_2,
    \ireg_reg[16]_0 ,
    D,
    \ap_CS_fsm_reg[0] ,
    arg_out_TREADY,
    \count_reg[1] ,
    \count_reg[1]_0 ,
    ap_rst_n,
    val_assign_1_channel_empty_n,
    Q,
    val_assign_channel_empty_n,
    \ireg_reg[0]_0 ,
    SR,
    ap_clk,
    \ireg_reg[15]_0 );
  output [0:0]count;
  output ap_rst_n_0;
  output internal_empty_n_reg;
  output ap_rst_n_1;
  output internal_empty_n_reg_0;
  output ap_rst_n_2;
  output [16:0]\ireg_reg[16]_0 ;
  output [0:0]D;
  output [1:0]\ap_CS_fsm_reg[0] ;
  input arg_out_TREADY;
  input \count_reg[1] ;
  input \count_reg[1]_0 ;
  input ap_rst_n;
  input val_assign_1_channel_empty_n;
  input [1:0]Q;
  input val_assign_channel_empty_n;
  input [0:0]\ireg_reg[0]_0 ;
  input [0:0]SR;
  input ap_clk;
  input [15:0]\ireg_reg[15]_0 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire arg_out_TREADY;
  wire arg_out_TVALID_int;
  wire [0:0]count;
  wire \count_reg[1] ;
  wire \count_reg[1]_0 ;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [15:0]\ireg_reg[15]_0 ;
  wire [16:0]\ireg_reg[16]_0 ;
  wire val_assign_1_channel_empty_n;
  wire val_assign_channel_empty_n;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF700F7FF)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(val_assign_channel_empty_n),
        .I1(val_assign_1_channel_empty_n),
        .I2(\ireg_reg[16]_0 [16]),
        .I3(Q[0]),
        .I4(ap_rst_n_2),
        .O(\ap_CS_fsm_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2E222222)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_rst_n_2),
        .I1(Q[0]),
        .I2(\ireg_reg[16]_0 [16]),
        .I3(val_assign_1_channel_empty_n),
        .I4(val_assign_channel_empty_n),
        .O(\ap_CS_fsm_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA2AA8080)) 
    \count[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\count_reg[1]_0 ),
        .I2(arg_out_TVALID_int),
        .I3(arg_out_TREADY),
        .I4(\count_reg[1] ),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \count[1]_i_1 
       (.I0(arg_out_TREADY),
        .I1(\count_reg[1] ),
        .I2(\count_reg[1]_0 ),
        .I3(arg_out_TVALID_int),
        .O(count));
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[16]_i_2__0 
       (.I0(\ireg_reg[16]_0 [16]),
        .I1(\ireg_reg[0]_0 ),
        .I2(arg_out_TREADY),
        .O(ireg01_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \ireg[16]_i_3 
       (.I0(\ireg_reg[16]_0 [16]),
        .I1(ap_rst_n),
        .I2(val_assign_1_channel_empty_n),
        .I3(Q[0]),
        .I4(val_assign_channel_empty_n),
        .O(arg_out_TVALID_int));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [0]),
        .Q(\ireg_reg[16]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [10]),
        .Q(\ireg_reg[16]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [11]),
        .Q(\ireg_reg[16]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [12]),
        .Q(\ireg_reg[16]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [13]),
        .Q(\ireg_reg[16]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [14]),
        .Q(\ireg_reg[16]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [15]),
        .Q(\ireg_reg[16]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(arg_out_TVALID_int),
        .Q(\ireg_reg[16]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [1]),
        .Q(\ireg_reg[16]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [2]),
        .Q(\ireg_reg[16]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [3]),
        .Q(\ireg_reg[16]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [4]),
        .Q(\ireg_reg[16]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [5]),
        .Q(\ireg_reg[16]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [6]),
        .Q(\ireg_reg[16]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [7]),
        .Q(\ireg_reg[16]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [8]),
        .Q(\ireg_reg[16]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[15]_0 [9]),
        .Q(\ireg_reg[16]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h80AA000000000000)) 
    \mOutPtr[1]_i_3 
       (.I0(val_assign_1_channel_empty_n),
        .I1(\count_reg[1]_0 ),
        .I2(arg_out_TREADY),
        .I3(\count_reg[1] ),
        .I4(Q[1]),
        .I5(ap_rst_n_1),
        .O(internal_empty_n_reg));
  LUT6 #(
    .INIT(64'hDFDFFFDFFFDFFFDF)) 
    \mOutPtr[1]_i_3__0 
       (.I0(ap_rst_n),
        .I1(\ireg_reg[16]_0 [16]),
        .I2(Q[1]),
        .I3(\count_reg[1] ),
        .I4(arg_out_TREADY),
        .I5(\count_reg[1]_0 ),
        .O(ap_rst_n_2));
  LUT6 #(
    .INIT(64'h80AA000000000000)) 
    \mOutPtr[1]_i_4 
       (.I0(val_assign_channel_empty_n),
        .I1(\count_reg[1]_0 ),
        .I2(arg_out_TREADY),
        .I3(\count_reg[1] ),
        .I4(Q[1]),
        .I5(ap_rst_n_1),
        .O(internal_empty_n_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \odata[15]_i_4 
       (.I0(ap_rst_n),
        .I1(\ireg_reg[16]_0 [16]),
        .O(ap_rst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \odata[16]_i_1 
       (.I0(val_assign_channel_empty_n),
        .I1(Q[0]),
        .I2(val_assign_1_channel_empty_n),
        .I3(\ireg_reg[16]_0 [16]),
        .O(D));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf
   (SR,
    E,
    Q,
    internal_full_n_reg,
    internal_full_n_reg_0,
    \odata_reg[16]_0 ,
    \ap_return_preg_reg[15] ,
    \odata_reg[16]_1 ,
    ap_rst_n,
    shiftReg_ce,
    \ireg_reg[0] ,
    Block_proc75_U0_ap_continue,
    \SRL_SIG_reg[0][0] ,
    \SRL_SIG_reg[0][1] ,
    \SRL_SIG_reg[0][2] ,
    \SRL_SIG_reg[0][3] ,
    \SRL_SIG_reg[0][4] ,
    \SRL_SIG_reg[0][5] ,
    \SRL_SIG_reg[0][6] ,
    \SRL_SIG_reg[0][7] ,
    \SRL_SIG_reg[0][8] ,
    \SRL_SIG_reg[0][9] ,
    \SRL_SIG_reg[0][10] ,
    \SRL_SIG_reg[0][11] ,
    \SRL_SIG_reg[0][12] ,
    \SRL_SIG_reg[0][13] ,
    \SRL_SIG_reg[0][14] ,
    \SRL_SIG_reg[0][15] ,
    \ireg_reg[0]_0 ,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]E;
  output [16:0]Q;
  output internal_full_n_reg;
  output [0:0]internal_full_n_reg_0;
  output \odata_reg[16]_0 ;
  output [15:0]\ap_return_preg_reg[15] ;
  output [0:0]\odata_reg[16]_1 ;
  input ap_rst_n;
  input shiftReg_ce;
  input \ireg_reg[0] ;
  input Block_proc75_U0_ap_continue;
  input \SRL_SIG_reg[0][0] ;
  input \SRL_SIG_reg[0][1] ;
  input \SRL_SIG_reg[0][2] ;
  input \SRL_SIG_reg[0][3] ;
  input \SRL_SIG_reg[0][4] ;
  input \SRL_SIG_reg[0][5] ;
  input \SRL_SIG_reg[0][6] ;
  input \SRL_SIG_reg[0][7] ;
  input \SRL_SIG_reg[0][8] ;
  input \SRL_SIG_reg[0][9] ;
  input \SRL_SIG_reg[0][10] ;
  input \SRL_SIG_reg[0][11] ;
  input \SRL_SIG_reg[0][12] ;
  input \SRL_SIG_reg[0][13] ;
  input \SRL_SIG_reg[0][14] ;
  input \SRL_SIG_reg[0][15] ;
  input [0:0]\ireg_reg[0]_0 ;
  input [16:0]D;
  input ap_clk;

  wire Block_proc75_U0_ap_continue;
  wire [16:0]D;
  wire [0:0]E;
  wire [16:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG_reg[0][0] ;
  wire \SRL_SIG_reg[0][10] ;
  wire \SRL_SIG_reg[0][11] ;
  wire \SRL_SIG_reg[0][12] ;
  wire \SRL_SIG_reg[0][13] ;
  wire \SRL_SIG_reg[0][14] ;
  wire \SRL_SIG_reg[0][15] ;
  wire \SRL_SIG_reg[0][1] ;
  wire \SRL_SIG_reg[0][2] ;
  wire \SRL_SIG_reg[0][3] ;
  wire \SRL_SIG_reg[0][4] ;
  wire \SRL_SIG_reg[0][5] ;
  wire \SRL_SIG_reg[0][6] ;
  wire \SRL_SIG_reg[0][7] ;
  wire \SRL_SIG_reg[0][8] ;
  wire \SRL_SIG_reg[0][9] ;
  wire ap_clk;
  wire [15:0]\ap_return_preg_reg[15] ;
  wire ap_rst_n;
  wire internal_full_n_reg;
  wire [0:0]internal_full_n_reg_0;
  wire \ireg_reg[0] ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire \odata[16]_i_1__0_n_0 ;
  wire \odata_reg[16]_0 ;
  wire [0:0]\odata_reg[16]_1 ;
  wire shiftReg_ce;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][0]_i_1__1 
       (.I0(\SRL_SIG_reg[0][0] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[0]),
        .O(\ap_return_preg_reg[15] [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][10]_i_1__1 
       (.I0(\SRL_SIG_reg[0][10] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[10]),
        .O(\ap_return_preg_reg[15] [10]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][11]_i_1__1 
       (.I0(\SRL_SIG_reg[0][11] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[11]),
        .O(\ap_return_preg_reg[15] [11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][12]_i_1__1 
       (.I0(\SRL_SIG_reg[0][12] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[12]),
        .O(\ap_return_preg_reg[15] [12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][13]_i_1__1 
       (.I0(\SRL_SIG_reg[0][13] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[13]),
        .O(\ap_return_preg_reg[15] [13]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][14]_i_1__1 
       (.I0(\SRL_SIG_reg[0][14] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[14]),
        .O(\ap_return_preg_reg[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \SRL_SIG[0][15]_i_1__0 
       (.I0(Block_proc75_U0_ap_continue),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .O(internal_full_n_reg_0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][15]_i_2__1 
       (.I0(\SRL_SIG_reg[0][15] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[15]),
        .O(\ap_return_preg_reg[15] [15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][1]_i_1__1 
       (.I0(\SRL_SIG_reg[0][1] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[1]),
        .O(\ap_return_preg_reg[15] [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][2]_i_1__1 
       (.I0(\SRL_SIG_reg[0][2] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[2]),
        .O(\ap_return_preg_reg[15] [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][3]_i_1__1 
       (.I0(\SRL_SIG_reg[0][3] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[3]),
        .O(\ap_return_preg_reg[15] [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][4]_i_1__1 
       (.I0(\SRL_SIG_reg[0][4] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[4]),
        .O(\ap_return_preg_reg[15] [4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][5]_i_1__1 
       (.I0(\SRL_SIG_reg[0][5] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[5]),
        .O(\ap_return_preg_reg[15] [5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][6]_i_1__1 
       (.I0(\SRL_SIG_reg[0][6] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[6]),
        .O(\ap_return_preg_reg[15] [6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][7]_i_1__1 
       (.I0(\SRL_SIG_reg[0][7] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[7]),
        .O(\ap_return_preg_reg[15] [7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][8]_i_1__1 
       (.I0(\SRL_SIG_reg[0][8] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[8]),
        .O(\ap_return_preg_reg[15] [8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][9]_i_1__1 
       (.I0(\SRL_SIG_reg[0][9] ),
        .I1(\ireg_reg[0] ),
        .I2(Q[16]),
        .I3(Q[9]),
        .O(\ap_return_preg_reg[15] [9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    ap_done_reg_i_1
       (.I0(Block_proc75_U0_ap_continue),
        .I1(ap_rst_n),
        .I2(\ireg_reg[0] ),
        .I3(Q[16]),
        .O(internal_full_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_return_preg[15]_i_1__0 
       (.I0(Q[16]),
        .I1(\ireg_reg[0] ),
        .O(\odata_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h70FF)) 
    \ireg[16]_i_1 
       (.I0(Q[16]),
        .I1(\ireg_reg[0] ),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\odata_reg[16]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \mOutPtr[1]_i_1__0 
       (.I0(shiftReg_ce),
        .I1(Q[16]),
        .I2(\ireg_reg[0] ),
        .I3(Block_proc75_U0_ap_continue),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \odata[15]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'h7)) 
    \odata[16]_i_1__0 
       (.I0(\ireg_reg[0] ),
        .I1(Q[16]),
        .O(\odata[16]_i_1__0_n_0 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \odata_reg[15] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(\odata[16]_i_1__0_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf_12
   (Q,
    SR,
    arg_out_TREADY,
    \ireg_reg[0] ,
    ap_rst_n,
    ap_rst_n_inv,
    D,
    ap_clk);
  output [16:0]Q;
  output [0:0]SR;
  input arg_out_TREADY;
  input [0:0]\ireg_reg[0] ;
  input ap_rst_n;
  input ap_rst_n_inv;
  input [16:0]D;
  input ap_clk;

  wire [16:0]D;
  wire [16:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_TREADY;
  wire [0:0]\ireg_reg[0] ;
  wire \odata[15]_i_2_n_0 ;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[16]_i_1__0 
       (.I0(Q[16]),
        .I1(arg_out_TREADY),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[15]_i_2 
       (.I0(arg_out_TREADY),
        .I1(Q[16]),
        .O(\odata[15]_i_2_n_0 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[15] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(ap_rst_n_inv));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(\odata[15]_i_2_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_operator_int
   (ap_done_reg,
    ap_done_reg_reg_0,
    ap_done_reg_reg_1,
    ap_clk,
    operator_int_U0_ap_start);
  output ap_done_reg;
  output ap_done_reg_reg_0;
  input ap_done_reg_reg_1;
  input ap_clk;
  input operator_int_U0_ap_start;

  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire operator_int_U0_ap_start;

  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_reg_1),
        .Q(ap_done_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    internal_full_n_i_3
       (.I0(ap_done_reg),
        .I1(operator_int_U0_ap_start),
        .O(ap_done_reg_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_operator_int_1
   (ap_done_reg,
    ap_done_reg_reg_0,
    hw_uint_16_val_V_preg,
    ap_done_reg_reg_1,
    ap_clk,
    operator_int_1_U0_ap_start,
    ap_rst_n_inv,
    \hw_uint_16_val_V_preg_reg[15]_0 ,
    \hw_uint_16_val_V_preg_reg[15]_1 ,
    \hw_uint_16_val_V_preg_reg[14]_0 ,
    \hw_uint_16_val_V_preg_reg[13]_0 ,
    \hw_uint_16_val_V_preg_reg[12]_0 ,
    \hw_uint_16_val_V_preg_reg[11]_0 ,
    \hw_uint_16_val_V_preg_reg[10]_0 ,
    \hw_uint_16_val_V_preg_reg[9]_0 ,
    \hw_uint_16_val_V_preg_reg[8]_0 ,
    \hw_uint_16_val_V_preg_reg[7]_0 ,
    \hw_uint_16_val_V_preg_reg[6]_0 ,
    \hw_uint_16_val_V_preg_reg[5]_0 ,
    \hw_uint_16_val_V_preg_reg[4]_0 ,
    \hw_uint_16_val_V_preg_reg[3]_0 ,
    \hw_uint_16_val_V_preg_reg[2]_0 ,
    \hw_uint_16_val_V_preg_reg[1]_0 ,
    \hw_uint_16_val_V_preg_reg[0]_0 );
  output ap_done_reg;
  output ap_done_reg_reg_0;
  output [15:0]hw_uint_16_val_V_preg;
  input ap_done_reg_reg_1;
  input ap_clk;
  input operator_int_1_U0_ap_start;
  input ap_rst_n_inv;
  input \hw_uint_16_val_V_preg_reg[15]_0 ;
  input \hw_uint_16_val_V_preg_reg[15]_1 ;
  input \hw_uint_16_val_V_preg_reg[14]_0 ;
  input \hw_uint_16_val_V_preg_reg[13]_0 ;
  input \hw_uint_16_val_V_preg_reg[12]_0 ;
  input \hw_uint_16_val_V_preg_reg[11]_0 ;
  input \hw_uint_16_val_V_preg_reg[10]_0 ;
  input \hw_uint_16_val_V_preg_reg[9]_0 ;
  input \hw_uint_16_val_V_preg_reg[8]_0 ;
  input \hw_uint_16_val_V_preg_reg[7]_0 ;
  input \hw_uint_16_val_V_preg_reg[6]_0 ;
  input \hw_uint_16_val_V_preg_reg[5]_0 ;
  input \hw_uint_16_val_V_preg_reg[4]_0 ;
  input \hw_uint_16_val_V_preg_reg[3]_0 ;
  input \hw_uint_16_val_V_preg_reg[2]_0 ;
  input \hw_uint_16_val_V_preg_reg[1]_0 ;
  input \hw_uint_16_val_V_preg_reg[0]_0 ;

  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_reg_0;
  wire ap_done_reg_reg_1;
  wire ap_rst_n_inv;
  wire [15:0]hw_uint_16_val_V_preg;
  wire \hw_uint_16_val_V_preg_reg[0]_0 ;
  wire \hw_uint_16_val_V_preg_reg[10]_0 ;
  wire \hw_uint_16_val_V_preg_reg[11]_0 ;
  wire \hw_uint_16_val_V_preg_reg[12]_0 ;
  wire \hw_uint_16_val_V_preg_reg[13]_0 ;
  wire \hw_uint_16_val_V_preg_reg[14]_0 ;
  wire \hw_uint_16_val_V_preg_reg[15]_0 ;
  wire \hw_uint_16_val_V_preg_reg[15]_1 ;
  wire \hw_uint_16_val_V_preg_reg[1]_0 ;
  wire \hw_uint_16_val_V_preg_reg[2]_0 ;
  wire \hw_uint_16_val_V_preg_reg[3]_0 ;
  wire \hw_uint_16_val_V_preg_reg[4]_0 ;
  wire \hw_uint_16_val_V_preg_reg[5]_0 ;
  wire \hw_uint_16_val_V_preg_reg[6]_0 ;
  wire \hw_uint_16_val_V_preg_reg[7]_0 ;
  wire \hw_uint_16_val_V_preg_reg[8]_0 ;
  wire \hw_uint_16_val_V_preg_reg[9]_0 ;
  wire operator_int_1_U0_ap_start;

  LUT2 #(
    .INIT(4'hB)) 
    \SRL_SIG[0][15]_i_3 
       (.I0(ap_done_reg),
        .I1(operator_int_1_U0_ap_start),
        .O(ap_done_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_reg_1),
        .Q(ap_done_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[0] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[0]_0 ),
        .Q(hw_uint_16_val_V_preg[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[10] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[10]_0 ),
        .Q(hw_uint_16_val_V_preg[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[11] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[11]_0 ),
        .Q(hw_uint_16_val_V_preg[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[12] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[12]_0 ),
        .Q(hw_uint_16_val_V_preg[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[13] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[13]_0 ),
        .Q(hw_uint_16_val_V_preg[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[14] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[14]_0 ),
        .Q(hw_uint_16_val_V_preg[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[15] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[15]_1 ),
        .Q(hw_uint_16_val_V_preg[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[1] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[1]_0 ),
        .Q(hw_uint_16_val_V_preg[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[2] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[2]_0 ),
        .Q(hw_uint_16_val_V_preg[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[3] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[3]_0 ),
        .Q(hw_uint_16_val_V_preg[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[4] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[4]_0 ),
        .Q(hw_uint_16_val_V_preg[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[5] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[5]_0 ),
        .Q(hw_uint_16_val_V_preg[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[6] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[6]_0 ),
        .Q(hw_uint_16_val_V_preg[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[7] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[7]_0 ),
        .Q(hw_uint_16_val_V_preg[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[8] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[8]_0 ),
        .Q(hw_uint_16_val_V_preg[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \hw_uint_16_val_V_preg_reg[9] 
       (.C(ap_clk),
        .CE(\hw_uint_16_val_V_preg_reg[15]_0 ),
        .D(\hw_uint_16_val_V_preg_reg[9]_0 ),
        .Q(hw_uint_16_val_V_preg[9]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_read_1
   (ap_done_reg,
    E,
    ap_done_reg_reg_0,
    \ap_return_preg_reg[15]_0 ,
    \ap_return_preg_reg[14]_0 ,
    \ap_return_preg_reg[13]_0 ,
    \ap_return_preg_reg[12]_0 ,
    \ap_return_preg_reg[11]_0 ,
    \ap_return_preg_reg[10]_0 ,
    \ap_return_preg_reg[9]_0 ,
    \ap_return_preg_reg[8]_0 ,
    \ap_return_preg_reg[7]_0 ,
    \ap_return_preg_reg[6]_0 ,
    \ap_return_preg_reg[5]_0 ,
    \ap_return_preg_reg[4]_0 ,
    \ap_return_preg_reg[3]_0 ,
    \ap_return_preg_reg[2]_0 ,
    \ap_return_preg_reg[1]_0 ,
    \ap_return_preg_reg[0]_0 ,
    ap_clk,
    start_for_read_1_U0_full_n,
    start_for_read_U0_full_n,
    \mOutPtr_reg[1] ,
    unoptimized_conv_3_3_U0_ap_start,
    arg_out_data_values_s_empty_n,
    read_1_U0_ap_start,
    ap_rst_n,
    read_1_U0_ap_continue,
    ap_rst_n_inv,
    \ap_return_preg_reg[15]_1 ,
    \ap_return_preg_reg[14]_1 ,
    \ap_return_preg_reg[13]_1 ,
    \ap_return_preg_reg[12]_1 ,
    \ap_return_preg_reg[11]_1 ,
    \ap_return_preg_reg[10]_1 ,
    \ap_return_preg_reg[9]_1 ,
    \ap_return_preg_reg[8]_1 ,
    \ap_return_preg_reg[7]_1 ,
    \ap_return_preg_reg[6]_1 ,
    \ap_return_preg_reg[5]_1 ,
    \ap_return_preg_reg[4]_1 ,
    \ap_return_preg_reg[3]_1 ,
    \ap_return_preg_reg[2]_1 ,
    \ap_return_preg_reg[1]_1 ,
    \ap_return_preg_reg[0]_1 );
  output ap_done_reg;
  output [0:0]E;
  output ap_done_reg_reg_0;
  output \ap_return_preg_reg[15]_0 ;
  output \ap_return_preg_reg[14]_0 ;
  output \ap_return_preg_reg[13]_0 ;
  output \ap_return_preg_reg[12]_0 ;
  output \ap_return_preg_reg[11]_0 ;
  output \ap_return_preg_reg[10]_0 ;
  output \ap_return_preg_reg[9]_0 ;
  output \ap_return_preg_reg[8]_0 ;
  output \ap_return_preg_reg[7]_0 ;
  output \ap_return_preg_reg[6]_0 ;
  output \ap_return_preg_reg[5]_0 ;
  output \ap_return_preg_reg[4]_0 ;
  output \ap_return_preg_reg[3]_0 ;
  output \ap_return_preg_reg[2]_0 ;
  output \ap_return_preg_reg[1]_0 ;
  output \ap_return_preg_reg[0]_0 ;
  input ap_clk;
  input start_for_read_1_U0_full_n;
  input start_for_read_U0_full_n;
  input \mOutPtr_reg[1] ;
  input unoptimized_conv_3_3_U0_ap_start;
  input arg_out_data_values_s_empty_n;
  input read_1_U0_ap_start;
  input ap_rst_n;
  input read_1_U0_ap_continue;
  input ap_rst_n_inv;
  input \ap_return_preg_reg[15]_1 ;
  input \ap_return_preg_reg[14]_1 ;
  input \ap_return_preg_reg[13]_1 ;
  input \ap_return_preg_reg[12]_1 ;
  input \ap_return_preg_reg[11]_1 ;
  input \ap_return_preg_reg[10]_1 ;
  input \ap_return_preg_reg[9]_1 ;
  input \ap_return_preg_reg[8]_1 ;
  input \ap_return_preg_reg[7]_1 ;
  input \ap_return_preg_reg[6]_1 ;
  input \ap_return_preg_reg[5]_1 ;
  input \ap_return_preg_reg[4]_1 ;
  input \ap_return_preg_reg[3]_1 ;
  input \ap_return_preg_reg[2]_1 ;
  input \ap_return_preg_reg[1]_1 ;
  input \ap_return_preg_reg[0]_1 ;

  wire [0:0]E;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_i_1__0_n_0;
  wire ap_done_reg_reg_0;
  wire \ap_return_preg_reg[0]_0 ;
  wire \ap_return_preg_reg[0]_1 ;
  wire \ap_return_preg_reg[10]_0 ;
  wire \ap_return_preg_reg[10]_1 ;
  wire \ap_return_preg_reg[11]_0 ;
  wire \ap_return_preg_reg[11]_1 ;
  wire \ap_return_preg_reg[12]_0 ;
  wire \ap_return_preg_reg[12]_1 ;
  wire \ap_return_preg_reg[13]_0 ;
  wire \ap_return_preg_reg[13]_1 ;
  wire \ap_return_preg_reg[14]_0 ;
  wire \ap_return_preg_reg[14]_1 ;
  wire \ap_return_preg_reg[15]_0 ;
  wire \ap_return_preg_reg[15]_1 ;
  wire \ap_return_preg_reg[1]_0 ;
  wire \ap_return_preg_reg[1]_1 ;
  wire \ap_return_preg_reg[2]_0 ;
  wire \ap_return_preg_reg[2]_1 ;
  wire \ap_return_preg_reg[3]_0 ;
  wire \ap_return_preg_reg[3]_1 ;
  wire \ap_return_preg_reg[4]_0 ;
  wire \ap_return_preg_reg[4]_1 ;
  wire \ap_return_preg_reg[5]_0 ;
  wire \ap_return_preg_reg[5]_1 ;
  wire \ap_return_preg_reg[6]_0 ;
  wire \ap_return_preg_reg[6]_1 ;
  wire \ap_return_preg_reg[7]_0 ;
  wire \ap_return_preg_reg[7]_1 ;
  wire \ap_return_preg_reg[8]_0 ;
  wire \ap_return_preg_reg[8]_1 ;
  wire \ap_return_preg_reg[9]_0 ;
  wire \ap_return_preg_reg[9]_1 ;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_data_values_s_empty_n;
  wire \mOutPtr_reg[1] ;
  wire read_1_U0_ap_continue;
  wire read_1_U0_ap_start;
  wire start_for_read_1_U0_full_n;
  wire start_for_read_U0_full_n;
  wire unoptimized_conv_3_3_U0_ap_start;

  LUT5 #(
    .INIT(32'h0000EA00)) 
    ap_done_reg_i_1__0
       (.I0(ap_done_reg),
        .I1(arg_out_data_values_s_empty_n),
        .I2(read_1_U0_ap_start),
        .I3(ap_rst_n),
        .I4(read_1_U0_ap_continue),
        .O(ap_done_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__0_n_0),
        .Q(ap_done_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \ap_return_preg[15]_i_1 
       (.I0(ap_done_reg),
        .I1(read_1_U0_ap_start),
        .I2(arg_out_data_values_s_empty_n),
        .O(ap_done_reg_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[0] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[0]_1 ),
        .Q(\ap_return_preg_reg[0]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[10] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[10]_1 ),
        .Q(\ap_return_preg_reg[10]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[11] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[11]_1 ),
        .Q(\ap_return_preg_reg[11]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[12] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[12]_1 ),
        .Q(\ap_return_preg_reg[12]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[13] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[13]_1 ),
        .Q(\ap_return_preg_reg[13]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[14] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[14]_1 ),
        .Q(\ap_return_preg_reg[14]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[15] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[15]_1 ),
        .Q(\ap_return_preg_reg[15]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[1] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[1]_1 ),
        .Q(\ap_return_preg_reg[1]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[2] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[2]_1 ),
        .Q(\ap_return_preg_reg[2]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[3] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[3]_1 ),
        .Q(\ap_return_preg_reg[3]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[4] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[4]_1 ),
        .Q(\ap_return_preg_reg[4]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[5] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[5]_1 ),
        .Q(\ap_return_preg_reg[5]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[6] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[6]_1 ),
        .Q(\ap_return_preg_reg[6]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[7] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[7]_1 ),
        .Q(\ap_return_preg_reg[7]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[8] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[8]_1 ),
        .Q(\ap_return_preg_reg[8]_0 ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[9] 
       (.C(ap_clk),
        .CE(ap_done_reg_reg_0),
        .D(\ap_return_preg_reg[9]_1 ),
        .Q(\ap_return_preg_reg[9]_0 ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \mOutPtr[1]_i_1__2 
       (.I0(ap_done_reg_reg_0),
        .I1(start_for_read_1_U0_full_n),
        .I2(start_for_read_U0_full_n),
        .I3(\mOutPtr_reg[1] ),
        .I4(unoptimized_conv_3_3_U0_ap_start),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_read_r
   (ap_done_reg,
    ap_done_reg_reg_0,
    ap_clk,
    arg_out_tlast_values_empty_n,
    read_U0_ap_start,
    ap_rst_n,
    read_U0_ap_continue);
  output ap_done_reg;
  output ap_done_reg_reg_0;
  input ap_clk;
  input arg_out_tlast_values_empty_n;
  input read_U0_ap_start;
  input ap_rst_n;
  input read_U0_ap_continue;

  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_i_1__1_n_0;
  wire ap_done_reg_reg_0;
  wire ap_rst_n;
  wire arg_out_tlast_values_empty_n;
  wire read_U0_ap_continue;
  wire read_U0_ap_start;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000EA00)) 
    ap_done_reg_i_1__1
       (.I0(ap_done_reg),
        .I1(arg_out_tlast_values_empty_n),
        .I2(read_U0_ap_start),
        .I3(ap_rst_n),
        .I4(read_U0_ap_continue),
        .O(ap_done_reg_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_reg_i_1__1_n_0),
        .Q(ap_done_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    internal_full_n_i_2__1
       (.I0(ap_done_reg),
        .I1(read_U0_ap_start),
        .I2(arg_out_tlast_values_empty_n),
        .O(ap_done_reg_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both
   (SR,
    arg_in0_TREADY,
    E,
    Q,
    internal_full_n_reg,
    internal_full_n_reg_0,
    \odata_reg[16] ,
    \ap_return_preg_reg[15] ,
    ap_rst_n,
    D,
    shiftReg_ce,
    \ireg_reg[0] ,
    Block_proc75_U0_ap_continue,
    \SRL_SIG_reg[0][0] ,
    \SRL_SIG_reg[0][1] ,
    \SRL_SIG_reg[0][2] ,
    \SRL_SIG_reg[0][3] ,
    \SRL_SIG_reg[0][4] ,
    \SRL_SIG_reg[0][5] ,
    \SRL_SIG_reg[0][6] ,
    \SRL_SIG_reg[0][7] ,
    \SRL_SIG_reg[0][8] ,
    \SRL_SIG_reg[0][9] ,
    \SRL_SIG_reg[0][10] ,
    \SRL_SIG_reg[0][11] ,
    \SRL_SIG_reg[0][12] ,
    \SRL_SIG_reg[0][13] ,
    \SRL_SIG_reg[0][14] ,
    \SRL_SIG_reg[0][15] ,
    ap_clk);
  output [0:0]SR;
  output arg_in0_TREADY;
  output [0:0]E;
  output [16:0]Q;
  output internal_full_n_reg;
  output [0:0]internal_full_n_reg_0;
  output \odata_reg[16] ;
  output [15:0]\ap_return_preg_reg[15] ;
  input ap_rst_n;
  input [16:0]D;
  input shiftReg_ce;
  input \ireg_reg[0] ;
  input Block_proc75_U0_ap_continue;
  input \SRL_SIG_reg[0][0] ;
  input \SRL_SIG_reg[0][1] ;
  input \SRL_SIG_reg[0][2] ;
  input \SRL_SIG_reg[0][3] ;
  input \SRL_SIG_reg[0][4] ;
  input \SRL_SIG_reg[0][5] ;
  input \SRL_SIG_reg[0][6] ;
  input \SRL_SIG_reg[0][7] ;
  input \SRL_SIG_reg[0][8] ;
  input \SRL_SIG_reg[0][9] ;
  input \SRL_SIG_reg[0][10] ;
  input \SRL_SIG_reg[0][11] ;
  input \SRL_SIG_reg[0][12] ;
  input \SRL_SIG_reg[0][13] ;
  input \SRL_SIG_reg[0][14] ;
  input \SRL_SIG_reg[0][15] ;
  input ap_clk;

  wire Block_proc75_U0_ap_continue;
  wire [16:0]D;
  wire [0:0]E;
  wire [16:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG_reg[0][0] ;
  wire \SRL_SIG_reg[0][10] ;
  wire \SRL_SIG_reg[0][11] ;
  wire \SRL_SIG_reg[0][12] ;
  wire \SRL_SIG_reg[0][13] ;
  wire \SRL_SIG_reg[0][14] ;
  wire \SRL_SIG_reg[0][15] ;
  wire \SRL_SIG_reg[0][1] ;
  wire \SRL_SIG_reg[0][2] ;
  wire \SRL_SIG_reg[0][3] ;
  wire \SRL_SIG_reg[0][4] ;
  wire \SRL_SIG_reg[0][5] ;
  wire \SRL_SIG_reg[0][6] ;
  wire \SRL_SIG_reg[0][7] ;
  wire \SRL_SIG_reg[0][8] ;
  wire \SRL_SIG_reg[0][9] ;
  wire ap_clk;
  wire [15:0]\ap_return_preg_reg[15] ;
  wire ap_rst_n;
  wire arg_in0_TREADY;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_2;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire internal_full_n_reg;
  wire [0:0]internal_full_n_reg_0;
  wire \ireg_reg[0] ;
  wire obuf_inst_n_38;
  wire \odata_reg[16] ;
  wire p_0_in;
  wire shiftReg_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf ibuf_inst
       (.D(D),
        .Q(p_0_in),
        .SR(obuf_inst_n_38),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_in0_TREADY(arg_in0_TREADY),
        .\ireg_reg[0]_0 (Q[16]),
        .\ireg_reg[0]_1 (\ireg_reg[0] ),
        .\ireg_reg[16]_0 ({ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf obuf_inst
       (.Block_proc75_U0_ap_continue(Block_proc75_U0_ap_continue),
        .D({ibuf_inst_n_2,ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18}),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\SRL_SIG_reg[0][0] (\SRL_SIG_reg[0][0] ),
        .\SRL_SIG_reg[0][10] (\SRL_SIG_reg[0][10] ),
        .\SRL_SIG_reg[0][11] (\SRL_SIG_reg[0][11] ),
        .\SRL_SIG_reg[0][12] (\SRL_SIG_reg[0][12] ),
        .\SRL_SIG_reg[0][13] (\SRL_SIG_reg[0][13] ),
        .\SRL_SIG_reg[0][14] (\SRL_SIG_reg[0][14] ),
        .\SRL_SIG_reg[0][15] (\SRL_SIG_reg[0][15] ),
        .\SRL_SIG_reg[0][1] (\SRL_SIG_reg[0][1] ),
        .\SRL_SIG_reg[0][2] (\SRL_SIG_reg[0][2] ),
        .\SRL_SIG_reg[0][3] (\SRL_SIG_reg[0][3] ),
        .\SRL_SIG_reg[0][4] (\SRL_SIG_reg[0][4] ),
        .\SRL_SIG_reg[0][5] (\SRL_SIG_reg[0][5] ),
        .\SRL_SIG_reg[0][6] (\SRL_SIG_reg[0][6] ),
        .\SRL_SIG_reg[0][7] (\SRL_SIG_reg[0][7] ),
        .\SRL_SIG_reg[0][8] (\SRL_SIG_reg[0][8] ),
        .\SRL_SIG_reg[0][9] (\SRL_SIG_reg[0][9] ),
        .ap_clk(ap_clk),
        .\ap_return_preg_reg[15] (\ap_return_preg_reg[15] ),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg(internal_full_n_reg),
        .internal_full_n_reg_0(internal_full_n_reg_0),
        .\ireg_reg[0] (\ireg_reg[0] ),
        .\ireg_reg[0]_0 (p_0_in),
        .\odata_reg[16]_0 (\odata_reg[16] ),
        .\odata_reg[16]_1 (obuf_inst_n_38),
        .shiftReg_ce(shiftReg_ce));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_10
   (internal_empty_n_reg,
    ap_rst_n_0,
    internal_empty_n_reg_0,
    ap_rst_n_1,
    \odata_reg[16] ,
    D,
    \ireg_reg[15] ,
    ap_rst_n_inv,
    ap_clk,
    arg_out_TREADY,
    ap_rst_n,
    val_assign_1_channel_empty_n,
    Q,
    val_assign_channel_empty_n,
    \ireg_reg[15]_0 ,
    \odata_reg[15] );
  output internal_empty_n_reg;
  output ap_rst_n_0;
  output internal_empty_n_reg_0;
  output ap_rst_n_1;
  output [16:0]\odata_reg[16] ;
  output [1:0]D;
  output [15:0]\ireg_reg[15] ;
  input ap_rst_n_inv;
  input ap_clk;
  input arg_out_TREADY;
  input ap_rst_n;
  input val_assign_1_channel_empty_n;
  input [1:0]Q;
  input val_assign_channel_empty_n;
  input [15:0]\ireg_reg[15]_0 ;
  input [15:0]\odata_reg[15] ;

  wire [1:0]D;
  wire [1:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_inv;
  wire arg_out_TREADY;
  wire [1:1]count;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire ibuf_inst_n_1;
  wire ibuf_inst_n_23;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire [15:0]\ireg_reg[15] ;
  wire [15:0]\ireg_reg[15]_0 ;
  wire obuf_inst_n_17;
  wire [15:0]\odata_reg[15] ;
  wire [16:0]\odata_reg[16] ;
  wire p_0_in;
  wire val_assign_1_channel_empty_n;
  wire val_assign_channel_empty_n;

  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_1),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf_11 ibuf_inst
       (.D(ibuf_inst_n_23),
        .Q(Q),
        .SR(obuf_inst_n_17),
        .\ap_CS_fsm_reg[0] (D),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ibuf_inst_n_1),
        .ap_rst_n_1(ap_rst_n_0),
        .ap_rst_n_2(ap_rst_n_1),
        .arg_out_TREADY(arg_out_TREADY),
        .count(count),
        .\count_reg[1] (\count_reg_n_0_[0] ),
        .\count_reg[1]_0 (\count_reg_n_0_[1] ),
        .internal_empty_n_reg(internal_empty_n_reg),
        .internal_empty_n_reg_0(internal_empty_n_reg_0),
        .\ireg_reg[0]_0 (\odata_reg[16] [16]),
        .\ireg_reg[15]_0 (\ireg_reg[15]_0 ),
        .\ireg_reg[16]_0 ({p_0_in,\ireg_reg[15] }),
        .val_assign_1_channel_empty_n(val_assign_1_channel_empty_n),
        .val_assign_channel_empty_n(val_assign_channel_empty_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf_12 obuf_inst
       (.D({ibuf_inst_n_23,\odata_reg[15] }),
        .Q(\odata_reg[16] ),
        .SR(obuf_inst_n_17),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_TREADY(arg_out_TREADY),
        .\ireg_reg[0] (p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_read_1_U0
   (start_for_read_1_U0_full_n,
    read_1_U0_ap_start,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    ap_done_reg,
    arg_out_data_values_s_empty_n,
    ap_rst_n_inv,
    E);
  output start_for_read_1_U0_full_n;
  output read_1_U0_ap_start;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input internal_full_n_reg_1;
  input ap_done_reg;
  input arg_out_data_values_s_empty_n;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_data_values_s_empty_n;
  wire internal_empty_n_i_1__2_n_0;
  wire internal_full_n_i_1__2_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__8_n_0 ;
  wire \mOutPtr[1]_i_2__2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire read_1_U0_ap_start;
  wire start_for_read_1_U0_full_n;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__2
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_full_n_reg_1),
        .I3(internal_full_n_reg_0),
        .I4(read_1_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_0),
        .Q(read_1_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__2
       (.I0(ap_rst_n),
        .I1(start_for_read_1_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(internal_full_n_reg_0),
        .I5(internal_full_n_reg_1),
        .O(internal_full_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_0),
        .Q(start_for_read_1_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__8 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h1000EFFFEFFF1000)) 
    \mOutPtr[1]_i_2__2 
       (.I0(internal_full_n_reg_0),
        .I1(ap_done_reg),
        .I2(read_1_U0_ap_start),
        .I3(arg_out_data_values_s_empty_n),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__8_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_read_U0
   (start_for_read_U0_full_n,
    read_U0_ap_start,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    ap_done_reg,
    arg_out_tlast_values_empty_n,
    ap_rst_n_inv,
    E);
  output start_for_read_U0_full_n;
  output read_U0_ap_start;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input internal_full_n_reg_1;
  input ap_done_reg;
  input arg_out_tlast_values_empty_n;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_out_tlast_values_empty_n;
  wire internal_empty_n_i_1__3_n_0;
  wire internal_full_n_i_1__3_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__9_n_0 ;
  wire \mOutPtr[1]_i_2__3_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire read_U0_ap_start;
  wire start_for_read_U0_full_n;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__3
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_full_n_reg_1),
        .I3(internal_full_n_reg_0),
        .I4(read_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_0),
        .Q(read_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__3
       (.I0(ap_rst_n),
        .I1(start_for_read_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(internal_full_n_reg_0),
        .I5(internal_full_n_reg_1),
        .O(internal_full_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__3_n_0),
        .Q(start_for_read_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__9 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'h1000EFFFEFFF1000)) 
    \mOutPtr[1]_i_2__3 
       (.I0(internal_full_n_reg_0),
        .I1(ap_done_reg),
        .I2(read_U0_ap_start),
        .I3(arg_out_tlast_values_empty_n),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__9_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__3_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_unoptimdEe
   (start_for_unoptimized_conv_3_3_U0_full_n,
    unoptimized_conv_3_3_U0_ap_start,
    E,
    internal_full_n_reg_0,
    internal_empty_n_reg_0,
    ap_clk,
    \mOutPtr_reg[1]_0 ,
    write_U0_ap_start,
    start_once_reg,
    internal_empty_n_reg_1,
    internal_empty_n_reg_2,
    ap_rst_n,
    arg_in0_hwstream_val_full_n,
    \mOutPtr_reg[1]_1 ,
    internal_full_n_reg_1,
    start_for_read_U0_full_n,
    start_for_read_1_U0_full_n,
    ap_rst_n_inv);
  output start_for_unoptimized_conv_3_3_U0_full_n;
  output unoptimized_conv_3_3_U0_ap_start;
  output [0:0]E;
  output internal_full_n_reg_0;
  output internal_empty_n_reg_0;
  input ap_clk;
  input \mOutPtr_reg[1]_0 ;
  input write_U0_ap_start;
  input start_once_reg;
  input internal_empty_n_reg_1;
  input internal_empty_n_reg_2;
  input ap_rst_n;
  input arg_in0_hwstream_val_full_n;
  input [0:0]\mOutPtr_reg[1]_1 ;
  input internal_full_n_reg_1;
  input start_for_read_U0_full_n;
  input start_for_read_1_U0_full_n;
  input ap_rst_n_inv;

  wire [0:0]E;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire arg_in0_hwstream_val_full_n;
  wire internal_empty_n_i_1_n_0;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_empty_n_reg_2;
  wire internal_full_n_i_1_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__7_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire [0:0]\mOutPtr_reg[1]_1 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_read_1_U0_full_n;
  wire start_for_read_U0_full_n;
  wire start_for_unoptimized_conv_3_3_U0_full_n;
  wire start_once_reg;
  wire unoptimized_conv_3_3_U0_ap_start;
  wire write_U0_ap_start;

  LUT6 #(
    .INIT(64'hFFEFFF0000000000)) 
    internal_empty_n_i_1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(internal_empty_n_reg_1),
        .I3(internal_empty_n_reg_2),
        .I4(unoptimized_conv_3_3_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_0),
        .Q(unoptimized_conv_3_3_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFFA8AAFFFFFFFF)) 
    internal_full_n_i_1
       (.I0(start_for_unoptimized_conv_3_3_U0_full_n),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(internal_empty_n_reg_2),
        .I4(\mOutPtr_reg[1]_0 ),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_0),
        .Q(start_for_unoptimized_conv_3_3_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__7 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__7_n_0 ));
  LUT5 #(
    .INIT(32'hDF202020)) 
    \mOutPtr[1]_i_1 
       (.I0(start_for_unoptimized_conv_3_3_U0_full_n),
        .I1(start_once_reg),
        .I2(write_U0_ap_start),
        .I3(unoptimized_conv_3_3_U0_ap_start),
        .I4(internal_empty_n_reg_1),
        .O(\mOutPtr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h1FFFE000)) 
    \mOutPtr[1]_i_1__1 
       (.I0(start_for_unoptimized_conv_3_3_U0_full_n),
        .I1(start_once_reg),
        .I2(write_U0_ap_start),
        .I3(arg_in0_hwstream_val_full_n),
        .I4(\mOutPtr_reg[1]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'hA2AA5D555D55A2AA)) 
    \mOutPtr[1]_i_2 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(write_U0_ap_start),
        .I2(start_once_reg),
        .I3(start_for_unoptimized_conv_3_3_U0_full_n),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \mOutPtr[1]_i_3__1 
       (.I0(unoptimized_conv_3_3_U0_ap_start),
        .I1(internal_full_n_reg_1),
        .I2(start_for_read_U0_full_n),
        .I3(start_for_read_1_U0_full_n),
        .O(internal_empty_n_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1_n_0 ),
        .D(\mOutPtr[0]_i_1__7_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1_n_0 ),
        .D(\mOutPtr[1]_i_2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0CEC)) 
    start_once_reg_i_1
       (.I0(start_for_unoptimized_conv_3_3_U0_full_n),
        .I1(start_once_reg),
        .I2(write_U0_ap_start),
        .I3(arg_in0_hwstream_val_full_n),
        .O(internal_full_n_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_3_3
   (start_once_reg_reg_0,
    \ap_CS_fsm_reg[3]_0 ,
    Q,
    E,
    \ap_CS_fsm_reg[10]_0 ,
    \hw_output_s0_y_v33_a_reg_197_reg[4]_0 ,
    data,
    ap_clk,
    ap_rst_n_inv,
    start_for_read_1_U0_full_n,
    start_for_read_U0_full_n,
    unoptimized_conv_3_3_U0_ap_start,
    arg_out_data_values_s_full_n,
    arg_out_tlast_values_full_n,
    arg_in0_hwstream_val_empty_n,
    d0);
  output start_once_reg_reg_0;
  output \ap_CS_fsm_reg[3]_0 ;
  output [0:0]Q;
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[10]_0 ;
  output \hw_output_s0_y_v33_a_reg_197_reg[4]_0 ;
  output [15:0]data;
  input ap_clk;
  input ap_rst_n_inv;
  input start_for_read_1_U0_full_n;
  input start_for_read_U0_full_n;
  input unoptimized_conv_3_3_U0_ap_start;
  input arg_out_data_values_s_full_n;
  input arg_out_tlast_values_full_n;
  input arg_in0_hwstream_val_empty_n;
  input [15:0]d0;

  wire [15:2]C;
  wire [0:0]E;
  wire [0:0]Q;
  wire \SRL_SIG[0][15]_i_10_n_0 ;
  wire \SRL_SIG[0][15]_i_11_n_0 ;
  wire \SRL_SIG[0][15]_i_12_n_0 ;
  wire \SRL_SIG[0][15]_i_13_n_0 ;
  wire \SRL_SIG[0][15]_i_14_n_0 ;
  wire \SRL_SIG[0][15]_i_15_n_0 ;
  wire \SRL_SIG[0][15]_i_16_n_0 ;
  wire \SRL_SIG[0][15]_i_18_n_0 ;
  wire \SRL_SIG[0][15]_i_19_n_0 ;
  wire \SRL_SIG[0][15]_i_20_n_0 ;
  wire \SRL_SIG[0][15]_i_21_n_0 ;
  wire \SRL_SIG[0][15]_i_22_n_0 ;
  wire \SRL_SIG[0][15]_i_23_n_0 ;
  wire \SRL_SIG[0][15]_i_24_n_0 ;
  wire \SRL_SIG[0][15]_i_25_n_0 ;
  wire \SRL_SIG[0][15]_i_26_n_0 ;
  wire \SRL_SIG[0][15]_i_27_n_0 ;
  wire \SRL_SIG[0][15]_i_28_n_0 ;
  wire \SRL_SIG[0][15]_i_29_n_0 ;
  wire \SRL_SIG[0][15]_i_2_n_0 ;
  wire \SRL_SIG[0][15]_i_30_n_0 ;
  wire \SRL_SIG[0][15]_i_31_n_0 ;
  wire \SRL_SIG[0][15]_i_32_n_0 ;
  wire \SRL_SIG[0][15]_i_3_n_0 ;
  wire \SRL_SIG[0][15]_i_4_n_0 ;
  wire \SRL_SIG[0][15]_i_5_n_0 ;
  wire \SRL_SIG[0][15]_i_6_n_0 ;
  wire \SRL_SIG[0][15]_i_7_n_0 ;
  wire \SRL_SIG[0][15]_i_8_n_0 ;
  wire \SRL_SIG[0][15]_i_9_n_0 ;
  wire \SRL_SIG[0][7]_i_10_n_0 ;
  wire \SRL_SIG[0][7]_i_11_n_0 ;
  wire \SRL_SIG[0][7]_i_12_n_0 ;
  wire \SRL_SIG[0][7]_i_13_n_0 ;
  wire \SRL_SIG[0][7]_i_14_n_0 ;
  wire \SRL_SIG[0][7]_i_15_n_0 ;
  wire \SRL_SIG[0][7]_i_16_n_0 ;
  wire \SRL_SIG[0][7]_i_17_n_0 ;
  wire \SRL_SIG[0][7]_i_18_n_0 ;
  wire \SRL_SIG[0][7]_i_19_n_0 ;
  wire \SRL_SIG[0][7]_i_20_n_0 ;
  wire \SRL_SIG[0][7]_i_21_n_0 ;
  wire \SRL_SIG[0][7]_i_22_n_0 ;
  wire \SRL_SIG[0][7]_i_23_n_0 ;
  wire \SRL_SIG[0][7]_i_24_n_0 ;
  wire \SRL_SIG[0][7]_i_25_n_0 ;
  wire \SRL_SIG[0][7]_i_26_n_0 ;
  wire \SRL_SIG[0][7]_i_27_n_0 ;
  wire \SRL_SIG[0][7]_i_28_n_0 ;
  wire \SRL_SIG[0][7]_i_2_n_0 ;
  wire \SRL_SIG[0][7]_i_3_n_0 ;
  wire \SRL_SIG[0][7]_i_5_n_0 ;
  wire \SRL_SIG[0][7]_i_6_n_0 ;
  wire \SRL_SIG[0][7]_i_7_n_0 ;
  wire \SRL_SIG[0][7]_i_8_n_0 ;
  wire \SRL_SIG[0][7]_i_9_n_0 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_1 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_10 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_11 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_12 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_13 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_14 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_15 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_2 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_3 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_4 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_5 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_6 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_7 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_8 ;
  wire \SRL_SIG_reg[0][15]_i_17_n_9 ;
  wire \SRL_SIG_reg[0][15]_i_1_n_1 ;
  wire \SRL_SIG_reg[0][15]_i_1_n_2 ;
  wire \SRL_SIG_reg[0][15]_i_1_n_3 ;
  wire \SRL_SIG_reg[0][15]_i_1_n_4 ;
  wire \SRL_SIG_reg[0][15]_i_1_n_5 ;
  wire \SRL_SIG_reg[0][15]_i_1_n_6 ;
  wire \SRL_SIG_reg[0][15]_i_1_n_7 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_0 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_1 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_2 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_3 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_4 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_5 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_6 ;
  wire \SRL_SIG_reg[0][7]_i_1_n_7 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_0 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_1 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_10 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_11 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_12 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_13 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_14 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_15 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_2 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_3 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_4 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_5 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_6 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_7 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_8 ;
  wire \SRL_SIG_reg[0][7]_i_4_n_9 ;
  wire [5:1]add_ln142_fu_283_p2;
  wire \add_ln142_reg_570[4]_i_1_n_0 ;
  wire [5:1]add_ln187_fu_326_p2;
  wire [5:0]add_ln187_reg_604;
  wire [15:1]add_ln58_2_fu_476_p2;
  wire add_ln58_2_fu_476_p2__2_carry__0_n_1;
  wire add_ln58_2_fu_476_p2__2_carry__0_n_2;
  wire add_ln58_2_fu_476_p2__2_carry__0_n_3;
  wire add_ln58_2_fu_476_p2__2_carry__0_n_4;
  wire add_ln58_2_fu_476_p2__2_carry__0_n_5;
  wire add_ln58_2_fu_476_p2__2_carry__0_n_6;
  wire add_ln58_2_fu_476_p2__2_carry__0_n_7;
  wire add_ln58_2_fu_476_p2__2_carry_i_5_n_0;
  wire add_ln58_2_fu_476_p2__2_carry_n_0;
  wire add_ln58_2_fu_476_p2__2_carry_n_1;
  wire add_ln58_2_fu_476_p2__2_carry_n_2;
  wire add_ln58_2_fu_476_p2__2_carry_n_3;
  wire add_ln58_2_fu_476_p2__2_carry_n_4;
  wire add_ln58_2_fu_476_p2__2_carry_n_5;
  wire add_ln58_2_fu_476_p2__2_carry_n_6;
  wire add_ln58_2_fu_476_p2__2_carry_n_7;
  wire [15:1]add_ln58_2_reg_671;
  wire [15:0]add_ln58_4_reg_646_reg__0;
  wire [15:0]add_ln58_5_reg_676_reg__0;
  wire [15:0]add_ln58_fu_465_p2;
  wire add_ln58_fu_465_p2_carry__0_n_1;
  wire add_ln58_fu_465_p2_carry__0_n_2;
  wire add_ln58_fu_465_p2_carry__0_n_3;
  wire add_ln58_fu_465_p2_carry__0_n_4;
  wire add_ln58_fu_465_p2_carry__0_n_5;
  wire add_ln58_fu_465_p2_carry__0_n_6;
  wire add_ln58_fu_465_p2_carry__0_n_7;
  wire add_ln58_fu_465_p2_carry_n_0;
  wire add_ln58_fu_465_p2_carry_n_1;
  wire add_ln58_fu_465_p2_carry_n_2;
  wire add_ln58_fu_465_p2_carry_n_3;
  wire add_ln58_fu_465_p2_carry_n_4;
  wire add_ln58_fu_465_p2_carry_n_5;
  wire add_ln58_fu_465_p2_carry_n_6;
  wire add_ln58_fu_465_p2_carry_n_7;
  wire [15:0]add_ln58_reg_666;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire [0:0]\ap_CS_fsm_reg[10]_0 ;
  wire \ap_CS_fsm_reg[3]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [10:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm13_out;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire arg_in0_hwstream_val_empty_n;
  wire arg_out_data_values_s_full_n;
  wire arg_out_tlast_values_full_n;
  wire [5:0]c3_1_fu_277_p2;
  wire [5:0]c3_1_reg_562;
  wire [6:0]c3_fu_227_p2;
  wire [6:0]c3_reg_541;
  wire \c3_reg_541[6]_i_2_n_0 ;
  wire [5:0]c5_1_fu_295_p2;
  wire [6:0]c5_fu_251_p2;
  wire [15:0]d0;
  wire [15:0]data;
  wire [11:0]data0;
  wire [11:0]data4;
  wire [13:0]empty_11_reg_631;
  wire grp_fu_522_p2_carry__0_n_10;
  wire grp_fu_522_p2_carry__0_n_11;
  wire grp_fu_522_p2_carry__0_n_12;
  wire grp_fu_522_p2_carry__0_n_13;
  wire grp_fu_522_p2_carry__0_n_14;
  wire grp_fu_522_p2_carry__0_n_15;
  wire grp_fu_522_p2_carry__0_n_2;
  wire grp_fu_522_p2_carry__0_n_3;
  wire grp_fu_522_p2_carry__0_n_4;
  wire grp_fu_522_p2_carry__0_n_5;
  wire grp_fu_522_p2_carry__0_n_6;
  wire grp_fu_522_p2_carry__0_n_7;
  wire grp_fu_522_p2_carry__0_n_9;
  wire grp_fu_522_p2_carry_i_1_n_0;
  wire grp_fu_522_p2_carry_i_8_n_0;
  wire grp_fu_522_p2_carry_i_9_n_0;
  wire grp_fu_522_p2_carry_n_0;
  wire grp_fu_522_p2_carry_n_1;
  wire grp_fu_522_p2_carry_n_10;
  wire grp_fu_522_p2_carry_n_11;
  wire grp_fu_522_p2_carry_n_12;
  wire grp_fu_522_p2_carry_n_13;
  wire grp_fu_522_p2_carry_n_14;
  wire grp_fu_522_p2_carry_n_15;
  wire grp_fu_522_p2_carry_n_2;
  wire grp_fu_522_p2_carry_n_3;
  wire grp_fu_522_p2_carry_n_4;
  wire grp_fu_522_p2_carry_n_5;
  wire grp_fu_522_p2_carry_n_6;
  wire grp_fu_522_p2_carry_n_7;
  wire grp_fu_522_p2_carry_n_8;
  wire grp_fu_522_p2_carry_n_9;
  wire grp_fu_530_p2_carry__0_n_2;
  wire grp_fu_530_p2_carry__0_n_3;
  wire grp_fu_530_p2_carry__0_n_4;
  wire grp_fu_530_p2_carry__0_n_5;
  wire grp_fu_530_p2_carry__0_n_6;
  wire grp_fu_530_p2_carry__0_n_7;
  wire grp_fu_530_p2_carry_i_6_n_0;
  wire grp_fu_530_p2_carry_i_7_n_0;
  wire grp_fu_530_p2_carry_i_8_n_0;
  wire grp_fu_530_p2_carry_n_0;
  wire grp_fu_530_p2_carry_n_1;
  wire grp_fu_530_p2_carry_n_2;
  wire grp_fu_530_p2_carry_n_3;
  wire grp_fu_530_p2_carry_n_4;
  wire grp_fu_530_p2_carry_n_5;
  wire grp_fu_530_p2_carry_n_6;
  wire grp_fu_530_p2_carry_n_7;
  wire \hw_input_global_wrap_15_reg_625_reg_n_0_[13] ;
  wire \hw_input_global_wrap_15_reg_625_reg_n_0_[14] ;
  wire hw_input_global_wrap_1_reg_175;
  wire hw_input_global_wrap_2_reg_1860;
  wire \hw_input_global_wrap_2_reg_186[4]_i_1_n_0 ;
  wire \hw_input_global_wrap_2_reg_186[6]_i_2_n_0 ;
  wire [6:0]hw_input_global_wrap_2_reg_186_reg;
  wire \hw_input_global_wrap_7_reg_593_reg_n_0_[12] ;
  wire \hw_input_global_wrap_7_reg_593_reg_n_0_[13] ;
  wire \hw_input_global_wrap_7_reg_593_reg_n_0_[14] ;
  wire \hw_input_global_wrap_7_reg_593_reg_n_0_[15] ;
  wire hw_input_global_wrap_U_n_0;
  wire hw_input_global_wrap_U_n_100;
  wire hw_input_global_wrap_U_n_101;
  wire hw_input_global_wrap_U_n_102;
  wire hw_input_global_wrap_U_n_103;
  wire hw_input_global_wrap_U_n_104;
  wire hw_input_global_wrap_U_n_105;
  wire hw_input_global_wrap_U_n_106;
  wire hw_input_global_wrap_U_n_107;
  wire hw_input_global_wrap_U_n_108;
  wire hw_input_global_wrap_U_n_109;
  wire hw_input_global_wrap_U_n_110;
  wire hw_input_global_wrap_U_n_111;
  wire hw_input_global_wrap_U_n_112;
  wire hw_input_global_wrap_U_n_113;
  wire hw_input_global_wrap_U_n_114;
  wire hw_input_global_wrap_U_n_115;
  wire hw_input_global_wrap_U_n_2;
  wire hw_input_global_wrap_U_n_26;
  wire hw_input_global_wrap_U_n_4;
  wire hw_input_global_wrap_U_n_42;
  wire hw_input_global_wrap_U_n_43;
  wire hw_input_global_wrap_U_n_44;
  wire hw_input_global_wrap_U_n_45;
  wire hw_input_global_wrap_U_n_46;
  wire hw_input_global_wrap_U_n_47;
  wire hw_input_global_wrap_U_n_48;
  wire hw_input_global_wrap_U_n_49;
  wire hw_input_global_wrap_U_n_5;
  wire hw_input_global_wrap_U_n_50;
  wire hw_input_global_wrap_U_n_51;
  wire hw_input_global_wrap_U_n_52;
  wire hw_input_global_wrap_U_n_53;
  wire hw_input_global_wrap_U_n_54;
  wire hw_input_global_wrap_U_n_55;
  wire hw_input_global_wrap_U_n_56;
  wire hw_input_global_wrap_U_n_57;
  wire hw_input_global_wrap_U_n_58;
  wire hw_input_global_wrap_U_n_59;
  wire hw_input_global_wrap_U_n_6;
  wire hw_input_global_wrap_U_n_60;
  wire hw_input_global_wrap_U_n_61;
  wire hw_input_global_wrap_U_n_62;
  wire hw_input_global_wrap_U_n_63;
  wire hw_input_global_wrap_U_n_64;
  wire hw_input_global_wrap_U_n_65;
  wire hw_input_global_wrap_U_n_66;
  wire hw_input_global_wrap_U_n_67;
  wire hw_input_global_wrap_U_n_68;
  wire hw_input_global_wrap_U_n_69;
  wire hw_input_global_wrap_U_n_7;
  wire hw_input_global_wrap_U_n_70;
  wire hw_input_global_wrap_U_n_71;
  wire hw_input_global_wrap_U_n_72;
  wire hw_input_global_wrap_U_n_73;
  wire hw_input_global_wrap_U_n_74;
  wire hw_input_global_wrap_U_n_75;
  wire hw_input_global_wrap_U_n_76;
  wire hw_input_global_wrap_U_n_77;
  wire hw_input_global_wrap_U_n_78;
  wire hw_input_global_wrap_U_n_79;
  wire hw_input_global_wrap_U_n_8;
  wire hw_input_global_wrap_U_n_80;
  wire hw_input_global_wrap_U_n_81;
  wire hw_input_global_wrap_U_n_82;
  wire hw_input_global_wrap_U_n_83;
  wire hw_input_global_wrap_U_n_84;
  wire hw_input_global_wrap_U_n_85;
  wire hw_input_global_wrap_U_n_86;
  wire hw_input_global_wrap_U_n_87;
  wire hw_input_global_wrap_U_n_88;
  wire hw_input_global_wrap_U_n_89;
  wire hw_input_global_wrap_U_n_9;
  wire hw_input_global_wrap_U_n_90;
  wire hw_input_global_wrap_U_n_91;
  wire hw_input_global_wrap_U_n_92;
  wire hw_input_global_wrap_U_n_93;
  wire hw_input_global_wrap_U_n_94;
  wire hw_input_global_wrap_U_n_95;
  wire hw_input_global_wrap_U_n_96;
  wire hw_input_global_wrap_U_n_97;
  wire hw_input_global_wrap_U_n_98;
  wire hw_input_global_wrap_U_n_99;
  wire [15:0]hw_input_global_wrap_q0;
  wire [14:0]hw_input_global_wrap_q1;
  wire hw_output_s0_x_v32_a_reg_2090;
  wire \hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0 ;
  wire \hw_output_s0_y_v33_a_reg_197[5]_i_3_n_0 ;
  wire \hw_output_s0_y_v33_a_reg_197_reg[4]_0 ;
  wire [15:4]shl_ln34_fu_429_p2;
  wire [15:3]shl_ln38_fu_434_p2;
  wire start_for_read_1_U0_full_n;
  wire start_for_read_U0_full_n;
  wire start_once_reg_i_1__0_n_0;
  wire start_once_reg_reg_0;
  wire [15:2]tmp1_i_fu_494_p3;
  wire [12:6]tmp_2_fu_233_p3;
  wire [13:0]tmp_i231_fu_460_p2;
  wire tmp_i231_fu_460_p2_carry__0_n_3;
  wire tmp_i231_fu_460_p2_carry__0_n_4;
  wire tmp_i231_fu_460_p2_carry__0_n_5;
  wire tmp_i231_fu_460_p2_carry__0_n_6;
  wire tmp_i231_fu_460_p2_carry__0_n_7;
  wire tmp_i231_fu_460_p2_carry_n_0;
  wire tmp_i231_fu_460_p2_carry_n_1;
  wire tmp_i231_fu_460_p2_carry_n_2;
  wire tmp_i231_fu_460_p2_carry_n_3;
  wire tmp_i231_fu_460_p2_carry_n_4;
  wire tmp_i231_fu_460_p2_carry_n_5;
  wire tmp_i231_fu_460_p2_carry_n_6;
  wire tmp_i231_fu_460_p2_carry_n_7;
  wire unoptimized_conv_3_3_U0_ap_start;
  wire [11:6]zext_ln392_reg_546;
  wire \zext_ln392_reg_546[11]_i_2_n_0 ;
  wire [7:7]\NLW_SRL_SIG_reg[0][15]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_SRL_SIG_reg[0][15]_i_17_CO_UNCONNECTED ;
  wire [0:0]NLW_add_ln58_2_fu_476_p2__2_carry_O_UNCONNECTED;
  wire [7:7]NLW_add_ln58_2_fu_476_p2__2_carry__0_CO_UNCONNECTED;
  wire NLW_add_ln58_4_reg_646_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_add_ln58_4_reg_646_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_add_ln58_4_reg_646_reg_OVERFLOW_UNCONNECTED;
  wire NLW_add_ln58_4_reg_646_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_add_ln58_4_reg_646_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_add_ln58_4_reg_646_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_add_ln58_4_reg_646_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_add_ln58_4_reg_646_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_add_ln58_4_reg_646_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_add_ln58_4_reg_646_reg_P_UNCONNECTED;
  wire [47:0]NLW_add_ln58_4_reg_646_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_add_ln58_4_reg_646_reg_XOROUT_UNCONNECTED;
  wire NLW_add_ln58_5_reg_676_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_add_ln58_5_reg_676_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_add_ln58_5_reg_676_reg_OVERFLOW_UNCONNECTED;
  wire NLW_add_ln58_5_reg_676_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_add_ln58_5_reg_676_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_add_ln58_5_reg_676_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_add_ln58_5_reg_676_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_add_ln58_5_reg_676_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_add_ln58_5_reg_676_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_add_ln58_5_reg_676_reg_P_UNCONNECTED;
  wire [47:0]NLW_add_ln58_5_reg_676_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_add_ln58_5_reg_676_reg_XOROUT_UNCONNECTED;
  wire [7:7]NLW_add_ln58_fu_465_p2_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_grp_fu_522_p2_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_grp_fu_522_p2_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_grp_fu_530_p2_carry_O_UNCONNECTED;
  wire [7:6]NLW_grp_fu_530_p2_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_grp_fu_530_p2_carry__0_O_UNCONNECTED;
  wire [7:5]NLW_tmp_i231_fu_460_p2_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_tmp_i231_fu_460_p2_carry__0_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_10 
       (.I0(\SRL_SIG[0][15]_i_2_n_0 ),
        .I1(tmp1_i_fu_494_p3[14]),
        .I2(add_ln58_reg_666[14]),
        .I3(\SRL_SIG_reg[0][15]_i_17_n_9 ),
        .O(\SRL_SIG[0][15]_i_10_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_11 
       (.I0(add_ln58_reg_666[13]),
        .I1(tmp1_i_fu_494_p3[13]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_10 ),
        .I3(\SRL_SIG[0][15]_i_3_n_0 ),
        .O(\SRL_SIG[0][15]_i_11_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_12 
       (.I0(add_ln58_reg_666[12]),
        .I1(tmp1_i_fu_494_p3[12]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_11 ),
        .I3(\SRL_SIG[0][15]_i_4_n_0 ),
        .O(\SRL_SIG[0][15]_i_12_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_13 
       (.I0(add_ln58_reg_666[11]),
        .I1(tmp1_i_fu_494_p3[11]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_12 ),
        .I3(\SRL_SIG[0][15]_i_5_n_0 ),
        .O(\SRL_SIG[0][15]_i_13_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_14 
       (.I0(add_ln58_reg_666[10]),
        .I1(tmp1_i_fu_494_p3[10]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_13 ),
        .I3(\SRL_SIG[0][15]_i_6_n_0 ),
        .O(\SRL_SIG[0][15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_15 
       (.I0(add_ln58_reg_666[9]),
        .I1(tmp1_i_fu_494_p3[9]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_14 ),
        .I3(\SRL_SIG[0][15]_i_7_n_0 ),
        .O(\SRL_SIG[0][15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_16 
       (.I0(add_ln58_reg_666[8]),
        .I1(tmp1_i_fu_494_p3[8]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_15 ),
        .I3(\SRL_SIG[0][15]_i_8_n_0 ),
        .O(\SRL_SIG[0][15]_i_16_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_18 
       (.I0(add_ln58_2_reg_671[13]),
        .I1(add_ln58_4_reg_646_reg__0[13]),
        .I2(add_ln58_5_reg_676_reg__0[13]),
        .O(\SRL_SIG[0][15]_i_18_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_19 
       (.I0(add_ln58_2_reg_671[12]),
        .I1(add_ln58_4_reg_646_reg__0[12]),
        .I2(add_ln58_5_reg_676_reg__0[12]),
        .O(\SRL_SIG[0][15]_i_19_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_2 
       (.I0(add_ln58_reg_666[13]),
        .I1(tmp1_i_fu_494_p3[13]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_10 ),
        .O(\SRL_SIG[0][15]_i_2_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_20 
       (.I0(add_ln58_2_reg_671[11]),
        .I1(add_ln58_4_reg_646_reg__0[11]),
        .I2(add_ln58_5_reg_676_reg__0[11]),
        .O(\SRL_SIG[0][15]_i_20_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_21 
       (.I0(add_ln58_2_reg_671[10]),
        .I1(add_ln58_4_reg_646_reg__0[10]),
        .I2(add_ln58_5_reg_676_reg__0[10]),
        .O(\SRL_SIG[0][15]_i_21_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_22 
       (.I0(add_ln58_2_reg_671[9]),
        .I1(add_ln58_4_reg_646_reg__0[9]),
        .I2(add_ln58_5_reg_676_reg__0[9]),
        .O(\SRL_SIG[0][15]_i_22_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_23 
       (.I0(add_ln58_2_reg_671[8]),
        .I1(add_ln58_4_reg_646_reg__0[8]),
        .I2(add_ln58_5_reg_676_reg__0[8]),
        .O(\SRL_SIG[0][15]_i_23_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_24 
       (.I0(add_ln58_2_reg_671[7]),
        .I1(add_ln58_4_reg_646_reg__0[7]),
        .I2(add_ln58_5_reg_676_reg__0[7]),
        .O(\SRL_SIG[0][15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \SRL_SIG[0][15]_i_25 
       (.I0(add_ln58_5_reg_676_reg__0[14]),
        .I1(add_ln58_4_reg_646_reg__0[14]),
        .I2(add_ln58_2_reg_671[14]),
        .I3(add_ln58_4_reg_646_reg__0[15]),
        .I4(add_ln58_2_reg_671[15]),
        .I5(add_ln58_5_reg_676_reg__0[15]),
        .O(\SRL_SIG[0][15]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_26 
       (.I0(\SRL_SIG[0][15]_i_18_n_0 ),
        .I1(add_ln58_4_reg_646_reg__0[14]),
        .I2(add_ln58_2_reg_671[14]),
        .I3(add_ln58_5_reg_676_reg__0[14]),
        .O(\SRL_SIG[0][15]_i_26_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_27 
       (.I0(add_ln58_2_reg_671[13]),
        .I1(add_ln58_4_reg_646_reg__0[13]),
        .I2(add_ln58_5_reg_676_reg__0[13]),
        .I3(\SRL_SIG[0][15]_i_19_n_0 ),
        .O(\SRL_SIG[0][15]_i_27_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_28 
       (.I0(add_ln58_2_reg_671[12]),
        .I1(add_ln58_4_reg_646_reg__0[12]),
        .I2(add_ln58_5_reg_676_reg__0[12]),
        .I3(\SRL_SIG[0][15]_i_20_n_0 ),
        .O(\SRL_SIG[0][15]_i_28_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_29 
       (.I0(add_ln58_2_reg_671[11]),
        .I1(add_ln58_4_reg_646_reg__0[11]),
        .I2(add_ln58_5_reg_676_reg__0[11]),
        .I3(\SRL_SIG[0][15]_i_21_n_0 ),
        .O(\SRL_SIG[0][15]_i_29_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_3 
       (.I0(add_ln58_reg_666[12]),
        .I1(tmp1_i_fu_494_p3[12]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_11 ),
        .O(\SRL_SIG[0][15]_i_3_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_30 
       (.I0(add_ln58_2_reg_671[10]),
        .I1(add_ln58_4_reg_646_reg__0[10]),
        .I2(add_ln58_5_reg_676_reg__0[10]),
        .I3(\SRL_SIG[0][15]_i_22_n_0 ),
        .O(\SRL_SIG[0][15]_i_30_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_31 
       (.I0(add_ln58_2_reg_671[9]),
        .I1(add_ln58_4_reg_646_reg__0[9]),
        .I2(add_ln58_5_reg_676_reg__0[9]),
        .I3(\SRL_SIG[0][15]_i_23_n_0 ),
        .O(\SRL_SIG[0][15]_i_31_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][15]_i_32 
       (.I0(add_ln58_2_reg_671[8]),
        .I1(add_ln58_4_reg_646_reg__0[8]),
        .I2(add_ln58_5_reg_676_reg__0[8]),
        .I3(\SRL_SIG[0][15]_i_24_n_0 ),
        .O(\SRL_SIG[0][15]_i_32_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_4 
       (.I0(add_ln58_reg_666[11]),
        .I1(tmp1_i_fu_494_p3[11]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_12 ),
        .O(\SRL_SIG[0][15]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_5 
       (.I0(add_ln58_reg_666[10]),
        .I1(tmp1_i_fu_494_p3[10]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_13 ),
        .O(\SRL_SIG[0][15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_6 
       (.I0(add_ln58_reg_666[9]),
        .I1(tmp1_i_fu_494_p3[9]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_14 ),
        .O(\SRL_SIG[0][15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_7 
       (.I0(add_ln58_reg_666[8]),
        .I1(tmp1_i_fu_494_p3[8]),
        .I2(\SRL_SIG_reg[0][15]_i_17_n_15 ),
        .O(\SRL_SIG[0][15]_i_7_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][15]_i_8 
       (.I0(add_ln58_reg_666[7]),
        .I1(tmp1_i_fu_494_p3[7]),
        .I2(\SRL_SIG_reg[0][7]_i_4_n_8 ),
        .O(\SRL_SIG[0][15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \SRL_SIG[0][15]_i_9 
       (.I0(\SRL_SIG_reg[0][15]_i_17_n_9 ),
        .I1(tmp1_i_fu_494_p3[14]),
        .I2(add_ln58_reg_666[14]),
        .I3(tmp1_i_fu_494_p3[15]),
        .I4(add_ln58_reg_666[15]),
        .I5(\SRL_SIG_reg[0][15]_i_17_n_8 ),
        .O(\SRL_SIG[0][15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \SRL_SIG[0][7]_i_10 
       (.I0(\SRL_SIG_reg[0][7]_i_4_n_13 ),
        .I1(add_ln58_reg_666[2]),
        .I2(tmp1_i_fu_494_p3[2]),
        .O(\SRL_SIG[0][7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SRL_SIG[0][7]_i_11 
       (.I0(\SRL_SIG_reg[0][7]_i_4_n_14 ),
        .I1(add_ln58_reg_666[1]),
        .O(\SRL_SIG[0][7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SRL_SIG[0][7]_i_12 
       (.I0(\SRL_SIG_reg[0][7]_i_4_n_15 ),
        .I1(add_ln58_reg_666[0]),
        .O(\SRL_SIG[0][7]_i_12_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][7]_i_13 
       (.I0(add_ln58_2_reg_671[6]),
        .I1(add_ln58_4_reg_646_reg__0[6]),
        .I2(add_ln58_5_reg_676_reg__0[6]),
        .O(\SRL_SIG[0][7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][7]_i_14 
       (.I0(add_ln58_2_reg_671[5]),
        .I1(add_ln58_4_reg_646_reg__0[5]),
        .I2(add_ln58_5_reg_676_reg__0[5]),
        .O(\SRL_SIG[0][7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][7]_i_15 
       (.I0(add_ln58_2_reg_671[4]),
        .I1(add_ln58_4_reg_646_reg__0[4]),
        .I2(add_ln58_5_reg_676_reg__0[4]),
        .O(\SRL_SIG[0][7]_i_15_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][7]_i_16 
       (.I0(add_ln58_2_reg_671[3]),
        .I1(add_ln58_4_reg_646_reg__0[3]),
        .I2(add_ln58_5_reg_676_reg__0[3]),
        .O(\SRL_SIG[0][7]_i_16_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][7]_i_17 
       (.I0(add_ln58_2_reg_671[2]),
        .I1(add_ln58_4_reg_646_reg__0[2]),
        .I2(add_ln58_5_reg_676_reg__0[2]),
        .O(\SRL_SIG[0][7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \SRL_SIG[0][7]_i_18 
       (.I0(add_ln58_5_reg_676_reg__0[2]),
        .I1(add_ln58_2_reg_671[2]),
        .I2(add_ln58_4_reg_646_reg__0[2]),
        .O(\SRL_SIG[0][7]_i_18_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_19 
       (.I0(add_ln58_2_reg_671[7]),
        .I1(add_ln58_4_reg_646_reg__0[7]),
        .I2(add_ln58_5_reg_676_reg__0[7]),
        .I3(\SRL_SIG[0][7]_i_13_n_0 ),
        .O(\SRL_SIG[0][7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(add_ln58_reg_666[6]),
        .I1(tmp1_i_fu_494_p3[6]),
        .I2(\SRL_SIG_reg[0][7]_i_4_n_9 ),
        .O(\SRL_SIG[0][7]_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_20 
       (.I0(add_ln58_2_reg_671[6]),
        .I1(add_ln58_4_reg_646_reg__0[6]),
        .I2(add_ln58_5_reg_676_reg__0[6]),
        .I3(\SRL_SIG[0][7]_i_14_n_0 ),
        .O(\SRL_SIG[0][7]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_21 
       (.I0(add_ln58_2_reg_671[5]),
        .I1(add_ln58_4_reg_646_reg__0[5]),
        .I2(add_ln58_5_reg_676_reg__0[5]),
        .I3(\SRL_SIG[0][7]_i_15_n_0 ),
        .O(\SRL_SIG[0][7]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_22 
       (.I0(add_ln58_2_reg_671[4]),
        .I1(add_ln58_4_reg_646_reg__0[4]),
        .I2(add_ln58_5_reg_676_reg__0[4]),
        .I3(\SRL_SIG[0][7]_i_16_n_0 ),
        .O(\SRL_SIG[0][7]_i_22_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_23 
       (.I0(add_ln58_2_reg_671[3]),
        .I1(add_ln58_4_reg_646_reg__0[3]),
        .I2(add_ln58_5_reg_676_reg__0[3]),
        .I3(\SRL_SIG[0][7]_i_17_n_0 ),
        .O(\SRL_SIG[0][7]_i_23_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \SRL_SIG[0][7]_i_24 
       (.I0(add_ln58_2_reg_671[2]),
        .I1(add_ln58_4_reg_646_reg__0[2]),
        .I2(add_ln58_5_reg_676_reg__0[2]),
        .I3(add_ln58_4_reg_646_reg__0[1]),
        .I4(add_ln58_2_reg_671[1]),
        .O(\SRL_SIG[0][7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \SRL_SIG[0][7]_i_25 
       (.I0(add_ln58_2_reg_671[1]),
        .I1(add_ln58_4_reg_646_reg__0[1]),
        .I2(add_ln58_5_reg_676_reg__0[1]),
        .O(\SRL_SIG[0][7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SRL_SIG[0][7]_i_26 
       (.I0(add_ln58_5_reg_676_reg__0[0]),
        .I1(add_ln58_4_reg_646_reg__0[0]),
        .O(\SRL_SIG[0][7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \SRL_SIG[0][7]_i_27 
       (.I0(add_ln58_reg_666[4]),
        .I1(tmp1_i_fu_494_p3[4]),
        .I2(add_ln58_reg_666[2]),
        .I3(tmp1_i_fu_494_p3[2]),
        .I4(tmp1_i_fu_494_p3[3]),
        .I5(add_ln58_reg_666[3]),
        .O(\SRL_SIG[0][7]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \SRL_SIG[0][7]_i_28 
       (.I0(add_ln58_reg_666[3]),
        .I1(tmp1_i_fu_494_p3[3]),
        .I2(tmp1_i_fu_494_p3[2]),
        .I3(add_ln58_reg_666[2]),
        .O(\SRL_SIG[0][7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \SRL_SIG[0][7]_i_3 
       (.I0(\SRL_SIG_reg[0][7]_i_4_n_9 ),
        .I1(add_ln58_reg_666[6]),
        .I2(tmp1_i_fu_494_p3[6]),
        .O(\SRL_SIG[0][7]_i_3_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_5 
       (.I0(add_ln58_reg_666[7]),
        .I1(tmp1_i_fu_494_p3[7]),
        .I2(\SRL_SIG_reg[0][7]_i_4_n_8 ),
        .I3(\SRL_SIG[0][7]_i_2_n_0 ),
        .O(\SRL_SIG[0][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \SRL_SIG[0][7]_i_6 
       (.I0(tmp1_i_fu_494_p3[6]),
        .I1(add_ln58_reg_666[6]),
        .I2(\SRL_SIG_reg[0][7]_i_4_n_9 ),
        .I3(\SRL_SIG[0][7]_i_27_n_0 ),
        .I4(tmp1_i_fu_494_p3[5]),
        .I5(add_ln58_reg_666[5]),
        .O(\SRL_SIG[0][7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_7 
       (.I0(\SRL_SIG_reg[0][7]_i_4_n_10 ),
        .I1(tmp1_i_fu_494_p3[5]),
        .I2(add_ln58_reg_666[5]),
        .I3(\SRL_SIG[0][7]_i_27_n_0 ),
        .O(\SRL_SIG[0][7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \SRL_SIG[0][7]_i_8 
       (.I0(\SRL_SIG_reg[0][7]_i_4_n_11 ),
        .I1(tmp1_i_fu_494_p3[4]),
        .I2(add_ln58_reg_666[4]),
        .I3(\SRL_SIG[0][7]_i_28_n_0 ),
        .O(\SRL_SIG[0][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \SRL_SIG[0][7]_i_9 
       (.I0(\SRL_SIG_reg[0][7]_i_4_n_12 ),
        .I1(tmp1_i_fu_494_p3[3]),
        .I2(add_ln58_reg_666[3]),
        .I3(add_ln58_reg_666[2]),
        .I4(tmp1_i_fu_494_p3[2]),
        .O(\SRL_SIG[0][7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \SRL_SIG_reg[0][15]_i_1 
       (.CI(\SRL_SIG_reg[0][7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_SRL_SIG_reg[0][15]_i_1_CO_UNCONNECTED [7],\SRL_SIG_reg[0][15]_i_1_n_1 ,\SRL_SIG_reg[0][15]_i_1_n_2 ,\SRL_SIG_reg[0][15]_i_1_n_3 ,\SRL_SIG_reg[0][15]_i_1_n_4 ,\SRL_SIG_reg[0][15]_i_1_n_5 ,\SRL_SIG_reg[0][15]_i_1_n_6 ,\SRL_SIG_reg[0][15]_i_1_n_7 }),
        .DI({1'b0,\SRL_SIG[0][15]_i_2_n_0 ,\SRL_SIG[0][15]_i_3_n_0 ,\SRL_SIG[0][15]_i_4_n_0 ,\SRL_SIG[0][15]_i_5_n_0 ,\SRL_SIG[0][15]_i_6_n_0 ,\SRL_SIG[0][15]_i_7_n_0 ,\SRL_SIG[0][15]_i_8_n_0 }),
        .O(data[15:8]),
        .S({\SRL_SIG[0][15]_i_9_n_0 ,\SRL_SIG[0][15]_i_10_n_0 ,\SRL_SIG[0][15]_i_11_n_0 ,\SRL_SIG[0][15]_i_12_n_0 ,\SRL_SIG[0][15]_i_13_n_0 ,\SRL_SIG[0][15]_i_14_n_0 ,\SRL_SIG[0][15]_i_15_n_0 ,\SRL_SIG[0][15]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \SRL_SIG_reg[0][15]_i_17 
       (.CI(\SRL_SIG_reg[0][7]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_SRL_SIG_reg[0][15]_i_17_CO_UNCONNECTED [7],\SRL_SIG_reg[0][15]_i_17_n_1 ,\SRL_SIG_reg[0][15]_i_17_n_2 ,\SRL_SIG_reg[0][15]_i_17_n_3 ,\SRL_SIG_reg[0][15]_i_17_n_4 ,\SRL_SIG_reg[0][15]_i_17_n_5 ,\SRL_SIG_reg[0][15]_i_17_n_6 ,\SRL_SIG_reg[0][15]_i_17_n_7 }),
        .DI({1'b0,\SRL_SIG[0][15]_i_18_n_0 ,\SRL_SIG[0][15]_i_19_n_0 ,\SRL_SIG[0][15]_i_20_n_0 ,\SRL_SIG[0][15]_i_21_n_0 ,\SRL_SIG[0][15]_i_22_n_0 ,\SRL_SIG[0][15]_i_23_n_0 ,\SRL_SIG[0][15]_i_24_n_0 }),
        .O({\SRL_SIG_reg[0][15]_i_17_n_8 ,\SRL_SIG_reg[0][15]_i_17_n_9 ,\SRL_SIG_reg[0][15]_i_17_n_10 ,\SRL_SIG_reg[0][15]_i_17_n_11 ,\SRL_SIG_reg[0][15]_i_17_n_12 ,\SRL_SIG_reg[0][15]_i_17_n_13 ,\SRL_SIG_reg[0][15]_i_17_n_14 ,\SRL_SIG_reg[0][15]_i_17_n_15 }),
        .S({\SRL_SIG[0][15]_i_25_n_0 ,\SRL_SIG[0][15]_i_26_n_0 ,\SRL_SIG[0][15]_i_27_n_0 ,\SRL_SIG[0][15]_i_28_n_0 ,\SRL_SIG[0][15]_i_29_n_0 ,\SRL_SIG[0][15]_i_30_n_0 ,\SRL_SIG[0][15]_i_31_n_0 ,\SRL_SIG[0][15]_i_32_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \SRL_SIG_reg[0][7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\SRL_SIG_reg[0][7]_i_1_n_0 ,\SRL_SIG_reg[0][7]_i_1_n_1 ,\SRL_SIG_reg[0][7]_i_1_n_2 ,\SRL_SIG_reg[0][7]_i_1_n_3 ,\SRL_SIG_reg[0][7]_i_1_n_4 ,\SRL_SIG_reg[0][7]_i_1_n_5 ,\SRL_SIG_reg[0][7]_i_1_n_6 ,\SRL_SIG_reg[0][7]_i_1_n_7 }),
        .DI({\SRL_SIG[0][7]_i_2_n_0 ,\SRL_SIG[0][7]_i_3_n_0 ,\SRL_SIG_reg[0][7]_i_4_n_10 ,\SRL_SIG_reg[0][7]_i_4_n_11 ,\SRL_SIG_reg[0][7]_i_4_n_12 ,\SRL_SIG_reg[0][7]_i_4_n_13 ,\SRL_SIG_reg[0][7]_i_4_n_14 ,\SRL_SIG_reg[0][7]_i_4_n_15 }),
        .O(data[7:0]),
        .S({\SRL_SIG[0][7]_i_5_n_0 ,\SRL_SIG[0][7]_i_6_n_0 ,\SRL_SIG[0][7]_i_7_n_0 ,\SRL_SIG[0][7]_i_8_n_0 ,\SRL_SIG[0][7]_i_9_n_0 ,\SRL_SIG[0][7]_i_10_n_0 ,\SRL_SIG[0][7]_i_11_n_0 ,\SRL_SIG[0][7]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \SRL_SIG_reg[0][7]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\SRL_SIG_reg[0][7]_i_4_n_0 ,\SRL_SIG_reg[0][7]_i_4_n_1 ,\SRL_SIG_reg[0][7]_i_4_n_2 ,\SRL_SIG_reg[0][7]_i_4_n_3 ,\SRL_SIG_reg[0][7]_i_4_n_4 ,\SRL_SIG_reg[0][7]_i_4_n_5 ,\SRL_SIG_reg[0][7]_i_4_n_6 ,\SRL_SIG_reg[0][7]_i_4_n_7 }),
        .DI({\SRL_SIG[0][7]_i_13_n_0 ,\SRL_SIG[0][7]_i_14_n_0 ,\SRL_SIG[0][7]_i_15_n_0 ,\SRL_SIG[0][7]_i_16_n_0 ,\SRL_SIG[0][7]_i_17_n_0 ,\SRL_SIG[0][7]_i_18_n_0 ,add_ln58_5_reg_676_reg__0[1:0]}),
        .O({\SRL_SIG_reg[0][7]_i_4_n_8 ,\SRL_SIG_reg[0][7]_i_4_n_9 ,\SRL_SIG_reg[0][7]_i_4_n_10 ,\SRL_SIG_reg[0][7]_i_4_n_11 ,\SRL_SIG_reg[0][7]_i_4_n_12 ,\SRL_SIG_reg[0][7]_i_4_n_13 ,\SRL_SIG_reg[0][7]_i_4_n_14 ,\SRL_SIG_reg[0][7]_i_4_n_15 }),
        .S({\SRL_SIG[0][7]_i_19_n_0 ,\SRL_SIG[0][7]_i_20_n_0 ,\SRL_SIG[0][7]_i_21_n_0 ,\SRL_SIG[0][7]_i_22_n_0 ,\SRL_SIG[0][7]_i_23_n_0 ,\SRL_SIG[0][7]_i_24_n_0 ,\SRL_SIG[0][7]_i_25_n_0 ,\SRL_SIG[0][7]_i_26_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln142_reg_570[1]_i_1 
       (.I0(data4[7]),
        .O(add_ln142_fu_283_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln142_reg_570[2]_i_1 
       (.I0(data4[7]),
        .I1(data4[8]),
        .O(add_ln142_fu_283_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \add_ln142_reg_570[3]_i_1 
       (.I0(data4[9]),
        .I1(data4[7]),
        .I2(data4[8]),
        .O(add_ln142_fu_283_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \add_ln142_reg_570[4]_i_1 
       (.I0(data4[10]),
        .I1(data4[9]),
        .I2(data4[7]),
        .I3(data4[8]),
        .O(\add_ln142_reg_570[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \add_ln142_reg_570[5]_i_1 
       (.I0(data4[11]),
        .I1(data4[8]),
        .I2(data4[7]),
        .I3(data4[9]),
        .I4(data4[10]),
        .O(add_ln142_fu_283_p2[5]));
  FDRE \add_ln142_reg_570_reg[0] 
       (.C(ap_clk),
        .CE(hw_output_s0_x_v32_a_reg_2090),
        .D(data4[6]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \add_ln142_reg_570_reg[1] 
       (.C(ap_clk),
        .CE(hw_output_s0_x_v32_a_reg_2090),
        .D(add_ln142_fu_283_p2[1]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \add_ln142_reg_570_reg[2] 
       (.C(ap_clk),
        .CE(hw_output_s0_x_v32_a_reg_2090),
        .D(add_ln142_fu_283_p2[2]),
        .Q(data0[8]),
        .R(1'b0));
  FDRE \add_ln142_reg_570_reg[3] 
       (.C(ap_clk),
        .CE(hw_output_s0_x_v32_a_reg_2090),
        .D(add_ln142_fu_283_p2[3]),
        .Q(data0[9]),
        .R(1'b0));
  FDRE \add_ln142_reg_570_reg[4] 
       (.C(ap_clk),
        .CE(hw_output_s0_x_v32_a_reg_2090),
        .D(\add_ln142_reg_570[4]_i_1_n_0 ),
        .Q(data0[10]),
        .R(1'b0));
  FDRE \add_ln142_reg_570_reg[5] 
       (.C(ap_clk),
        .CE(hw_output_s0_x_v32_a_reg_2090),
        .D(add_ln142_fu_283_p2[5]),
        .Q(data0[11]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \add_ln187_reg_604[1]_i_1 
       (.I0(data4[1]),
        .O(add_ln187_fu_326_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln187_reg_604[2]_i_1 
       (.I0(data4[2]),
        .I1(data4[1]),
        .O(add_ln187_fu_326_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \add_ln187_reg_604[3]_i_1 
       (.I0(data4[1]),
        .I1(data4[2]),
        .I2(data4[3]),
        .O(add_ln187_fu_326_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \add_ln187_reg_604[4]_i_1 
       (.I0(data4[2]),
        .I1(data4[1]),
        .I2(data4[3]),
        .I3(data4[4]),
        .O(add_ln187_fu_326_p2[4]));
  FDRE \add_ln187_reg_604_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(data4[0]),
        .Q(add_ln187_reg_604[0]),
        .R(1'b0));
  FDRE \add_ln187_reg_604_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(add_ln187_fu_326_p2[1]),
        .Q(add_ln187_reg_604[1]),
        .R(1'b0));
  FDRE \add_ln187_reg_604_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(add_ln187_fu_326_p2[2]),
        .Q(add_ln187_reg_604[2]),
        .R(1'b0));
  FDRE \add_ln187_reg_604_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(add_ln187_fu_326_p2[3]),
        .Q(add_ln187_reg_604[3]),
        .R(1'b0));
  FDRE \add_ln187_reg_604_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(add_ln187_fu_326_p2[4]),
        .Q(add_ln187_reg_604[4]),
        .R(1'b0));
  FDRE \add_ln187_reg_604_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(add_ln187_fu_326_p2[5]),
        .Q(add_ln187_reg_604[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln58_2_fu_476_p2__2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln58_2_fu_476_p2__2_carry_n_0,add_ln58_2_fu_476_p2__2_carry_n_1,add_ln58_2_fu_476_p2__2_carry_n_2,add_ln58_2_fu_476_p2__2_carry_n_3,add_ln58_2_fu_476_p2__2_carry_n_4,add_ln58_2_fu_476_p2__2_carry_n_5,add_ln58_2_fu_476_p2__2_carry_n_6,add_ln58_2_fu_476_p2__2_carry_n_7}),
        .DI({hw_input_global_wrap_U_n_89,hw_input_global_wrap_U_n_90,hw_input_global_wrap_U_n_91,hw_input_global_wrap_U_n_92,hw_input_global_wrap_q0[1:0],add_ln58_2_fu_476_p2__2_carry_i_5_n_0,1'b0}),
        .O({add_ln58_2_fu_476_p2[7:1],NLW_add_ln58_2_fu_476_p2__2_carry_O_UNCONNECTED[0]}),
        .S({hw_input_global_wrap_U_n_4,hw_input_global_wrap_U_n_5,hw_input_global_wrap_U_n_6,hw_input_global_wrap_U_n_7,hw_input_global_wrap_U_n_8,hw_input_global_wrap_U_n_9,shl_ln38_fu_434_p2[3],1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln58_2_fu_476_p2__2_carry__0
       (.CI(add_ln58_2_fu_476_p2__2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln58_2_fu_476_p2__2_carry__0_CO_UNCONNECTED[7],add_ln58_2_fu_476_p2__2_carry__0_n_1,add_ln58_2_fu_476_p2__2_carry__0_n_2,add_ln58_2_fu_476_p2__2_carry__0_n_3,add_ln58_2_fu_476_p2__2_carry__0_n_4,add_ln58_2_fu_476_p2__2_carry__0_n_5,add_ln58_2_fu_476_p2__2_carry__0_n_6,add_ln58_2_fu_476_p2__2_carry__0_n_7}),
        .DI({1'b0,hw_input_global_wrap_U_n_93,hw_input_global_wrap_U_n_94,hw_input_global_wrap_U_n_95,hw_input_global_wrap_U_n_96,hw_input_global_wrap_U_n_97,hw_input_global_wrap_U_n_98,hw_input_global_wrap_U_n_99}),
        .O(add_ln58_2_fu_476_p2[15:8]),
        .S({hw_input_global_wrap_U_n_100,hw_input_global_wrap_U_n_101,hw_input_global_wrap_U_n_102,hw_input_global_wrap_U_n_103,hw_input_global_wrap_U_n_104,hw_input_global_wrap_U_n_105,hw_input_global_wrap_U_n_106,hw_input_global_wrap_U_n_107}));
  LUT1 #(
    .INIT(2'h1)) 
    add_ln58_2_fu_476_p2__2_carry_i_5
       (.I0(shl_ln38_fu_434_p2[3]),
        .O(add_ln58_2_fu_476_p2__2_carry_i_5_n_0));
  FDRE \add_ln58_2_reg_671_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[10]),
        .Q(add_ln58_2_reg_671[10]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[11]),
        .Q(add_ln58_2_reg_671[11]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[12]),
        .Q(add_ln58_2_reg_671[12]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[13]),
        .Q(add_ln58_2_reg_671[13]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[14]),
        .Q(add_ln58_2_reg_671[14]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[15]),
        .Q(add_ln58_2_reg_671[15]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[1]),
        .Q(add_ln58_2_reg_671[1]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[2]),
        .Q(add_ln58_2_reg_671[2]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[3]),
        .Q(add_ln58_2_reg_671[3]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[4]),
        .Q(add_ln58_2_reg_671[4]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[5]),
        .Q(add_ln58_2_reg_671[5]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[6]),
        .Q(add_ln58_2_reg_671[6]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[7]),
        .Q(add_ln58_2_reg_671[7]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[8]),
        .Q(add_ln58_2_reg_671[8]),
        .R(1'b0));
  FDRE \add_ln58_2_reg_671_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_2_fu_476_p2[9]),
        .Q(add_ln58_2_reg_671[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    add_ln58_4_reg_646_reg
       (.A({hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_add_ln58_4_reg_646_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_add_ln58_4_reg_646_reg_BCOUT_UNCONNECTED[17:0]),
        .C({grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_10,grp_fu_522_p2_carry__0_n_11,grp_fu_522_p2_carry__0_n_12,grp_fu_522_p2_carry__0_n_13,grp_fu_522_p2_carry__0_n_14,grp_fu_522_p2_carry__0_n_15,grp_fu_522_p2_carry_n_8,grp_fu_522_p2_carry_n_9,grp_fu_522_p2_carry_n_10,grp_fu_522_p2_carry_n_11,grp_fu_522_p2_carry_n_12,grp_fu_522_p2_carry_n_13,grp_fu_522_p2_carry_n_14,grp_fu_522_p2_carry_n_15,hw_input_global_wrap_q1[0]}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_add_ln58_4_reg_646_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_add_ln58_4_reg_646_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state8),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_add_ln58_4_reg_646_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_add_ln58_4_reg_646_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_add_ln58_4_reg_646_reg_P_UNCONNECTED[47:16],add_ln58_4_reg_646_reg__0}),
        .PATTERNBDETECT(NLW_add_ln58_4_reg_646_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_add_ln58_4_reg_646_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_add_ln58_4_reg_646_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_add_ln58_4_reg_646_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_add_ln58_4_reg_646_reg_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    add_ln58_5_reg_676_reg
       (.A({hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0[15],hw_input_global_wrap_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_add_ln58_5_reg_676_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_add_ln58_5_reg_676_reg_BCOUT_UNCONNECTED[17:0]),
        .C({C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C[15],C,hw_input_global_wrap_U_n_26,hw_input_global_wrap_q1[0]}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_add_ln58_5_reg_676_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_add_ln58_5_reg_676_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state10),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_add_ln58_5_reg_676_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_add_ln58_5_reg_676_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_add_ln58_5_reg_676_reg_P_UNCONNECTED[47:16],add_ln58_5_reg_676_reg__0}),
        .PATTERNBDETECT(NLW_add_ln58_5_reg_676_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_add_ln58_5_reg_676_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_add_ln58_5_reg_676_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_add_ln58_5_reg_676_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_add_ln58_5_reg_676_reg_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln58_fu_465_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln58_fu_465_p2_carry_n_0,add_ln58_fu_465_p2_carry_n_1,add_ln58_fu_465_p2_carry_n_2,add_ln58_fu_465_p2_carry_n_3,add_ln58_fu_465_p2_carry_n_4,add_ln58_fu_465_p2_carry_n_5,add_ln58_fu_465_p2_carry_n_6,add_ln58_fu_465_p2_carry_n_7}),
        .DI(hw_input_global_wrap_q0[7:0]),
        .O(add_ln58_fu_465_p2[7:0]),
        .S({hw_input_global_wrap_U_n_108,hw_input_global_wrap_U_n_109,hw_input_global_wrap_U_n_110,hw_input_global_wrap_U_n_111,hw_input_global_wrap_U_n_112,hw_input_global_wrap_U_n_113,hw_input_global_wrap_U_n_114,hw_input_global_wrap_U_n_115}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln58_fu_465_p2_carry__0
       (.CI(add_ln58_fu_465_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln58_fu_465_p2_carry__0_CO_UNCONNECTED[7],add_ln58_fu_465_p2_carry__0_n_1,add_ln58_fu_465_p2_carry__0_n_2,add_ln58_fu_465_p2_carry__0_n_3,add_ln58_fu_465_p2_carry__0_n_4,add_ln58_fu_465_p2_carry__0_n_5,add_ln58_fu_465_p2_carry__0_n_6,add_ln58_fu_465_p2_carry__0_n_7}),
        .DI({1'b0,hw_input_global_wrap_q0[14:8]}),
        .O(add_ln58_fu_465_p2[15:8]),
        .S({hw_input_global_wrap_U_n_81,hw_input_global_wrap_U_n_82,hw_input_global_wrap_U_n_83,hw_input_global_wrap_U_n_84,hw_input_global_wrap_U_n_85,hw_input_global_wrap_U_n_86,hw_input_global_wrap_U_n_87,hw_input_global_wrap_U_n_88}));
  FDRE \add_ln58_reg_666_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[0]),
        .Q(add_ln58_reg_666[0]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[10]),
        .Q(add_ln58_reg_666[10]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[11]),
        .Q(add_ln58_reg_666[11]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[12]),
        .Q(add_ln58_reg_666[12]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[13]),
        .Q(add_ln58_reg_666[13]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[14]),
        .Q(add_ln58_reg_666[14]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[15]),
        .Q(add_ln58_reg_666[15]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[1]),
        .Q(add_ln58_reg_666[1]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[2]),
        .Q(add_ln58_reg_666[2]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[3]),
        .Q(add_ln58_reg_666[3]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[4]),
        .Q(add_ln58_reg_666[4]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[5]),
        .Q(add_ln58_reg_666[5]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[6]),
        .Q(add_ln58_reg_666[6]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[7]),
        .Q(add_ln58_reg_666[7]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[8]),
        .Q(add_ln58_reg_666[8]),
        .R(1'b0));
  FDRE \add_ln58_reg_666_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(add_ln58_fu_465_p2[9]),
        .Q(add_ln58_reg_666[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAABFFFFFAAAAAAAA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg[3]_0 ),
        .I1(start_for_read_1_U0_full_n),
        .I2(start_for_read_U0_full_n),
        .I3(start_once_reg_reg_0),
        .I4(unoptimized_conv_3_3_U0_ap_start),
        .I5(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(data4[6]),
        .I2(data4[11]),
        .I3(data4[10]),
        .I4(\hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0 ),
        .O(\ap_CS_fsm_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(arg_out_data_values_s_full_n),
        .I2(arg_out_tlast_values_full_n),
        .I3(Q),
        .O(ap_NS_fsm[10]));
  LUT6 #(
    .INIT(64'hFFEAAAAAAAAAAAAA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(hw_input_global_wrap_U_n_0),
        .I1(start_for_read_1_U0_full_n),
        .I2(start_for_read_U0_full_n),
        .I3(start_once_reg_reg_0),
        .I4(unoptimized_conv_3_3_U0_ap_start),
        .I5(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hAAAAAA8AFFFFFFFF)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\zext_ln392_reg_546[11]_i_2_n_0 ),
        .I2(tmp_2_fu_233_p3[12]),
        .I3(tmp_2_fu_233_p3[10]),
        .I4(tmp_2_fu_233_p3[8]),
        .I5(\ap_CS_fsm[2]_i_2_n_0 ),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(hw_input_global_wrap_U_n_2),
        .I1(hw_input_global_wrap_2_reg_186_reg[4]),
        .I2(hw_input_global_wrap_2_reg_186_reg[6]),
        .I3(hw_input_global_wrap_2_reg_186_reg[5]),
        .I4(ap_CS_fsm_state3),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\zext_ln392_reg_546[11]_i_2_n_0 ),
        .I2(tmp_2_fu_233_p3[12]),
        .I3(tmp_2_fu_233_p3[10]),
        .I4(tmp_2_fu_233_p3[8]),
        .I5(ap_NS_fsm1),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(hw_output_s0_x_v32_a_reg_2090),
        .I1(arg_out_data_values_s_full_n),
        .I2(arg_out_tlast_values_full_n),
        .I3(Q),
        .O(ap_NS_fsm[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(ap_NS_fsm1),
        .O(ap_NS_fsm[5]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(Q),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state6),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state7),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state8),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state9),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \c3_1_reg_562[0]_i_1 
       (.I0(data4[6]),
        .O(c3_1_fu_277_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c3_1_reg_562[1]_i_1 
       (.I0(data4[6]),
        .I1(data4[7]),
        .O(c3_1_fu_277_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \c3_1_reg_562[2]_i_1 
       (.I0(data4[8]),
        .I1(data4[7]),
        .I2(data4[6]),
        .O(c3_1_fu_277_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \c3_1_reg_562[3]_i_1 
       (.I0(data4[9]),
        .I1(data4[7]),
        .I2(data4[8]),
        .I3(data4[6]),
        .O(c3_1_fu_277_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \c3_1_reg_562[4]_i_1 
       (.I0(data4[10]),
        .I1(data4[8]),
        .I2(data4[7]),
        .I3(data4[9]),
        .I4(data4[6]),
        .O(c3_1_fu_277_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \c3_1_reg_562[5]_i_1 
       (.I0(data4[11]),
        .I1(data4[10]),
        .I2(data4[6]),
        .I3(data4[9]),
        .I4(data4[7]),
        .I5(data4[8]),
        .O(c3_1_fu_277_p2[5]));
  FDRE \c3_1_reg_562_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(c3_1_fu_277_p2[0]),
        .Q(c3_1_reg_562[0]),
        .R(1'b0));
  FDRE \c3_1_reg_562_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(c3_1_fu_277_p2[1]),
        .Q(c3_1_reg_562[1]),
        .R(1'b0));
  FDRE \c3_1_reg_562_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(c3_1_fu_277_p2[2]),
        .Q(c3_1_reg_562[2]),
        .R(1'b0));
  FDRE \c3_1_reg_562_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(c3_1_fu_277_p2[3]),
        .Q(c3_1_reg_562[3]),
        .R(1'b0));
  FDRE \c3_1_reg_562_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(c3_1_fu_277_p2[4]),
        .Q(c3_1_reg_562[4]),
        .R(1'b0));
  FDRE \c3_1_reg_562_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(c3_1_fu_277_p2[5]),
        .Q(c3_1_reg_562[5]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \c3_reg_541[0]_i_1 
       (.I0(tmp_2_fu_233_p3[6]),
        .O(c3_fu_227_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c3_reg_541[1]_i_1 
       (.I0(tmp_2_fu_233_p3[6]),
        .I1(tmp_2_fu_233_p3[7]),
        .O(c3_fu_227_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \c3_reg_541[2]_i_1 
       (.I0(tmp_2_fu_233_p3[8]),
        .I1(tmp_2_fu_233_p3[6]),
        .I2(tmp_2_fu_233_p3[7]),
        .O(c3_fu_227_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \c3_reg_541[3]_i_1 
       (.I0(tmp_2_fu_233_p3[7]),
        .I1(tmp_2_fu_233_p3[6]),
        .I2(tmp_2_fu_233_p3[8]),
        .I3(tmp_2_fu_233_p3[9]),
        .O(c3_fu_227_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \c3_reg_541[4]_i_1 
       (.I0(tmp_2_fu_233_p3[10]),
        .I1(tmp_2_fu_233_p3[7]),
        .I2(tmp_2_fu_233_p3[6]),
        .I3(tmp_2_fu_233_p3[8]),
        .I4(tmp_2_fu_233_p3[9]),
        .O(c3_fu_227_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \c3_reg_541[5]_i_1 
       (.I0(tmp_2_fu_233_p3[11]),
        .I1(tmp_2_fu_233_p3[9]),
        .I2(tmp_2_fu_233_p3[8]),
        .I3(tmp_2_fu_233_p3[6]),
        .I4(tmp_2_fu_233_p3[7]),
        .I5(tmp_2_fu_233_p3[10]),
        .O(c3_fu_227_p2[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \c3_reg_541[6]_i_1 
       (.I0(tmp_2_fu_233_p3[12]),
        .I1(tmp_2_fu_233_p3[10]),
        .I2(\c3_reg_541[6]_i_2_n_0 ),
        .I3(tmp_2_fu_233_p3[11]),
        .O(c3_fu_227_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \c3_reg_541[6]_i_2 
       (.I0(tmp_2_fu_233_p3[9]),
        .I1(tmp_2_fu_233_p3[8]),
        .I2(tmp_2_fu_233_p3[6]),
        .I3(tmp_2_fu_233_p3[7]),
        .O(\c3_reg_541[6]_i_2_n_0 ));
  FDRE \c3_reg_541_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(c3_fu_227_p2[0]),
        .Q(c3_reg_541[0]),
        .R(1'b0));
  FDRE \c3_reg_541_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(c3_fu_227_p2[1]),
        .Q(c3_reg_541[1]),
        .R(1'b0));
  FDRE \c3_reg_541_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(c3_fu_227_p2[2]),
        .Q(c3_reg_541[2]),
        .R(1'b0));
  FDRE \c3_reg_541_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(c3_fu_227_p2[3]),
        .Q(c3_reg_541[3]),
        .R(1'b0));
  FDRE \c3_reg_541_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(c3_fu_227_p2[4]),
        .Q(c3_reg_541[4]),
        .R(1'b0));
  FDRE \c3_reg_541_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(c3_fu_227_p2[5]),
        .Q(c3_reg_541[5]),
        .R(1'b0));
  FDRE \c3_reg_541_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(c3_fu_227_p2[6]),
        .Q(c3_reg_541[6]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \c5_1_reg_580[0]_i_1 
       (.I0(data4[0]),
        .O(c5_1_fu_295_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c5_1_reg_580[1]_i_1 
       (.I0(data4[0]),
        .I1(data4[1]),
        .O(c5_1_fu_295_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \c5_1_reg_580[2]_i_1 
       (.I0(data4[2]),
        .I1(data4[1]),
        .I2(data4[0]),
        .O(c5_1_fu_295_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \c5_1_reg_580[3]_i_1 
       (.I0(data4[3]),
        .I1(data4[0]),
        .I2(data4[1]),
        .I3(data4[2]),
        .O(c5_1_fu_295_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \c5_1_reg_580[4]_i_1 
       (.I0(data4[4]),
        .I1(data4[3]),
        .I2(data4[2]),
        .I3(data4[1]),
        .I4(data4[0]),
        .O(c5_1_fu_295_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \c5_1_reg_580[5]_i_1 
       (.I0(data4[5]),
        .I1(data4[4]),
        .I2(data4[0]),
        .I3(data4[1]),
        .I4(data4[2]),
        .I5(data4[3]),
        .O(c5_1_fu_295_p2[5]));
  FDRE \c5_1_reg_580_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(c5_1_fu_295_p2[0]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \c5_1_reg_580_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(c5_1_fu_295_p2[1]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \c5_1_reg_580_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(c5_1_fu_295_p2[2]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \c5_1_reg_580_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(c5_1_fu_295_p2[3]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \c5_1_reg_580_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(c5_1_fu_295_p2[4]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \c5_1_reg_580_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(c5_1_fu_295_p2[5]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[0]),
        .Q(empty_11_reg_631[0]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[10]),
        .Q(empty_11_reg_631[10]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[11]),
        .Q(empty_11_reg_631[11]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[12]),
        .Q(empty_11_reg_631[12]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[13]),
        .Q(empty_11_reg_631[13]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[1]),
        .Q(empty_11_reg_631[1]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[2]),
        .Q(empty_11_reg_631[2]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[3]),
        .Q(empty_11_reg_631[3]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[4]),
        .Q(empty_11_reg_631[4]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[5]),
        .Q(empty_11_reg_631[5]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[6]),
        .Q(empty_11_reg_631[6]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[7]),
        .Q(empty_11_reg_631[7]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[8]),
        .Q(empty_11_reg_631[8]),
        .R(1'b0));
  FDRE \empty_11_reg_631_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q0[9]),
        .Q(empty_11_reg_631[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 grp_fu_522_p2_carry
       (.CI(grp_fu_522_p2_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({grp_fu_522_p2_carry_n_0,grp_fu_522_p2_carry_n_1,grp_fu_522_p2_carry_n_2,grp_fu_522_p2_carry_n_3,grp_fu_522_p2_carry_n_4,grp_fu_522_p2_carry_n_5,grp_fu_522_p2_carry_n_6,grp_fu_522_p2_carry_n_7}),
        .DI({hw_input_global_wrap_q1[5:0],1'b0,1'b0}),
        .O({grp_fu_522_p2_carry_n_8,grp_fu_522_p2_carry_n_9,grp_fu_522_p2_carry_n_10,grp_fu_522_p2_carry_n_11,grp_fu_522_p2_carry_n_12,grp_fu_522_p2_carry_n_13,grp_fu_522_p2_carry_n_14,grp_fu_522_p2_carry_n_15}),
        .S({hw_input_global_wrap_U_n_42,hw_input_global_wrap_U_n_43,hw_input_global_wrap_U_n_44,hw_input_global_wrap_U_n_45,hw_input_global_wrap_U_n_46,hw_input_global_wrap_U_n_47,grp_fu_522_p2_carry_i_8_n_0,grp_fu_522_p2_carry_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 grp_fu_522_p2_carry__0
       (.CI(grp_fu_522_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_grp_fu_522_p2_carry__0_CO_UNCONNECTED[7:6],grp_fu_522_p2_carry__0_n_2,grp_fu_522_p2_carry__0_n_3,grp_fu_522_p2_carry__0_n_4,grp_fu_522_p2_carry__0_n_5,grp_fu_522_p2_carry__0_n_6,grp_fu_522_p2_carry__0_n_7}),
        .DI({1'b0,1'b0,hw_input_global_wrap_q1[11:6]}),
        .O({NLW_grp_fu_522_p2_carry__0_O_UNCONNECTED[7],grp_fu_522_p2_carry__0_n_9,grp_fu_522_p2_carry__0_n_10,grp_fu_522_p2_carry__0_n_11,grp_fu_522_p2_carry__0_n_12,grp_fu_522_p2_carry__0_n_13,grp_fu_522_p2_carry__0_n_14,grp_fu_522_p2_carry__0_n_15}),
        .S({1'b0,hw_input_global_wrap_U_n_60,hw_input_global_wrap_U_n_61,hw_input_global_wrap_U_n_62,hw_input_global_wrap_U_n_63,hw_input_global_wrap_U_n_64,hw_input_global_wrap_U_n_65,hw_input_global_wrap_U_n_66}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_522_p2_carry_i_1
       (.I0(hw_input_global_wrap_q1[0]),
        .O(grp_fu_522_p2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_522_p2_carry_i_8
       (.I0(hw_input_global_wrap_q1[2]),
        .O(grp_fu_522_p2_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_522_p2_carry_i_9
       (.I0(hw_input_global_wrap_q1[1]),
        .O(grp_fu_522_p2_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 grp_fu_530_p2_carry
       (.CI(grp_fu_522_p2_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({grp_fu_530_p2_carry_n_0,grp_fu_530_p2_carry_n_1,grp_fu_530_p2_carry_n_2,grp_fu_530_p2_carry_n_3,grp_fu_530_p2_carry_n_4,grp_fu_530_p2_carry_n_5,grp_fu_530_p2_carry_n_6,grp_fu_530_p2_carry_n_7}),
        .DI({hw_input_global_wrap_q1[4:0],1'b0,1'b0,1'b0}),
        .O({C[8:2],NLW_grp_fu_530_p2_carry_O_UNCONNECTED[0]}),
        .S({hw_input_global_wrap_U_n_48,hw_input_global_wrap_U_n_49,hw_input_global_wrap_U_n_50,hw_input_global_wrap_U_n_51,hw_input_global_wrap_U_n_52,grp_fu_530_p2_carry_i_6_n_0,grp_fu_530_p2_carry_i_7_n_0,grp_fu_530_p2_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 grp_fu_530_p2_carry__0
       (.CI(grp_fu_530_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_grp_fu_530_p2_carry__0_CO_UNCONNECTED[7:6],grp_fu_530_p2_carry__0_n_2,grp_fu_530_p2_carry__0_n_3,grp_fu_530_p2_carry__0_n_4,grp_fu_530_p2_carry__0_n_5,grp_fu_530_p2_carry__0_n_6,grp_fu_530_p2_carry__0_n_7}),
        .DI({1'b0,1'b0,hw_input_global_wrap_q1[10:5]}),
        .O({NLW_grp_fu_530_p2_carry__0_O_UNCONNECTED[7],C[15:9]}),
        .S({1'b0,hw_input_global_wrap_U_n_53,hw_input_global_wrap_U_n_54,hw_input_global_wrap_U_n_55,hw_input_global_wrap_U_n_56,hw_input_global_wrap_U_n_57,hw_input_global_wrap_U_n_58,hw_input_global_wrap_U_n_59}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_530_p2_carry_i_6
       (.I0(hw_input_global_wrap_q1[3]),
        .O(grp_fu_530_p2_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_530_p2_carry_i_7
       (.I0(hw_input_global_wrap_q1[2]),
        .O(grp_fu_530_p2_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_530_p2_carry_i_8
       (.I0(hw_input_global_wrap_q1[1]),
        .O(grp_fu_530_p2_carry_i_8_n_0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[0]),
        .Q(shl_ln38_fu_434_p2[3]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[10]),
        .Q(shl_ln38_fu_434_p2[13]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[11]),
        .Q(shl_ln38_fu_434_p2[14]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[12]),
        .Q(shl_ln38_fu_434_p2[15]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[13]),
        .Q(\hw_input_global_wrap_15_reg_625_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[14]),
        .Q(\hw_input_global_wrap_15_reg_625_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[1]),
        .Q(shl_ln38_fu_434_p2[4]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[2]),
        .Q(shl_ln38_fu_434_p2[5]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[3]),
        .Q(shl_ln38_fu_434_p2[6]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[4]),
        .Q(shl_ln38_fu_434_p2[7]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[5]),
        .Q(shl_ln38_fu_434_p2[8]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[6]),
        .Q(shl_ln38_fu_434_p2[9]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[7]),
        .Q(shl_ln38_fu_434_p2[10]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[8]),
        .Q(shl_ln38_fu_434_p2[11]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_15_reg_625_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(hw_input_global_wrap_q1[9]),
        .Q(shl_ln38_fu_434_p2[12]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \hw_input_global_wrap_1_reg_175[6]_i_1 
       (.I0(start_for_read_1_U0_full_n),
        .I1(start_for_read_U0_full_n),
        .I2(start_once_reg_reg_0),
        .I3(unoptimized_conv_3_3_U0_ap_start),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(hw_input_global_wrap_U_n_0),
        .O(hw_input_global_wrap_1_reg_175));
  FDRE \hw_input_global_wrap_1_reg_175_reg[0] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_U_n_0),
        .D(c3_reg_541[0]),
        .Q(tmp_2_fu_233_p3[6]),
        .R(hw_input_global_wrap_1_reg_175));
  FDRE \hw_input_global_wrap_1_reg_175_reg[1] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_U_n_0),
        .D(c3_reg_541[1]),
        .Q(tmp_2_fu_233_p3[7]),
        .R(hw_input_global_wrap_1_reg_175));
  FDRE \hw_input_global_wrap_1_reg_175_reg[2] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_U_n_0),
        .D(c3_reg_541[2]),
        .Q(tmp_2_fu_233_p3[8]),
        .R(hw_input_global_wrap_1_reg_175));
  FDRE \hw_input_global_wrap_1_reg_175_reg[3] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_U_n_0),
        .D(c3_reg_541[3]),
        .Q(tmp_2_fu_233_p3[9]),
        .R(hw_input_global_wrap_1_reg_175));
  FDRE \hw_input_global_wrap_1_reg_175_reg[4] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_U_n_0),
        .D(c3_reg_541[4]),
        .Q(tmp_2_fu_233_p3[10]),
        .R(hw_input_global_wrap_1_reg_175));
  FDRE \hw_input_global_wrap_1_reg_175_reg[5] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_U_n_0),
        .D(c3_reg_541[5]),
        .Q(tmp_2_fu_233_p3[11]),
        .R(hw_input_global_wrap_1_reg_175));
  FDRE \hw_input_global_wrap_1_reg_175_reg[6] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_U_n_0),
        .D(c3_reg_541[6]),
        .Q(tmp_2_fu_233_p3[12]),
        .R(hw_input_global_wrap_1_reg_175));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hw_input_global_wrap_2_reg_186[0]_i_1 
       (.I0(hw_input_global_wrap_2_reg_186_reg[0]),
        .O(c5_fu_251_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hw_input_global_wrap_2_reg_186[1]_i_1 
       (.I0(hw_input_global_wrap_2_reg_186_reg[0]),
        .I1(hw_input_global_wrap_2_reg_186_reg[1]),
        .O(c5_fu_251_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hw_input_global_wrap_2_reg_186[2]_i_1 
       (.I0(hw_input_global_wrap_2_reg_186_reg[2]),
        .I1(hw_input_global_wrap_2_reg_186_reg[0]),
        .I2(hw_input_global_wrap_2_reg_186_reg[1]),
        .O(c5_fu_251_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hw_input_global_wrap_2_reg_186[3]_i_1 
       (.I0(hw_input_global_wrap_2_reg_186_reg[3]),
        .I1(hw_input_global_wrap_2_reg_186_reg[1]),
        .I2(hw_input_global_wrap_2_reg_186_reg[0]),
        .I3(hw_input_global_wrap_2_reg_186_reg[2]),
        .O(c5_fu_251_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hw_input_global_wrap_2_reg_186[4]_i_1 
       (.I0(hw_input_global_wrap_2_reg_186_reg[4]),
        .I1(hw_input_global_wrap_2_reg_186_reg[3]),
        .I2(hw_input_global_wrap_2_reg_186_reg[1]),
        .I3(hw_input_global_wrap_2_reg_186_reg[0]),
        .I4(hw_input_global_wrap_2_reg_186_reg[2]),
        .O(\hw_input_global_wrap_2_reg_186[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hw_input_global_wrap_2_reg_186[5]_i_1 
       (.I0(hw_input_global_wrap_2_reg_186_reg[5]),
        .I1(hw_input_global_wrap_2_reg_186_reg[2]),
        .I2(hw_input_global_wrap_2_reg_186_reg[0]),
        .I3(hw_input_global_wrap_2_reg_186_reg[1]),
        .I4(hw_input_global_wrap_2_reg_186_reg[3]),
        .I5(hw_input_global_wrap_2_reg_186_reg[4]),
        .O(c5_fu_251_p2[5]));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \hw_input_global_wrap_2_reg_186[6]_i_1 
       (.I0(hw_input_global_wrap_2_reg_186_reg[6]),
        .I1(hw_input_global_wrap_2_reg_186_reg[4]),
        .I2(\hw_input_global_wrap_2_reg_186[6]_i_2_n_0 ),
        .I3(hw_input_global_wrap_2_reg_186_reg[5]),
        .O(c5_fu_251_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hw_input_global_wrap_2_reg_186[6]_i_2 
       (.I0(hw_input_global_wrap_2_reg_186_reg[2]),
        .I1(hw_input_global_wrap_2_reg_186_reg[0]),
        .I2(hw_input_global_wrap_2_reg_186_reg[1]),
        .I3(hw_input_global_wrap_2_reg_186_reg[3]),
        .O(\hw_input_global_wrap_2_reg_186[6]_i_2_n_0 ));
  FDRE \hw_input_global_wrap_2_reg_186_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(c5_fu_251_p2[0]),
        .Q(hw_input_global_wrap_2_reg_186_reg[0]),
        .R(hw_input_global_wrap_2_reg_1860));
  FDRE \hw_input_global_wrap_2_reg_186_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(c5_fu_251_p2[1]),
        .Q(hw_input_global_wrap_2_reg_186_reg[1]),
        .R(hw_input_global_wrap_2_reg_1860));
  FDRE \hw_input_global_wrap_2_reg_186_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(c5_fu_251_p2[2]),
        .Q(hw_input_global_wrap_2_reg_186_reg[2]),
        .R(hw_input_global_wrap_2_reg_1860));
  FDRE \hw_input_global_wrap_2_reg_186_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(c5_fu_251_p2[3]),
        .Q(hw_input_global_wrap_2_reg_186_reg[3]),
        .R(hw_input_global_wrap_2_reg_1860));
  FDRE \hw_input_global_wrap_2_reg_186_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\hw_input_global_wrap_2_reg_186[4]_i_1_n_0 ),
        .Q(hw_input_global_wrap_2_reg_186_reg[4]),
        .R(hw_input_global_wrap_2_reg_1860));
  FDRE \hw_input_global_wrap_2_reg_186_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(c5_fu_251_p2[5]),
        .Q(hw_input_global_wrap_2_reg_186_reg[5]),
        .R(hw_input_global_wrap_2_reg_1860));
  FDRE \hw_input_global_wrap_2_reg_186_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(c5_fu_251_p2[6]),
        .Q(hw_input_global_wrap_2_reg_186_reg[6]),
        .R(hw_input_global_wrap_2_reg_1860));
  FDRE \hw_input_global_wrap_7_reg_593_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[0]),
        .Q(shl_ln34_fu_429_p2[4]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[10]),
        .Q(shl_ln34_fu_429_p2[14]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[11]),
        .Q(shl_ln34_fu_429_p2[15]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[12]),
        .Q(\hw_input_global_wrap_7_reg_593_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[13]),
        .Q(\hw_input_global_wrap_7_reg_593_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[14]),
        .Q(\hw_input_global_wrap_7_reg_593_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[15]),
        .Q(\hw_input_global_wrap_7_reg_593_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[1]),
        .Q(shl_ln34_fu_429_p2[5]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[2]),
        .Q(shl_ln34_fu_429_p2[6]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[3]),
        .Q(shl_ln34_fu_429_p2[7]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[4]),
        .Q(shl_ln34_fu_429_p2[8]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[5]),
        .Q(shl_ln34_fu_429_p2[9]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[6]),
        .Q(shl_ln34_fu_429_p2[10]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[7]),
        .Q(shl_ln34_fu_429_p2[11]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[8]),
        .Q(shl_ln34_fu_429_p2[12]),
        .R(1'b0));
  FDRE \hw_input_global_wrap_7_reg_593_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(hw_input_global_wrap_q0[9]),
        .Q(shl_ln34_fu_429_p2[13]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_bkb hw_input_global_wrap_U
       (.C({hw_input_global_wrap_U_n_26,hw_input_global_wrap_q1[0]}),
        .D(add_ln187_fu_326_p2[5]),
        .DI({hw_input_global_wrap_U_n_89,hw_input_global_wrap_U_n_90,hw_input_global_wrap_U_n_91,hw_input_global_wrap_U_n_92}),
        .Q(c3_1_reg_562),
        .S({hw_input_global_wrap_U_n_4,hw_input_global_wrap_U_n_5,hw_input_global_wrap_U_n_6,hw_input_global_wrap_U_n_7,hw_input_global_wrap_U_n_8,hw_input_global_wrap_U_n_9}),
        .add_ln58_2_fu_476_p2__2_carry__0_i_8({\hw_input_global_wrap_15_reg_625_reg_n_0_[14] ,\hw_input_global_wrap_15_reg_625_reg_n_0_[13] ,shl_ln38_fu_434_p2}),
        .\add_ln58_reg_666_reg[15] ({\hw_input_global_wrap_7_reg_593_reg_n_0_[15] ,\hw_input_global_wrap_7_reg_593_reg_n_0_[14] ,\hw_input_global_wrap_7_reg_593_reg_n_0_[13] ,\hw_input_global_wrap_7_reg_593_reg_n_0_[12] ,shl_ln34_fu_429_p2}),
        .ap_clk(ap_clk),
        .arg_in0_hwstream_val_empty_n(arg_in0_hwstream_val_empty_n),
        .d0(d0),
        .data0(data0),
        .data4(data4),
        .\hw_input_global_wrap_2_reg_186_reg[1] (hw_input_global_wrap_U_n_2),
        .\hw_input_global_wrap_2_reg_186_reg[4] (hw_input_global_wrap_U_n_0),
        .\hw_input_global_wrap_7_reg_593_reg[10] ({hw_input_global_wrap_U_n_100,hw_input_global_wrap_U_n_101,hw_input_global_wrap_U_n_102,hw_input_global_wrap_U_n_103,hw_input_global_wrap_U_n_104,hw_input_global_wrap_U_n_105,hw_input_global_wrap_U_n_106,hw_input_global_wrap_U_n_107}),
        .\hw_input_global_wrap_7_reg_593_reg[9] ({hw_input_global_wrap_U_n_93,hw_input_global_wrap_U_n_94,hw_input_global_wrap_U_n_95,hw_input_global_wrap_U_n_96,hw_input_global_wrap_U_n_97,hw_input_global_wrap_U_n_98,hw_input_global_wrap_U_n_99}),
        .q0(hw_input_global_wrap_q0),
        .q1(hw_input_global_wrap_q1[14:1]),
        .ram_reg_bram_0({hw_input_global_wrap_U_n_42,hw_input_global_wrap_U_n_43,hw_input_global_wrap_U_n_44,hw_input_global_wrap_U_n_45,hw_input_global_wrap_U_n_46,hw_input_global_wrap_U_n_47}),
        .ram_reg_bram_0_0({hw_input_global_wrap_U_n_48,hw_input_global_wrap_U_n_49,hw_input_global_wrap_U_n_50,hw_input_global_wrap_U_n_51,hw_input_global_wrap_U_n_52}),
        .ram_reg_bram_0_1({hw_input_global_wrap_U_n_67,hw_input_global_wrap_U_n_68,hw_input_global_wrap_U_n_69,hw_input_global_wrap_U_n_70,hw_input_global_wrap_U_n_71,hw_input_global_wrap_U_n_72,hw_input_global_wrap_U_n_73,hw_input_global_wrap_U_n_74}),
        .ram_reg_bram_0_2({hw_input_global_wrap_U_n_108,hw_input_global_wrap_U_n_109,hw_input_global_wrap_U_n_110,hw_input_global_wrap_U_n_111,hw_input_global_wrap_U_n_112,hw_input_global_wrap_U_n_113,hw_input_global_wrap_U_n_114,hw_input_global_wrap_U_n_115}),
        .ram_reg_bram_0_3({ap_CS_fsm_state9,ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6,ap_CS_fsm_state5,ap_CS_fsm_state3}),
        .ram_reg_bram_0_4(zext_ln392_reg_546),
        .ram_reg_bram_0_5(add_ln187_reg_604),
        .ram_reg_bram_1({hw_input_global_wrap_U_n_53,hw_input_global_wrap_U_n_54,hw_input_global_wrap_U_n_55,hw_input_global_wrap_U_n_56,hw_input_global_wrap_U_n_57,hw_input_global_wrap_U_n_58,hw_input_global_wrap_U_n_59}),
        .ram_reg_bram_1_0({hw_input_global_wrap_U_n_60,hw_input_global_wrap_U_n_61,hw_input_global_wrap_U_n_62,hw_input_global_wrap_U_n_63,hw_input_global_wrap_U_n_64,hw_input_global_wrap_U_n_65,hw_input_global_wrap_U_n_66}),
        .ram_reg_bram_1_1({hw_input_global_wrap_U_n_75,hw_input_global_wrap_U_n_76,hw_input_global_wrap_U_n_77,hw_input_global_wrap_U_n_78,hw_input_global_wrap_U_n_79,hw_input_global_wrap_U_n_80}),
        .ram_reg_bram_1_2({hw_input_global_wrap_U_n_81,hw_input_global_wrap_U_n_82,hw_input_global_wrap_U_n_83,hw_input_global_wrap_U_n_84,hw_input_global_wrap_U_n_85,hw_input_global_wrap_U_n_86,hw_input_global_wrap_U_n_87,hw_input_global_wrap_U_n_88}),
        .ram_reg_bram_1_3(hw_input_global_wrap_2_reg_186_reg),
        .\tmp_i231_reg_661_reg[13] (empty_11_reg_631),
        .we0(E));
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \hw_output_s0_x_v32_a_reg_209[5]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(data4[6]),
        .I2(data4[11]),
        .I3(data4[10]),
        .I4(\hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0 ),
        .O(hw_output_s0_x_v32_a_reg_2090));
  LUT3 #(
    .INIT(8'h80)) 
    \hw_output_s0_x_v32_a_reg_209[5]_i_2 
       (.I0(Q),
        .I1(arg_out_tlast_values_full_n),
        .I2(arg_out_data_values_s_full_n),
        .O(\ap_CS_fsm_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \hw_output_s0_x_v32_a_reg_209[5]_i_3 
       (.I0(data4[8]),
        .I1(data4[7]),
        .I2(data4[9]),
        .O(\hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0 ));
  FDRE \hw_output_s0_x_v32_a_reg_209_reg[0] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[10]_0 ),
        .D(data0[0]),
        .Q(data4[0]),
        .R(hw_output_s0_x_v32_a_reg_2090));
  FDRE \hw_output_s0_x_v32_a_reg_209_reg[1] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[10]_0 ),
        .D(data0[1]),
        .Q(data4[1]),
        .R(hw_output_s0_x_v32_a_reg_2090));
  FDRE \hw_output_s0_x_v32_a_reg_209_reg[2] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[10]_0 ),
        .D(data0[2]),
        .Q(data4[2]),
        .R(hw_output_s0_x_v32_a_reg_2090));
  FDRE \hw_output_s0_x_v32_a_reg_209_reg[3] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[10]_0 ),
        .D(data0[3]),
        .Q(data4[3]),
        .R(hw_output_s0_x_v32_a_reg_2090));
  FDRE \hw_output_s0_x_v32_a_reg_209_reg[4] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[10]_0 ),
        .D(data0[4]),
        .Q(data4[4]),
        .R(hw_output_s0_x_v32_a_reg_2090));
  FDRE \hw_output_s0_x_v32_a_reg_209_reg[5] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[10]_0 ),
        .D(data0[5]),
        .Q(data4[5]),
        .R(hw_output_s0_x_v32_a_reg_2090));
  LUT5 #(
    .INIT(32'h00000020)) 
    \hw_output_s0_y_v33_a_reg_197[5]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\zext_ln392_reg_546[11]_i_2_n_0 ),
        .I2(tmp_2_fu_233_p3[12]),
        .I3(tmp_2_fu_233_p3[10]),
        .I4(tmp_2_fu_233_p3[8]),
        .O(ap_NS_fsm13_out));
  LUT4 #(
    .INIT(16'h0080)) 
    \hw_output_s0_y_v33_a_reg_197[5]_i_2 
       (.I0(\hw_output_s0_y_v33_a_reg_197[5]_i_3_n_0 ),
        .I1(ap_CS_fsm_state5),
        .I2(data4[5]),
        .I3(data4[0]),
        .O(ap_NS_fsm1));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \hw_output_s0_y_v33_a_reg_197[5]_i_3 
       (.I0(data4[3]),
        .I1(data4[1]),
        .I2(data4[2]),
        .I3(data4[4]),
        .O(\hw_output_s0_y_v33_a_reg_197[5]_i_3_n_0 ));
  FDRE \hw_output_s0_y_v33_a_reg_197_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(c3_1_reg_562[0]),
        .Q(data4[6]),
        .R(ap_NS_fsm13_out));
  FDRE \hw_output_s0_y_v33_a_reg_197_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(c3_1_reg_562[1]),
        .Q(data4[7]),
        .R(ap_NS_fsm13_out));
  FDRE \hw_output_s0_y_v33_a_reg_197_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(c3_1_reg_562[2]),
        .Q(data4[8]),
        .R(ap_NS_fsm13_out));
  FDRE \hw_output_s0_y_v33_a_reg_197_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(c3_1_reg_562[3]),
        .Q(data4[9]),
        .R(ap_NS_fsm13_out));
  FDRE \hw_output_s0_y_v33_a_reg_197_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(c3_1_reg_562[4]),
        .Q(data4[10]),
        .R(ap_NS_fsm13_out));
  FDRE \hw_output_s0_y_v33_a_reg_197_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(c3_1_reg_562[5]),
        .Q(data4[11]),
        .R(ap_NS_fsm13_out));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \mOutPtr[1]_i_3__2 
       (.I0(\hw_output_s0_x_v32_a_reg_209[5]_i_3_n_0 ),
        .I1(data4[10]),
        .I2(data4[11]),
        .I3(data4[6]),
        .I4(ap_CS_fsm_state4),
        .I5(unoptimized_conv_3_3_U0_ap_start),
        .O(\hw_output_s0_y_v33_a_reg_197_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h54505050)) 
    start_once_reg_i_1__0
       (.I0(\ap_CS_fsm_reg[3]_0 ),
        .I1(unoptimized_conv_3_3_U0_ap_start),
        .I2(start_once_reg_reg_0),
        .I3(start_for_read_U0_full_n),
        .I4(start_for_read_1_U0_full_n),
        .O(start_once_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1__0_n_0),
        .Q(start_once_reg_reg_0),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_i231_fu_460_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({tmp_i231_fu_460_p2_carry_n_0,tmp_i231_fu_460_p2_carry_n_1,tmp_i231_fu_460_p2_carry_n_2,tmp_i231_fu_460_p2_carry_n_3,tmp_i231_fu_460_p2_carry_n_4,tmp_i231_fu_460_p2_carry_n_5,tmp_i231_fu_460_p2_carry_n_6,tmp_i231_fu_460_p2_carry_n_7}),
        .DI(hw_input_global_wrap_q1[7:0]),
        .O(tmp_i231_fu_460_p2[7:0]),
        .S({hw_input_global_wrap_U_n_67,hw_input_global_wrap_U_n_68,hw_input_global_wrap_U_n_69,hw_input_global_wrap_U_n_70,hw_input_global_wrap_U_n_71,hw_input_global_wrap_U_n_72,hw_input_global_wrap_U_n_73,hw_input_global_wrap_U_n_74}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_i231_fu_460_p2_carry__0
       (.CI(tmp_i231_fu_460_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_i231_fu_460_p2_carry__0_CO_UNCONNECTED[7:5],tmp_i231_fu_460_p2_carry__0_n_3,tmp_i231_fu_460_p2_carry__0_n_4,tmp_i231_fu_460_p2_carry__0_n_5,tmp_i231_fu_460_p2_carry__0_n_6,tmp_i231_fu_460_p2_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,hw_input_global_wrap_q1[12:8]}),
        .O({NLW_tmp_i231_fu_460_p2_carry__0_O_UNCONNECTED[7:6],tmp_i231_fu_460_p2[13:8]}),
        .S({1'b0,1'b0,hw_input_global_wrap_U_n_75,hw_input_global_wrap_U_n_76,hw_input_global_wrap_U_n_77,hw_input_global_wrap_U_n_78,hw_input_global_wrap_U_n_79,hw_input_global_wrap_U_n_80}));
  FDRE \tmp_i231_reg_661_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[0]),
        .Q(tmp1_i_fu_494_p3[2]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[10]),
        .Q(tmp1_i_fu_494_p3[12]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[11]),
        .Q(tmp1_i_fu_494_p3[13]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[12]),
        .Q(tmp1_i_fu_494_p3[14]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[13]),
        .Q(tmp1_i_fu_494_p3[15]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[1]),
        .Q(tmp1_i_fu_494_p3[3]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[2]),
        .Q(tmp1_i_fu_494_p3[4]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[3]),
        .Q(tmp1_i_fu_494_p3[5]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[4]),
        .Q(tmp1_i_fu_494_p3[6]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[5]),
        .Q(tmp1_i_fu_494_p3[7]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[6]),
        .Q(tmp1_i_fu_494_p3[8]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[7]),
        .Q(tmp1_i_fu_494_p3[9]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[8]),
        .Q(tmp1_i_fu_494_p3[10]),
        .R(1'b0));
  FDRE \tmp_i231_reg_661_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(tmp_i231_fu_460_p2[9]),
        .Q(tmp1_i_fu_494_p3[11]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \zext_ln392_reg_546[11]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\zext_ln392_reg_546[11]_i_2_n_0 ),
        .I2(tmp_2_fu_233_p3[12]),
        .I3(tmp_2_fu_233_p3[10]),
        .I4(tmp_2_fu_233_p3[8]),
        .O(hw_input_global_wrap_2_reg_1860));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \zext_ln392_reg_546[11]_i_2 
       (.I0(tmp_2_fu_233_p3[7]),
        .I1(tmp_2_fu_233_p3[6]),
        .I2(tmp_2_fu_233_p3[11]),
        .I3(tmp_2_fu_233_p3[9]),
        .O(\zext_ln392_reg_546[11]_i_2_n_0 ));
  FDRE \zext_ln392_reg_546_reg[10] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_2_reg_1860),
        .D(tmp_2_fu_233_p3[10]),
        .Q(zext_ln392_reg_546[10]),
        .R(1'b0));
  FDRE \zext_ln392_reg_546_reg[11] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_2_reg_1860),
        .D(tmp_2_fu_233_p3[11]),
        .Q(zext_ln392_reg_546[11]),
        .R(1'b0));
  FDRE \zext_ln392_reg_546_reg[6] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_2_reg_1860),
        .D(tmp_2_fu_233_p3[6]),
        .Q(zext_ln392_reg_546[6]),
        .R(1'b0));
  FDRE \zext_ln392_reg_546_reg[7] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_2_reg_1860),
        .D(tmp_2_fu_233_p3[7]),
        .Q(zext_ln392_reg_546[7]),
        .R(1'b0));
  FDRE \zext_ln392_reg_546_reg[8] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_2_reg_1860),
        .D(tmp_2_fu_233_p3[8]),
        .Q(zext_ln392_reg_546[8]),
        .R(1'b0));
  FDRE \zext_ln392_reg_546_reg[9] 
       (.C(ap_clk),
        .CE(hw_input_global_wrap_2_reg_1860),
        .D(tmp_2_fu_233_p3[9]),
        .Q(zext_ln392_reg_546[9]),
        .R(1'b0));
endmodule

(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_3_3_rdai
   (arg_in0_TDATA,
    arg_in0_TLAST,
    arg_out_TDATA,
    arg_out_TLAST,
    ap_clk,
    ap_rst_n,
    arg_in0_TVALID,
    arg_in0_TREADY,
    arg_out_TVALID,
    arg_out_TREADY);
  input [15:0]arg_in0_TDATA;
  input [0:0]arg_in0_TLAST;
  output [15:0]arg_out_TDATA;
  output [0:0]arg_out_TLAST;
  input ap_clk;
  input ap_rst_n;
  input arg_in0_TVALID;
  output arg_in0_TREADY;
  output arg_out_TVALID;
  input arg_out_TREADY;

  wire \<const0> ;
  wire Block_proc7476_U0_n_0;
  wire Block_proc7476_U0_n_1;
  wire Block_proc7476_U0_n_2;
  wire Block_proc7476_U0_n_21;
  wire Block_proc7476_U0_n_22;
  wire Block_proc7476_U0_n_23;
  wire Block_proc7476_U0_n_24;
  wire Block_proc7476_U0_n_25;
  wire Block_proc7476_U0_n_26;
  wire Block_proc7476_U0_n_27;
  wire Block_proc7476_U0_n_28;
  wire Block_proc7476_U0_n_29;
  wire Block_proc7476_U0_n_3;
  wire Block_proc7476_U0_n_30;
  wire Block_proc7476_U0_n_31;
  wire Block_proc7476_U0_n_32;
  wire Block_proc7476_U0_n_33;
  wire Block_proc7476_U0_n_34;
  wire Block_proc7476_U0_n_35;
  wire Block_proc7476_U0_n_36;
  wire Block_proc75_U0_ap_continue;
  wire Block_proc75_U0_n_3;
  wire ap_CS_fsm_state11;
  wire ap_clk;
  wire ap_done_reg;
  wire ap_done_reg_1;
  wire ap_done_reg_2;
  wire ap_done_reg_3;
  wire ap_done_reg_4;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]arg_in0_TDATA;
  wire arg_in0_TREADY;
  wire arg_in0_TVALID;
  wire arg_in0_TVALID_int;
  wire [15:0]arg_in0_hwstream_val_dout;
  wire arg_in0_hwstream_val_empty_n;
  wire arg_in0_hwstream_val_full_n;
  wire [15:0]arg_out_TDATA;
  wire arg_out_TREADY;
  wire arg_out_TVALID;
  wire arg_out_data_values_s_U_n_10;
  wire arg_out_data_values_s_U_n_11;
  wire arg_out_data_values_s_U_n_12;
  wire arg_out_data_values_s_U_n_13;
  wire arg_out_data_values_s_U_n_14;
  wire arg_out_data_values_s_U_n_15;
  wire arg_out_data_values_s_U_n_16;
  wire arg_out_data_values_s_U_n_17;
  wire arg_out_data_values_s_U_n_18;
  wire arg_out_data_values_s_U_n_19;
  wire arg_out_data_values_s_U_n_2;
  wire arg_out_data_values_s_U_n_20;
  wire arg_out_data_values_s_U_n_21;
  wire arg_out_data_values_s_U_n_22;
  wire arg_out_data_values_s_U_n_23;
  wire arg_out_data_values_s_U_n_24;
  wire arg_out_data_values_s_U_n_25;
  wire arg_out_data_values_s_U_n_26;
  wire arg_out_data_values_s_U_n_27;
  wire arg_out_data_values_s_U_n_28;
  wire arg_out_data_values_s_U_n_29;
  wire arg_out_data_values_s_U_n_3;
  wire arg_out_data_values_s_U_n_30;
  wire arg_out_data_values_s_U_n_31;
  wire arg_out_data_values_s_U_n_32;
  wire arg_out_data_values_s_U_n_33;
  wire arg_out_data_values_s_U_n_4;
  wire arg_out_data_values_s_U_n_5;
  wire arg_out_data_values_s_U_n_6;
  wire arg_out_data_values_s_U_n_7;
  wire arg_out_data_values_s_U_n_8;
  wire arg_out_data_values_s_U_n_9;
  wire arg_out_data_values_s_empty_n;
  wire arg_out_data_values_s_full_n;
  wire arg_out_tlast_values_U_n_2;
  wire arg_out_tlast_values_empty_n;
  wire arg_out_tlast_values_full_n;
  wire [15:0]data;
  wire [15:0]hw_uint_16_val_V_preg;
  wire operator_int_1_U0_ap_start;
  wire operator_int_1_U0_n_1;
  wire operator_int_U0_ap_start;
  wire operator_int_U0_n_1;
  wire p_0_U_n_10;
  wire p_0_U_n_11;
  wire p_0_U_n_12;
  wire p_0_U_n_13;
  wire p_0_U_n_14;
  wire p_0_U_n_15;
  wire p_0_U_n_16;
  wire p_0_U_n_17;
  wire p_0_U_n_18;
  wire p_0_U_n_19;
  wire p_0_U_n_2;
  wire p_0_U_n_20;
  wire p_0_U_n_21;
  wire p_0_U_n_22;
  wire p_0_U_n_23;
  wire p_0_U_n_24;
  wire p_0_U_n_25;
  wire p_0_U_n_26;
  wire p_0_U_n_27;
  wire p_0_U_n_28;
  wire p_0_U_n_29;
  wire p_0_U_n_3;
  wire p_0_U_n_30;
  wire p_0_U_n_31;
  wire p_0_U_n_32;
  wire p_0_U_n_33;
  wire p_0_U_n_34;
  wire p_0_U_n_4;
  wire p_0_U_n_5;
  wire p_0_U_n_6;
  wire p_0_U_n_7;
  wire p_0_U_n_8;
  wire p_0_U_n_9;
  wire read_1_U0_ap_continue;
  wire read_1_U0_ap_start;
  wire read_1_U0_n_1;
  wire read_1_U0_n_10;
  wire read_1_U0_n_11;
  wire read_1_U0_n_12;
  wire read_1_U0_n_13;
  wire read_1_U0_n_14;
  wire read_1_U0_n_15;
  wire read_1_U0_n_16;
  wire read_1_U0_n_17;
  wire read_1_U0_n_18;
  wire read_1_U0_n_2;
  wire read_1_U0_n_3;
  wire read_1_U0_n_4;
  wire read_1_U0_n_5;
  wire read_1_U0_n_6;
  wire read_1_U0_n_7;
  wire read_1_U0_n_8;
  wire read_1_U0_n_9;
  wire read_U0_ap_continue;
  wire read_U0_ap_start;
  wire read_U0_n_1;
  wire shiftReg_ce;
  wire shiftReg_ce_0;
  wire shiftReg_ce_5;
  wire start_for_read_1_U0_full_n;
  wire start_for_read_U0_full_n;
  wire start_for_unoptimdEe_U_n_2;
  wire start_for_unoptimdEe_U_n_3;
  wire start_for_unoptimdEe_U_n_4;
  wire start_for_unoptimized_conv_3_3_U0_full_n;
  wire start_once_reg;
  wire this_assign_channel_U_n_10;
  wire this_assign_channel_U_n_11;
  wire this_assign_channel_U_n_12;
  wire this_assign_channel_U_n_13;
  wire this_assign_channel_U_n_14;
  wire this_assign_channel_U_n_15;
  wire this_assign_channel_U_n_16;
  wire this_assign_channel_U_n_17;
  wire this_assign_channel_U_n_18;
  wire this_assign_channel_U_n_2;
  wire this_assign_channel_U_n_3;
  wire this_assign_channel_U_n_4;
  wire this_assign_channel_U_n_5;
  wire this_assign_channel_U_n_6;
  wire this_assign_channel_U_n_7;
  wire this_assign_channel_U_n_8;
  wire this_assign_channel_U_n_9;
  wire unoptimized_conv_3_3_U0_ap_start;
  wire unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read;
  wire unoptimized_conv_3_3_U0_n_0;
  wire unoptimized_conv_3_3_U0_n_1;
  wire unoptimized_conv_3_3_U0_n_10;
  wire unoptimized_conv_3_3_U0_n_11;
  wire unoptimized_conv_3_3_U0_n_12;
  wire unoptimized_conv_3_3_U0_n_13;
  wire unoptimized_conv_3_3_U0_n_14;
  wire unoptimized_conv_3_3_U0_n_15;
  wire unoptimized_conv_3_3_U0_n_16;
  wire unoptimized_conv_3_3_U0_n_17;
  wire unoptimized_conv_3_3_U0_n_18;
  wire unoptimized_conv_3_3_U0_n_19;
  wire unoptimized_conv_3_3_U0_n_20;
  wire unoptimized_conv_3_3_U0_n_21;
  wire unoptimized_conv_3_3_U0_n_5;
  wire unoptimized_conv_3_3_U0_n_6;
  wire unoptimized_conv_3_3_U0_n_7;
  wire unoptimized_conv_3_3_U0_n_8;
  wire unoptimized_conv_3_3_U0_n_9;
  wire val_assign_1_channel_U_n_1;
  wire val_assign_1_channel_empty_n;
  wire val_assign_channel_U_n_1;
  wire val_assign_channel_U_n_10;
  wire val_assign_channel_U_n_11;
  wire val_assign_channel_U_n_12;
  wire val_assign_channel_U_n_13;
  wire val_assign_channel_U_n_14;
  wire val_assign_channel_U_n_15;
  wire val_assign_channel_U_n_16;
  wire val_assign_channel_U_n_17;
  wire val_assign_channel_U_n_18;
  wire val_assign_channel_U_n_19;
  wire val_assign_channel_U_n_2;
  wire val_assign_channel_U_n_20;
  wire val_assign_channel_U_n_21;
  wire val_assign_channel_U_n_22;
  wire val_assign_channel_U_n_23;
  wire val_assign_channel_U_n_24;
  wire val_assign_channel_U_n_25;
  wire val_assign_channel_U_n_26;
  wire val_assign_channel_U_n_27;
  wire val_assign_channel_U_n_28;
  wire val_assign_channel_U_n_29;
  wire val_assign_channel_U_n_3;
  wire val_assign_channel_U_n_30;
  wire val_assign_channel_U_n_31;
  wire val_assign_channel_U_n_32;
  wire val_assign_channel_U_n_33;
  wire val_assign_channel_U_n_4;
  wire val_assign_channel_U_n_5;
  wire val_assign_channel_U_n_6;
  wire val_assign_channel_U_n_7;
  wire val_assign_channel_U_n_8;
  wire val_assign_channel_U_n_9;
  wire val_assign_channel_empty_n;
  wire write_U0_ap_start;

  assign arg_out_TLAST[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Block_proc7476 Block_proc7476_U0
       (.D({val_assign_channel_U_n_18,val_assign_channel_U_n_19,val_assign_channel_U_n_20,val_assign_channel_U_n_21,val_assign_channel_U_n_22,val_assign_channel_U_n_23,val_assign_channel_U_n_24,val_assign_channel_U_n_25,val_assign_channel_U_n_26,val_assign_channel_U_n_27,val_assign_channel_U_n_28,val_assign_channel_U_n_29,val_assign_channel_U_n_30,val_assign_channel_U_n_31,val_assign_channel_U_n_32,val_assign_channel_U_n_33}),
        .Q({arg_out_TVALID,arg_out_TDATA}),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(Block_proc7476_U0_n_1),
        .ap_rst_n_1(Block_proc7476_U0_n_3),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_TREADY(arg_out_TREADY),
        .internal_empty_n_reg(Block_proc7476_U0_n_0),
        .internal_empty_n_reg_0(Block_proc7476_U0_n_2),
        .\ireg_reg[15] ({Block_proc7476_U0_n_21,Block_proc7476_U0_n_22,Block_proc7476_U0_n_23,Block_proc7476_U0_n_24,Block_proc7476_U0_n_25,Block_proc7476_U0_n_26,Block_proc7476_U0_n_27,Block_proc7476_U0_n_28,Block_proc7476_U0_n_29,Block_proc7476_U0_n_30,Block_proc7476_U0_n_31,Block_proc7476_U0_n_32,Block_proc7476_U0_n_33,Block_proc7476_U0_n_34,Block_proc7476_U0_n_35,Block_proc7476_U0_n_36}),
        .\odata_reg[15] ({val_assign_channel_U_n_1,val_assign_channel_U_n_2,val_assign_channel_U_n_3,val_assign_channel_U_n_4,val_assign_channel_U_n_5,val_assign_channel_U_n_6,val_assign_channel_U_n_7,val_assign_channel_U_n_8,val_assign_channel_U_n_9,val_assign_channel_U_n_10,val_assign_channel_U_n_11,val_assign_channel_U_n_12,val_assign_channel_U_n_13,val_assign_channel_U_n_14,val_assign_channel_U_n_15,val_assign_channel_U_n_16}),
        .val_assign_1_channel_empty_n(val_assign_1_channel_empty_n),
        .val_assign_channel_empty_n(val_assign_channel_empty_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Block_proc75 Block_proc75_U0
       (.Block_proc75_U0_ap_continue(Block_proc75_U0_ap_continue),
        .D({arg_in0_TVALID,arg_in0_TDATA}),
        .E(Block_proc75_U0_n_3),
        .Q(arg_in0_TVALID_int),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg),
        .\ap_return_preg_reg[15]_0 (data),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_in0_TREADY(arg_in0_TREADY),
        .internal_full_n_reg(shiftReg_ce),
        .shiftReg_ce(shiftReg_ce_0));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A arg_in0_hwstream_val_U
       (.D({this_assign_channel_U_n_3,this_assign_channel_U_n_4,this_assign_channel_U_n_5,this_assign_channel_U_n_6,this_assign_channel_U_n_7,this_assign_channel_U_n_8,this_assign_channel_U_n_9,this_assign_channel_U_n_10,this_assign_channel_U_n_11,this_assign_channel_U_n_12,this_assign_channel_U_n_13,this_assign_channel_U_n_14,this_assign_channel_U_n_15,this_assign_channel_U_n_16,this_assign_channel_U_n_17,this_assign_channel_U_n_18}),
        .E(start_for_unoptimdEe_U_n_2),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_in0_hwstream_val_empty_n(arg_in0_hwstream_val_empty_n),
        .arg_in0_hwstream_val_full_n(arg_in0_hwstream_val_full_n),
        .d0(arg_in0_hwstream_val_dout),
        .shiftReg_ce(shiftReg_ce_0),
        .start_for_unoptimized_conv_3_3_U0_full_n(start_for_unoptimized_conv_3_3_U0_full_n),
        .start_once_reg(start_once_reg),
        .unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read(unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read),
        .write_U0_ap_start(write_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_0 arg_out_data_values_s_U
       (.D({arg_out_data_values_s_U_n_2,arg_out_data_values_s_U_n_3,arg_out_data_values_s_U_n_4,arg_out_data_values_s_U_n_5,arg_out_data_values_s_U_n_6,arg_out_data_values_s_U_n_7,arg_out_data_values_s_U_n_8,arg_out_data_values_s_U_n_9,arg_out_data_values_s_U_n_10,arg_out_data_values_s_U_n_11,arg_out_data_values_s_U_n_12,arg_out_data_values_s_U_n_13,arg_out_data_values_s_U_n_14,arg_out_data_values_s_U_n_15,arg_out_data_values_s_U_n_16,arg_out_data_values_s_U_n_17}),
        .Q(ap_CS_fsm_state11),
        .\SRL_SIG_reg[0][0] (arg_out_data_values_s_U_n_18),
        .\SRL_SIG_reg[0][0]_0 (read_1_U0_n_18),
        .\SRL_SIG_reg[0][10] (arg_out_data_values_s_U_n_28),
        .\SRL_SIG_reg[0][10]_0 (read_1_U0_n_8),
        .\SRL_SIG_reg[0][11] (arg_out_data_values_s_U_n_29),
        .\SRL_SIG_reg[0][11]_0 (read_1_U0_n_7),
        .\SRL_SIG_reg[0][12] (arg_out_data_values_s_U_n_30),
        .\SRL_SIG_reg[0][12]_0 (read_1_U0_n_6),
        .\SRL_SIG_reg[0][13] (arg_out_data_values_s_U_n_31),
        .\SRL_SIG_reg[0][13]_0 (read_1_U0_n_5),
        .\SRL_SIG_reg[0][14] (arg_out_data_values_s_U_n_32),
        .\SRL_SIG_reg[0][14]_0 (read_1_U0_n_4),
        .\SRL_SIG_reg[0][15] (arg_out_data_values_s_U_n_33),
        .\SRL_SIG_reg[0][15]_0 (read_1_U0_n_2),
        .\SRL_SIG_reg[0][15]_1 (read_1_U0_n_3),
        .\SRL_SIG_reg[0][1] (arg_out_data_values_s_U_n_19),
        .\SRL_SIG_reg[0][1]_0 (read_1_U0_n_17),
        .\SRL_SIG_reg[0][2] (arg_out_data_values_s_U_n_20),
        .\SRL_SIG_reg[0][2]_0 (read_1_U0_n_16),
        .\SRL_SIG_reg[0][3] (arg_out_data_values_s_U_n_21),
        .\SRL_SIG_reg[0][3]_0 (read_1_U0_n_15),
        .\SRL_SIG_reg[0][4] (arg_out_data_values_s_U_n_22),
        .\SRL_SIG_reg[0][4]_0 (read_1_U0_n_14),
        .\SRL_SIG_reg[0][5] (arg_out_data_values_s_U_n_23),
        .\SRL_SIG_reg[0][5]_0 (read_1_U0_n_13),
        .\SRL_SIG_reg[0][6] (arg_out_data_values_s_U_n_24),
        .\SRL_SIG_reg[0][6]_0 (read_1_U0_n_12),
        .\SRL_SIG_reg[0][7] (arg_out_data_values_s_U_n_25),
        .\SRL_SIG_reg[0][7]_0 (read_1_U0_n_11),
        .\SRL_SIG_reg[0][8] (arg_out_data_values_s_U_n_26),
        .\SRL_SIG_reg[0][8]_0 (read_1_U0_n_10),
        .\SRL_SIG_reg[0][9] (arg_out_data_values_s_U_n_27),
        .\SRL_SIG_reg[0][9]_0 (read_1_U0_n_9),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_3),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_data_values_s_empty_n(arg_out_data_values_s_empty_n),
        .arg_out_data_values_s_full_n(arg_out_data_values_s_full_n),
        .arg_out_tlast_values_full_n(arg_out_tlast_values_full_n),
        .data({unoptimized_conv_3_3_U0_n_6,unoptimized_conv_3_3_U0_n_7,unoptimized_conv_3_3_U0_n_8,unoptimized_conv_3_3_U0_n_9,unoptimized_conv_3_3_U0_n_10,unoptimized_conv_3_3_U0_n_11,unoptimized_conv_3_3_U0_n_12,unoptimized_conv_3_3_U0_n_13,unoptimized_conv_3_3_U0_n_14,unoptimized_conv_3_3_U0_n_15,unoptimized_conv_3_3_U0_n_16,unoptimized_conv_3_3_U0_n_17,unoptimized_conv_3_3_U0_n_18,unoptimized_conv_3_3_U0_n_19,unoptimized_conv_3_3_U0_n_20,unoptimized_conv_3_3_U0_n_21}),
        .read_1_U0_ap_start(read_1_U0_ap_start),
        .shiftReg_ce(shiftReg_ce_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d2_A arg_out_tlast_values_U
       (.E(arg_out_tlast_values_U_n_2),
        .Q(ap_CS_fsm_state11),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_4),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_data_values_s_full_n(arg_out_data_values_s_full_n),
        .arg_out_tlast_values_empty_n(arg_out_tlast_values_empty_n),
        .arg_out_tlast_values_full_n(arg_out_tlast_values_full_n),
        .internal_full_n_reg_0(read_U0_n_1),
        .\mOutPtr_reg[1]_0 (start_for_unoptimdEe_U_n_4),
        .read_U0_ap_start(read_U0_ap_start),
        .shiftReg_ce(shiftReg_ce_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_operator_int_1 operator_int_1_U0
       (.ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_1),
        .ap_done_reg_reg_0(operator_int_1_U0_n_1),
        .ap_done_reg_reg_1(val_assign_channel_U_n_17),
        .ap_rst_n_inv(ap_rst_n_inv),
        .hw_uint_16_val_V_preg(hw_uint_16_val_V_preg),
        .\hw_uint_16_val_V_preg_reg[0]_0 (p_0_U_n_19),
        .\hw_uint_16_val_V_preg_reg[10]_0 (p_0_U_n_29),
        .\hw_uint_16_val_V_preg_reg[11]_0 (p_0_U_n_30),
        .\hw_uint_16_val_V_preg_reg[12]_0 (p_0_U_n_31),
        .\hw_uint_16_val_V_preg_reg[13]_0 (p_0_U_n_32),
        .\hw_uint_16_val_V_preg_reg[14]_0 (p_0_U_n_33),
        .\hw_uint_16_val_V_preg_reg[15]_0 (p_0_U_n_18),
        .\hw_uint_16_val_V_preg_reg[15]_1 (p_0_U_n_34),
        .\hw_uint_16_val_V_preg_reg[1]_0 (p_0_U_n_20),
        .\hw_uint_16_val_V_preg_reg[2]_0 (p_0_U_n_21),
        .\hw_uint_16_val_V_preg_reg[3]_0 (p_0_U_n_22),
        .\hw_uint_16_val_V_preg_reg[4]_0 (p_0_U_n_23),
        .\hw_uint_16_val_V_preg_reg[5]_0 (p_0_U_n_24),
        .\hw_uint_16_val_V_preg_reg[6]_0 (p_0_U_n_25),
        .\hw_uint_16_val_V_preg_reg[7]_0 (p_0_U_n_26),
        .\hw_uint_16_val_V_preg_reg[8]_0 (p_0_U_n_27),
        .\hw_uint_16_val_V_preg_reg[9]_0 (p_0_U_n_28),
        .operator_int_1_U0_ap_start(operator_int_1_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_operator_int operator_int_U0
       (.ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_2),
        .ap_done_reg_reg_0(operator_int_U0_n_1),
        .ap_done_reg_reg_1(val_assign_1_channel_U_n_1),
        .operator_int_U0_ap_start(operator_int_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_1 p_0_U
       (.D({p_0_U_n_2,p_0_U_n_3,p_0_U_n_4,p_0_U_n_5,p_0_U_n_6,p_0_U_n_7,p_0_U_n_8,p_0_U_n_9,p_0_U_n_10,p_0_U_n_11,p_0_U_n_12,p_0_U_n_13,p_0_U_n_14,p_0_U_n_15,p_0_U_n_16,p_0_U_n_17}),
        .\SRL_SIG_reg[0][0] (p_0_U_n_19),
        .\SRL_SIG_reg[0][10] (p_0_U_n_29),
        .\SRL_SIG_reg[0][11] (p_0_U_n_30),
        .\SRL_SIG_reg[0][12] (p_0_U_n_31),
        .\SRL_SIG_reg[0][13] (p_0_U_n_32),
        .\SRL_SIG_reg[0][14] (p_0_U_n_33),
        .\SRL_SIG_reg[0][15] (p_0_U_n_34),
        .\SRL_SIG_reg[0][15]_0 (operator_int_1_U0_n_1),
        .\SRL_SIG_reg[0][15]_1 ({arg_out_data_values_s_U_n_2,arg_out_data_values_s_U_n_3,arg_out_data_values_s_U_n_4,arg_out_data_values_s_U_n_5,arg_out_data_values_s_U_n_6,arg_out_data_values_s_U_n_7,arg_out_data_values_s_U_n_8,arg_out_data_values_s_U_n_9,arg_out_data_values_s_U_n_10,arg_out_data_values_s_U_n_11,arg_out_data_values_s_U_n_12,arg_out_data_values_s_U_n_13,arg_out_data_values_s_U_n_14,arg_out_data_values_s_U_n_15,arg_out_data_values_s_U_n_16,arg_out_data_values_s_U_n_17}),
        .\SRL_SIG_reg[0][1] (p_0_U_n_20),
        .\SRL_SIG_reg[0][2] (p_0_U_n_21),
        .\SRL_SIG_reg[0][3] (p_0_U_n_22),
        .\SRL_SIG_reg[0][4] (p_0_U_n_23),
        .\SRL_SIG_reg[0][5] (p_0_U_n_24),
        .\SRL_SIG_reg[0][6] (p_0_U_n_25),
        .\SRL_SIG_reg[0][7] (p_0_U_n_26),
        .\SRL_SIG_reg[0][8] (p_0_U_n_27),
        .\SRL_SIG_reg[0][9] (p_0_U_n_28),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_1),
        .ap_done_reg_0(ap_done_reg_3),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_data_values_s_empty_n(arg_out_data_values_s_empty_n),
        .hw_uint_16_val_V_preg(hw_uint_16_val_V_preg),
        .internal_empty_n_reg_0(p_0_U_n_18),
        .operator_int_1_U0_ap_start(operator_int_1_U0_ap_start),
        .read_1_U0_ap_continue(read_1_U0_ap_continue),
        .read_1_U0_ap_start(read_1_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d2_A_2 p_s_U
       (.ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_2),
        .ap_done_reg_0(ap_done_reg_4),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_tlast_values_empty_n(arg_out_tlast_values_empty_n),
        .internal_full_n_reg_0(operator_int_U0_n_1),
        .operator_int_U0_ap_start(operator_int_U0_ap_start),
        .read_U0_ap_continue(read_U0_ap_continue),
        .read_U0_ap_start(read_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_read_1 read_1_U0
       (.E(read_1_U0_n_1),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_3),
        .ap_done_reg_reg_0(read_1_U0_n_2),
        .\ap_return_preg_reg[0]_0 (read_1_U0_n_18),
        .\ap_return_preg_reg[0]_1 (arg_out_data_values_s_U_n_18),
        .\ap_return_preg_reg[10]_0 (read_1_U0_n_8),
        .\ap_return_preg_reg[10]_1 (arg_out_data_values_s_U_n_28),
        .\ap_return_preg_reg[11]_0 (read_1_U0_n_7),
        .\ap_return_preg_reg[11]_1 (arg_out_data_values_s_U_n_29),
        .\ap_return_preg_reg[12]_0 (read_1_U0_n_6),
        .\ap_return_preg_reg[12]_1 (arg_out_data_values_s_U_n_30),
        .\ap_return_preg_reg[13]_0 (read_1_U0_n_5),
        .\ap_return_preg_reg[13]_1 (arg_out_data_values_s_U_n_31),
        .\ap_return_preg_reg[14]_0 (read_1_U0_n_4),
        .\ap_return_preg_reg[14]_1 (arg_out_data_values_s_U_n_32),
        .\ap_return_preg_reg[15]_0 (read_1_U0_n_3),
        .\ap_return_preg_reg[15]_1 (arg_out_data_values_s_U_n_33),
        .\ap_return_preg_reg[1]_0 (read_1_U0_n_17),
        .\ap_return_preg_reg[1]_1 (arg_out_data_values_s_U_n_19),
        .\ap_return_preg_reg[2]_0 (read_1_U0_n_16),
        .\ap_return_preg_reg[2]_1 (arg_out_data_values_s_U_n_20),
        .\ap_return_preg_reg[3]_0 (read_1_U0_n_15),
        .\ap_return_preg_reg[3]_1 (arg_out_data_values_s_U_n_21),
        .\ap_return_preg_reg[4]_0 (read_1_U0_n_14),
        .\ap_return_preg_reg[4]_1 (arg_out_data_values_s_U_n_22),
        .\ap_return_preg_reg[5]_0 (read_1_U0_n_13),
        .\ap_return_preg_reg[5]_1 (arg_out_data_values_s_U_n_23),
        .\ap_return_preg_reg[6]_0 (read_1_U0_n_12),
        .\ap_return_preg_reg[6]_1 (arg_out_data_values_s_U_n_24),
        .\ap_return_preg_reg[7]_0 (read_1_U0_n_11),
        .\ap_return_preg_reg[7]_1 (arg_out_data_values_s_U_n_25),
        .\ap_return_preg_reg[8]_0 (read_1_U0_n_10),
        .\ap_return_preg_reg[8]_1 (arg_out_data_values_s_U_n_26),
        .\ap_return_preg_reg[9]_0 (read_1_U0_n_9),
        .\ap_return_preg_reg[9]_1 (arg_out_data_values_s_U_n_27),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_data_values_s_empty_n(arg_out_data_values_s_empty_n),
        .\mOutPtr_reg[1] (unoptimized_conv_3_3_U0_n_0),
        .read_1_U0_ap_continue(read_1_U0_ap_continue),
        .read_1_U0_ap_start(read_1_U0_ap_start),
        .start_for_read_1_U0_full_n(start_for_read_1_U0_full_n),
        .start_for_read_U0_full_n(start_for_read_U0_full_n),
        .unoptimized_conv_3_3_U0_ap_start(unoptimized_conv_3_3_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_read_r read_U0
       (.ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_4),
        .ap_done_reg_reg_0(read_U0_n_1),
        .ap_rst_n(ap_rst_n),
        .arg_out_tlast_values_empty_n(arg_out_tlast_values_empty_n),
        .read_U0_ap_continue(read_U0_ap_continue),
        .read_U0_ap_start(read_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_read_1_U0 start_for_read_1_U0_U
       (.E(read_1_U0_n_1),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_3),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_data_values_s_empty_n(arg_out_data_values_s_empty_n),
        .internal_full_n_reg_0(start_for_unoptimdEe_U_n_4),
        .internal_full_n_reg_1(read_1_U0_n_2),
        .read_1_U0_ap_start(read_1_U0_ap_start),
        .start_for_read_1_U0_full_n(start_for_read_1_U0_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_read_U0 start_for_read_U0_U
       (.E(arg_out_tlast_values_U_n_2),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_4),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_out_tlast_values_empty_n(arg_out_tlast_values_empty_n),
        .internal_full_n_reg_0(start_for_unoptimdEe_U_n_4),
        .internal_full_n_reg_1(read_U0_n_1),
        .read_U0_ap_start(read_U0_ap_start),
        .start_for_read_U0_full_n(start_for_read_U0_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_start_for_unoptimdEe start_for_unoptimdEe_U
       (.E(start_for_unoptimdEe_U_n_2),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_in0_hwstream_val_full_n(arg_in0_hwstream_val_full_n),
        .internal_empty_n_reg_0(start_for_unoptimdEe_U_n_4),
        .internal_empty_n_reg_1(unoptimized_conv_3_3_U0_n_1),
        .internal_empty_n_reg_2(this_assign_channel_U_n_2),
        .internal_full_n_reg_0(start_for_unoptimdEe_U_n_3),
        .internal_full_n_reg_1(unoptimized_conv_3_3_U0_n_0),
        .\mOutPtr_reg[1]_0 (unoptimized_conv_3_3_U0_n_5),
        .\mOutPtr_reg[1]_1 (unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read),
        .start_for_read_1_U0_full_n(start_for_read_1_U0_full_n),
        .start_for_read_U0_full_n(start_for_read_U0_full_n),
        .start_for_unoptimized_conv_3_3_U0_full_n(start_for_unoptimized_conv_3_3_U0_full_n),
        .start_once_reg(start_once_reg),
        .unoptimized_conv_3_3_U0_ap_start(unoptimized_conv_3_3_U0_ap_start),
        .write_U0_ap_start(write_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_3 this_assign_channel_U
       (.Block_proc75_U0_ap_continue(Block_proc75_U0_ap_continue),
        .D({this_assign_channel_U_n_3,this_assign_channel_U_n_4,this_assign_channel_U_n_5,this_assign_channel_U_n_6,this_assign_channel_U_n_7,this_assign_channel_U_n_8,this_assign_channel_U_n_9,this_assign_channel_U_n_10,this_assign_channel_U_n_11,this_assign_channel_U_n_12,this_assign_channel_U_n_13,this_assign_channel_U_n_14,this_assign_channel_U_n_15,this_assign_channel_U_n_16,this_assign_channel_U_n_17,this_assign_channel_U_n_18}),
        .E(shiftReg_ce),
        .Q(arg_in0_TVALID_int),
        .\SRL_SIG_reg[0][15] (data),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .internal_empty_n_reg_0(this_assign_channel_U_n_2),
        .\mOutPtr_reg[1]_0 (Block_proc75_U0_n_3),
        .shiftReg_ce(shiftReg_ce_0),
        .start_for_unoptimized_conv_3_3_U0_full_n(start_for_unoptimized_conv_3_3_U0_full_n),
        .start_once_reg(start_once_reg),
        .write_U0_ap_start(write_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_3_3 unoptimized_conv_3_3_U0
       (.E(unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read),
        .Q(ap_CS_fsm_state11),
        .\ap_CS_fsm_reg[10]_0 (shiftReg_ce_5),
        .\ap_CS_fsm_reg[3]_0 (unoptimized_conv_3_3_U0_n_1),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .arg_in0_hwstream_val_empty_n(arg_in0_hwstream_val_empty_n),
        .arg_out_data_values_s_full_n(arg_out_data_values_s_full_n),
        .arg_out_tlast_values_full_n(arg_out_tlast_values_full_n),
        .d0(arg_in0_hwstream_val_dout),
        .data({unoptimized_conv_3_3_U0_n_6,unoptimized_conv_3_3_U0_n_7,unoptimized_conv_3_3_U0_n_8,unoptimized_conv_3_3_U0_n_9,unoptimized_conv_3_3_U0_n_10,unoptimized_conv_3_3_U0_n_11,unoptimized_conv_3_3_U0_n_12,unoptimized_conv_3_3_U0_n_13,unoptimized_conv_3_3_U0_n_14,unoptimized_conv_3_3_U0_n_15,unoptimized_conv_3_3_U0_n_16,unoptimized_conv_3_3_U0_n_17,unoptimized_conv_3_3_U0_n_18,unoptimized_conv_3_3_U0_n_19,unoptimized_conv_3_3_U0_n_20,unoptimized_conv_3_3_U0_n_21}),
        .\hw_output_s0_y_v33_a_reg_197_reg[4]_0 (unoptimized_conv_3_3_U0_n_5),
        .start_for_read_1_U0_full_n(start_for_read_1_U0_full_n),
        .start_for_read_U0_full_n(start_for_read_U0_full_n),
        .start_once_reg_reg_0(unoptimized_conv_3_3_U0_n_0),
        .unoptimized_conv_3_3_U0_ap_start(unoptimized_conv_3_3_U0_ap_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w1_d2_A_4 val_assign_1_channel_U
       (.ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_2),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .internal_empty_n_reg_0(Block_proc7476_U0_n_3),
        .internal_full_n_reg_0(val_assign_1_channel_U_n_1),
        .\mOutPtr_reg[1]_0 (Block_proc7476_U0_n_0),
        .operator_int_U0_ap_start(operator_int_U0_ap_start),
        .val_assign_1_channel_empty_n(val_assign_1_channel_empty_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_w16_d2_A_5 val_assign_channel_U
       (.D({val_assign_channel_U_n_18,val_assign_channel_U_n_19,val_assign_channel_U_n_20,val_assign_channel_U_n_21,val_assign_channel_U_n_22,val_assign_channel_U_n_23,val_assign_channel_U_n_24,val_assign_channel_U_n_25,val_assign_channel_U_n_26,val_assign_channel_U_n_27,val_assign_channel_U_n_28,val_assign_channel_U_n_29,val_assign_channel_U_n_30,val_assign_channel_U_n_31,val_assign_channel_U_n_32,val_assign_channel_U_n_33}),
        .\SRL_SIG_reg[0][15] ({val_assign_channel_U_n_1,val_assign_channel_U_n_2,val_assign_channel_U_n_3,val_assign_channel_U_n_4,val_assign_channel_U_n_5,val_assign_channel_U_n_6,val_assign_channel_U_n_7,val_assign_channel_U_n_8,val_assign_channel_U_n_9,val_assign_channel_U_n_10,val_assign_channel_U_n_11,val_assign_channel_U_n_12,val_assign_channel_U_n_13,val_assign_channel_U_n_14,val_assign_channel_U_n_15,val_assign_channel_U_n_16}),
        .\SRL_SIG_reg[0][15]_0 ({p_0_U_n_2,p_0_U_n_3,p_0_U_n_4,p_0_U_n_5,p_0_U_n_6,p_0_U_n_7,p_0_U_n_8,p_0_U_n_9,p_0_U_n_10,p_0_U_n_11,p_0_U_n_12,p_0_U_n_13,p_0_U_n_14,p_0_U_n_15,p_0_U_n_16,p_0_U_n_17}),
        .ap_clk(ap_clk),
        .ap_done_reg(ap_done_reg_1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .internal_empty_n_reg_0(Block_proc7476_U0_n_3),
        .internal_full_n_reg_0(val_assign_channel_U_n_17),
        .\mOutPtr_reg[1]_0 (Block_proc7476_U0_n_2),
        .\odata_reg[0] (Block_proc7476_U0_n_1),
        .\odata_reg[15] ({Block_proc7476_U0_n_21,Block_proc7476_U0_n_22,Block_proc7476_U0_n_23,Block_proc7476_U0_n_24,Block_proc7476_U0_n_25,Block_proc7476_U0_n_26,Block_proc7476_U0_n_27,Block_proc7476_U0_n_28,Block_proc7476_U0_n_29,Block_proc7476_U0_n_30,Block_proc7476_U0_n_31,Block_proc7476_U0_n_32,Block_proc7476_U0_n_33,Block_proc7476_U0_n_34,Block_proc7476_U0_n_35,Block_proc7476_U0_n_36}),
        .operator_int_1_U0_ap_start(operator_int_1_U0_ap_start),
        .val_assign_channel_empty_n(val_assign_channel_empty_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_r write_U0
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg_0(start_for_unoptimdEe_U_n_3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_bkb
   (\hw_input_global_wrap_2_reg_186_reg[4] ,
    we0,
    \hw_input_global_wrap_2_reg_186_reg[1] ,
    D,
    S,
    q0,
    C,
    q1,
    ram_reg_bram_0,
    ram_reg_bram_0_0,
    ram_reg_bram_1,
    ram_reg_bram_1_0,
    ram_reg_bram_0_1,
    ram_reg_bram_1_1,
    ram_reg_bram_1_2,
    DI,
    \hw_input_global_wrap_7_reg_593_reg[9] ,
    \hw_input_global_wrap_7_reg_593_reg[10] ,
    ram_reg_bram_0_2,
    Q,
    ram_reg_bram_0_3,
    data0,
    ram_reg_bram_0_4,
    ram_reg_bram_1_3,
    data4,
    arg_in0_hwstream_val_empty_n,
    ram_reg_bram_0_5,
    add_ln58_2_fu_476_p2__2_carry__0_i_8,
    \tmp_i231_reg_661_reg[13] ,
    \add_ln58_reg_666_reg[15] ,
    ap_clk,
    d0);
  output \hw_input_global_wrap_2_reg_186_reg[4] ;
  output we0;
  output \hw_input_global_wrap_2_reg_186_reg[1] ;
  output [0:0]D;
  output [5:0]S;
  output [15:0]q0;
  output [1:0]C;
  output [13:0]q1;
  output [5:0]ram_reg_bram_0;
  output [4:0]ram_reg_bram_0_0;
  output [6:0]ram_reg_bram_1;
  output [6:0]ram_reg_bram_1_0;
  output [7:0]ram_reg_bram_0_1;
  output [5:0]ram_reg_bram_1_1;
  output [7:0]ram_reg_bram_1_2;
  output [3:0]DI;
  output [6:0]\hw_input_global_wrap_7_reg_593_reg[9] ;
  output [7:0]\hw_input_global_wrap_7_reg_593_reg[10] ;
  output [7:0]ram_reg_bram_0_2;
  input [5:0]Q;
  input [5:0]ram_reg_bram_0_3;
  input [11:0]data0;
  input [5:0]ram_reg_bram_0_4;
  input [6:0]ram_reg_bram_1_3;
  input [11:0]data4;
  input arg_in0_hwstream_val_empty_n;
  input [5:0]ram_reg_bram_0_5;
  input [14:0]add_ln58_2_fu_476_p2__2_carry__0_i_8;
  input [13:0]\tmp_i231_reg_661_reg[13] ;
  input [15:0]\add_ln58_reg_666_reg[15] ;
  input ap_clk;
  input [15:0]d0;

  wire [1:0]C;
  wire [0:0]D;
  wire [3:0]DI;
  wire [5:0]Q;
  wire [5:0]S;
  wire [14:0]add_ln58_2_fu_476_p2__2_carry__0_i_8;
  wire [15:0]\add_ln58_reg_666_reg[15] ;
  wire ap_clk;
  wire arg_in0_hwstream_val_empty_n;
  wire [15:0]d0;
  wire [11:0]data0;
  wire [11:0]data4;
  wire \hw_input_global_wrap_2_reg_186_reg[1] ;
  wire \hw_input_global_wrap_2_reg_186_reg[4] ;
  wire [7:0]\hw_input_global_wrap_7_reg_593_reg[10] ;
  wire [6:0]\hw_input_global_wrap_7_reg_593_reg[9] ;
  wire [15:0]q0;
  wire [13:0]q1;
  wire [5:0]ram_reg_bram_0;
  wire [4:0]ram_reg_bram_0_0;
  wire [7:0]ram_reg_bram_0_1;
  wire [7:0]ram_reg_bram_0_2;
  wire [5:0]ram_reg_bram_0_3;
  wire [5:0]ram_reg_bram_0_4;
  wire [5:0]ram_reg_bram_0_5;
  wire [6:0]ram_reg_bram_1;
  wire [6:0]ram_reg_bram_1_0;
  wire [5:0]ram_reg_bram_1_1;
  wire [7:0]ram_reg_bram_1_2;
  wire [6:0]ram_reg_bram_1_3;
  wire [13:0]\tmp_i231_reg_661_reg[13] ;
  wire we0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_bkb_ram unoptimized_conv_bkb_ram_U
       (.C(C),
        .D(D),
        .DI(DI),
        .Q(Q),
        .S(S),
        .WEA(we0),
        .add_ln58_2_fu_476_p2__2_carry__0_i_8_0(add_ln58_2_fu_476_p2__2_carry__0_i_8),
        .\add_ln58_reg_666_reg[15] (\add_ln58_reg_666_reg[15] ),
        .ap_clk(ap_clk),
        .arg_in0_hwstream_val_empty_n(arg_in0_hwstream_val_empty_n),
        .d0(d0),
        .data0(data0),
        .data4(data4),
        .\hw_input_global_wrap_2_reg_186_reg[1] (\hw_input_global_wrap_2_reg_186_reg[1] ),
        .\hw_input_global_wrap_2_reg_186_reg[4] (\hw_input_global_wrap_2_reg_186_reg[4] ),
        .\hw_input_global_wrap_7_reg_593_reg[10] (\hw_input_global_wrap_7_reg_593_reg[10] ),
        .\hw_input_global_wrap_7_reg_593_reg[9] (\hw_input_global_wrap_7_reg_593_reg[9] ),
        .q0(q0),
        .q1(q1),
        .ram_reg_bram_0_0(ram_reg_bram_0),
        .ram_reg_bram_0_1(ram_reg_bram_0_0),
        .ram_reg_bram_0_2(ram_reg_bram_0_1),
        .ram_reg_bram_0_3(ram_reg_bram_0_2),
        .ram_reg_bram_0_4(ram_reg_bram_0_3),
        .ram_reg_bram_0_5(ram_reg_bram_0_4),
        .ram_reg_bram_0_6(ram_reg_bram_0_5),
        .ram_reg_bram_1_0(ram_reg_bram_1),
        .ram_reg_bram_1_1(ram_reg_bram_1_0),
        .ram_reg_bram_1_2(ram_reg_bram_1_1),
        .ram_reg_bram_1_3(ram_reg_bram_1_2),
        .ram_reg_bram_1_4(ram_reg_bram_1_3),
        .\tmp_i231_reg_661_reg[13] (\tmp_i231_reg_661_reg[13] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unoptimized_conv_bkb_ram
   (\hw_input_global_wrap_2_reg_186_reg[4] ,
    WEA,
    \hw_input_global_wrap_2_reg_186_reg[1] ,
    D,
    S,
    q0,
    C,
    q1,
    ram_reg_bram_0_0,
    ram_reg_bram_0_1,
    ram_reg_bram_1_0,
    ram_reg_bram_1_1,
    ram_reg_bram_0_2,
    ram_reg_bram_1_2,
    ram_reg_bram_1_3,
    DI,
    \hw_input_global_wrap_7_reg_593_reg[9] ,
    \hw_input_global_wrap_7_reg_593_reg[10] ,
    ram_reg_bram_0_3,
    Q,
    ram_reg_bram_0_4,
    data0,
    ram_reg_bram_0_5,
    ram_reg_bram_1_4,
    data4,
    arg_in0_hwstream_val_empty_n,
    ram_reg_bram_0_6,
    add_ln58_2_fu_476_p2__2_carry__0_i_8_0,
    \tmp_i231_reg_661_reg[13] ,
    \add_ln58_reg_666_reg[15] ,
    ap_clk,
    d0);
  output \hw_input_global_wrap_2_reg_186_reg[4] ;
  output [0:0]WEA;
  output \hw_input_global_wrap_2_reg_186_reg[1] ;
  output [0:0]D;
  output [5:0]S;
  output [15:0]q0;
  output [1:0]C;
  output [13:0]q1;
  output [5:0]ram_reg_bram_0_0;
  output [4:0]ram_reg_bram_0_1;
  output [6:0]ram_reg_bram_1_0;
  output [6:0]ram_reg_bram_1_1;
  output [7:0]ram_reg_bram_0_2;
  output [5:0]ram_reg_bram_1_2;
  output [7:0]ram_reg_bram_1_3;
  output [3:0]DI;
  output [6:0]\hw_input_global_wrap_7_reg_593_reg[9] ;
  output [7:0]\hw_input_global_wrap_7_reg_593_reg[10] ;
  output [7:0]ram_reg_bram_0_3;
  input [5:0]Q;
  input [5:0]ram_reg_bram_0_4;
  input [11:0]data0;
  input [5:0]ram_reg_bram_0_5;
  input [6:0]ram_reg_bram_1_4;
  input [11:0]data4;
  input arg_in0_hwstream_val_empty_n;
  input [5:0]ram_reg_bram_0_6;
  input [14:0]add_ln58_2_fu_476_p2__2_carry__0_i_8_0;
  input [13:0]\tmp_i231_reg_661_reg[13] ;
  input [15:0]\add_ln58_reg_666_reg[15] ;
  input ap_clk;
  input [15:0]d0;

  wire [1:0]C;
  wire [0:0]D;
  wire [3:0]DI;
  wire [5:0]Q;
  wire [5:0]S;
  wire [0:0]WEA;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_22_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_23_n_0;
  wire add_ln58_2_fu_476_p2__2_carry__0_i_24_n_0;
  wire [14:0]add_ln58_2_fu_476_p2__2_carry__0_i_8_0;
  wire add_ln58_2_fu_476_p2__2_carry_i_12_n_0;
  wire add_ln58_2_fu_476_p2__2_carry_i_13_n_0;
  wire [15:0]\add_ln58_reg_666_reg[15] ;
  wire ap_clk;
  wire arg_in0_hwstream_val_empty_n;
  wire [15:0]d0;
  wire [11:0]data0;
  wire [11:0]data4;
  wire [11:6]data5;
  wire \hw_input_global_wrap_2_reg_186_reg[1] ;
  wire \hw_input_global_wrap_2_reg_186_reg[4] ;
  wire [7:0]\hw_input_global_wrap_7_reg_593_reg[10] ;
  wire [6:0]\hw_input_global_wrap_7_reg_593_reg[9] ;
  wire [11:0]hw_input_global_wrap_address1;
  wire hw_input_global_wrap_ce0;
  wire [15:15]hw_input_global_wrap_q1;
  wire p_0_in;
  wire [15:0]q0;
  wire [13:0]q1;
  wire [5:0]ram_reg_bram_0_0;
  wire [4:0]ram_reg_bram_0_1;
  wire [7:0]ram_reg_bram_0_2;
  wire [7:0]ram_reg_bram_0_3;
  wire [5:0]ram_reg_bram_0_4;
  wire [5:0]ram_reg_bram_0_5;
  wire [5:0]ram_reg_bram_0_6;
  wire ram_reg_bram_0_i_10_n_0;
  wire ram_reg_bram_0_i_11_n_0;
  wire ram_reg_bram_0_i_12_n_0;
  wire ram_reg_bram_0_i_13_n_0;
  wire ram_reg_bram_0_i_14_n_0;
  wire ram_reg_bram_0_i_37_n_0;
  wire ram_reg_bram_0_i_38_n_3;
  wire ram_reg_bram_0_i_38_n_4;
  wire ram_reg_bram_0_i_38_n_5;
  wire ram_reg_bram_0_i_38_n_6;
  wire ram_reg_bram_0_i_38_n_7;
  wire ram_reg_bram_0_i_39_n_0;
  wire ram_reg_bram_0_i_3_n_0;
  wire ram_reg_bram_0_i_40_n_0;
  wire ram_reg_bram_0_i_41_n_0;
  wire ram_reg_bram_0_i_42_n_0;
  wire ram_reg_bram_0_i_43_n_0;
  wire ram_reg_bram_0_i_44_n_0;
  wire ram_reg_bram_0_i_45_n_0;
  wire ram_reg_bram_0_i_46_n_0;
  wire ram_reg_bram_0_i_47_n_0;
  wire ram_reg_bram_0_i_48_n_0;
  wire ram_reg_bram_0_i_49_n_0;
  wire ram_reg_bram_0_i_4_n_0;
  wire ram_reg_bram_0_i_50_n_0;
  wire ram_reg_bram_0_i_51_n_0;
  wire ram_reg_bram_0_i_52_n_0;
  wire ram_reg_bram_0_i_5_n_0;
  wire ram_reg_bram_0_i_6_n_0;
  wire ram_reg_bram_0_i_7_n_0;
  wire ram_reg_bram_0_i_8_n_0;
  wire ram_reg_bram_0_i_9_n_0;
  wire [6:0]ram_reg_bram_1_0;
  wire [6:0]ram_reg_bram_1_1;
  wire [5:0]ram_reg_bram_1_2;
  wire [7:0]ram_reg_bram_1_3;
  wire [6:0]ram_reg_bram_1_4;
  wire [13:0]\tmp_i231_reg_661_reg[13] ;
  wire NLW_ram_reg_bram_0_CASOUTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_bram_0_CASOUTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_bram_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [31:8]NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED;
  wire [31:8]NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED;
  wire [3:1]NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [3:1]NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_bram_0_RDADDRECC_UNCONNECTED;
  wire [7:5]NLW_ram_reg_bram_0_i_38_CO_UNCONNECTED;
  wire [7:0]NLW_ram_reg_bram_0_i_38_O_UNCONNECTED;
  wire NLW_ram_reg_bram_1_CASOUTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_bram_1_CASOUTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_bram_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_bram_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_bram_1_CASDOUTA_UNCONNECTED;
  wire [31:0]NLW_ram_reg_bram_1_CASDOUTB_UNCONNECTED;
  wire [3:0]NLW_ram_reg_bram_1_CASDOUTPA_UNCONNECTED;
  wire [3:0]NLW_ram_reg_bram_1_CASDOUTPB_UNCONNECTED;
  wire [31:7]NLW_ram_reg_bram_1_DOUTADOUT_UNCONNECTED;
  wire [31:7]NLW_ram_reg_bram_1_DOUTBDOUT_UNCONNECTED;
  wire [3:0]NLW_ram_reg_bram_1_DOUTPADOUTP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_bram_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_bram_1_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \add_ln187_reg_604[5]_i_1 
       (.I0(data4[5]),
        .I1(data4[4]),
        .I2(data4[2]),
        .I3(data4[1]),
        .I4(data4[3]),
        .O(D));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_1
       (.I0(\add_ln58_reg_666_reg[15] [9]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0),
        .I2(q0[10]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[9]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[11]),
        .O(\hw_input_global_wrap_7_reg_593_reg[9] [6]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_10
       (.I0(\hw_input_global_wrap_7_reg_593_reg[9] [5]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0),
        .I2(\add_ln58_reg_666_reg[15] [9]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[11]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[9]),
        .I5(q0[10]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [5]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_11
       (.I0(\hw_input_global_wrap_7_reg_593_reg[9] [4]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0),
        .I2(\add_ln58_reg_666_reg[15] [8]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[10]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[8]),
        .I5(q0[9]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [4]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_12
       (.I0(\hw_input_global_wrap_7_reg_593_reg[9] [3]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0),
        .I2(\add_ln58_reg_666_reg[15] [7]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[9]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[7]),
        .I5(q0[8]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [3]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_13
       (.I0(\hw_input_global_wrap_7_reg_593_reg[9] [2]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0),
        .I2(\add_ln58_reg_666_reg[15] [6]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[8]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[6]),
        .I5(q0[7]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [2]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_14
       (.I0(\hw_input_global_wrap_7_reg_593_reg[9] [1]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0),
        .I2(\add_ln58_reg_666_reg[15] [5]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[7]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[5]),
        .I5(q0[6]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [1]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_15
       (.I0(\hw_input_global_wrap_7_reg_593_reg[9] [0]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0),
        .I2(\add_ln58_reg_666_reg[15] [4]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[6]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[4]),
        .I5(q0[5]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_16
       (.I0(q0[11]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[12]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[10]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_17
       (.I0(q0[10]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[11]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[9]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_18
       (.I0(q0[9]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[10]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[8]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_19
       (.I0(q0[8]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[9]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[7]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_2
       (.I0(\add_ln58_reg_666_reg[15] [8]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_17_n_0),
        .I2(q0[9]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[8]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[10]),
        .O(\hw_input_global_wrap_7_reg_593_reg[9] [5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_20
       (.I0(q0[7]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[8]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[6]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_21
       (.I0(q0[6]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[7]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[5]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_22
       (.I0(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[12]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[10]),
        .I2(q0[11]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_22_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_23
       (.I0(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[12]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[14]),
        .I2(q0[13]),
        .I3(\add_ln58_reg_666_reg[15] [11]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_24
       (.I0(q0[12]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[13]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[11]),
        .O(add_ln58_2_fu_476_p2__2_carry__0_i_24_n_0));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_3
       (.I0(\add_ln58_reg_666_reg[15] [7]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_18_n_0),
        .I2(q0[8]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[7]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[9]),
        .O(\hw_input_global_wrap_7_reg_593_reg[9] [4]));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_4
       (.I0(\add_ln58_reg_666_reg[15] [6]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_19_n_0),
        .I2(q0[7]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[6]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[8]),
        .O(\hw_input_global_wrap_7_reg_593_reg[9] [3]));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_5
       (.I0(\add_ln58_reg_666_reg[15] [5]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_20_n_0),
        .I2(q0[6]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[5]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[7]),
        .O(\hw_input_global_wrap_7_reg_593_reg[9] [2]));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_6
       (.I0(\add_ln58_reg_666_reg[15] [4]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_21_n_0),
        .I2(q0[5]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[4]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[6]),
        .O(\hw_input_global_wrap_7_reg_593_reg[9] [1]));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_7
       (.I0(\add_ln58_reg_666_reg[15] [3]),
        .I1(add_ln58_2_fu_476_p2__2_carry_i_13_n_0),
        .I2(q0[4]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[3]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[5]),
        .O(\hw_input_global_wrap_7_reg_593_reg[9] [0]));
  LUT6 #(
    .INIT(64'h87E11E871E87781E)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_8
       (.I0(add_ln58_2_fu_476_p2__2_carry__0_i_22_n_0),
        .I1(\add_ln58_reg_666_reg[15] [10]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_23_n_0),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[13]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[11]),
        .I5(q0[12]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [7]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry__0_i_9
       (.I0(\hw_input_global_wrap_7_reg_593_reg[9] [6]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_24_n_0),
        .I2(\add_ln58_reg_666_reg[15] [10]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[12]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[10]),
        .I5(q0[11]),
        .O(\hw_input_global_wrap_7_reg_593_reg[10] [6]));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    add_ln58_2_fu_476_p2__2_carry_i_1
       (.I0(\add_ln58_reg_666_reg[15] [2]),
        .I1(add_ln58_2_fu_476_p2__2_carry_i_12_n_0),
        .I2(q0[3]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[2]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[4]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry_i_10
       (.I0(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[2]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[0]),
        .I2(q0[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    add_ln58_2_fu_476_p2__2_carry_i_11
       (.I0(q0[0]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[1]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry_i_12
       (.I0(q0[4]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[5]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[3]),
        .O(add_ln58_2_fu_476_p2__2_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry_i_13
       (.I0(q0[5]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[6]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[4]),
        .O(add_ln58_2_fu_476_p2__2_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h3AA3288228822882)) 
    add_ln58_2_fu_476_p2__2_carry_i_2
       (.I0(\add_ln58_reg_666_reg[15] [1]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[2]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[4]),
        .I3(q0[3]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[0]),
        .I5(\add_ln58_reg_666_reg[15] [0]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hF00F0FF087787887)) 
    add_ln58_2_fu_476_p2__2_carry_i_3
       (.I0(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[0]),
        .I1(\add_ln58_reg_666_reg[15] [0]),
        .I2(\add_ln58_reg_666_reg[15] [1]),
        .I3(q0[3]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[4]),
        .I5(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[2]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h69)) 
    add_ln58_2_fu_476_p2__2_carry_i_4
       (.I0(q0[2]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[3]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry_i_6
       (.I0(DI[3]),
        .I1(add_ln58_2_fu_476_p2__2_carry_i_13_n_0),
        .I2(\add_ln58_reg_666_reg[15] [3]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[5]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[3]),
        .I5(q0[4]),
        .O(S[5]));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    add_ln58_2_fu_476_p2__2_carry_i_7
       (.I0(DI[2]),
        .I1(add_ln58_2_fu_476_p2__2_carry_i_12_n_0),
        .I2(\add_ln58_reg_666_reg[15] [2]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[4]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[2]),
        .I5(q0[3]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'h6A56)) 
    add_ln58_2_fu_476_p2__2_carry_i_8
       (.I0(DI[1]),
        .I1(q0[2]),
        .I2(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[1]),
        .I3(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9669966969969669)) 
    add_ln58_2_fu_476_p2__2_carry_i_9
       (.I0(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[1]),
        .I1(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[3]),
        .I2(q0[2]),
        .I3(\add_ln58_reg_666_reg[15] [0]),
        .I4(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[0]),
        .I5(add_ln58_2_fu_476_p2__2_carry__0_i_8_0[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_5_reg_676_reg_i_1
       (.I0(C[0]),
        .I1(q1[0]),
        .O(C[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_1
       (.I0(q0[15]),
        .I1(\add_ln58_reg_666_reg[15] [15]),
        .O(ram_reg_bram_1_3[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_2
       (.I0(q0[14]),
        .I1(\add_ln58_reg_666_reg[15] [14]),
        .O(ram_reg_bram_1_3[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_3
       (.I0(q0[13]),
        .I1(\add_ln58_reg_666_reg[15] [13]),
        .O(ram_reg_bram_1_3[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_4
       (.I0(q0[12]),
        .I1(\add_ln58_reg_666_reg[15] [12]),
        .O(ram_reg_bram_1_3[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_5
       (.I0(q0[11]),
        .I1(\add_ln58_reg_666_reg[15] [11]),
        .O(ram_reg_bram_1_3[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_6
       (.I0(q0[10]),
        .I1(\add_ln58_reg_666_reg[15] [10]),
        .O(ram_reg_bram_1_3[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_7
       (.I0(q0[9]),
        .I1(\add_ln58_reg_666_reg[15] [9]),
        .O(ram_reg_bram_1_3[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry__0_i_8
       (.I0(q0[8]),
        .I1(\add_ln58_reg_666_reg[15] [8]),
        .O(ram_reg_bram_1_3[0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_1
       (.I0(q0[7]),
        .I1(\add_ln58_reg_666_reg[15] [7]),
        .O(ram_reg_bram_0_3[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_2
       (.I0(q0[6]),
        .I1(\add_ln58_reg_666_reg[15] [6]),
        .O(ram_reg_bram_0_3[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_3
       (.I0(q0[5]),
        .I1(\add_ln58_reg_666_reg[15] [5]),
        .O(ram_reg_bram_0_3[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_4
       (.I0(q0[4]),
        .I1(\add_ln58_reg_666_reg[15] [4]),
        .O(ram_reg_bram_0_3[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_5
       (.I0(q0[3]),
        .I1(\add_ln58_reg_666_reg[15] [3]),
        .O(ram_reg_bram_0_3[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_6
       (.I0(q0[2]),
        .I1(\add_ln58_reg_666_reg[15] [2]),
        .O(ram_reg_bram_0_3[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_7
       (.I0(q0[1]),
        .I1(\add_ln58_reg_666_reg[15] [1]),
        .O(ram_reg_bram_0_3[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln58_fu_465_p2_carry_i_8
       (.I0(q0[0]),
        .I1(\add_ln58_reg_666_reg[15] [0]),
        .O(ram_reg_bram_0_3[0]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry__0_i_1
       (.I0(q1[11]),
        .I1(hw_input_global_wrap_q1),
        .O(ram_reg_bram_1_1[6]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry__0_i_2
       (.I0(q1[10]),
        .I1(q1[13]),
        .O(ram_reg_bram_1_1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry__0_i_3
       (.I0(q1[9]),
        .I1(q1[12]),
        .O(ram_reg_bram_1_1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry__0_i_4
       (.I0(q1[8]),
        .I1(q1[11]),
        .O(ram_reg_bram_1_1[3]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry__0_i_5
       (.I0(q1[7]),
        .I1(q1[10]),
        .O(ram_reg_bram_1_1[2]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry__0_i_6
       (.I0(q1[6]),
        .I1(q1[9]),
        .O(ram_reg_bram_1_1[1]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry__0_i_7
       (.I0(q1[5]),
        .I1(q1[8]),
        .O(ram_reg_bram_1_1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry_i_2
       (.I0(q1[4]),
        .I1(q1[7]),
        .O(ram_reg_bram_0_0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry_i_3
       (.I0(q1[3]),
        .I1(q1[6]),
        .O(ram_reg_bram_0_0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry_i_4
       (.I0(q1[2]),
        .I1(q1[5]),
        .O(ram_reg_bram_0_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry_i_5
       (.I0(q1[1]),
        .I1(q1[4]),
        .O(ram_reg_bram_0_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry_i_6
       (.I0(q1[0]),
        .I1(q1[3]),
        .O(ram_reg_bram_0_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_522_p2_carry_i_7
       (.I0(C[0]),
        .I1(q1[2]),
        .O(ram_reg_bram_0_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry__0_i_1
       (.I0(q1[10]),
        .I1(hw_input_global_wrap_q1),
        .O(ram_reg_bram_1_0[6]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry__0_i_2
       (.I0(q1[9]),
        .I1(q1[13]),
        .O(ram_reg_bram_1_0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry__0_i_3
       (.I0(q1[8]),
        .I1(q1[12]),
        .O(ram_reg_bram_1_0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry__0_i_4
       (.I0(q1[7]),
        .I1(q1[11]),
        .O(ram_reg_bram_1_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry__0_i_5
       (.I0(q1[6]),
        .I1(q1[10]),
        .O(ram_reg_bram_1_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry__0_i_6
       (.I0(q1[5]),
        .I1(q1[9]),
        .O(ram_reg_bram_1_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry__0_i_7
       (.I0(q1[4]),
        .I1(q1[8]),
        .O(ram_reg_bram_1_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry_i_1
       (.I0(q1[3]),
        .I1(q1[7]),
        .O(ram_reg_bram_0_1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry_i_2
       (.I0(q1[2]),
        .I1(q1[6]),
        .O(ram_reg_bram_0_1[3]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry_i_3
       (.I0(q1[1]),
        .I1(q1[5]),
        .O(ram_reg_bram_0_1[2]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry_i_4
       (.I0(q1[0]),
        .I1(q1[4]),
        .O(ram_reg_bram_0_1[1]));
  LUT2 #(
    .INIT(4'h9)) 
    grp_fu_530_p2_carry_i_5
       (.I0(C[0]),
        .I1(q1[3]),
        .O(ram_reg_bram_0_1[0]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \hw_input_global_wrap_1_reg_175[6]_i_2 
       (.I0(\hw_input_global_wrap_2_reg_186_reg[1] ),
        .I1(ram_reg_bram_1_4[4]),
        .I2(ram_reg_bram_1_4[6]),
        .I3(ram_reg_bram_1_4[5]),
        .I4(ram_reg_bram_0_4[0]),
        .O(\hw_input_global_wrap_2_reg_186_reg[4] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "unoptimized_conv_3_3_U0/hw_input_global_wrap_U/unoptimized_conv_bkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg_bram_0
       (.ADDRARDADDR({ram_reg_bram_0_i_3_n_0,ram_reg_bram_0_i_4_n_0,ram_reg_bram_0_i_5_n_0,ram_reg_bram_0_i_6_n_0,ram_reg_bram_0_i_7_n_0,ram_reg_bram_0_i_8_n_0,ram_reg_bram_0_i_9_n_0,ram_reg_bram_0_i_10_n_0,ram_reg_bram_0_i_11_n_0,ram_reg_bram_0_i_12_n_0,ram_reg_bram_0_i_13_n_0,ram_reg_bram_0_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({hw_input_global_wrap_address1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_ram_reg_bram_0_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_ram_reg_bram_0_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_ram_reg_bram_0_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_ram_reg_bram_0_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_ram_reg_bram_0_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_ram_reg_bram_0_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_ram_reg_bram_0_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,d0[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b1}),
        .DOUTADOUT({NLW_ram_reg_bram_0_DOUTADOUT_UNCONNECTED[31:8],q0[7:0]}),
        .DOUTBDOUT({NLW_ram_reg_bram_0_DOUTBDOUT_UNCONNECTED[31:8],q1[6:0],C[0]}),
        .DOUTPADOUTP({NLW_ram_reg_bram_0_DOUTPADOUTP_UNCONNECTED[3:1],q0[8]}),
        .DOUTPBDOUTP({NLW_ram_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[3:1],q1[7]}),
        .ECCPARITY(NLW_ram_reg_bram_0_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(hw_input_global_wrap_ce0),
        .ENBWREN(p_0_in),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_ram_reg_bram_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_bram_0_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFFFFFFF)) 
    ram_reg_bram_0_i_1
       (.I0(\hw_input_global_wrap_2_reg_186_reg[4] ),
        .I1(arg_in0_hwstream_val_empty_n),
        .I2(ram_reg_bram_0_4[0]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(ram_reg_bram_0_4[1]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(hw_input_global_wrap_ce0));
  LUT6 #(
    .INIT(64'hAAAAA0AA0A020002)) 
    ram_reg_bram_0_i_10
       (.I0(ram_reg_bram_0_i_46_n_0),
        .I1(ram_reg_bram_0_4[3]),
        .I2(ram_reg_bram_0_4[5]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(data4[4]),
        .I5(data0[4]),
        .O(ram_reg_bram_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000FFCF3101)) 
    ram_reg_bram_0_i_11
       (.I0(ram_reg_bram_0_4[3]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(data4[3]),
        .I4(data0[3]),
        .I5(ram_reg_bram_0_i_47_n_0),
        .O(ram_reg_bram_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h00000000FFCF3101)) 
    ram_reg_bram_0_i_12
       (.I0(ram_reg_bram_0_4[3]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(data4[2]),
        .I4(data0[2]),
        .I5(ram_reg_bram_0_i_48_n_0),
        .O(ram_reg_bram_0_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAAAA0AA0A020002)) 
    ram_reg_bram_0_i_13
       (.I0(ram_reg_bram_0_i_49_n_0),
        .I1(ram_reg_bram_0_4[3]),
        .I2(ram_reg_bram_0_4[5]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(data4[1]),
        .I5(data0[1]),
        .O(ram_reg_bram_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h00000000FFCF3101)) 
    ram_reg_bram_0_i_14
       (.I0(ram_reg_bram_0_4[3]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(data4[0]),
        .I4(data0[0]),
        .I5(ram_reg_bram_0_i_50_n_0),
        .O(ram_reg_bram_0_i_14_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    ram_reg_bram_0_i_15
       (.I0(data0[11]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(data4[11]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(Q[5]),
        .O(hw_input_global_wrap_address1[11]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    ram_reg_bram_0_i_16
       (.I0(data0[10]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(data4[10]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(Q[4]),
        .O(hw_input_global_wrap_address1[10]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    ram_reg_bram_0_i_17
       (.I0(data0[9]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(data4[9]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(Q[3]),
        .O(hw_input_global_wrap_address1[9]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    ram_reg_bram_0_i_18
       (.I0(data0[8]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(data4[8]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(Q[2]),
        .O(hw_input_global_wrap_address1[8]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    ram_reg_bram_0_i_19
       (.I0(data0[7]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(data4[7]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(Q[1]),
        .O(hw_input_global_wrap_address1[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ram_reg_bram_0_i_2
       (.I0(ram_reg_bram_0_4[2]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[3]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    ram_reg_bram_0_i_20
       (.I0(data0[6]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(data4[6]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(Q[0]),
        .O(hw_input_global_wrap_address1[6]));
  LUT6 #(
    .INIT(64'hFFFCFFFA000C000A)) 
    ram_reg_bram_0_i_21
       (.I0(D),
        .I1(data4[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(ram_reg_bram_0_6[5]),
        .O(hw_input_global_wrap_address1[5]));
  LUT6 #(
    .INIT(64'hFFFCFFF5000C0005)) 
    ram_reg_bram_0_i_22
       (.I0(ram_reg_bram_0_i_51_n_0),
        .I1(data4[4]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(ram_reg_bram_0_6[4]),
        .O(hw_input_global_wrap_address1[4]));
  LUT6 #(
    .INIT(64'hFFFCFFF5000C0005)) 
    ram_reg_bram_0_i_23
       (.I0(ram_reg_bram_0_i_52_n_0),
        .I1(data4[3]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(ram_reg_bram_0_6[3]),
        .O(hw_input_global_wrap_address1[3]));
  LUT6 #(
    .INIT(64'hABA8A8ABABABA8A8)) 
    ram_reg_bram_0_i_24
       (.I0(ram_reg_bram_0_6[2]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[3]),
        .I4(data4[2]),
        .I5(data4[1]),
        .O(hw_input_global_wrap_address1[2]));
  LUT5 #(
    .INIT(32'hFEEF1001)) 
    ram_reg_bram_0_i_25
       (.I0(ram_reg_bram_0_4[5]),
        .I1(ram_reg_bram_0_4[4]),
        .I2(ram_reg_bram_0_4[3]),
        .I3(data4[1]),
        .I4(ram_reg_bram_0_6[1]),
        .O(hw_input_global_wrap_address1[1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    ram_reg_bram_0_i_26
       (.I0(data4[0]),
        .I1(ram_reg_bram_0_4[4]),
        .I2(ram_reg_bram_0_4[5]),
        .I3(ram_reg_bram_0_6[0]),
        .O(hw_input_global_wrap_address1[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80200)) 
    ram_reg_bram_0_i_3
       (.I0(ram_reg_bram_0_i_37_n_0),
        .I1(ram_reg_bram_0_4[1]),
        .I2(ram_reg_bram_0_4[2]),
        .I3(data5[11]),
        .I4(data4[11]),
        .I5(ram_reg_bram_0_i_39_n_0),
        .O(ram_reg_bram_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8888888888888088)) 
    ram_reg_bram_0_i_36
       (.I0(arg_in0_hwstream_val_empty_n),
        .I1(ram_reg_bram_0_4[0]),
        .I2(ram_reg_bram_1_4[5]),
        .I3(ram_reg_bram_1_4[6]),
        .I4(ram_reg_bram_1_4[4]),
        .I5(\hw_input_global_wrap_2_reg_186_reg[1] ),
        .O(WEA));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ram_reg_bram_0_i_37
       (.I0(ram_reg_bram_0_4[3]),
        .I1(ram_reg_bram_0_4[4]),
        .I2(ram_reg_bram_0_4[5]),
        .O(ram_reg_bram_0_i_37_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 ram_reg_bram_0_i_38
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_ram_reg_bram_0_i_38_CO_UNCONNECTED[7:5],ram_reg_bram_0_i_38_n_3,ram_reg_bram_0_i_38_n_4,ram_reg_bram_0_i_38_n_5,ram_reg_bram_0_i_38_n_6,ram_reg_bram_0_i_38_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_bram_0_5[0]}),
        .O({NLW_ram_reg_bram_0_i_38_O_UNCONNECTED[7:6],data5[11:7],NLW_ram_reg_bram_0_i_38_O_UNCONNECTED[0]}),
        .S({1'b0,1'b0,ram_reg_bram_0_5[5:1],data5[6]}));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    ram_reg_bram_0_i_39
       (.I0(ram_reg_bram_0_4[3]),
        .I1(Q[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(data0[11]),
        .O(ram_reg_bram_0_i_39_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA02A800)) 
    ram_reg_bram_0_i_4
       (.I0(ram_reg_bram_0_i_37_n_0),
        .I1(ram_reg_bram_0_4[1]),
        .I2(ram_reg_bram_0_4[2]),
        .I3(data4[10]),
        .I4(data5[10]),
        .I5(ram_reg_bram_0_i_40_n_0),
        .O(ram_reg_bram_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hAAACAAA0)) 
    ram_reg_bram_0_i_40
       (.I0(data0[10]),
        .I1(ram_reg_bram_0_4[3]),
        .I2(ram_reg_bram_0_4[5]),
        .I3(ram_reg_bram_0_4[4]),
        .I4(Q[4]),
        .O(ram_reg_bram_0_i_40_n_0));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    ram_reg_bram_0_i_41
       (.I0(ram_reg_bram_0_4[3]),
        .I1(Q[3]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(data0[9]),
        .O(ram_reg_bram_0_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFF80008)) 
    ram_reg_bram_0_i_42
       (.I0(ram_reg_bram_0_4[3]),
        .I1(Q[2]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(data0[8]),
        .O(ram_reg_bram_0_i_42_n_0));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    ram_reg_bram_0_i_43
       (.I0(ram_reg_bram_0_4[3]),
        .I1(Q[1]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(data0[7]),
        .O(ram_reg_bram_0_i_43_n_0));
  LUT6 #(
    .INIT(64'hF0F0F06600000000)) 
    ram_reg_bram_0_i_44
       (.I0(ram_reg_bram_0_5[0]),
        .I1(ram_reg_bram_1_4[6]),
        .I2(data4[6]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(ram_reg_bram_0_4[1]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(ram_reg_bram_0_i_44_n_0));
  LUT6 #(
    .INIT(64'h330533F500000000)) 
    ram_reg_bram_0_i_45
       (.I0(ram_reg_bram_1_4[5]),
        .I1(data0[5]),
        .I2(ram_reg_bram_0_4[1]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(data4[5]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(ram_reg_bram_0_i_45_n_0));
  LUT6 #(
    .INIT(64'hCCAACCF0FFFFFFFF)) 
    ram_reg_bram_0_i_46
       (.I0(data4[4]),
        .I1(data0[4]),
        .I2(ram_reg_bram_1_4[4]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(ram_reg_bram_0_4[1]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(ram_reg_bram_0_i_46_n_0));
  LUT6 #(
    .INIT(64'h3355330F00000000)) 
    ram_reg_bram_0_i_47
       (.I0(data4[3]),
        .I1(data0[3]),
        .I2(ram_reg_bram_1_4[3]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(ram_reg_bram_0_4[1]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(ram_reg_bram_0_i_47_n_0));
  LUT6 #(
    .INIT(64'h330533F500000000)) 
    ram_reg_bram_0_i_48
       (.I0(ram_reg_bram_1_4[2]),
        .I1(data0[2]),
        .I2(ram_reg_bram_0_4[1]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(data4[2]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(ram_reg_bram_0_i_48_n_0));
  LUT6 #(
    .INIT(64'hCCFACC0AFFFFFFFF)) 
    ram_reg_bram_0_i_49
       (.I0(ram_reg_bram_1_4[1]),
        .I1(data0[1]),
        .I2(ram_reg_bram_0_4[1]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(data4[1]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(ram_reg_bram_0_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80200)) 
    ram_reg_bram_0_i_5
       (.I0(ram_reg_bram_0_i_37_n_0),
        .I1(ram_reg_bram_0_4[1]),
        .I2(ram_reg_bram_0_4[2]),
        .I3(data5[9]),
        .I4(data4[9]),
        .I5(ram_reg_bram_0_i_41_n_0),
        .O(ram_reg_bram_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h3355330F00000000)) 
    ram_reg_bram_0_i_50
       (.I0(data4[0]),
        .I1(data0[0]),
        .I2(ram_reg_bram_1_4[0]),
        .I3(ram_reg_bram_0_4[2]),
        .I4(ram_reg_bram_0_4[1]),
        .I5(ram_reg_bram_0_i_37_n_0),
        .O(ram_reg_bram_0_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    ram_reg_bram_0_i_51
       (.I0(data4[4]),
        .I1(data4[3]),
        .I2(data4[1]),
        .I3(data4[2]),
        .O(ram_reg_bram_0_i_51_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    ram_reg_bram_0_i_52
       (.I0(data4[3]),
        .I1(data4[2]),
        .I2(data4[1]),
        .O(ram_reg_bram_0_i_52_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ram_reg_bram_0_i_53
       (.I0(ram_reg_bram_1_4[1]),
        .I1(ram_reg_bram_1_4[0]),
        .I2(ram_reg_bram_1_4[3]),
        .I3(ram_reg_bram_1_4[2]),
        .O(\hw_input_global_wrap_2_reg_186_reg[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    ram_reg_bram_0_i_54
       (.I0(ram_reg_bram_0_5[0]),
        .I1(ram_reg_bram_1_4[6]),
        .O(data5[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80200)) 
    ram_reg_bram_0_i_6
       (.I0(ram_reg_bram_0_i_37_n_0),
        .I1(ram_reg_bram_0_4[1]),
        .I2(ram_reg_bram_0_4[2]),
        .I3(data5[8]),
        .I4(data4[8]),
        .I5(ram_reg_bram_0_i_42_n_0),
        .O(ram_reg_bram_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80200)) 
    ram_reg_bram_0_i_7
       (.I0(ram_reg_bram_0_i_37_n_0),
        .I1(ram_reg_bram_0_4[1]),
        .I2(ram_reg_bram_0_4[2]),
        .I3(data5[7]),
        .I4(data4[7]),
        .I5(ram_reg_bram_0_i_43_n_0),
        .O(ram_reg_bram_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFAAAAEAAAA)) 
    ram_reg_bram_0_i_8
       (.I0(ram_reg_bram_0_i_44_n_0),
        .I1(Q[0]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(ram_reg_bram_0_4[5]),
        .I4(ram_reg_bram_0_4[3]),
        .I5(data0[6]),
        .O(ram_reg_bram_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h00000000FFCF3101)) 
    ram_reg_bram_0_i_9
       (.I0(ram_reg_bram_0_4[3]),
        .I1(ram_reg_bram_0_4[5]),
        .I2(ram_reg_bram_0_4[4]),
        .I3(data4[5]),
        .I4(data0[5]),
        .I5(ram_reg_bram_0_i_45_n_0),
        .O(ram_reg_bram_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "unoptimized_conv_3_3_U0/hw_input_global_wrap_U/unoptimized_conv_bkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_reg_bram_1
       (.ADDRARDADDR({ram_reg_bram_0_i_3_n_0,ram_reg_bram_0_i_4_n_0,ram_reg_bram_0_i_5_n_0,ram_reg_bram_0_i_6_n_0,ram_reg_bram_0_i_7_n_0,ram_reg_bram_0_i_8_n_0,ram_reg_bram_0_i_9_n_0,ram_reg_bram_0_i_10_n_0,ram_reg_bram_0_i_11_n_0,ram_reg_bram_0_i_12_n_0,ram_reg_bram_0_i_13_n_0,ram_reg_bram_0_i_14_n_0,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({hw_input_global_wrap_address1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_ram_reg_bram_1_CASDOUTA_UNCONNECTED[31:0]),
        .CASDOUTB(NLW_ram_reg_bram_1_CASDOUTB_UNCONNECTED[31:0]),
        .CASDOUTPA(NLW_ram_reg_bram_1_CASDOUTPA_UNCONNECTED[3:0]),
        .CASDOUTPB(NLW_ram_reg_bram_1_CASDOUTPB_UNCONNECTED[3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(NLW_ram_reg_bram_1_CASOUTDBITERR_UNCONNECTED),
        .CASOUTSBITERR(NLW_ram_reg_bram_1_CASOUTSBITERR_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_ram_reg_bram_1_DBITERR_UNCONNECTED),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d0[15:9]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({NLW_ram_reg_bram_1_DOUTADOUT_UNCONNECTED[31:7],q0[15:9]}),
        .DOUTBDOUT({NLW_ram_reg_bram_1_DOUTBDOUT_UNCONNECTED[31:7],hw_input_global_wrap_q1,q1[13:8]}),
        .DOUTPADOUTP(NLW_ram_reg_bram_1_DOUTPADOUTP_UNCONNECTED[3:0]),
        .DOUTPBDOUTP(NLW_ram_reg_bram_1_DOUTPBDOUTP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_bram_1_ECCPARITY_UNCONNECTED[7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(hw_input_global_wrap_ce0),
        .ENBWREN(p_0_in),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_ram_reg_bram_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_bram_1_SBITERR_UNCONNECTED),
        .SLEEP(1'b0),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry__0_i_1
       (.I0(q1[12]),
        .I1(\tmp_i231_reg_661_reg[13] [13]),
        .O(ram_reg_bram_1_2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry__0_i_2
       (.I0(q1[11]),
        .I1(\tmp_i231_reg_661_reg[13] [12]),
        .O(ram_reg_bram_1_2[4]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry__0_i_3
       (.I0(q1[10]),
        .I1(\tmp_i231_reg_661_reg[13] [11]),
        .O(ram_reg_bram_1_2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry__0_i_4
       (.I0(q1[9]),
        .I1(\tmp_i231_reg_661_reg[13] [10]),
        .O(ram_reg_bram_1_2[2]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry__0_i_5
       (.I0(q1[8]),
        .I1(\tmp_i231_reg_661_reg[13] [9]),
        .O(ram_reg_bram_1_2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry__0_i_6
       (.I0(q1[7]),
        .I1(\tmp_i231_reg_661_reg[13] [8]),
        .O(ram_reg_bram_1_2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_1
       (.I0(q1[6]),
        .I1(\tmp_i231_reg_661_reg[13] [7]),
        .O(ram_reg_bram_0_2[7]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_2
       (.I0(q1[5]),
        .I1(\tmp_i231_reg_661_reg[13] [6]),
        .O(ram_reg_bram_0_2[6]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_3
       (.I0(q1[4]),
        .I1(\tmp_i231_reg_661_reg[13] [5]),
        .O(ram_reg_bram_0_2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_4
       (.I0(q1[3]),
        .I1(\tmp_i231_reg_661_reg[13] [4]),
        .O(ram_reg_bram_0_2[4]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_5
       (.I0(q1[2]),
        .I1(\tmp_i231_reg_661_reg[13] [3]),
        .O(ram_reg_bram_0_2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_6
       (.I0(q1[1]),
        .I1(\tmp_i231_reg_661_reg[13] [2]),
        .O(ram_reg_bram_0_2[2]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_7
       (.I0(q1[0]),
        .I1(\tmp_i231_reg_661_reg[13] [1]),
        .O(ram_reg_bram_0_2[1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_i231_fu_460_p2_carry_i_8
       (.I0(C[0]),
        .I1(\tmp_i231_reg_661_reg[13] [0]),
        .O(ram_reg_bram_0_2[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_write_r
   (start_once_reg,
    ap_rst_n_inv,
    start_once_reg_reg_0,
    ap_clk);
  output start_once_reg;
  input ap_rst_n_inv;
  input start_once_reg_reg_0;
  input ap_clk;

  wire ap_clk;
  wire ap_rst_n_inv;
  wire start_once_reg;
  wire start_once_reg_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_reg_0),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
