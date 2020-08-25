// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Aug 14 16:16:12 2020
// Host        : charles-XPS-13-9370 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/charles/tmp/vivado_script_dev/overlay_32x32/overlay_32x32/overlay_32x32.srcs/sources_1/bd/overlay_32x32/ip/overlay_32x32_addone_32x32_0_0/overlay_32x32_addone_32x32_0_0_sim_netlist.v
// Design      : overlay_32x32_addone_32x32_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay_32x32_addone_32x32_0_0,hls_target,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "hls_target,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module overlay_32x32_addone_32x32_0_0
   (arg_0_TVALID,
    arg_0_TREADY,
    arg_0_TDATA,
    arg_0_TLAST,
    arg_1_TVALID,
    arg_1_TREADY,
    arg_1_TDATA,
    arg_1_TLAST,
    ap_clk,
    ap_rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TVALID" *) output arg_0_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TREADY" *) input arg_0_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TDATA" *) output [31:0]arg_0_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_0, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_32x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]arg_0_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TVALID" *) input arg_1_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TREADY" *) output arg_1_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TDATA" *) input [31:0]arg_1_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_1, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_32x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [0:0]arg_1_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_0:arg_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN overlay_32x32_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]arg_0_TDATA;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire arg_0_TVALID;
  wire [31:0]arg_1_TDATA;
  wire [0:0]arg_1_TLAST;
  wire arg_1_TREADY;
  wire arg_1_TVALID;

  overlay_32x32_addone_32x32_0_0_hls_target inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TDATA(arg_0_TDATA),
        .arg_0_TLAST(arg_0_TLAST),
        .arg_0_TREADY(arg_0_TREADY),
        .arg_0_TVALID(arg_0_TVALID),
        .arg_1_TDATA(arg_1_TDATA),
        .arg_1_TLAST(arg_1_TLAST),
        .arg_1_TREADY(arg_1_TREADY),
        .arg_1_TVALID(arg_1_TVALID));
endmodule

(* ORIG_REF_NAME = "Loop_1_proc16" *) 
module overlay_32x32_addone_32x32_0_0_Loop_1_proc16
   (start_once_reg,
    shiftReg_ce,
    arg_1_TREADY,
    E,
    Q,
    ap_clk,
    SS,
    ap_rst_n,
    p_in_1_stencil_stream_2_full_n,
    p_in_1_stencil_stream_3_full_n,
    start_for_Loop_2_proc17_U0_full_n,
    D,
    \mOutPtr_reg[1] );
  output start_once_reg;
  output shiftReg_ce;
  output arg_1_TREADY;
  output [0:0]E;
  output [31:0]Q;
  input ap_clk;
  input [0:0]SS;
  input ap_rst_n;
  input p_in_1_stencil_stream_2_full_n;
  input p_in_1_stencil_stream_3_full_n;
  input start_for_Loop_2_proc17_U0_full_n;
  input [32:0]D;
  input \mOutPtr_reg[1] ;

  wire [32:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire \SRL_SIG[0][31]_i_7_n_0 ;
  wire [0:0]SS;
  wire \ap_CS_fsm[0]_i_1__0_n_0 ;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire \ap_CS_fsm[1]_i_4_n_0 ;
  wire \ap_CS_fsm[1]_i_5_n_0 ;
  wire \ap_CS_fsm[1]_i_6_n_0 ;
  wire \ap_CS_fsm[1]_i_7_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire [2:1]ap_NS_fsm;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_2_n_0;
  wire ap_enable_reg_pp0_iter1_i_4_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_rst_n;
  wire arg_1_TREADY;
  wire arg_1_TREADY_int;
  wire \icmp_ln24_reg_111_reg_n_0_[0] ;
  wire indvar_flatten_reg_75;
  wire \indvar_flatten_reg_75[0]_i_4_n_0 ;
  wire [16:0]indvar_flatten_reg_75_reg;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_0 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_1 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_10 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_11 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_12 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_13 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_14 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_15 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_2 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_3 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_4 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_5 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_6 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_7 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_8 ;
  wire \indvar_flatten_reg_75_reg[0]_i_3_n_9 ;
  wire \indvar_flatten_reg_75_reg[16]_i_1_n_15 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_0 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_1 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_10 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_11 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_12 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_13 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_14 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_15 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_2 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_7 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_8 ;
  wire \indvar_flatten_reg_75_reg[8]_i_1_n_9 ;
  wire \mOutPtr_reg[1] ;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_full_n;
  wire regslice_both_arg_1_V_value_V_U_n_0;
  wire regslice_both_arg_1_V_value_V_U_n_10;
  wire regslice_both_arg_1_V_value_V_U_n_11;
  wire regslice_both_arg_1_V_value_V_U_n_12;
  wire regslice_both_arg_1_V_value_V_U_n_13;
  wire regslice_both_arg_1_V_value_V_U_n_14;
  wire regslice_both_arg_1_V_value_V_U_n_15;
  wire regslice_both_arg_1_V_value_V_U_n_16;
  wire regslice_both_arg_1_V_value_V_U_n_17;
  wire regslice_both_arg_1_V_value_V_U_n_18;
  wire regslice_both_arg_1_V_value_V_U_n_19;
  wire regslice_both_arg_1_V_value_V_U_n_20;
  wire regslice_both_arg_1_V_value_V_U_n_21;
  wire regslice_both_arg_1_V_value_V_U_n_22;
  wire regslice_both_arg_1_V_value_V_U_n_23;
  wire regslice_both_arg_1_V_value_V_U_n_24;
  wire regslice_both_arg_1_V_value_V_U_n_25;
  wire regslice_both_arg_1_V_value_V_U_n_26;
  wire regslice_both_arg_1_V_value_V_U_n_27;
  wire regslice_both_arg_1_V_value_V_U_n_28;
  wire regslice_both_arg_1_V_value_V_U_n_29;
  wire regslice_both_arg_1_V_value_V_U_n_3;
  wire regslice_both_arg_1_V_value_V_U_n_30;
  wire regslice_both_arg_1_V_value_V_U_n_31;
  wire regslice_both_arg_1_V_value_V_U_n_32;
  wire regslice_both_arg_1_V_value_V_U_n_33;
  wire regslice_both_arg_1_V_value_V_U_n_34;
  wire regslice_both_arg_1_V_value_V_U_n_35;
  wire regslice_both_arg_1_V_value_V_U_n_36;
  wire regslice_both_arg_1_V_value_V_U_n_37;
  wire regslice_both_arg_1_V_value_V_U_n_38;
  wire regslice_both_arg_1_V_value_V_U_n_39;
  wire regslice_both_arg_1_V_value_V_U_n_4;
  wire regslice_both_arg_1_V_value_V_U_n_40;
  wire regslice_both_arg_1_V_value_V_U_n_8;
  wire regslice_both_arg_1_V_value_V_U_n_9;
  wire shiftReg_ce;
  wire start_for_Loop_2_proc17_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_0;
  wire tmp_value_V_reg_1020;
  wire [7:0]\NLW_indvar_flatten_reg_75_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_indvar_flatten_reg_75_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \SRL_SIG[0][31]_i_7 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(p_in_1_stencil_stream_2_full_n),
        .I4(p_in_1_stencil_stream_3_full_n),
        .O(\SRL_SIG[0][31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h45454555)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm_reg_n_0_[2] ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(start_for_Loop_2_proc17_U0_full_n),
        .I4(start_once_reg),
        .O(\ap_CS_fsm[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFAAAAAAAA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_NS_fsm15_out),
        .I1(\ap_CS_fsm[1]_i_3_n_0 ),
        .I2(\ap_CS_fsm[1]_i_4_n_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(start_for_Loop_2_proc17_U0_full_n),
        .I2(start_once_reg),
        .O(ap_NS_fsm15_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\ap_CS_fsm[1]_i_5_n_0 ),
        .I1(\ap_CS_fsm[1]_i_6_n_0 ),
        .I2(\ap_CS_fsm[1]_i_7_n_0 ),
        .I3(indvar_flatten_reg_75_reg[12]),
        .I4(indvar_flatten_reg_75_reg[4]),
        .I5(indvar_flatten_reg_75_reg[7]),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFDDD)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .I2(p_in_1_stencil_stream_2_full_n),
        .I3(p_in_1_stencil_stream_3_full_n),
        .O(\ap_CS_fsm[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_5 
       (.I0(indvar_flatten_reg_75_reg[10]),
        .I1(indvar_flatten_reg_75_reg[13]),
        .I2(indvar_flatten_reg_75_reg[9]),
        .I3(indvar_flatten_reg_75_reg[3]),
        .I4(indvar_flatten_reg_75_reg[11]),
        .I5(indvar_flatten_reg_75_reg[2]),
        .O(\ap_CS_fsm[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_6 
       (.I0(indvar_flatten_reg_75_reg[0]),
        .I1(indvar_flatten_reg_75_reg[5]),
        .I2(indvar_flatten_reg_75_reg[6]),
        .I3(indvar_flatten_reg_75_reg[8]),
        .O(\ap_CS_fsm[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ap_CS_fsm[1]_i_7 
       (.I0(indvar_flatten_reg_75_reg[16]),
        .I1(indvar_flatten_reg_75_reg[14]),
        .I2(indvar_flatten_reg_75_reg[15]),
        .I3(indvar_flatten_reg_75_reg[1]),
        .O(\ap_CS_fsm[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(regslice_both_arg_1_V_value_V_U_n_4),
        .I2(regslice_both_arg_1_V_value_V_U_n_3),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1__0_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(SS));
  LUT5 #(
    .INIT(32'hEEE00000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(regslice_both_arg_1_V_value_V_U_n_4),
        .I1(regslice_both_arg_1_V_value_V_U_n_3),
        .I2(ap_NS_fsm15_out),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_rst_n),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(\ap_CS_fsm[1]_i_4_n_0 ),
        .I1(ap_enable_reg_pp0_iter1_i_4_n_0),
        .I2(\ap_CS_fsm[1]_i_7_n_0 ),
        .I3(\ap_CS_fsm[1]_i_6_n_0 ),
        .I4(\ap_CS_fsm[1]_i_5_n_0 ),
        .O(ap_enable_reg_pp0_iter1_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    ap_enable_reg_pp0_iter1_i_4
       (.I0(indvar_flatten_reg_75_reg[12]),
        .I1(indvar_flatten_reg_75_reg[4]),
        .I2(indvar_flatten_reg_75_reg[7]),
        .O(ap_enable_reg_pp0_iter1_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_1_V_value_V_U_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  FDRE \icmp_ln24_reg_111_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_1_V_value_V_U_n_8),
        .Q(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_75[0]_i_4 
       (.I0(indvar_flatten_reg_75_reg[0]),
        .O(\indvar_flatten_reg_75[0]_i_4_n_0 ));
  FDRE \indvar_flatten_reg_75_reg[0] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_15 ),
        .Q(indvar_flatten_reg_75_reg[0]),
        .R(indvar_flatten_reg_75));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_75_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_reg_75_reg[0]_i_3_n_0 ,\indvar_flatten_reg_75_reg[0]_i_3_n_1 ,\indvar_flatten_reg_75_reg[0]_i_3_n_2 ,\indvar_flatten_reg_75_reg[0]_i_3_n_3 ,\indvar_flatten_reg_75_reg[0]_i_3_n_4 ,\indvar_flatten_reg_75_reg[0]_i_3_n_5 ,\indvar_flatten_reg_75_reg[0]_i_3_n_6 ,\indvar_flatten_reg_75_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_reg_75_reg[0]_i_3_n_8 ,\indvar_flatten_reg_75_reg[0]_i_3_n_9 ,\indvar_flatten_reg_75_reg[0]_i_3_n_10 ,\indvar_flatten_reg_75_reg[0]_i_3_n_11 ,\indvar_flatten_reg_75_reg[0]_i_3_n_12 ,\indvar_flatten_reg_75_reg[0]_i_3_n_13 ,\indvar_flatten_reg_75_reg[0]_i_3_n_14 ,\indvar_flatten_reg_75_reg[0]_i_3_n_15 }),
        .S({indvar_flatten_reg_75_reg[7:1],\indvar_flatten_reg_75[0]_i_4_n_0 }));
  FDRE \indvar_flatten_reg_75_reg[10] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_13 ),
        .Q(indvar_flatten_reg_75_reg[10]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[11] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_12 ),
        .Q(indvar_flatten_reg_75_reg[11]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[12] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_11 ),
        .Q(indvar_flatten_reg_75_reg[12]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[13] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_10 ),
        .Q(indvar_flatten_reg_75_reg[13]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[14] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_9 ),
        .Q(indvar_flatten_reg_75_reg[14]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[15] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_8 ),
        .Q(indvar_flatten_reg_75_reg[15]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[16] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[16]_i_1_n_15 ),
        .Q(indvar_flatten_reg_75_reg[16]),
        .R(indvar_flatten_reg_75));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_75_reg[16]_i_1 
       (.CI(\indvar_flatten_reg_75_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_indvar_flatten_reg_75_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten_reg_75_reg[16]_i_1_O_UNCONNECTED [7:1],\indvar_flatten_reg_75_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,indvar_flatten_reg_75_reg[16]}));
  FDRE \indvar_flatten_reg_75_reg[1] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_14 ),
        .Q(indvar_flatten_reg_75_reg[1]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[2] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_13 ),
        .Q(indvar_flatten_reg_75_reg[2]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[3] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_12 ),
        .Q(indvar_flatten_reg_75_reg[3]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[4] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_11 ),
        .Q(indvar_flatten_reg_75_reg[4]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[5] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_10 ),
        .Q(indvar_flatten_reg_75_reg[5]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[6] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_9 ),
        .Q(indvar_flatten_reg_75_reg[6]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[7] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[0]_i_3_n_8 ),
        .Q(indvar_flatten_reg_75_reg[7]),
        .R(indvar_flatten_reg_75));
  FDRE \indvar_flatten_reg_75_reg[8] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_15 ),
        .Q(indvar_flatten_reg_75_reg[8]),
        .R(indvar_flatten_reg_75));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_75_reg[8]_i_1 
       (.CI(\indvar_flatten_reg_75_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_reg_75_reg[8]_i_1_n_0 ,\indvar_flatten_reg_75_reg[8]_i_1_n_1 ,\indvar_flatten_reg_75_reg[8]_i_1_n_2 ,\indvar_flatten_reg_75_reg[8]_i_1_n_3 ,\indvar_flatten_reg_75_reg[8]_i_1_n_4 ,\indvar_flatten_reg_75_reg[8]_i_1_n_5 ,\indvar_flatten_reg_75_reg[8]_i_1_n_6 ,\indvar_flatten_reg_75_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_75_reg[8]_i_1_n_8 ,\indvar_flatten_reg_75_reg[8]_i_1_n_9 ,\indvar_flatten_reg_75_reg[8]_i_1_n_10 ,\indvar_flatten_reg_75_reg[8]_i_1_n_11 ,\indvar_flatten_reg_75_reg[8]_i_1_n_12 ,\indvar_flatten_reg_75_reg[8]_i_1_n_13 ,\indvar_flatten_reg_75_reg[8]_i_1_n_14 ,\indvar_flatten_reg_75_reg[8]_i_1_n_15 }),
        .S(indvar_flatten_reg_75_reg[15:8]));
  FDRE \indvar_flatten_reg_75_reg[9] 
       (.C(ap_clk),
        .CE(arg_1_TREADY_int),
        .D(\indvar_flatten_reg_75_reg[8]_i_1_n_14 ),
        .Q(indvar_flatten_reg_75_reg[9]),
        .R(indvar_flatten_reg_75));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \mOutPtr[1]_i_1__1 
       (.I0(start_once_reg),
        .I1(start_for_Loop_2_proc17_U0_full_n),
        .I2(\mOutPtr_reg[1] ),
        .O(E));
  overlay_32x32_addone_32x32_0_0_regslice_both_0 regslice_both_arg_1_V_value_V_U
       (.D(D),
        .E(tmp_value_V_reg_1020),
        .Q(ap_CS_fsm_pp0_stage0),
        .\SRL_SIG_reg[0][0] (\SRL_SIG[0][31]_i_7_n_0 ),
        .SS(SS),
        .\ap_CS_fsm_reg[1] (regslice_both_arg_1_V_value_V_U_n_3),
        .ap_NS_fsm15_out(ap_NS_fsm15_out),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(regslice_both_arg_1_V_value_V_U_n_0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_i_2_n_0),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg_n_0),
        .ap_enable_reg_pp0_iter1_reg_1(\ap_CS_fsm[1]_i_4_n_0 ),
        .ap_rst_n(ap_rst_n),
        .arg_1_TREADY(arg_1_TREADY),
        .arg_1_TREADY_int(arg_1_TREADY_int),
        .\icmp_ln24_reg_111_reg[0] (regslice_both_arg_1_V_value_V_U_n_8),
        .\icmp_ln24_reg_111_reg[0]_0 (\icmp_ln24_reg_111_reg_n_0_[0] ),
        .\icmp_ln24_reg_111_reg[0]_1 (\ap_CS_fsm[1]_i_3_n_0 ),
        .indvar_flatten_reg_75(indvar_flatten_reg_75),
        .indvar_flatten_reg_75_reg(indvar_flatten_reg_75_reg),
        .indvar_flatten_reg_75_reg_9_sp_1(regslice_both_arg_1_V_value_V_U_n_4),
        .\odata_reg[31] ({regslice_both_arg_1_V_value_V_U_n_9,regslice_both_arg_1_V_value_V_U_n_10,regslice_both_arg_1_V_value_V_U_n_11,regslice_both_arg_1_V_value_V_U_n_12,regslice_both_arg_1_V_value_V_U_n_13,regslice_both_arg_1_V_value_V_U_n_14,regslice_both_arg_1_V_value_V_U_n_15,regslice_both_arg_1_V_value_V_U_n_16,regslice_both_arg_1_V_value_V_U_n_17,regslice_both_arg_1_V_value_V_U_n_18,regslice_both_arg_1_V_value_V_U_n_19,regslice_both_arg_1_V_value_V_U_n_20,regslice_both_arg_1_V_value_V_U_n_21,regslice_both_arg_1_V_value_V_U_n_22,regslice_both_arg_1_V_value_V_U_n_23,regslice_both_arg_1_V_value_V_U_n_24,regslice_both_arg_1_V_value_V_U_n_25,regslice_both_arg_1_V_value_V_U_n_26,regslice_both_arg_1_V_value_V_U_n_27,regslice_both_arg_1_V_value_V_U_n_28,regslice_both_arg_1_V_value_V_U_n_29,regslice_both_arg_1_V_value_V_U_n_30,regslice_both_arg_1_V_value_V_U_n_31,regslice_both_arg_1_V_value_V_U_n_32,regslice_both_arg_1_V_value_V_U_n_33,regslice_both_arg_1_V_value_V_U_n_34,regslice_both_arg_1_V_value_V_U_n_35,regslice_both_arg_1_V_value_V_U_n_36,regslice_both_arg_1_V_value_V_U_n_37,regslice_both_arg_1_V_value_V_U_n_38,regslice_both_arg_1_V_value_V_U_n_39,regslice_both_arg_1_V_value_V_U_n_40}),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n),
        .shiftReg_ce(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h54)) 
    start_once_reg_i_1
       (.I0(\ap_CS_fsm_reg_n_0_[2] ),
        .I1(start_for_Loop_2_proc17_U0_full_n),
        .I2(start_once_reg),
        .O(start_once_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_0),
        .Q(start_once_reg),
        .R(SS));
  FDRE \tmp_value_V_reg_102_reg[0] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_40),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[10] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_30),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[11] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_29),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[12] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_28),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[13] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_27),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[14] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_26),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[15] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_25),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[16] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_24),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[17] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_23),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[18] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_22),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[19] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_21),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[1] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_39),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[20] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_20),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[21] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_19),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[22] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_18),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[23] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_17),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[24] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_16),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[25] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_15),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[26] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_14),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[27] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_13),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[28] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_12),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[29] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_11),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[2] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_38),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[30] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_10),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[31] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_9),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[3] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_37),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[4] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_36),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[5] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_35),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[6] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_34),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[7] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_33),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[8] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_32),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[9] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_31),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Loop_2_proc17" *) 
module overlay_32x32_addone_32x32_0_0_Loop_2_proc17
   (SS,
    E,
    Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
    \ireg_reg[32] ,
    \ap_CS_fsm_reg[0]_0 ,
    internal_empty_n_reg,
    internal_empty_n_reg_0,
    \odata_reg[32] ,
    arg_0_TLAST,
    ap_clk,
    D,
    Q,
    ap_rst_n,
    ap_NS_fsm1,
    shiftReg_ce,
    p_in_1_stencil_stream_3_empty_n,
    p_in_1_stencil_stream_2_empty_n,
    Loop_2_proc17_U0_ap_start,
    arg_0_TREADY);
  output [0:0]SS;
  output [0:0]E;
  output Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  output [0:0]\ireg_reg[32] ;
  output [0:0]\ap_CS_fsm_reg[0]_0 ;
  output internal_empty_n_reg;
  output internal_empty_n_reg_0;
  output [32:0]\odata_reg[32] ;
  output [0:0]arg_0_TLAST;
  input ap_clk;
  input [0:0]D;
  input [31:0]Q;
  input ap_rst_n;
  input ap_NS_fsm1;
  input shiftReg_ce;
  input p_in_1_stencil_stream_3_empty_n;
  input p_in_1_stencil_stream_2_empty_n;
  input Loop_2_proc17_U0_ap_start;
  input arg_0_TREADY;

  wire [0:0]D;
  wire [0:0]E;
  wire Loop_2_proc17_U0_ap_start;
  wire Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  wire [31:0]Q;
  wire [0:0]SS;
  wire [8:0]add_ln36_1_fu_119_p2;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire \ap_CS_fsm[2]_i_5_n_0 ;
  wire \ap_CS_fsm[2]_i_6_n_0 ;
  wire \ap_CS_fsm[2]_i_7_n_0 ;
  wire \ap_CS_fsm[2]_i_8_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire [0:0]\ap_CS_fsm_reg[0]_0 ;
  wire ap_CS_fsm_state5;
  wire [2:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp0_iter2_reg_n_0;
  wire ap_rst_n;
  wire [31:1]arg_0_TDATA_int;
  wire arg_0_TDATA_int_carry__0_n_0;
  wire arg_0_TDATA_int_carry__0_n_1;
  wire arg_0_TDATA_int_carry__0_n_2;
  wire arg_0_TDATA_int_carry__0_n_3;
  wire arg_0_TDATA_int_carry__0_n_4;
  wire arg_0_TDATA_int_carry__0_n_5;
  wire arg_0_TDATA_int_carry__0_n_6;
  wire arg_0_TDATA_int_carry__0_n_7;
  wire arg_0_TDATA_int_carry__1_n_0;
  wire arg_0_TDATA_int_carry__1_n_1;
  wire arg_0_TDATA_int_carry__1_n_2;
  wire arg_0_TDATA_int_carry__1_n_3;
  wire arg_0_TDATA_int_carry__1_n_4;
  wire arg_0_TDATA_int_carry__1_n_5;
  wire arg_0_TDATA_int_carry__1_n_6;
  wire arg_0_TDATA_int_carry__1_n_7;
  wire arg_0_TDATA_int_carry__2_n_2;
  wire arg_0_TDATA_int_carry__2_n_3;
  wire arg_0_TDATA_int_carry__2_n_4;
  wire arg_0_TDATA_int_carry__2_n_5;
  wire arg_0_TDATA_int_carry__2_n_6;
  wire arg_0_TDATA_int_carry__2_n_7;
  wire arg_0_TDATA_int_carry_n_0;
  wire arg_0_TDATA_int_carry_n_1;
  wire arg_0_TDATA_int_carry_n_2;
  wire arg_0_TDATA_int_carry_n_3;
  wire arg_0_TDATA_int_carry_n_4;
  wire arg_0_TDATA_int_carry_n_5;
  wire arg_0_TDATA_int_carry_n_6;
  wire arg_0_TDATA_int_carry_n_7;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire icmp_ln36_fu_113_p2;
  wire icmp_ln36_reg_2160;
  wire \icmp_ln36_reg_216[0]_i_3_n_0 ;
  wire \icmp_ln36_reg_216[0]_i_4_n_0 ;
  wire \icmp_ln36_reg_216[0]_i_5_n_0 ;
  wire \icmp_ln36_reg_216[0]_i_6_n_0 ;
  wire \icmp_ln36_reg_216[0]_i_7_n_0 ;
  wire icmp_ln36_reg_216_pp0_iter1_reg;
  wire \icmp_ln36_reg_216_reg_n_0_[0] ;
  wire indvar_flatten_reg_80;
  wire indvar_flatten_reg_800;
  wire \indvar_flatten_reg_80[0]_i_2_n_0 ;
  wire [16:0]indvar_flatten_reg_80_reg;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_0 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_1 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_10 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_11 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_12 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_13 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_14 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_15 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_2 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_3 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_4 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_5 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_6 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_7 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_8 ;
  wire \indvar_flatten_reg_80_reg[0]_i_1_n_9 ;
  wire \indvar_flatten_reg_80_reg[16]_i_1_n_15 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_0 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_1 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_10 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_11 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_12 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_13 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_14 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_15 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_2 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_7 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_8 ;
  wire \indvar_flatten_reg_80_reg[8]_i_1_n_9 ;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire [0:0]\ireg_reg[32] ;
  wire [32:0]\odata_reg[32] ;
  wire [8:0]p_hw_output_1_x_sca_1_reg_102;
  wire \p_hw_output_1_x_sca_1_reg_102[8]_i_5_n_0 ;
  wire \p_hw_output_1_x_sca_1_reg_102[8]_i_6_n_0 ;
  wire \p_hw_output_1_x_sca_1_reg_102[8]_i_7_n_0 ;
  wire [8:0]p_hw_output_1_x_sca_fu_185_p2;
  wire p_hw_output_1_y_sca_reg_91;
  wire \p_hw_output_1_y_sca_reg_91[8]_i_3_n_0 ;
  wire [8:0]p_hw_output_1_y_sca_reg_91_reg;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_3_empty_n;
  wire regslice_both_arg_0_V_value_V_U_n_1;
  wire regslice_both_arg_0_V_value_V_U_n_2;
  wire regslice_both_arg_0_V_value_V_U_n_48;
  wire regslice_both_arg_0_V_value_V_U_n_9;
  wire shiftReg_ce;
  wire tmp_last_V_reg_202;
  wire \tmp_last_V_reg_202[0]_i_2_n_0 ;
  wire \tmp_last_V_reg_202[0]_i_3_n_0 ;
  wire [7:6]NLW_arg_0_TDATA_int_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_arg_0_TDATA_int_carry__2_O_UNCONNECTED;
  wire [7:0]\NLW_indvar_flatten_reg_80_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_indvar_flatten_reg_80_reg[16]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(\ap_CS_fsm[2]_i_5_n_0 ),
        .I1(\ap_CS_fsm[2]_i_6_n_0 ),
        .I2(\ap_CS_fsm[2]_i_7_n_0 ),
        .I3(\ap_CS_fsm[2]_i_8_n_0 ),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[2]_i_5 
       (.I0(indvar_flatten_reg_80_reg[9]),
        .I1(indvar_flatten_reg_80_reg[10]),
        .I2(indvar_flatten_reg_80_reg[7]),
        .I3(indvar_flatten_reg_80_reg[8]),
        .O(\ap_CS_fsm[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[2]_i_6 
       (.I0(indvar_flatten_reg_80_reg[13]),
        .I1(indvar_flatten_reg_80_reg[14]),
        .I2(indvar_flatten_reg_80_reg[11]),
        .I3(indvar_flatten_reg_80_reg[12]),
        .O(\ap_CS_fsm[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ap_CS_fsm[2]_i_7 
       (.I0(indvar_flatten_reg_80_reg[1]),
        .I1(indvar_flatten_reg_80_reg[2]),
        .I2(indvar_flatten_reg_80_reg[15]),
        .I3(indvar_flatten_reg_80_reg[16]),
        .I4(indvar_flatten_reg_80_reg[0]),
        .O(\ap_CS_fsm[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[2]_i_8 
       (.I0(indvar_flatten_reg_80_reg[5]),
        .I1(indvar_flatten_reg_80_reg[6]),
        .I2(indvar_flatten_reg_80_reg[3]),
        .I3(indvar_flatten_reg_80_reg[4]),
        .O(\ap_CS_fsm[2]_i_8_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg[0]_0 ),
        .S(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state5),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_0_V_value_V_U_n_9),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_0_V_value_V_U_n_1),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_0_V_value_V_U_n_2),
        .Q(ap_enable_reg_pp0_iter2_reg_n_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 arg_0_TDATA_int_carry
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({arg_0_TDATA_int_carry_n_0,arg_0_TDATA_int_carry_n_1,arg_0_TDATA_int_carry_n_2,arg_0_TDATA_int_carry_n_3,arg_0_TDATA_int_carry_n_4,arg_0_TDATA_int_carry_n_5,arg_0_TDATA_int_carry_n_6,arg_0_TDATA_int_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(arg_0_TDATA_int[8:1]),
        .S(Q[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 arg_0_TDATA_int_carry__0
       (.CI(arg_0_TDATA_int_carry_n_0),
        .CI_TOP(1'b0),
        .CO({arg_0_TDATA_int_carry__0_n_0,arg_0_TDATA_int_carry__0_n_1,arg_0_TDATA_int_carry__0_n_2,arg_0_TDATA_int_carry__0_n_3,arg_0_TDATA_int_carry__0_n_4,arg_0_TDATA_int_carry__0_n_5,arg_0_TDATA_int_carry__0_n_6,arg_0_TDATA_int_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(arg_0_TDATA_int[16:9]),
        .S(Q[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 arg_0_TDATA_int_carry__1
       (.CI(arg_0_TDATA_int_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({arg_0_TDATA_int_carry__1_n_0,arg_0_TDATA_int_carry__1_n_1,arg_0_TDATA_int_carry__1_n_2,arg_0_TDATA_int_carry__1_n_3,arg_0_TDATA_int_carry__1_n_4,arg_0_TDATA_int_carry__1_n_5,arg_0_TDATA_int_carry__1_n_6,arg_0_TDATA_int_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(arg_0_TDATA_int[24:17]),
        .S(Q[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 arg_0_TDATA_int_carry__2
       (.CI(arg_0_TDATA_int_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_arg_0_TDATA_int_carry__2_CO_UNCONNECTED[7:6],arg_0_TDATA_int_carry__2_n_2,arg_0_TDATA_int_carry__2_n_3,arg_0_TDATA_int_carry__2_n_4,arg_0_TDATA_int_carry__2_n_5,arg_0_TDATA_int_carry__2_n_6,arg_0_TDATA_int_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_arg_0_TDATA_int_carry__2_O_UNCONNECTED[7],arg_0_TDATA_int[31:25]}),
        .S({1'b0,Q[31:25]}));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \icmp_ln36_reg_216[0]_i_2 
       (.I0(\icmp_ln36_reg_216[0]_i_5_n_0 ),
        .I1(\icmp_ln36_reg_216[0]_i_6_n_0 ),
        .I2(\icmp_ln36_reg_216[0]_i_7_n_0 ),
        .I3(indvar_flatten_reg_80_reg[7]),
        .I4(indvar_flatten_reg_80_reg[0]),
        .I5(indvar_flatten_reg_80_reg[12]),
        .O(icmp_ln36_fu_113_p2));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \icmp_ln36_reg_216[0]_i_3 
       (.I0(\icmp_ln36_reg_216_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(icmp_ln36_reg_216_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter2_reg_n_0),
        .O(\icmp_ln36_reg_216[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \icmp_ln36_reg_216[0]_i_4 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\icmp_ln36_reg_216_reg_n_0_[0] ),
        .O(\icmp_ln36_reg_216[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \icmp_ln36_reg_216[0]_i_5 
       (.I0(indvar_flatten_reg_80_reg[6]),
        .I1(indvar_flatten_reg_80_reg[11]),
        .I2(indvar_flatten_reg_80_reg[13]),
        .I3(indvar_flatten_reg_80_reg[1]),
        .I4(indvar_flatten_reg_80_reg[10]),
        .I5(indvar_flatten_reg_80_reg[2]),
        .O(\icmp_ln36_reg_216[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln36_reg_216[0]_i_6 
       (.I0(indvar_flatten_reg_80_reg[8]),
        .I1(indvar_flatten_reg_80_reg[9]),
        .I2(indvar_flatten_reg_80_reg[15]),
        .I3(indvar_flatten_reg_80_reg[4]),
        .O(\icmp_ln36_reg_216[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \icmp_ln36_reg_216[0]_i_7 
       (.I0(indvar_flatten_reg_80_reg[16]),
        .I1(indvar_flatten_reg_80_reg[3]),
        .I2(indvar_flatten_reg_80_reg[5]),
        .I3(indvar_flatten_reg_80_reg[14]),
        .O(\icmp_ln36_reg_216[0]_i_7_n_0 ));
  FDRE \icmp_ln36_reg_216_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln36_reg_2160),
        .D(\icmp_ln36_reg_216_reg_n_0_[0] ),
        .Q(icmp_ln36_reg_216_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln36_reg_216_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln36_reg_2160),
        .D(icmp_ln36_fu_113_p2),
        .Q(\icmp_ln36_reg_216_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_80[0]_i_2 
       (.I0(indvar_flatten_reg_80_reg[0]),
        .O(\indvar_flatten_reg_80[0]_i_2_n_0 ));
  FDRE \indvar_flatten_reg_80_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_15 ),
        .Q(indvar_flatten_reg_80_reg[0]),
        .R(indvar_flatten_reg_80));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_80_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_reg_80_reg[0]_i_1_n_0 ,\indvar_flatten_reg_80_reg[0]_i_1_n_1 ,\indvar_flatten_reg_80_reg[0]_i_1_n_2 ,\indvar_flatten_reg_80_reg[0]_i_1_n_3 ,\indvar_flatten_reg_80_reg[0]_i_1_n_4 ,\indvar_flatten_reg_80_reg[0]_i_1_n_5 ,\indvar_flatten_reg_80_reg[0]_i_1_n_6 ,\indvar_flatten_reg_80_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_reg_80_reg[0]_i_1_n_8 ,\indvar_flatten_reg_80_reg[0]_i_1_n_9 ,\indvar_flatten_reg_80_reg[0]_i_1_n_10 ,\indvar_flatten_reg_80_reg[0]_i_1_n_11 ,\indvar_flatten_reg_80_reg[0]_i_1_n_12 ,\indvar_flatten_reg_80_reg[0]_i_1_n_13 ,\indvar_flatten_reg_80_reg[0]_i_1_n_14 ,\indvar_flatten_reg_80_reg[0]_i_1_n_15 }),
        .S({indvar_flatten_reg_80_reg[7:1],\indvar_flatten_reg_80[0]_i_2_n_0 }));
  FDRE \indvar_flatten_reg_80_reg[10] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_13 ),
        .Q(indvar_flatten_reg_80_reg[10]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[11] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_12 ),
        .Q(indvar_flatten_reg_80_reg[11]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[12] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_11 ),
        .Q(indvar_flatten_reg_80_reg[12]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[13] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_10 ),
        .Q(indvar_flatten_reg_80_reg[13]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[14] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_9 ),
        .Q(indvar_flatten_reg_80_reg[14]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[15] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_8 ),
        .Q(indvar_flatten_reg_80_reg[15]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[16] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[16]_i_1_n_15 ),
        .Q(indvar_flatten_reg_80_reg[16]),
        .R(indvar_flatten_reg_80));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_80_reg[16]_i_1 
       (.CI(\indvar_flatten_reg_80_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_indvar_flatten_reg_80_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten_reg_80_reg[16]_i_1_O_UNCONNECTED [7:1],\indvar_flatten_reg_80_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,indvar_flatten_reg_80_reg[16]}));
  FDRE \indvar_flatten_reg_80_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_14 ),
        .Q(indvar_flatten_reg_80_reg[1]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_13 ),
        .Q(indvar_flatten_reg_80_reg[2]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_12 ),
        .Q(indvar_flatten_reg_80_reg[3]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_11 ),
        .Q(indvar_flatten_reg_80_reg[4]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_10 ),
        .Q(indvar_flatten_reg_80_reg[5]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_9 ),
        .Q(indvar_flatten_reg_80_reg[6]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[0]_i_1_n_8 ),
        .Q(indvar_flatten_reg_80_reg[7]),
        .R(indvar_flatten_reg_80));
  FDRE \indvar_flatten_reg_80_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_15 ),
        .Q(indvar_flatten_reg_80_reg[8]),
        .R(indvar_flatten_reg_80));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_80_reg[8]_i_1 
       (.CI(\indvar_flatten_reg_80_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_reg_80_reg[8]_i_1_n_0 ,\indvar_flatten_reg_80_reg[8]_i_1_n_1 ,\indvar_flatten_reg_80_reg[8]_i_1_n_2 ,\indvar_flatten_reg_80_reg[8]_i_1_n_3 ,\indvar_flatten_reg_80_reg[8]_i_1_n_4 ,\indvar_flatten_reg_80_reg[8]_i_1_n_5 ,\indvar_flatten_reg_80_reg[8]_i_1_n_6 ,\indvar_flatten_reg_80_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_80_reg[8]_i_1_n_8 ,\indvar_flatten_reg_80_reg[8]_i_1_n_9 ,\indvar_flatten_reg_80_reg[8]_i_1_n_10 ,\indvar_flatten_reg_80_reg[8]_i_1_n_11 ,\indvar_flatten_reg_80_reg[8]_i_1_n_12 ,\indvar_flatten_reg_80_reg[8]_i_1_n_13 ,\indvar_flatten_reg_80_reg[8]_i_1_n_14 ,\indvar_flatten_reg_80_reg[8]_i_1_n_15 }),
        .S(indvar_flatten_reg_80_reg[15:8]));
  FDRE \indvar_flatten_reg_80_reg[9] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(\indvar_flatten_reg_80_reg[8]_i_1_n_14 ),
        .Q(indvar_flatten_reg_80_reg[9]),
        .R(indvar_flatten_reg_80));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \odata[32]_i_2 
       (.I0(p_in_1_stencil_stream_3_empty_n),
        .I1(p_in_1_stencil_stream_2_empty_n),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(\icmp_ln36_reg_216_reg_n_0_[0] ),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_hw_output_1_x_sca_1_reg_102[0]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[0]),
        .O(p_hw_output_1_x_sca_fu_185_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_x_sca_1_reg_102[1]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[1]),
        .I1(p_hw_output_1_x_sca_1_reg_102[0]),
        .O(p_hw_output_1_x_sca_fu_185_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \p_hw_output_1_x_sca_1_reg_102[2]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[2]),
        .I1(p_hw_output_1_x_sca_1_reg_102[1]),
        .I2(p_hw_output_1_x_sca_1_reg_102[0]),
        .O(p_hw_output_1_x_sca_fu_185_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \p_hw_output_1_x_sca_1_reg_102[3]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[3]),
        .I1(p_hw_output_1_x_sca_1_reg_102[0]),
        .I2(p_hw_output_1_x_sca_1_reg_102[1]),
        .I3(p_hw_output_1_x_sca_1_reg_102[2]),
        .O(p_hw_output_1_x_sca_fu_185_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \p_hw_output_1_x_sca_1_reg_102[4]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[4]),
        .I1(p_hw_output_1_x_sca_1_reg_102[2]),
        .I2(p_hw_output_1_x_sca_1_reg_102[1]),
        .I3(p_hw_output_1_x_sca_1_reg_102[0]),
        .I4(p_hw_output_1_x_sca_1_reg_102[3]),
        .O(p_hw_output_1_x_sca_fu_185_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_hw_output_1_x_sca_1_reg_102[5]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[3]),
        .I1(p_hw_output_1_x_sca_1_reg_102[0]),
        .I2(p_hw_output_1_x_sca_1_reg_102[1]),
        .I3(p_hw_output_1_x_sca_1_reg_102[2]),
        .I4(p_hw_output_1_x_sca_1_reg_102[4]),
        .I5(p_hw_output_1_x_sca_1_reg_102[5]),
        .O(p_hw_output_1_x_sca_fu_185_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_x_sca_1_reg_102[6]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[6]),
        .I1(\p_hw_output_1_x_sca_1_reg_102[8]_i_5_n_0 ),
        .O(p_hw_output_1_x_sca_fu_185_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \p_hw_output_1_x_sca_1_reg_102[7]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_102[7]),
        .I1(\p_hw_output_1_x_sca_1_reg_102[8]_i_5_n_0 ),
        .I2(p_hw_output_1_x_sca_1_reg_102[6]),
        .O(p_hw_output_1_x_sca_fu_185_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h807F8080)) 
    \p_hw_output_1_x_sca_1_reg_102[8]_i_3 
       (.I0(p_hw_output_1_x_sca_1_reg_102[6]),
        .I1(\p_hw_output_1_x_sca_1_reg_102[8]_i_5_n_0 ),
        .I2(p_hw_output_1_x_sca_1_reg_102[7]),
        .I3(\p_hw_output_1_x_sca_1_reg_102[8]_i_6_n_0 ),
        .I4(p_hw_output_1_x_sca_1_reg_102[8]),
        .O(p_hw_output_1_x_sca_fu_185_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_hw_output_1_x_sca_1_reg_102[8]_i_5 
       (.I0(p_hw_output_1_x_sca_1_reg_102[5]),
        .I1(p_hw_output_1_x_sca_1_reg_102[4]),
        .I2(p_hw_output_1_x_sca_1_reg_102[2]),
        .I3(p_hw_output_1_x_sca_1_reg_102[1]),
        .I4(p_hw_output_1_x_sca_1_reg_102[0]),
        .I5(p_hw_output_1_x_sca_1_reg_102[3]),
        .O(\p_hw_output_1_x_sca_1_reg_102[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \p_hw_output_1_x_sca_1_reg_102[8]_i_6 
       (.I0(p_hw_output_1_x_sca_1_reg_102[6]),
        .I1(p_hw_output_1_x_sca_1_reg_102[3]),
        .I2(p_hw_output_1_x_sca_1_reg_102[5]),
        .I3(p_hw_output_1_x_sca_1_reg_102[4]),
        .I4(\p_hw_output_1_x_sca_1_reg_102[8]_i_7_n_0 ),
        .O(\p_hw_output_1_x_sca_1_reg_102[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \p_hw_output_1_x_sca_1_reg_102[8]_i_7 
       (.I0(p_hw_output_1_x_sca_1_reg_102[0]),
        .I1(p_hw_output_1_x_sca_1_reg_102[1]),
        .I2(p_hw_output_1_x_sca_1_reg_102[2]),
        .I3(p_hw_output_1_x_sca_1_reg_102[7]),
        .O(\p_hw_output_1_x_sca_1_reg_102[8]_i_7_n_0 ));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[0]),
        .Q(p_hw_output_1_x_sca_1_reg_102[0]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[1]),
        .Q(p_hw_output_1_x_sca_1_reg_102[1]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[2]),
        .Q(p_hw_output_1_x_sca_1_reg_102[2]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[3]),
        .Q(p_hw_output_1_x_sca_1_reg_102[3]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[4]),
        .Q(p_hw_output_1_x_sca_1_reg_102[4]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[5]),
        .Q(p_hw_output_1_x_sca_1_reg_102[5]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[6]),
        .Q(p_hw_output_1_x_sca_1_reg_102[6]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[7]),
        .Q(p_hw_output_1_x_sca_1_reg_102[7]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_x_sca_1_reg_102_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_800),
        .D(p_hw_output_1_x_sca_fu_185_p2[8]),
        .Q(p_hw_output_1_x_sca_1_reg_102[8]),
        .R(indvar_flatten_reg_80));
  LUT1 #(
    .INIT(2'h1)) 
    \p_hw_output_1_y_sca_reg_91[0]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[0]),
        .O(add_ln36_1_fu_119_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_y_sca_reg_91[1]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[1]),
        .I1(p_hw_output_1_y_sca_reg_91_reg[0]),
        .O(add_ln36_1_fu_119_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \p_hw_output_1_y_sca_reg_91[2]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[2]),
        .I1(p_hw_output_1_y_sca_reg_91_reg[1]),
        .I2(p_hw_output_1_y_sca_reg_91_reg[0]),
        .O(add_ln36_1_fu_119_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \p_hw_output_1_y_sca_reg_91[3]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[3]),
        .I1(p_hw_output_1_y_sca_reg_91_reg[0]),
        .I2(p_hw_output_1_y_sca_reg_91_reg[1]),
        .I3(p_hw_output_1_y_sca_reg_91_reg[2]),
        .O(add_ln36_1_fu_119_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \p_hw_output_1_y_sca_reg_91[4]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[4]),
        .I1(p_hw_output_1_y_sca_reg_91_reg[2]),
        .I2(p_hw_output_1_y_sca_reg_91_reg[1]),
        .I3(p_hw_output_1_y_sca_reg_91_reg[0]),
        .I4(p_hw_output_1_y_sca_reg_91_reg[3]),
        .O(add_ln36_1_fu_119_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_hw_output_1_y_sca_reg_91[5]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[3]),
        .I1(p_hw_output_1_y_sca_reg_91_reg[0]),
        .I2(p_hw_output_1_y_sca_reg_91_reg[1]),
        .I3(p_hw_output_1_y_sca_reg_91_reg[2]),
        .I4(p_hw_output_1_y_sca_reg_91_reg[4]),
        .I5(p_hw_output_1_y_sca_reg_91_reg[5]),
        .O(add_ln36_1_fu_119_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_y_sca_reg_91[6]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[6]),
        .I1(\p_hw_output_1_y_sca_reg_91[8]_i_3_n_0 ),
        .O(add_ln36_1_fu_119_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \p_hw_output_1_y_sca_reg_91[7]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[7]),
        .I1(\p_hw_output_1_y_sca_reg_91[8]_i_3_n_0 ),
        .I2(p_hw_output_1_y_sca_reg_91_reg[6]),
        .O(add_ln36_1_fu_119_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \p_hw_output_1_y_sca_reg_91[8]_i_2 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[8]),
        .I1(p_hw_output_1_y_sca_reg_91_reg[6]),
        .I2(\p_hw_output_1_y_sca_reg_91[8]_i_3_n_0 ),
        .I3(p_hw_output_1_y_sca_reg_91_reg[7]),
        .O(add_ln36_1_fu_119_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_hw_output_1_y_sca_reg_91[8]_i_3 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[5]),
        .I1(p_hw_output_1_y_sca_reg_91_reg[4]),
        .I2(p_hw_output_1_y_sca_reg_91_reg[2]),
        .I3(p_hw_output_1_y_sca_reg_91_reg[1]),
        .I4(p_hw_output_1_y_sca_reg_91_reg[0]),
        .I5(p_hw_output_1_y_sca_reg_91_reg[3]),
        .O(\p_hw_output_1_y_sca_reg_91[8]_i_3_n_0 ));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[0] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[0]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[0]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[1] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[1]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[1]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[2] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[2]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[2]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[3] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[3]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[3]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[4] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[4]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[4]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[5] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[5]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[5]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[6] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[6]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[6]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[7] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[7]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[7]),
        .R(indvar_flatten_reg_80));
  FDRE \p_hw_output_1_y_sca_reg_91_reg[8] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_91),
        .D(add_ln36_1_fu_119_p2[8]),
        .Q(p_hw_output_1_y_sca_reg_91_reg[8]),
        .R(indvar_flatten_reg_80));
  overlay_32x32_addone_32x32_0_0_regslice_both__parameterized0 regslice_both_arg_0_V_last_V_U
       (.D({Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,tmp_last_V_reg_202}),
        .SR(SS),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TLAST(arg_0_TLAST),
        .arg_0_TREADY(arg_0_TREADY));
  overlay_32x32_addone_32x32_0_0_regslice_both regslice_both_arg_0_V_value_V_U
       (.D(Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read),
        .E(E),
        .Loop_2_proc17_U0_ap_start(Loop_2_proc17_U0_ap_start),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg[0]_0 }),
        .SR(SS),
        .\ap_CS_fsm_reg[0] (indvar_flatten_reg_80),
        .\ap_CS_fsm_reg[1] (p_hw_output_1_y_sca_reg_91),
        .\ap_CS_fsm_reg[2] (ap_enable_reg_pp0_iter2_reg_n_0),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_NS_fsm),
        .ap_enable_reg_pp0_iter0_reg_0(regslice_both_arg_0_V_value_V_U_n_9),
        .ap_enable_reg_pp0_iter1_reg(regslice_both_arg_0_V_value_V_U_n_1),
        .ap_enable_reg_pp0_iter2_reg(regslice_both_arg_0_V_value_V_U_n_2),
        .ap_rst_n(ap_rst_n),
        .arg_0_TREADY(arg_0_TREADY),
        .icmp_ln36_reg_2160(icmp_ln36_reg_2160),
        .icmp_ln36_reg_216_pp0_iter1_reg(icmp_ln36_reg_216_pp0_iter1_reg),
        .\icmp_ln36_reg_216_pp0_iter1_reg_reg[0] (\icmp_ln36_reg_216[0]_i_4_n_0 ),
        .\icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 (\icmp_ln36_reg_216[0]_i_3_n_0 ),
        .indvar_flatten_reg_800(indvar_flatten_reg_800),
        .\indvar_flatten_reg_80_reg[0] (\ap_CS_fsm[2]_i_3_n_0 ),
        .internal_empty_n_reg(internal_empty_n_reg_0),
        .\ireg_reg[31] ({arg_0_TDATA_int,D}),
        .\ireg_reg[32] (\ireg_reg[32] ),
        .\ireg_reg[32]_0 (ap_enable_reg_pp0_iter1_reg_n_0),
        .\ireg_reg[32]_1 (\icmp_ln36_reg_216_reg_n_0_[0] ),
        .\odata_reg[0] (Q[0]),
        .\odata_reg[32] (\odata_reg[32] ),
        .\odata_reg[32]_0 (internal_empty_n_reg),
        .\p_hw_output_1_y_sca_reg_91_reg[0] (\p_hw_output_1_x_sca_1_reg_102[8]_i_6_n_0 ),
        .\p_hw_output_1_y_sca_reg_91_reg[0]_0 (p_hw_output_1_x_sca_1_reg_102[8]),
        .\p_hw_output_1_y_sca_reg_91_reg[8] (regslice_both_arg_0_V_value_V_U_n_48),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .shiftReg_ce(shiftReg_ce),
        .\tmp_last_V_reg_202_reg[0] (p_hw_output_1_y_sca_reg_91_reg[8]),
        .\tmp_last_V_reg_202_reg[0]_0 (\tmp_last_V_reg_202[0]_i_2_n_0 ),
        .\tmp_last_V_reg_202_reg[0]_1 (\tmp_last_V_reg_202[0]_i_3_n_0 ),
        .\tmp_last_V_reg_202_reg[0]_2 (tmp_last_V_reg_202));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tmp_last_V_reg_202[0]_i_2 
       (.I0(p_hw_output_1_y_sca_reg_91_reg[7]),
        .I1(\p_hw_output_1_y_sca_reg_91[8]_i_3_n_0 ),
        .I2(p_hw_output_1_y_sca_reg_91_reg[6]),
        .O(\tmp_last_V_reg_202[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \tmp_last_V_reg_202[0]_i_3 
       (.I0(p_hw_output_1_x_sca_1_reg_102[8]),
        .I1(p_hw_output_1_x_sca_1_reg_102[6]),
        .I2(\p_hw_output_1_x_sca_1_reg_102[8]_i_5_n_0 ),
        .I3(p_hw_output_1_x_sca_1_reg_102[7]),
        .O(\tmp_last_V_reg_202[0]_i_3_n_0 ));
  FDRE \tmp_last_V_reg_202_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_0_V_value_V_U_n_48),
        .Q(tmp_last_V_reg_202),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d1_S" *) 
module overlay_32x32_addone_32x32_0_0_fifo_w1_d1_S
   (p_in_1_stencil_stream_3_full_n,
    p_in_1_stencil_stream_3_empty_n,
    ap_clk,
    shiftReg_ce,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    ap_rst_n,
    Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
    SS,
    E);
  output p_in_1_stencil_stream_3_full_n;
  output p_in_1_stencil_stream_3_empty_n;
  input ap_clk;
  input shiftReg_ce;
  input internal_full_n_reg_0;
  input [0:0]internal_full_n_reg_1;
  input ap_rst_n;
  input Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  input [0:0]SS;
  input [0:0]E;

  wire [0:0]E;
  wire Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1_n_0;
  wire internal_empty_n_i_2__1_n_0;
  wire internal_full_n_i_1__0_n_0;
  wire internal_full_n_i_2__0_n_0;
  wire internal_full_n_reg_0;
  wire [0:0]internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__0_n_0 ;
  wire \mOutPtr[1]_i_1__0_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire p_in_1_stencil_stream_3_empty_n;
  wire p_in_1_stencil_stream_3_full_n;
  wire shiftReg_ce;

  LUT6 #(
    .INIT(64'hCCCCCCC8CCC00000)) 
    internal_empty_n_i_1
       (.I0(internal_empty_n_i_2__1_n_0),
        .I1(ap_rst_n),
        .I2(internal_full_n_reg_1),
        .I3(internal_full_n_reg_0),
        .I4(shiftReg_ce),
        .I5(p_in_1_stencil_stream_3_empty_n),
        .O(internal_empty_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    internal_empty_n_i_2__1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .O(internal_empty_n_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_0),
        .Q(p_in_1_stencil_stream_3_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8C8C8CCFFFFFFFFF)) 
    internal_full_n_i_1__0
       (.I0(internal_full_n_i_2__0_n_0),
        .I1(p_in_1_stencil_stream_3_full_n),
        .I2(shiftReg_ce),
        .I3(internal_full_n_reg_0),
        .I4(internal_full_n_reg_1),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    internal_full_n_i_2__0
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .O(internal_full_n_i_2__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_0),
        .Q(p_in_1_stencil_stream_3_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \mOutPtr[1]_i_1__0 
       (.I0(shiftReg_ce),
        .I1(Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w32_d1_S" *) 
module overlay_32x32_addone_32x32_0_0_fifo_w32_d1_S
   (p_in_1_stencil_stream_2_full_n,
    p_in_1_stencil_stream_2_empty_n,
    D,
    Q,
    ap_clk,
    shiftReg_ce,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    ap_rst_n,
    Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,
    \SRL_SIG_reg[0][31] ,
    SS,
    E);
  output p_in_1_stencil_stream_2_full_n;
  output p_in_1_stencil_stream_2_empty_n;
  output [0:0]D;
  output [31:0]Q;
  input ap_clk;
  input shiftReg_ce;
  input internal_full_n_reg_0;
  input [0:0]internal_full_n_reg_1;
  input ap_rst_n;
  input Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  input [31:0]\SRL_SIG_reg[0][31] ;
  input [0:0]SS;
  input [0:0]E;

  wire [0:0]D;
  wire [0:0]E;
  wire Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  wire [31:0]Q;
  wire [31:0]\SRL_SIG_reg[0][31] ;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1__0_n_0;
  wire internal_empty_n_i_2__0_n_0;
  wire internal_full_n_i_1_n_0;
  wire internal_full_n_i_2_n_0;
  wire internal_full_n_reg_0;
  wire [0:0]internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_2_full_n;
  wire shiftReg_ce;

  overlay_32x32_addone_32x32_0_0_fifo_w32_d1_S_shiftReg U_fifo_w32_d1_S_ram
       (.D(D),
        .Q(Q),
        .\SRL_SIG_reg[0][31]_0 (\SRL_SIG_reg[0][31] ),
        .ap_clk(ap_clk),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'hCCCCCCC8CCC00000)) 
    internal_empty_n_i_1__0
       (.I0(internal_empty_n_i_2__0_n_0),
        .I1(ap_rst_n),
        .I2(internal_full_n_reg_1),
        .I3(internal_full_n_reg_0),
        .I4(shiftReg_ce),
        .I5(p_in_1_stencil_stream_2_empty_n),
        .O(internal_empty_n_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    internal_empty_n_i_2__0
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .O(internal_empty_n_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_0),
        .Q(p_in_1_stencil_stream_2_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8C8C8CCFFFFFFFFF)) 
    internal_full_n_i_1
       (.I0(internal_full_n_i_2_n_0),
        .I1(p_in_1_stencil_stream_2_full_n),
        .I2(shiftReg_ce),
        .I3(internal_full_n_reg_0),
        .I4(internal_full_n_reg_1),
        .I5(ap_rst_n),
        .O(internal_full_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h7)) 
    internal_full_n_i_2
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .O(internal_full_n_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_0),
        .Q(p_in_1_stencil_stream_2_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \mOutPtr[1]_i_2 
       (.I0(shiftReg_ce),
        .I1(Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w32_d1_S_shiftReg" *) 
module overlay_32x32_addone_32x32_0_0_fifo_w32_d1_S_shiftReg
   (D,
    Q,
    shiftReg_ce,
    \SRL_SIG_reg[0][31]_0 ,
    ap_clk);
  output [0:0]D;
  output [31:0]Q;
  input shiftReg_ce;
  input [31:0]\SRL_SIG_reg[0][31]_0 ;
  input ap_clk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [31:0]\SRL_SIG_reg[0][31]_0 ;
  wire ap_clk;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][12] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][13] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][14] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][15] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][16] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][17] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][18] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][19] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][20] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][21] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][22] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][23] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][24] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][25] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][26] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][27] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][28] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][29] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][30] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][31] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg[0][31]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ireg[0]_i_1 
       (.I0(Q[0]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "hls_target" *) (* hls_module = "yes" *) 
module overlay_32x32_addone_32x32_0_0_hls_target
   (arg_0_TDATA,
    arg_0_TLAST,
    arg_1_TDATA,
    arg_1_TLAST,
    ap_clk,
    ap_rst_n,
    arg_1_TVALID,
    arg_1_TREADY,
    arg_0_TVALID,
    arg_0_TREADY);
  output [31:0]arg_0_TDATA;
  output [0:0]arg_0_TLAST;
  input [31:0]arg_1_TDATA;
  input [0:0]arg_1_TLAST;
  input ap_clk;
  input ap_rst_n;
  input arg_1_TVALID;
  output arg_1_TREADY;
  output arg_0_TVALID;
  input arg_0_TREADY;

  wire Loop_1_proc16_U0_n_3;
  wire Loop_2_proc17_U0_ap_start;
  wire Loop_2_proc17_U0_n_1;
  wire Loop_2_proc17_U0_n_4;
  wire Loop_2_proc17_U0_n_5;
  wire Loop_2_proc17_U0_n_6;
  wire Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  wire [31:0]\SRL_SIG_reg[0] ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]arg_0_TDATA;
  wire [0:0]arg_0_TDATA_int;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire arg_0_TVALID;
  wire [31:0]arg_1_TDATA;
  wire arg_1_TREADY;
  wire arg_1_TVALID;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_empty_n;
  wire p_in_1_stencil_stream_3_full_n;
  wire \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in ;
  wire shiftReg_ce;
  wire start_for_Loop_2_proc17_U0_full_n;
  wire start_once_reg;
  wire [31:0]tmp_value_V_reg_102;

  overlay_32x32_addone_32x32_0_0_Loop_1_proc16 Loop_1_proc16_U0
       (.D({arg_1_TVALID,arg_1_TDATA}),
        .E(Loop_1_proc16_U0_n_3),
        .Q(tmp_value_V_reg_102),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_1_TREADY(arg_1_TREADY),
        .\mOutPtr_reg[1] (Loop_2_proc17_U0_n_6),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n),
        .shiftReg_ce(shiftReg_ce),
        .start_for_Loop_2_proc17_U0_full_n(start_for_Loop_2_proc17_U0_full_n),
        .start_once_reg(start_once_reg));
  overlay_32x32_addone_32x32_0_0_Loop_2_proc17 Loop_2_proc17_U0
       (.D(arg_0_TDATA_int),
        .E(Loop_2_proc17_U0_n_1),
        .Loop_2_proc17_U0_ap_start(Loop_2_proc17_U0_ap_start),
        .Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read(Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read),
        .Q(\SRL_SIG_reg[0] ),
        .SS(ap_rst_n_inv),
        .\ap_CS_fsm_reg[0]_0 (Loop_2_proc17_U0_n_4),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TLAST(arg_0_TLAST),
        .arg_0_TREADY(arg_0_TREADY),
        .internal_empty_n_reg(Loop_2_proc17_U0_n_5),
        .internal_empty_n_reg_0(Loop_2_proc17_U0_n_6),
        .\ireg_reg[32] (\regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in ),
        .\odata_reg[32] ({arg_0_TVALID,arg_0_TDATA}),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .shiftReg_ce(shiftReg_ce));
  overlay_32x32_addone_32x32_0_0_fifo_w32_d1_S p_in_1_stencil_stream_2_U
       (.D(arg_0_TDATA_int),
        .E(Loop_2_proc17_U0_n_1),
        .Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read(Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read),
        .Q(\SRL_SIG_reg[0] ),
        .\SRL_SIG_reg[0][31] (tmp_value_V_reg_102),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg_0(Loop_2_proc17_U0_n_5),
        .internal_full_n_reg_1(\regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in ),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .shiftReg_ce(shiftReg_ce));
  overlay_32x32_addone_32x32_0_0_fifo_w1_d1_S p_in_1_stencil_stream_3_U
       (.E(Loop_2_proc17_U0_n_1),
        .Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read(Loop_2_proc17_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg_0(Loop_2_proc17_U0_n_5),
        .internal_full_n_reg_1(\regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in ),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n),
        .shiftReg_ce(shiftReg_ce));
  overlay_32x32_addone_32x32_0_0_start_for_Loop_2_bkb start_for_Loop_2_bkb_U
       (.E(Loop_1_proc16_U0_n_3),
        .Loop_2_proc17_U0_ap_start(Loop_2_proc17_U0_ap_start),
        .SS(ap_rst_n_inv),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter2_reg(Loop_2_proc17_U0_n_4),
        .ap_rst_n(ap_rst_n),
        .\mOutPtr_reg[1]_0 (Loop_2_proc17_U0_n_6),
        .start_for_Loop_2_proc17_U0_full_n(start_for_Loop_2_proc17_U0_full_n),
        .start_once_reg(start_once_reg));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module overlay_32x32_addone_32x32_0_0_ibuf
   (ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2_reg,
    E,
    \icmp_ln36_reg_216_reg[0] ,
    ap_enable_reg_pp0_iter0_reg,
    \ireg_reg[32]_0 ,
    ap_enable_reg_pp0_iter0_reg_0,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[1] ,
    indvar_flatten_reg_800,
    icmp_ln36_reg_2160,
    ap_rst_n_0,
    count,
    D,
    \p_hw_output_1_y_sca_reg_91_reg[8] ,
    \indvar_flatten_reg_80_reg[0] ,
    \ireg_reg[32]_1 ,
    ap_enable_reg_pp0_iter0,
    ap_rst_n,
    \ap_CS_fsm_reg[2] ,
    ap_NS_fsm1,
    shiftReg_ce,
    Q,
    \ap_CS_fsm_reg[2]_0 ,
    icmp_ln36_reg_216_pp0_iter1_reg,
    \icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ,
    p_in_1_stencil_stream_3_empty_n,
    p_in_1_stencil_stream_2_empty_n,
    Loop_2_proc17_U0_ap_start,
    \p_hw_output_1_y_sca_reg_91_reg[0] ,
    \p_hw_output_1_y_sca_reg_91_reg[0]_0 ,
    \icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    arg_0_TREADY,
    \ireg_reg[32]_2 ,
    \odata_reg[32] ,
    \ireg_reg[31]_0 ,
    \odata_reg[0] ,
    \tmp_last_V_reg_202_reg[0] ,
    \tmp_last_V_reg_202_reg[0]_0 ,
    \tmp_last_V_reg_202_reg[0]_1 ,
    \tmp_last_V_reg_202_reg[0]_2 ,
    \ireg_reg[32]_3 ,
    SR,
    ap_clk);
  output ap_enable_reg_pp0_iter1_reg;
  output ap_enable_reg_pp0_iter2_reg;
  output [0:0]E;
  output \icmp_ln36_reg_216_reg[0] ;
  output [1:0]ap_enable_reg_pp0_iter0_reg;
  output [0:0]\ireg_reg[32]_0 ;
  output ap_enable_reg_pp0_iter0_reg_0;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output [0:0]\ap_CS_fsm_reg[1] ;
  output indvar_flatten_reg_800;
  output icmp_ln36_reg_2160;
  output ap_rst_n_0;
  output [0:0]count;
  output [32:0]D;
  output \p_hw_output_1_y_sca_reg_91_reg[8] ;
  input \indvar_flatten_reg_80_reg[0] ;
  input \ireg_reg[32]_1 ;
  input ap_enable_reg_pp0_iter0;
  input ap_rst_n;
  input \ap_CS_fsm_reg[2] ;
  input ap_NS_fsm1;
  input shiftReg_ce;
  input [1:0]Q;
  input \ap_CS_fsm_reg[2]_0 ;
  input icmp_ln36_reg_216_pp0_iter1_reg;
  input \icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ;
  input p_in_1_stencil_stream_3_empty_n;
  input p_in_1_stencil_stream_2_empty_n;
  input Loop_2_proc17_U0_ap_start;
  input \p_hw_output_1_y_sca_reg_91_reg[0] ;
  input [0:0]\p_hw_output_1_y_sca_reg_91_reg[0]_0 ;
  input \icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input arg_0_TREADY;
  input \ireg_reg[32]_2 ;
  input \odata_reg[32] ;
  input [31:0]\ireg_reg[31]_0 ;
  input [0:0]\odata_reg[0] ;
  input [0:0]\tmp_last_V_reg_202_reg[0] ;
  input \tmp_last_V_reg_202_reg[0]_0 ;
  input \tmp_last_V_reg_202_reg[0]_1 ;
  input [0:0]\tmp_last_V_reg_202_reg[0]_2 ;
  input [0:0]\ireg_reg[32]_3 ;
  input [0:0]SR;
  input ap_clk;

  wire [32:0]D;
  wire [0:0]E;
  wire Loop_2_proc17_U0_ap_start;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[2]_i_4_n_0 ;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_2_n_0;
  wire [1:0]ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire arg_0_TREADY;
  wire [0:0]count;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire icmp_ln36_reg_2160;
  wire icmp_ln36_reg_216_pp0_iter1_reg;
  wire \icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ;
  wire \icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ;
  wire \icmp_ln36_reg_216_reg[0] ;
  wire indvar_flatten_reg_800;
  wire \indvar_flatten_reg_80_reg[0] ;
  wire \ireg[32]_i_2__0_n_0 ;
  wire \ireg[32]_i_4__0_n_0 ;
  wire [31:0]\ireg_reg[31]_0 ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire \ireg_reg[32]_1 ;
  wire \ireg_reg[32]_2 ;
  wire [0:0]\ireg_reg[32]_3 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[24] ;
  wire \ireg_reg_n_0_[25] ;
  wire \ireg_reg_n_0_[26] ;
  wire \ireg_reg_n_0_[27] ;
  wire \ireg_reg_n_0_[28] ;
  wire \ireg_reg_n_0_[29] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[30] ;
  wire \ireg_reg_n_0_[31] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;
  wire [0:0]\odata_reg[0] ;
  wire \odata_reg[32] ;
  wire \p_hw_output_1_x_sca_1_reg_102[8]_i_4_n_0 ;
  wire \p_hw_output_1_y_sca_reg_91_reg[0] ;
  wire [0:0]\p_hw_output_1_y_sca_reg_91_reg[0]_0 ;
  wire \p_hw_output_1_y_sca_reg_91_reg[8] ;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_3_empty_n;
  wire shiftReg_ce;
  wire [0:0]\tmp_last_V_reg_202_reg[0] ;
  wire \tmp_last_V_reg_202_reg[0]_0 ;
  wire \tmp_last_V_reg_202_reg[0]_1 ;
  wire [0:0]\tmp_last_V_reg_202_reg[0]_2 ;

  LUT6 #(
    .INIT(64'hFFFFAAFBAAAAAAAA)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_NS_fsm1),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\indvar_flatten_reg_80_reg[0] ),
        .I3(\ap_CS_fsm_reg[2] ),
        .I4(\ap_CS_fsm[2]_i_4_n_0 ),
        .I5(Q[1]),
        .O(ap_enable_reg_pp0_iter0_reg[0]));
  LUT6 #(
    .INIT(64'h0000AA08AAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\indvar_flatten_reg_80_reg[0] ),
        .I3(\ap_CS_fsm_reg[2] ),
        .I4(\ap_CS_fsm[2]_i_4_n_0 ),
        .I5(Q[1]),
        .O(ap_enable_reg_pp0_iter0_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAEAAAEAE)) 
    \ap_CS_fsm[2]_i_4 
       (.I0(\ireg_reg[32]_1 ),
        .I1(\ap_CS_fsm_reg[2] ),
        .I2(icmp_ln36_reg_216_pp0_iter1_reg),
        .I3(\ireg_reg[32]_0 ),
        .I4(ap_rst_n),
        .O(\ap_CS_fsm[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE000E0E0E0E0E0E0)) 
    ap_enable_reg_pp0_iter0_i_1__0
       (.I0(ap_NS_fsm1),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_rst_n),
        .I3(\indvar_flatten_reg_80_reg[0] ),
        .I4(ap_enable_reg_pp0_iter0_i_2_n_0),
        .I5(Q[1]),
        .O(ap_enable_reg_pp0_iter0_reg_0));
  LUT6 #(
    .INIT(64'h0D0D0D0DFF0F0F0F)) 
    ap_enable_reg_pp0_iter0_i_2
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(icmp_ln36_reg_216_pp0_iter1_reg),
        .I2(\icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ),
        .I3(p_in_1_stencil_stream_3_empty_n),
        .I4(p_in_1_stencil_stream_2_empty_n),
        .I5(\ireg_reg[32]_0 ),
        .O(ap_enable_reg_pp0_iter0_i_2_n_0));
  LUT6 #(
    .INIT(64'hD0DDD00000000000)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(ap_enable_reg_pp0_iter0_i_2_n_0),
        .I1(\indvar_flatten_reg_80_reg[0] ),
        .I2(\ireg_reg[32]_1 ),
        .I3(\p_hw_output_1_x_sca_1_reg_102[8]_i_4_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter1_reg));
  LUT6 #(
    .INIT(64'hB8000000B800B800)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(\p_hw_output_1_x_sca_1_reg_102[8]_i_4_n_0 ),
        .I2(\ireg_reg[32]_1 ),
        .I3(ap_rst_n),
        .I4(ap_enable_reg_pp0_iter0_i_2_n_0),
        .I5(ap_NS_fsm1),
        .O(ap_enable_reg_pp0_iter2_reg));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hAAC0EAC0)) 
    \count[0]_i_1 
       (.I0(\icmp_ln36_reg_216_reg[0] ),
        .I1(ap_rst_n),
        .I2(\count_reg[0] ),
        .I3(\count_reg[0]_0 ),
        .I4(arg_0_TREADY),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \count[1]_i_1 
       (.I0(\count_reg[0] ),
        .I1(arg_0_TREADY),
        .I2(\icmp_ln36_reg_216_reg[0] ),
        .I3(\count_reg[0]_0 ),
        .O(count));
  LUT6 #(
    .INIT(64'hA2A200A200A200A2)) 
    \icmp_ln36_reg_216[0]_i_1 
       (.I0(Q[1]),
        .I1(\ireg[32]_i_4__0_n_0 ),
        .I2(\icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ),
        .I3(\icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ),
        .I4(p_in_1_stencil_stream_3_empty_n),
        .I5(p_in_1_stencil_stream_2_empty_n),
        .O(icmp_ln36_reg_2160));
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[32]_i_2__0 
       (.I0(\ireg_reg[32]_0 ),
        .I1(\ireg_reg[32]_3 ),
        .I2(arg_0_TREADY),
        .O(\ireg[32]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ireg[32]_i_3__0 
       (.I0(\ireg[32]_i_4__0_n_0 ),
        .I1(\ireg_reg[32]_2 ),
        .I2(\ireg_reg[32]_1 ),
        .I3(Q[1]),
        .I4(p_in_1_stencil_stream_2_empty_n),
        .I5(p_in_1_stencil_stream_3_empty_n),
        .O(\icmp_ln36_reg_216_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ireg[32]_i_4__0 
       (.I0(\ireg_reg[32]_0 ),
        .I1(ap_rst_n),
        .O(\ireg[32]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [10]),
        .Q(\ireg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [11]),
        .Q(\ireg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [12]),
        .Q(\ireg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [13]),
        .Q(\ireg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [14]),
        .Q(\ireg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [15]),
        .Q(\ireg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [16]),
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [17]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [18]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [19]),
        .Q(\ireg_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [20]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [21]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [22]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [23]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [24]),
        .Q(\ireg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [25]),
        .Q(\ireg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [26]),
        .Q(\ireg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [27]),
        .Q(\ireg_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [28]),
        .Q(\ireg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [29]),
        .Q(\ireg_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [30]),
        .Q(\ireg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[31] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [31]),
        .Q(\ireg_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\icmp_ln36_reg_216_reg[0] ),
        .Q(\ireg_reg[32]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [8]),
        .Q(\ireg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(\ireg[32]_i_2__0_n_0 ),
        .D(\ireg_reg[31]_0 [9]),
        .Q(\ireg_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \mOutPtr[1]_i_1 
       (.I0(\icmp_ln36_reg_216_reg[0] ),
        .I1(shiftReg_ce),
        .O(E));
  LUT3 #(
    .INIT(8'h8B)) 
    \odata[0]_i_1__0 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\odata_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[10]_i_1__0 
       (.I0(\ireg_reg_n_0_[10] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[11]_i_1__0 
       (.I0(\ireg_reg_n_0_[11] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[12]_i_1__0 
       (.I0(\ireg_reg_n_0_[12] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[13]_i_1__0 
       (.I0(\ireg_reg_n_0_[13] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[14]_i_1__0 
       (.I0(\ireg_reg_n_0_[14] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[15]_i_1__0 
       (.I0(\ireg_reg_n_0_[15] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[16]_i_1__0 
       (.I0(\ireg_reg_n_0_[16] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[17]_i_1__0 
       (.I0(\ireg_reg_n_0_[17] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[18]_i_1__0 
       (.I0(\ireg_reg_n_0_[18] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[19]_i_1__0 
       (.I0(\ireg_reg_n_0_[19] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[1]_i_1__1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[20]_i_1__0 
       (.I0(\ireg_reg_n_0_[20] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[21]_i_1__0 
       (.I0(\ireg_reg_n_0_[21] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[22]_i_1__0 
       (.I0(\ireg_reg_n_0_[22] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[23]_i_1__0 
       (.I0(\ireg_reg_n_0_[23] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[24]_i_1__0 
       (.I0(\ireg_reg_n_0_[24] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[25]_i_1__0 
       (.I0(\ireg_reg_n_0_[25] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[26]_i_1__0 
       (.I0(\ireg_reg_n_0_[26] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[27]_i_1__0 
       (.I0(\ireg_reg_n_0_[27] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[28]_i_1__0 
       (.I0(\ireg_reg_n_0_[28] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[29]_i_1__0 
       (.I0(\ireg_reg_n_0_[29] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[2]_i_1__0 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[30]_i_1__0 
       (.I0(\ireg_reg_n_0_[30] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[31]_i_3 
       (.I0(\ireg_reg_n_0_[31] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \odata[32]_i_1 
       (.I0(\ireg_reg[32]_0 ),
        .I1(\odata_reg[32] ),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[3]_i_1__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[4]_i_1__0 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[5]_i_1__0 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[6]_i_1__0 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[7]_i_1__0 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[8]_i_1__0 
       (.I0(\ireg_reg_n_0_[8] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[9]_i_1__0 
       (.I0(\ireg_reg_n_0_[9] ),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg[31]_0 [9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h8088888888888888)) 
    \p_hw_output_1_x_sca_1_reg_102[8]_i_1 
       (.I0(Q[0]),
        .I1(Loop_2_proc17_U0_ap_start),
        .I2(\p_hw_output_1_x_sca_1_reg_102[8]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(\indvar_flatten_reg_80_reg[0] ),
        .I5(ap_enable_reg_pp0_iter0),
        .O(\ap_CS_fsm_reg[0] ));
  LUT4 #(
    .INIT(16'h0080)) 
    \p_hw_output_1_x_sca_1_reg_102[8]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\indvar_flatten_reg_80_reg[0] ),
        .I2(Q[1]),
        .I3(\p_hw_output_1_x_sca_1_reg_102[8]_i_4_n_0 ),
        .O(indvar_flatten_reg_800));
  LUT6 #(
    .INIT(64'hF0FFF0F070707070)) 
    \p_hw_output_1_x_sca_1_reg_102[8]_i_4 
       (.I0(p_in_1_stencil_stream_2_empty_n),
        .I1(p_in_1_stencil_stream_3_empty_n),
        .I2(\icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ),
        .I3(icmp_ln36_reg_216_pp0_iter1_reg),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(\ireg[32]_i_4__0_n_0 ),
        .O(\p_hw_output_1_x_sca_1_reg_102[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \p_hw_output_1_y_sca_reg_91[8]_i_1 
       (.I0(\p_hw_output_1_x_sca_1_reg_102[8]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\indvar_flatten_reg_80_reg[0] ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\p_hw_output_1_y_sca_reg_91_reg[0] ),
        .I5(\p_hw_output_1_y_sca_reg_91_reg[0]_0 ),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'h04FFFFFF04000000)) 
    \tmp_last_V_reg_202[0]_i_1 
       (.I0(\tmp_last_V_reg_202_reg[0] ),
        .I1(\tmp_last_V_reg_202_reg[0]_0 ),
        .I2(\tmp_last_V_reg_202_reg[0]_1 ),
        .I3(icmp_ln36_reg_2160),
        .I4(\indvar_flatten_reg_80_reg[0] ),
        .I5(\tmp_last_V_reg_202_reg[0]_2 ),
        .O(\p_hw_output_1_y_sca_reg_91_reg[8] ));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module overlay_32x32_addone_32x32_0_0_ibuf_1
   (\ap_CS_fsm_reg[1] ,
    indvar_flatten_reg_75_reg_9_sp_1,
    \indvar_flatten_reg_75_reg[9]_0 ,
    indvar_flatten_reg_75_reg_13_sp_1,
    indvar_flatten_reg_75_reg_1_sp_1,
    indvar_flatten_reg_75_reg_3_sp_1,
    arg_1_TREADY,
    \ireg_reg[32]_0 ,
    \ireg_reg[32]_1 ,
    Q,
    p_in_1_stencil_stream_3_full_n,
    p_in_1_stencil_stream_2_full_n,
    \ireg_reg[0]_0 ,
    \ireg_reg[0]_1 ,
    indvar_flatten_reg_75_reg,
    D,
    ap_rst_n,
    \ireg_reg[0]_2 ,
    ap_enable_reg_pp0_iter0,
    SR,
    ap_clk);
  output \ap_CS_fsm_reg[1] ;
  output indvar_flatten_reg_75_reg_9_sp_1;
  output \indvar_flatten_reg_75_reg[9]_0 ;
  output indvar_flatten_reg_75_reg_13_sp_1;
  output indvar_flatten_reg_75_reg_1_sp_1;
  output indvar_flatten_reg_75_reg_3_sp_1;
  output arg_1_TREADY;
  output [0:0]\ireg_reg[32]_0 ;
  output [32:0]\ireg_reg[32]_1 ;
  input [0:0]Q;
  input p_in_1_stencil_stream_3_full_n;
  input p_in_1_stencil_stream_2_full_n;
  input \ireg_reg[0]_0 ;
  input \ireg_reg[0]_1 ;
  input [16:0]indvar_flatten_reg_75_reg;
  input [32:0]D;
  input ap_rst_n;
  input [0:0]\ireg_reg[0]_2 ;
  input ap_enable_reg_pp0_iter0;
  input [0:0]SR;
  input ap_clk;

  wire [32:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_rst_n;
  wire arg_1_TREADY;
  wire [16:0]indvar_flatten_reg_75_reg;
  wire \indvar_flatten_reg_75_reg[9]_0 ;
  wire indvar_flatten_reg_75_reg_13_sn_1;
  wire indvar_flatten_reg_75_reg_1_sn_1;
  wire indvar_flatten_reg_75_reg_3_sn_1;
  wire indvar_flatten_reg_75_reg_9_sn_1;
  wire ireg01_out;
  wire \ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire [0:0]\ireg_reg[0]_2 ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire [32:0]\ireg_reg[32]_1 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[10] ;
  wire \ireg_reg_n_0_[11] ;
  wire \ireg_reg_n_0_[12] ;
  wire \ireg_reg_n_0_[13] ;
  wire \ireg_reg_n_0_[14] ;
  wire \ireg_reg_n_0_[15] ;
  wire \ireg_reg_n_0_[16] ;
  wire \ireg_reg_n_0_[17] ;
  wire \ireg_reg_n_0_[18] ;
  wire \ireg_reg_n_0_[19] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[20] ;
  wire \ireg_reg_n_0_[21] ;
  wire \ireg_reg_n_0_[22] ;
  wire \ireg_reg_n_0_[23] ;
  wire \ireg_reg_n_0_[24] ;
  wire \ireg_reg_n_0_[25] ;
  wire \ireg_reg_n_0_[26] ;
  wire \ireg_reg_n_0_[27] ;
  wire \ireg_reg_n_0_[28] ;
  wire \ireg_reg_n_0_[29] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[30] ;
  wire \ireg_reg_n_0_[31] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire \ireg_reg_n_0_[8] ;
  wire \ireg_reg_n_0_[9] ;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_full_n;

  assign indvar_flatten_reg_75_reg_13_sp_1 = indvar_flatten_reg_75_reg_13_sn_1;
  assign indvar_flatten_reg_75_reg_1_sp_1 = indvar_flatten_reg_75_reg_1_sn_1;
  assign indvar_flatten_reg_75_reg_3_sp_1 = indvar_flatten_reg_75_reg_3_sn_1;
  assign indvar_flatten_reg_75_reg_9_sp_1 = indvar_flatten_reg_75_reg_9_sn_1;
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SRL_SIG[0][31]_i_3 
       (.I0(indvar_flatten_reg_75_reg[9]),
        .I1(indvar_flatten_reg_75_reg[10]),
        .I2(indvar_flatten_reg_75_reg[7]),
        .I3(indvar_flatten_reg_75_reg[8]),
        .O(\indvar_flatten_reg_75_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SRL_SIG[0][31]_i_4 
       (.I0(indvar_flatten_reg_75_reg[13]),
        .I1(indvar_flatten_reg_75_reg[14]),
        .I2(indvar_flatten_reg_75_reg[11]),
        .I3(indvar_flatten_reg_75_reg[12]),
        .O(indvar_flatten_reg_75_reg_13_sn_1));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \SRL_SIG[0][31]_i_5 
       (.I0(indvar_flatten_reg_75_reg[1]),
        .I1(indvar_flatten_reg_75_reg[2]),
        .I2(indvar_flatten_reg_75_reg[15]),
        .I3(indvar_flatten_reg_75_reg[16]),
        .I4(indvar_flatten_reg_75_reg[0]),
        .O(indvar_flatten_reg_75_reg_1_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SRL_SIG[0][31]_i_6 
       (.I0(indvar_flatten_reg_75_reg[3]),
        .I1(indvar_flatten_reg_75_reg[4]),
        .I2(indvar_flatten_reg_75_reg[5]),
        .I3(indvar_flatten_reg_75_reg[6]),
        .O(indvar_flatten_reg_75_reg_3_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    arg_1_TREADY_INST_0
       (.I0(D[32]),
        .I1(ap_rst_n),
        .I2(\ireg_reg[32]_0 ),
        .O(arg_1_TREADY));
  LUT5 #(
    .INIT(32'h44044444)) 
    \ireg[32]_i_2 
       (.I0(\ireg_reg[32]_0 ),
        .I1(\ireg_reg[0]_2 ),
        .I2(indvar_flatten_reg_75_reg_9_sn_1),
        .I3(\ap_CS_fsm_reg[1] ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(ireg01_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ireg[32]_i_3 
       (.I0(\indvar_flatten_reg_75_reg[9]_0 ),
        .I1(indvar_flatten_reg_75_reg_13_sn_1),
        .I2(indvar_flatten_reg_75_reg_1_sn_1),
        .I3(indvar_flatten_reg_75_reg_3_sn_1),
        .O(indvar_flatten_reg_75_reg_9_sn_1));
  LUT5 #(
    .INIT(32'h557F5555)) 
    \ireg[32]_i_4 
       (.I0(Q),
        .I1(p_in_1_stencil_stream_3_full_n),
        .I2(p_in_1_stencil_stream_2_full_n),
        .I3(\ireg_reg[0]_0 ),
        .I4(\ireg_reg[0]_1 ),
        .O(\ap_CS_fsm_reg[1] ));
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
        .Q(\ireg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[17]),
        .Q(\ireg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[18]),
        .Q(\ireg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[19]),
        .Q(\ireg_reg_n_0_[19] ),
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
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[20]),
        .Q(\ireg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[21]),
        .Q(\ireg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[22]),
        .Q(\ireg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[23]),
        .Q(\ireg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[24]),
        .Q(\ireg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[25]),
        .Q(\ireg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[26]),
        .Q(\ireg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[27]),
        .Q(\ireg_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[28]),
        .Q(\ireg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[29]),
        .Q(\ireg_reg_n_0_[29] ),
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
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[30]),
        .Q(\ireg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[31] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[31]),
        .Q(\ireg_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(D[32]),
        .Q(\ireg_reg[32]_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_1 
       (.I0(D[0]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[0] ),
        .O(\ireg_reg[32]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[10]_i_1 
       (.I0(D[10]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[10] ),
        .O(\ireg_reg[32]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[11]_i_1 
       (.I0(D[11]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[11] ),
        .O(\ireg_reg[32]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[12]_i_1 
       (.I0(D[12]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[12] ),
        .O(\ireg_reg[32]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[13]_i_1 
       (.I0(D[13]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[13] ),
        .O(\ireg_reg[32]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[14]_i_1 
       (.I0(D[14]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[14] ),
        .O(\ireg_reg[32]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[15]_i_1 
       (.I0(D[15]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[15] ),
        .O(\ireg_reg[32]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[16]_i_1 
       (.I0(D[16]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[16] ),
        .O(\ireg_reg[32]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[17]_i_1 
       (.I0(D[17]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[17] ),
        .O(\ireg_reg[32]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[18]_i_1 
       (.I0(D[18]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[18] ),
        .O(\ireg_reg[32]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[19]_i_1 
       (.I0(D[19]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[19] ),
        .O(\ireg_reg[32]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[1]_i_1__0 
       (.I0(D[1]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[1] ),
        .O(\ireg_reg[32]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[20]_i_1 
       (.I0(D[20]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[20] ),
        .O(\ireg_reg[32]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[21]_i_1 
       (.I0(D[21]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[21] ),
        .O(\ireg_reg[32]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[22]_i_1 
       (.I0(D[22]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[22] ),
        .O(\ireg_reg[32]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[23]_i_1 
       (.I0(D[23]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[23] ),
        .O(\ireg_reg[32]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[24]_i_1 
       (.I0(D[24]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[24] ),
        .O(\ireg_reg[32]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[25]_i_1 
       (.I0(D[25]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[25] ),
        .O(\ireg_reg[32]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[26]_i_1 
       (.I0(D[26]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[26] ),
        .O(\ireg_reg[32]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[27]_i_1 
       (.I0(D[27]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[27] ),
        .O(\ireg_reg[32]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[28]_i_1 
       (.I0(D[28]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[28] ),
        .O(\ireg_reg[32]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[29]_i_1 
       (.I0(D[29]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[29] ),
        .O(\ireg_reg[32]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[2]_i_1 
       (.I0(D[2]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[2] ),
        .O(\ireg_reg[32]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[30]_i_1 
       (.I0(D[30]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[30] ),
        .O(\ireg_reg[32]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[31]_i_1__0 
       (.I0(D[31]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[31] ),
        .O(\ireg_reg[32]_1 [31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[32]_i_2__0 
       (.I0(\ireg_reg[32]_0 ),
        .I1(D[32]),
        .O(\ireg_reg[32]_1 [32]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[3]_i_1 
       (.I0(D[3]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[3] ),
        .O(\ireg_reg[32]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[4]_i_1 
       (.I0(D[4]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[4] ),
        .O(\ireg_reg[32]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[5]_i_1 
       (.I0(D[5]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[5] ),
        .O(\ireg_reg[32]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[6]_i_1 
       (.I0(D[6]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[6] ),
        .O(\ireg_reg[32]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[7]_i_1 
       (.I0(D[7]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[7] ),
        .O(\ireg_reg[32]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[8]_i_1 
       (.I0(D[8]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[8] ),
        .O(\ireg_reg[32]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[9]_i_1 
       (.I0(D[9]),
        .I1(\ireg_reg[32]_0 ),
        .I2(\ireg_reg_n_0_[9] ),
        .O(\ireg_reg[32]_1 [9]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module overlay_32x32_addone_32x32_0_0_ibuf__parameterized0
   (D,
    Q,
    \ireg_reg[1]_0 ,
    \ireg_reg[0]_0 ,
    arg_0_TREADY,
    SR,
    ap_clk);
  output [1:0]D;
  output [0:0]Q;
  input [1:0]\ireg_reg[1]_0 ;
  input [0:0]\ireg_reg[0]_0 ;
  input arg_0_TREADY;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire arg_0_TREADY;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [1:0]\ireg_reg[1]_0 ;
  wire \ireg_reg_n_0_[0] ;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[1]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(arg_0_TREADY),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [1]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_2 
       (.I0(\ireg_reg[1]_0 [0]),
        .I1(Q),
        .I2(\ireg_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[1]_i_1 
       (.I0(Q),
        .I1(\ireg_reg[1]_0 [1]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module overlay_32x32_addone_32x32_0_0_obuf
   (SR,
    Q,
    \odata_reg[32]_0 ,
    ap_rst_n,
    arg_0_TREADY,
    \ireg_reg[0] ,
    D,
    ap_clk);
  output [0:0]SR;
  output [32:0]Q;
  output [0:0]\odata_reg[32]_0 ;
  input ap_rst_n;
  input arg_0_TREADY;
  input [0:0]\ireg_reg[0] ;
  input [32:0]D;
  input ap_clk;

  wire [32:0]D;
  wire [32:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire arg_0_TREADY;
  wire [0:0]\ireg_reg[0] ;
  wire \odata[31]_i_2_n_0 ;
  wire [0:0]\odata_reg[32]_0 ;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[32]_i_1__0 
       (.I0(Q[32]),
        .I1(arg_0_TREADY),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(\odata_reg[32]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \odata[31]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[31]_i_2 
       (.I0(arg_0_TREADY),
        .I1(Q[32]),
        .O(\odata[31]_i_2_n_0 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \odata_reg[15] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \odata_reg[17] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \odata_reg[18] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \odata_reg[19] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_reg[20] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \odata_reg[21] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \odata_reg[22] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \odata_reg[23] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \odata_reg[24] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \odata_reg[25] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \odata_reg[26] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \odata_reg[27] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \odata_reg[28] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \odata_reg[29] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_reg[30] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \odata_reg[31] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \odata_reg[32] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(\odata[31]_i_2_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module overlay_32x32_addone_32x32_0_0_obuf_2
   (ap_enable_reg_pp0_iter0_reg,
    shiftReg_ce,
    E,
    Q,
    indvar_flatten_reg_75,
    arg_1_TREADY_int,
    \icmp_ln24_reg_111_reg[0] ,
    SR,
    ap_NS_fsm15_out,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1_reg_0,
    ap_rst_n,
    \SRL_SIG_reg[0][0] ,
    \SRL_SIG_reg[0][0]_0 ,
    \SRL_SIG_reg[0][0]_1 ,
    \SRL_SIG_reg[0][0]_2 ,
    \SRL_SIG_reg[0][0]_3 ,
    ap_enable_reg_pp0_iter1_reg_1,
    \odata_reg[0]_0 ,
    \odata_reg[0]_1 ,
    \icmp_ln24_reg_111_reg[0]_0 ,
    \icmp_ln24_reg_111_reg[0]_1 ,
    \ireg_reg[0] ,
    SS,
    D,
    ap_clk);
  output ap_enable_reg_pp0_iter0_reg;
  output shiftReg_ce;
  output [0:0]E;
  output [32:0]Q;
  output indvar_flatten_reg_75;
  output arg_1_TREADY_int;
  output \icmp_ln24_reg_111_reg[0] ;
  output [0:0]SR;
  input ap_NS_fsm15_out;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter1_reg_0;
  input ap_rst_n;
  input \SRL_SIG_reg[0][0] ;
  input \SRL_SIG_reg[0][0]_0 ;
  input \SRL_SIG_reg[0][0]_1 ;
  input \SRL_SIG_reg[0][0]_2 ;
  input \SRL_SIG_reg[0][0]_3 ;
  input ap_enable_reg_pp0_iter1_reg_1;
  input \odata_reg[0]_0 ;
  input \odata_reg[0]_1 ;
  input \icmp_ln24_reg_111_reg[0]_0 ;
  input \icmp_ln24_reg_111_reg[0]_1 ;
  input [0:0]\ireg_reg[0] ;
  input [0:0]SS;
  input [32:0]D;
  input ap_clk;

  wire [32:0]D;
  wire [0:0]E;
  wire [32:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG[0][31]_i_2_n_0 ;
  wire \SRL_SIG_reg[0][0] ;
  wire \SRL_SIG_reg[0][0]_0 ;
  wire \SRL_SIG_reg[0][0]_1 ;
  wire \SRL_SIG_reg[0][0]_2 ;
  wire \SRL_SIG_reg[0][0]_3 ;
  wire [0:0]SS;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_i_3_n_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire arg_1_TREADY_int;
  wire \icmp_ln24_reg_111[0]_i_2_n_0 ;
  wire \icmp_ln24_reg_111_reg[0] ;
  wire \icmp_ln24_reg_111_reg[0]_0 ;
  wire \icmp_ln24_reg_111_reg[0]_1 ;
  wire indvar_flatten_reg_75;
  wire [0:0]\ireg_reg[0] ;
  wire \odata_reg[0]_0 ;
  wire \odata_reg[0]_1 ;
  wire p_0_in;
  wire shiftReg_ce;

  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    \SRL_SIG[0][31]_i_1 
       (.I0(\SRL_SIG[0][31]_i_2_n_0 ),
        .I1(\SRL_SIG_reg[0][0] ),
        .I2(\SRL_SIG_reg[0][0]_0 ),
        .I3(\SRL_SIG_reg[0][0]_1 ),
        .I4(\SRL_SIG_reg[0][0]_2 ),
        .I5(\SRL_SIG_reg[0][0]_3 ),
        .O(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \SRL_SIG[0][31]_i_2 
       (.I0(Q[32]),
        .I1(ap_enable_reg_pp0_iter0),
        .O(\SRL_SIG[0][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C550C0000000000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_NS_fsm15_out),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_enable_reg_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter1_i_3_n_0),
        .I4(ap_enable_reg_pp0_iter1_reg_0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT6 #(
    .INIT(64'h888888888888888A)) 
    ap_enable_reg_pp0_iter1_i_3
       (.I0(ap_enable_reg_pp0_iter1_reg_1),
        .I1(\SRL_SIG[0][31]_i_2_n_0 ),
        .I2(\SRL_SIG_reg[0][0] ),
        .I3(\SRL_SIG_reg[0][0]_0 ),
        .I4(\SRL_SIG_reg[0][0]_1 ),
        .I5(\SRL_SIG_reg[0][0]_2 ),
        .O(ap_enable_reg_pp0_iter1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFD01)) 
    \icmp_ln24_reg_111[0]_i_1 
       (.I0(\icmp_ln24_reg_111_reg[0]_0 ),
        .I1(\odata_reg[0]_0 ),
        .I2(\icmp_ln24_reg_111[0]_i_2_n_0 ),
        .I3(\icmp_ln24_reg_111_reg[0]_1 ),
        .O(\icmp_ln24_reg_111_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \icmp_ln24_reg_111[0]_i_2 
       (.I0(\SRL_SIG_reg[0][0]_2 ),
        .I1(\SRL_SIG_reg[0][0]_1 ),
        .I2(\SRL_SIG_reg[0][0]_0 ),
        .I3(\SRL_SIG_reg[0][0] ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[32]),
        .O(\icmp_ln24_reg_111[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \indvar_flatten_reg_75[0]_i_1 
       (.I0(ap_NS_fsm15_out),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\odata_reg[0]_0 ),
        .I3(\odata_reg[0]_1 ),
        .I4(Q[32]),
        .O(indvar_flatten_reg_75));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \indvar_flatten_reg_75[0]_i_2 
       (.I0(Q[32]),
        .I1(\odata_reg[0]_1 ),
        .I2(\odata_reg[0]_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(arg_1_TREADY_int));
  LUT6 #(
    .INIT(64'h5D550000FFFFFFFF)) 
    \ireg[32]_i_1 
       (.I0(Q[32]),
        .I1(\odata_reg[0]_1 ),
        .I2(\odata_reg[0]_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\ireg_reg[0] ),
        .I5(ap_rst_n),
        .O(SR));
  LUT4 #(
    .INIT(16'h20FF)) 
    \odata[32]_i_1__0 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\odata_reg[0]_0 ),
        .I2(\odata_reg[0]_1 ),
        .I3(Q[32]),
        .O(p_0_in));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[10]),
        .Q(Q[10]),
        .R(SS));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[11]),
        .Q(Q[11]),
        .R(SS));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[12]),
        .Q(Q[12]),
        .R(SS));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[13]),
        .Q(Q[13]),
        .R(SS));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[14]),
        .Q(Q[14]),
        .R(SS));
  FDRE \odata_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[15]),
        .Q(Q[15]),
        .R(SS));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[16]),
        .Q(Q[16]),
        .R(SS));
  FDRE \odata_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[17]),
        .Q(Q[17]),
        .R(SS));
  FDRE \odata_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[18]),
        .Q(Q[18]),
        .R(SS));
  FDRE \odata_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[19]),
        .Q(Q[19]),
        .R(SS));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[1]),
        .Q(Q[1]),
        .R(SS));
  FDRE \odata_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[20]),
        .Q(Q[20]),
        .R(SS));
  FDRE \odata_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[21]),
        .Q(Q[21]),
        .R(SS));
  FDRE \odata_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[22]),
        .Q(Q[22]),
        .R(SS));
  FDRE \odata_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[23]),
        .Q(Q[23]),
        .R(SS));
  FDRE \odata_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[24]),
        .Q(Q[24]),
        .R(SS));
  FDRE \odata_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[25]),
        .Q(Q[25]),
        .R(SS));
  FDRE \odata_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[26]),
        .Q(Q[26]),
        .R(SS));
  FDRE \odata_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[27]),
        .Q(Q[27]),
        .R(SS));
  FDRE \odata_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[28]),
        .Q(Q[28]),
        .R(SS));
  FDRE \odata_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[29]),
        .Q(Q[29]),
        .R(SS));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[2]),
        .Q(Q[2]),
        .R(SS));
  FDRE \odata_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[30]),
        .Q(Q[30]),
        .R(SS));
  FDRE \odata_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[31]),
        .Q(Q[31]),
        .R(SS));
  FDRE \odata_reg[32] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[32]),
        .Q(Q[32]),
        .R(SS));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[3]),
        .Q(Q[3]),
        .R(SS));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[4]),
        .Q(Q[4]),
        .R(SS));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[5]),
        .Q(Q[5]),
        .R(SS));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[6]),
        .Q(Q[6]),
        .R(SS));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[7]),
        .Q(Q[7]),
        .R(SS));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[8]),
        .Q(Q[8]),
        .R(SS));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(D[9]),
        .Q(Q[9]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \tmp_value_V_reg_102[31]_i_1 
       (.I0(\odata_reg[0]_0 ),
        .I1(\odata_reg[0]_1 ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(Q[32]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module overlay_32x32_addone_32x32_0_0_obuf__parameterized0
   (Q,
    SR,
    arg_0_TREADY,
    \ireg_reg[0] ,
    ap_rst_n,
    \odata_reg[1]_0 ,
    D,
    ap_clk);
  output [1:0]Q;
  output [0:0]SR;
  input arg_0_TREADY;
  input [0:0]\ireg_reg[0] ;
  input ap_rst_n;
  input [0:0]\odata_reg[1]_0 ;
  input [1:0]D;
  input ap_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire arg_0_TREADY;
  wire [0:0]\ireg_reg[0] ;
  wire \odata[0]_i_1__1_n_0 ;
  wire [0:0]\odata_reg[1]_0 ;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[1]_i_1 
       (.I0(Q[1]),
        .I1(arg_0_TREADY),
        .I2(\ireg_reg[0] ),
        .I3(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[0]_i_1__1 
       (.I0(arg_0_TREADY),
        .I1(Q[1]),
        .O(\odata[0]_i_1__1_n_0 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__1_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(\odata_reg[1]_0 ));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__1_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(\odata_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module overlay_32x32_addone_32x32_0_0_regslice_both
   (SR,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter2_reg,
    E,
    D,
    ap_enable_reg_pp0_iter0_reg,
    \ireg_reg[32] ,
    ap_enable_reg_pp0_iter0_reg_0,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[1] ,
    indvar_flatten_reg_800,
    icmp_ln36_reg_2160,
    internal_empty_n_reg,
    \odata_reg[32] ,
    \p_hw_output_1_y_sca_reg_91_reg[8] ,
    ap_clk,
    \indvar_flatten_reg_80_reg[0] ,
    \ireg_reg[32]_0 ,
    ap_enable_reg_pp0_iter0,
    ap_rst_n,
    \ap_CS_fsm_reg[2] ,
    ap_NS_fsm1,
    shiftReg_ce,
    Q,
    icmp_ln36_reg_216_pp0_iter1_reg,
    \icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ,
    p_in_1_stencil_stream_3_empty_n,
    p_in_1_stencil_stream_2_empty_n,
    Loop_2_proc17_U0_ap_start,
    \p_hw_output_1_y_sca_reg_91_reg[0] ,
    \p_hw_output_1_y_sca_reg_91_reg[0]_0 ,
    \icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ,
    arg_0_TREADY,
    \ireg_reg[32]_1 ,
    \odata_reg[32]_0 ,
    \ireg_reg[31] ,
    \odata_reg[0] ,
    \tmp_last_V_reg_202_reg[0] ,
    \tmp_last_V_reg_202_reg[0]_0 ,
    \tmp_last_V_reg_202_reg[0]_1 ,
    \tmp_last_V_reg_202_reg[0]_2 );
  output [0:0]SR;
  output ap_enable_reg_pp0_iter1_reg;
  output ap_enable_reg_pp0_iter2_reg;
  output [0:0]E;
  output [0:0]D;
  output [2:0]ap_enable_reg_pp0_iter0_reg;
  output [0:0]\ireg_reg[32] ;
  output ap_enable_reg_pp0_iter0_reg_0;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output [0:0]\ap_CS_fsm_reg[1] ;
  output indvar_flatten_reg_800;
  output icmp_ln36_reg_2160;
  output internal_empty_n_reg;
  output [32:0]\odata_reg[32] ;
  output \p_hw_output_1_y_sca_reg_91_reg[8] ;
  input ap_clk;
  input \indvar_flatten_reg_80_reg[0] ;
  input \ireg_reg[32]_0 ;
  input ap_enable_reg_pp0_iter0;
  input ap_rst_n;
  input \ap_CS_fsm_reg[2] ;
  input ap_NS_fsm1;
  input shiftReg_ce;
  input [2:0]Q;
  input icmp_ln36_reg_216_pp0_iter1_reg;
  input \icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ;
  input p_in_1_stencil_stream_3_empty_n;
  input p_in_1_stencil_stream_2_empty_n;
  input Loop_2_proc17_U0_ap_start;
  input \p_hw_output_1_y_sca_reg_91_reg[0] ;
  input [0:0]\p_hw_output_1_y_sca_reg_91_reg[0]_0 ;
  input \icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ;
  input arg_0_TREADY;
  input \ireg_reg[32]_1 ;
  input \odata_reg[32]_0 ;
  input [31:0]\ireg_reg[31] ;
  input [0:0]\odata_reg[0] ;
  input [0:0]\tmp_last_V_reg_202_reg[0] ;
  input \tmp_last_V_reg_202_reg[0]_0 ;
  input \tmp_last_V_reg_202_reg[0]_1 ;
  input [0:0]\tmp_last_V_reg_202_reg[0]_2 ;

  wire [0:0]D;
  wire [0:0]E;
  wire Loop_2_proc17_U0_ap_start;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [2:0]ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire arg_0_TREADY;
  wire [1:1]count;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_28;
  wire ibuf_inst_n_29;
  wire ibuf_inst_n_30;
  wire ibuf_inst_n_31;
  wire ibuf_inst_n_32;
  wire ibuf_inst_n_33;
  wire ibuf_inst_n_34;
  wire ibuf_inst_n_35;
  wire ibuf_inst_n_36;
  wire ibuf_inst_n_37;
  wire ibuf_inst_n_38;
  wire ibuf_inst_n_39;
  wire ibuf_inst_n_40;
  wire ibuf_inst_n_41;
  wire ibuf_inst_n_42;
  wire ibuf_inst_n_43;
  wire ibuf_inst_n_44;
  wire ibuf_inst_n_45;
  wire ibuf_inst_n_46;
  wire icmp_ln36_reg_2160;
  wire icmp_ln36_reg_216_pp0_iter1_reg;
  wire \icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ;
  wire \icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ;
  wire indvar_flatten_reg_800;
  wire \indvar_flatten_reg_80_reg[0] ;
  wire internal_empty_n_reg;
  wire [31:0]\ireg_reg[31] ;
  wire [0:0]\ireg_reg[32] ;
  wire \ireg_reg[32]_0 ;
  wire \ireg_reg[32]_1 ;
  wire obuf_inst_n_34;
  wire [0:0]\odata_reg[0] ;
  wire [32:0]\odata_reg[32] ;
  wire \odata_reg[32]_0 ;
  wire \p_hw_output_1_y_sca_reg_91_reg[0] ;
  wire [0:0]\p_hw_output_1_y_sca_reg_91_reg[0]_0 ;
  wire \p_hw_output_1_y_sca_reg_91_reg[8] ;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_3_empty_n;
  wire shiftReg_ce;
  wire [0:0]\tmp_last_V_reg_202_reg[0] ;
  wire \tmp_last_V_reg_202_reg[0]_0 ;
  wire \tmp_last_V_reg_202_reg[0]_1 ;
  wire [0:0]\tmp_last_V_reg_202_reg[0]_2 ;

  LUT4 #(
    .INIT(16'h0035)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm[0]_i_2_n_0 ),
        .I1(Loop_2_proc17_U0_ap_start),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(ap_enable_reg_pp0_iter0_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h70FF)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(arg_0_TREADY),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(Q[2]),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555515005555)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(Q[0]),
        .I1(arg_0_TREADY),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_12),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[1] ),
        .R(SR));
  overlay_32x32_addone_32x32_0_0_ibuf ibuf_inst
       (.D({ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39,ibuf_inst_n_40,ibuf_inst_n_41,ibuf_inst_n_42,ibuf_inst_n_43,ibuf_inst_n_44,ibuf_inst_n_45,ibuf_inst_n_46}),
        .E(E),
        .Loop_2_proc17_U0_ap_start(Loop_2_proc17_U0_ap_start),
        .Q(Q[1:0]),
        .SR(obuf_inst_n_34),
        .\ap_CS_fsm_reg[0] (\ap_CS_fsm_reg[0] ),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm[2]_i_2_n_0 ),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg[2:1]),
        .ap_enable_reg_pp0_iter0_reg_0(ap_enable_reg_pp0_iter0_reg_0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ibuf_inst_n_12),
        .arg_0_TREADY(arg_0_TREADY),
        .count(count),
        .\count_reg[0] (\count_reg_n_0_[0] ),
        .\count_reg[0]_0 (\count_reg_n_0_[1] ),
        .icmp_ln36_reg_2160(icmp_ln36_reg_2160),
        .icmp_ln36_reg_216_pp0_iter1_reg(icmp_ln36_reg_216_pp0_iter1_reg),
        .\icmp_ln36_reg_216_pp0_iter1_reg_reg[0] (\icmp_ln36_reg_216_pp0_iter1_reg_reg[0] ),
        .\icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 (\icmp_ln36_reg_216_pp0_iter1_reg_reg[0]_0 ),
        .\icmp_ln36_reg_216_reg[0] (D),
        .indvar_flatten_reg_800(indvar_flatten_reg_800),
        .\indvar_flatten_reg_80_reg[0] (\indvar_flatten_reg_80_reg[0] ),
        .\ireg_reg[31]_0 (\ireg_reg[31] ),
        .\ireg_reg[32]_0 (\ireg_reg[32] ),
        .\ireg_reg[32]_1 (\ireg_reg[32]_0 ),
        .\ireg_reg[32]_2 (\ireg_reg[32]_1 ),
        .\ireg_reg[32]_3 (\odata_reg[32] [32]),
        .\odata_reg[0] (\odata_reg[0] ),
        .\odata_reg[32] (\odata_reg[32]_0 ),
        .\p_hw_output_1_y_sca_reg_91_reg[0] (\p_hw_output_1_y_sca_reg_91_reg[0] ),
        .\p_hw_output_1_y_sca_reg_91_reg[0]_0 (\p_hw_output_1_y_sca_reg_91_reg[0]_0 ),
        .\p_hw_output_1_y_sca_reg_91_reg[8] (\p_hw_output_1_y_sca_reg_91_reg[8] ),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .shiftReg_ce(shiftReg_ce),
        .\tmp_last_V_reg_202_reg[0] (\tmp_last_V_reg_202_reg[0] ),
        .\tmp_last_V_reg_202_reg[0]_0 (\tmp_last_V_reg_202_reg[0]_0 ),
        .\tmp_last_V_reg_202_reg[0]_1 (\tmp_last_V_reg_202_reg[0]_1 ),
        .\tmp_last_V_reg_202_reg[0]_2 (\tmp_last_V_reg_202_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h88080808)) 
    \mOutPtr[1]_i_3 
       (.I0(Loop_2_proc17_U0_ap_start),
        .I1(Q[2]),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(arg_0_TREADY),
        .O(internal_empty_n_reg));
  overlay_32x32_addone_32x32_0_0_obuf obuf_inst
       (.D({ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39,ibuf_inst_n_40,ibuf_inst_n_41,ibuf_inst_n_42,ibuf_inst_n_43,ibuf_inst_n_44,ibuf_inst_n_45,ibuf_inst_n_46}),
        .Q(\odata_reg[32] ),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TREADY(arg_0_TREADY),
        .\ireg_reg[0] (\ireg_reg[32] ),
        .\odata_reg[32]_0 (obuf_inst_n_34));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module overlay_32x32_addone_32x32_0_0_regslice_both_0
   (ap_enable_reg_pp0_iter0_reg,
    shiftReg_ce,
    E,
    \ap_CS_fsm_reg[1] ,
    indvar_flatten_reg_75_reg_9_sp_1,
    indvar_flatten_reg_75,
    arg_1_TREADY_int,
    arg_1_TREADY,
    \icmp_ln24_reg_111_reg[0] ,
    \odata_reg[31] ,
    ap_NS_fsm15_out,
    ap_enable_reg_pp0_iter0,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1_reg_0,
    ap_rst_n,
    \SRL_SIG_reg[0][0] ,
    ap_enable_reg_pp0_iter1_reg_1,
    Q,
    p_in_1_stencil_stream_3_full_n,
    p_in_1_stencil_stream_2_full_n,
    \icmp_ln24_reg_111_reg[0]_0 ,
    indvar_flatten_reg_75_reg,
    D,
    \icmp_ln24_reg_111_reg[0]_1 ,
    ap_clk,
    SS);
  output ap_enable_reg_pp0_iter0_reg;
  output shiftReg_ce;
  output [0:0]E;
  output \ap_CS_fsm_reg[1] ;
  output indvar_flatten_reg_75_reg_9_sp_1;
  output indvar_flatten_reg_75;
  output arg_1_TREADY_int;
  output arg_1_TREADY;
  output \icmp_ln24_reg_111_reg[0] ;
  output [31:0]\odata_reg[31] ;
  input ap_NS_fsm15_out;
  input ap_enable_reg_pp0_iter0;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter1_reg_0;
  input ap_rst_n;
  input \SRL_SIG_reg[0][0] ;
  input ap_enable_reg_pp0_iter1_reg_1;
  input [0:0]Q;
  input p_in_1_stencil_stream_3_full_n;
  input p_in_1_stencil_stream_2_full_n;
  input \icmp_ln24_reg_111_reg[0]_0 ;
  input [16:0]indvar_flatten_reg_75_reg;
  input [32:0]D;
  input \icmp_ln24_reg_111_reg[0]_1 ;
  input ap_clk;
  input [0:0]SS;

  wire [32:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \SRL_SIG_reg[0][0] ;
  wire [0:0]SS;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_1;
  wire ap_rst_n;
  wire arg_1_TREADY;
  wire arg_1_TREADY_int;
  wire arg_1_TVALID_int;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_2;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_28;
  wire ibuf_inst_n_29;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_30;
  wire ibuf_inst_n_31;
  wire ibuf_inst_n_32;
  wire ibuf_inst_n_33;
  wire ibuf_inst_n_34;
  wire ibuf_inst_n_35;
  wire ibuf_inst_n_36;
  wire ibuf_inst_n_37;
  wire ibuf_inst_n_38;
  wire ibuf_inst_n_39;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_40;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire \icmp_ln24_reg_111_reg[0] ;
  wire \icmp_ln24_reg_111_reg[0]_0 ;
  wire \icmp_ln24_reg_111_reg[0]_1 ;
  wire indvar_flatten_reg_75;
  wire [16:0]indvar_flatten_reg_75_reg;
  wire indvar_flatten_reg_75_reg_9_sn_1;
  wire obuf_inst_n_39;
  wire [31:0]\odata_reg[31] ;
  wire p_0_in;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_full_n;
  wire shiftReg_ce;

  assign indvar_flatten_reg_75_reg_9_sp_1 = indvar_flatten_reg_75_reg_9_sn_1;
  overlay_32x32_addone_32x32_0_0_ibuf_1 ibuf_inst
       (.D(D),
        .Q(Q),
        .SR(obuf_inst_n_39),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_rst_n(ap_rst_n),
        .arg_1_TREADY(arg_1_TREADY),
        .indvar_flatten_reg_75_reg(indvar_flatten_reg_75_reg),
        .\indvar_flatten_reg_75_reg[9]_0 (ibuf_inst_n_2),
        .indvar_flatten_reg_75_reg_13_sp_1(ibuf_inst_n_3),
        .indvar_flatten_reg_75_reg_1_sp_1(ibuf_inst_n_4),
        .indvar_flatten_reg_75_reg_3_sp_1(ibuf_inst_n_5),
        .indvar_flatten_reg_75_reg_9_sp_1(indvar_flatten_reg_75_reg_9_sn_1),
        .\ireg_reg[0]_0 (\icmp_ln24_reg_111_reg[0]_0 ),
        .\ireg_reg[0]_1 (ap_enable_reg_pp0_iter1_reg_0),
        .\ireg_reg[0]_2 (arg_1_TVALID_int),
        .\ireg_reg[32]_0 (p_0_in),
        .\ireg_reg[32]_1 ({ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39,ibuf_inst_n_40}),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n));
  overlay_32x32_addone_32x32_0_0_obuf_2 obuf_inst
       (.D({ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28,ibuf_inst_n_29,ibuf_inst_n_30,ibuf_inst_n_31,ibuf_inst_n_32,ibuf_inst_n_33,ibuf_inst_n_34,ibuf_inst_n_35,ibuf_inst_n_36,ibuf_inst_n_37,ibuf_inst_n_38,ibuf_inst_n_39,ibuf_inst_n_40}),
        .E(E),
        .Q({arg_1_TVALID_int,\odata_reg[31] }),
        .SR(obuf_inst_n_39),
        .\SRL_SIG_reg[0][0] (ibuf_inst_n_2),
        .\SRL_SIG_reg[0][0]_0 (ibuf_inst_n_3),
        .\SRL_SIG_reg[0][0]_1 (ibuf_inst_n_4),
        .\SRL_SIG_reg[0][0]_2 (ibuf_inst_n_5),
        .\SRL_SIG_reg[0][0]_3 (\SRL_SIG_reg[0][0] ),
        .SS(SS),
        .ap_NS_fsm15_out(ap_NS_fsm15_out),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg_0),
        .ap_enable_reg_pp0_iter1_reg_1(ap_enable_reg_pp0_iter1_reg_1),
        .ap_rst_n(ap_rst_n),
        .arg_1_TREADY_int(arg_1_TREADY_int),
        .\icmp_ln24_reg_111_reg[0] (\icmp_ln24_reg_111_reg[0] ),
        .\icmp_ln24_reg_111_reg[0]_0 (\icmp_ln24_reg_111_reg[0]_1 ),
        .\icmp_ln24_reg_111_reg[0]_1 (\icmp_ln24_reg_111_reg[0]_0 ),
        .indvar_flatten_reg_75(indvar_flatten_reg_75),
        .\ireg_reg[0] (p_0_in),
        .\odata_reg[0]_0 (\ap_CS_fsm_reg[1] ),
        .\odata_reg[0]_1 (indvar_flatten_reg_75_reg_9_sn_1),
        .shiftReg_ce(shiftReg_ce));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module overlay_32x32_addone_32x32_0_0_regslice_both__parameterized0
   (arg_0_TLAST,
    D,
    arg_0_TREADY,
    ap_rst_n,
    ap_clk,
    SR);
  output [0:0]arg_0_TLAST;
  input [1:0]D;
  input arg_0_TREADY;
  input ap_rst_n;
  input ap_clk;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire [1:0]cdata;
  wire obuf_inst_n_0;
  wire obuf_inst_n_2;
  wire p_0_in;

  overlay_32x32_addone_32x32_0_0_ibuf__parameterized0 ibuf_inst
       (.D(cdata),
        .Q(p_0_in),
        .SR(obuf_inst_n_2),
        .ap_clk(ap_clk),
        .arg_0_TREADY(arg_0_TREADY),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[1]_0 (D));
  overlay_32x32_addone_32x32_0_0_obuf__parameterized0 obuf_inst
       (.D(cdata),
        .Q({obuf_inst_n_0,arg_0_TLAST}),
        .SR(obuf_inst_n_2),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TREADY(arg_0_TREADY),
        .\ireg_reg[0] (p_0_in),
        .\odata_reg[1]_0 (SR));
endmodule

(* ORIG_REF_NAME = "start_for_Loop_2_bkb" *) 
module overlay_32x32_addone_32x32_0_0_start_for_Loop_2_bkb
   (start_for_Loop_2_proc17_U0_full_n,
    Loop_2_proc17_U0_ap_start,
    ap_NS_fsm1,
    ap_clk,
    ap_enable_reg_pp0_iter2_reg,
    start_once_reg,
    \mOutPtr_reg[1]_0 ,
    ap_rst_n,
    SS,
    E);
  output start_for_Loop_2_proc17_U0_full_n;
  output Loop_2_proc17_U0_ap_start;
  output ap_NS_fsm1;
  input ap_clk;
  input [0:0]ap_enable_reg_pp0_iter2_reg;
  input start_once_reg;
  input \mOutPtr_reg[1]_0 ;
  input ap_rst_n;
  input [0:0]SS;
  input [0:0]E;

  wire [0:0]E;
  wire Loop_2_proc17_U0_ap_start;
  wire [0:0]SS;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire [0:0]ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire internal_empty_n_i_1__1_n_0;
  wire internal_empty_n_i_2_n_0;
  wire internal_full_n_i_1__1_n_0;
  wire \mOutPtr[0]_i_1__1_n_0 ;
  wire \mOutPtr[1]_i_2__0_n_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_Loop_2_proc17_U0_full_n;
  wire start_once_reg;

  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(Loop_2_proc17_U0_ap_start),
        .I1(ap_enable_reg_pp0_iter2_reg),
        .O(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(internal_empty_n_i_2_n_0),
        .I4(Loop_2_proc17_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    internal_empty_n_i_2
       (.I0(start_for_Loop_2_proc17_U0_full_n),
        .I1(start_once_reg),
        .O(internal_empty_n_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_0),
        .Q(Loop_2_proc17_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD5555)) 
    internal_full_n_i_1__1
       (.I0(ap_rst_n),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(start_once_reg),
        .I4(start_for_Loop_2_proc17_U0_full_n),
        .I5(\mOutPtr_reg[1]_0 ),
        .O(internal_full_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_0),
        .Q(start_for_Loop_2_proc17_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hD02F2FD0)) 
    \mOutPtr[1]_i_2__0 
       (.I0(start_for_Loop_2_proc17_U0_full_n),
        .I1(start_once_reg),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(SS));
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
