// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Aug 18 21:27:53 2020
// Host        : charles-XPS-13-9370 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/charles/Documents/2020_REU/vivado_script_dev/overlay_8x16/overlay_8x16/overlay_8x16.srcs/sources_1/bd/overlay_8x16/ip/overlay_8x16_addone_8x16_0_0/overlay_8x16_addone_8x16_0_0_sim_netlist.v
// Design      : overlay_8x16_addone_8x16_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "overlay_8x16_addone_8x16_0_0,hls_target,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "hls_target,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module overlay_8x16_addone_8x16_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TDATA" *) output [15:0]arg_0_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_0 TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_0, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_8x16_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]arg_0_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TVALID" *) input arg_1_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TREADY" *) output arg_1_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TDATA" *) input [7:0]arg_1_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 arg_1 TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME arg_1, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.000, CLK_DOMAIN overlay_8x16_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [0:0]arg_1_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF arg_0:arg_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN overlay_8x16_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;

  wire ap_clk;
  wire ap_rst_n;
  wire [15:0]arg_0_TDATA;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire arg_0_TVALID;
  wire [7:0]arg_1_TDATA;
  wire [0:0]arg_1_TLAST;
  wire arg_1_TREADY;
  wire arg_1_TVALID;

  overlay_8x16_addone_8x16_0_0_hls_target inst
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

(* ORIG_REF_NAME = "Loop_1_proc20" *) 
module overlay_8x16_addone_8x16_0_0_Loop_1_proc20
   (start_once_reg,
    ap_rst_n_0,
    shiftReg_ce,
    E,
    ap_rst_n_1,
    D,
    \mOutPtr_reg[0] ,
    arg_1_TREADY,
    \tmp_value_V_reg_102_reg[7]_0 ,
    ap_clk,
    SS,
    ap_rst_n,
    internal_full_n_reg,
    internal_full_n_reg_0,
    p_in_1_stencil_stream_2_full_n,
    \mOutPtr_reg[1] ,
    internal_full_n_reg_1,
    p_in_1_stencil_stream_3_full_n,
    Q,
    \mOutPtr_reg[1]_0 ,
    start_for_Loop_2_proc21_U0_full_n,
    \ireg_reg[8] );
  output start_once_reg;
  output ap_rst_n_0;
  output shiftReg_ce;
  output [0:0]E;
  output ap_rst_n_1;
  output [0:0]D;
  output [0:0]\mOutPtr_reg[0] ;
  output arg_1_TREADY;
  output [7:0]\tmp_value_V_reg_102_reg[7]_0 ;
  input ap_clk;
  input [0:0]SS;
  input ap_rst_n;
  input internal_full_n_reg;
  input internal_full_n_reg_0;
  input p_in_1_stencil_stream_2_full_n;
  input \mOutPtr_reg[1] ;
  input internal_full_n_reg_1;
  input p_in_1_stencil_stream_3_full_n;
  input [1:0]Q;
  input [1:0]\mOutPtr_reg[1]_0 ;
  input start_for_Loop_2_proc21_U0_full_n;
  input [8:0]\ireg_reg[8] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \SRL_SIG[0][7]_i_7_n_0 ;
  wire [0:0]SS;
  wire \ap_CS_fsm[1]_i_2__0_n_0 ;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_2_n_0;
  wire ap_enable_reg_pp0_iter1_i_4_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire arg_1_TREADY;
  wire arg_1_TREADY_int;
  wire \icmp_ln24_reg_111_reg_n_0_[0] ;
  wire indvar_flatten_reg_75;
  wire \indvar_flatten_reg_75[0]_i_4_n_0 ;
  wire \indvar_flatten_reg_75[0]_i_5_n_0 ;
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
  wire internal_full_n_reg;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire [8:0]\ireg_reg[8] ;
  wire [0:0]\mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  wire [1:0]\mOutPtr_reg[1]_0 ;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_full_n;
  wire regslice_both_arg_1_V_value_V_U_n_0;
  wire regslice_both_arg_1_V_value_V_U_n_13;
  wire regslice_both_arg_1_V_value_V_U_n_17;
  wire regslice_both_arg_1_V_value_V_U_n_18;
  wire regslice_both_arg_1_V_value_V_U_n_19;
  wire regslice_both_arg_1_V_value_V_U_n_20;
  wire regslice_both_arg_1_V_value_V_U_n_21;
  wire regslice_both_arg_1_V_value_V_U_n_22;
  wire regslice_both_arg_1_V_value_V_U_n_23;
  wire regslice_both_arg_1_V_value_V_U_n_24;
  wire regslice_both_arg_1_V_value_V_U_n_25;
  wire regslice_both_arg_1_V_value_V_U_n_4;
  wire regslice_both_arg_1_V_value_V_U_n_6;
  wire regslice_both_arg_1_V_value_V_U_n_7;
  wire regslice_both_arg_1_V_value_V_U_n_8;
  wire regslice_both_arg_1_V_value_V_U_n_9;
  wire shiftReg_ce;
  wire start_for_Loop_2_proc21_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_0;
  wire tmp_value_V_reg_1020;
  wire [7:0]\tmp_value_V_reg_102_reg[7]_0 ;
  wire [7:0]\NLW_indvar_flatten_reg_75_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_indvar_flatten_reg_75_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \SRL_SIG[0][7]_i_7 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(p_in_1_stencil_stream_3_full_n),
        .I4(p_in_1_stencil_stream_2_full_n),
        .O(\SRL_SIG[0][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00FF001F)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(start_once_reg),
        .I1(start_for_Loop_2_proc21_U0_full_n),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\ap_CS_fsm_reg_n_0_[2] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hFFAFEFAFFFAFFFAF)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm[1]_i_2__0_n_0 ),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\ap_CS_fsm[1]_i_3_n_0 ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(regslice_both_arg_1_V_value_V_U_n_4),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00202020)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(p_in_1_stencil_stream_3_full_n),
        .I4(p_in_1_stencil_stream_2_full_n),
        .O(\ap_CS_fsm[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(start_once_reg),
        .I1(start_for_Loop_2_proc21_U0_full_n),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(regslice_both_arg_1_V_value_V_U_n_13),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(regslice_both_arg_1_V_value_V_U_n_4),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
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
  LUT6 #(
    .INIT(64'h8A008A8A8A8A8A8A)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\ap_CS_fsm[1]_i_3_n_0 ),
        .I3(regslice_both_arg_1_V_value_V_U_n_4),
        .I4(\indvar_flatten_reg_75[0]_i_4_n_0 ),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(regslice_both_arg_1_V_value_V_U_n_6),
        .I2(regslice_both_arg_1_V_value_V_U_n_9),
        .I3(regslice_both_arg_1_V_value_V_U_n_8),
        .I4(regslice_both_arg_1_V_value_V_U_n_7),
        .I5(ap_enable_reg_pp0_iter1_i_4_n_0),
        .O(ap_enable_reg_pp0_iter1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    ap_enable_reg_pp0_iter1_i_4
       (.I0(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(p_in_1_stencil_stream_3_full_n),
        .I4(p_in_1_stencil_stream_2_full_n),
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
        .D(regslice_both_arg_1_V_value_V_U_n_17),
        .Q(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \indvar_flatten_reg_75[0]_i_4 
       (.I0(p_in_1_stencil_stream_3_full_n),
        .I1(p_in_1_stencil_stream_2_full_n),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(\icmp_ln24_reg_111_reg_n_0_[0] ),
        .O(\indvar_flatten_reg_75[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_75[0]_i_5 
       (.I0(indvar_flatten_reg_75_reg[0]),
        .O(\indvar_flatten_reg_75[0]_i_5_n_0 ));
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
        .S({indvar_flatten_reg_75_reg[7:1],\indvar_flatten_reg_75[0]_i_5_n_0 }));
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
  overlay_8x16_addone_8x16_0_0_regslice_both regslice_both_arg_1_V_value_V_U
       (.D(D),
        .E(E),
        .Q(Q),
        .SS(SS),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_i_2_n_0),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_arg_1_V_value_V_U_n_0),
        .ap_rst_n_1(ap_rst_n_0),
        .ap_rst_n_2(ap_rst_n_1),
        .arg_1_TREADY(arg_1_TREADY),
        .arg_1_TREADY_int(arg_1_TREADY_int),
        .\icmp_ln24_reg_111_reg[0] (regslice_both_arg_1_V_value_V_U_n_13),
        .\icmp_ln24_reg_111_reg[0]_0 (regslice_both_arg_1_V_value_V_U_n_17),
        .\icmp_ln24_reg_111_reg[0]_1 (\icmp_ln24_reg_111_reg_n_0_[0] ),
        .indvar_flatten_reg_75(indvar_flatten_reg_75),
        .indvar_flatten_reg_75_reg(indvar_flatten_reg_75_reg),
        .\indvar_flatten_reg_75_reg[0]_0 (\ap_CS_fsm[1]_i_3_n_0 ),
        .\indvar_flatten_reg_75_reg[0]_1 (\indvar_flatten_reg_75[0]_i_4_n_0 ),
        .\indvar_flatten_reg_75_reg[0]_2 (ap_CS_fsm_pp0_stage0),
        .\indvar_flatten_reg_75_reg[4]_0 (regslice_both_arg_1_V_value_V_U_n_6),
        .indvar_flatten_reg_75_reg_0_sp_1(regslice_both_arg_1_V_value_V_U_n_9),
        .indvar_flatten_reg_75_reg_12_sp_1(regslice_both_arg_1_V_value_V_U_n_8),
        .indvar_flatten_reg_75_reg_4_sp_1(regslice_both_arg_1_V_value_V_U_n_4),
        .indvar_flatten_reg_75_reg_8_sp_1(regslice_both_arg_1_V_value_V_U_n_7),
        .internal_full_n_reg(internal_full_n_reg),
        .internal_full_n_reg_0(internal_full_n_reg_0),
        .internal_full_n_reg_1(internal_full_n_reg_1),
        .\ireg_reg[8] (\ireg_reg[8] ),
        .\mOutPtr_reg[0] (\mOutPtr_reg[0] ),
        .\mOutPtr_reg[1] (\SRL_SIG[0][7]_i_7_n_0 ),
        .\mOutPtr_reg[1]_0 (\mOutPtr_reg[1] ),
        .\mOutPtr_reg[1]_1 (\mOutPtr_reg[1]_0 ),
        .\odata_reg[7] ({regslice_both_arg_1_V_value_V_U_n_18,regslice_both_arg_1_V_value_V_U_n_19,regslice_both_arg_1_V_value_V_U_n_20,regslice_both_arg_1_V_value_V_U_n_21,regslice_both_arg_1_V_value_V_U_n_22,regslice_both_arg_1_V_value_V_U_n_23,regslice_both_arg_1_V_value_V_U_n_24,regslice_both_arg_1_V_value_V_U_n_25}),
        .\odata_reg[8] (shiftReg_ce),
        .\odata_reg[8]_0 (tmp_value_V_reg_1020),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n));
  LUT3 #(
    .INIT(8'h0E)) 
    start_once_reg_i_1
       (.I0(start_once_reg),
        .I1(start_for_Loop_2_proc21_U0_full_n),
        .I2(\ap_CS_fsm_reg_n_0_[2] ),
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
        .D(regslice_both_arg_1_V_value_V_U_n_25),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[1] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_24),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[2] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_23),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[3] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_22),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[4] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_21),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[5] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_20),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[6] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_19),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \tmp_value_V_reg_102_reg[7] 
       (.C(ap_clk),
        .CE(tmp_value_V_reg_1020),
        .D(regslice_both_arg_1_V_value_V_U_n_18),
        .Q(\tmp_value_V_reg_102_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Loop_2_proc21" *) 
module overlay_8x16_addone_8x16_0_0_Loop_2_proc21
   (SS,
    Q,
    ap_rst_n_0,
    ap_rst_n_1,
    \icmp_ln36_reg_222_reg[0]_0 ,
    ap_rst_n_2,
    \odata_reg[16] ,
    \ireg_reg[16] ,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[1]_0 ,
    \ap_CS_fsm_reg[2]_0 ,
    arg_0_TREADY_0,
    internal_empty_n_reg,
    internal_empty_n4_out,
    \ap_CS_fsm_reg[2]_1 ,
    arg_0_TLAST,
    ap_clk,
    ap_rst_n,
    p_in_1_stencil_stream_3_empty_n,
    E,
    internal_empty_n_reg_0,
    p_in_1_stencil_stream_2_empty_n,
    internal_empty_n_reg_1,
    arg_0_TREADY,
    Loop_2_proc21_U0_ap_start,
    internal_full_n_reg,
    internal_full_n_reg_0,
    start_for_Loop_2_proc21_U0_full_n,
    start_once_reg,
    D,
    \odata_reg[4] ,
    \odata_reg[4]_0 ,
    \odata_reg[6] );
  output [0:0]SS;
  output [4:0]Q;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output \icmp_ln36_reg_222_reg[0]_0 ;
  output ap_rst_n_2;
  output [8:0]\odata_reg[16] ;
  output \ireg_reg[16] ;
  output \mOutPtr_reg[1] ;
  output \mOutPtr_reg[1]_0 ;
  output [0:0]\ap_CS_fsm_reg[2]_0 ;
  output arg_0_TREADY_0;
  output [0:0]internal_empty_n_reg;
  output internal_empty_n4_out;
  output \ap_CS_fsm_reg[2]_1 ;
  output [0:0]arg_0_TLAST;
  input ap_clk;
  input ap_rst_n;
  input p_in_1_stencil_stream_3_empty_n;
  input [0:0]E;
  input internal_empty_n_reg_0;
  input p_in_1_stencil_stream_2_empty_n;
  input internal_empty_n_reg_1;
  input arg_0_TREADY;
  input Loop_2_proc21_U0_ap_start;
  input [1:0]internal_full_n_reg;
  input [1:0]internal_full_n_reg_0;
  input start_for_Loop_2_proc21_U0_full_n;
  input start_once_reg;
  input [7:0]D;
  input \odata_reg[4] ;
  input [2:0]\odata_reg[4]_0 ;
  input [3:0]\odata_reg[6] ;

  wire [7:0]D;
  wire [0:0]E;
  wire Loop_2_proc21_U0_ap_start;
  wire Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read;
  wire [4:0]Q;
  wire [0:0]SS;
  wire [8:0]add_ln36_1_fu_121_p2;
  wire \ap_CS_fsm[1]_i_3__0_n_0 ;
  wire \ap_CS_fsm[1]_i_4_n_0 ;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire [0:0]\ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[2]_1 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp0_iter2_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire arg_0_TREADY_0;
  wire icmp_ln36_fu_115_p2;
  wire icmp_ln36_reg_2220;
  wire \icmp_ln36_reg_222[0]_i_3_n_0 ;
  wire \icmp_ln36_reg_222[0]_i_4_n_0 ;
  wire \icmp_ln36_reg_222[0]_i_5_n_0 ;
  wire \icmp_ln36_reg_222[0]_i_6_n_0 ;
  wire \icmp_ln36_reg_222[0]_i_7_n_0 ;
  wire \icmp_ln36_reg_222[0]_i_8_n_0 ;
  wire \icmp_ln36_reg_222[0]_i_9_n_0 ;
  wire icmp_ln36_reg_222_pp0_iter1_reg;
  wire \icmp_ln36_reg_222_reg[0]_0 ;
  wire \icmp_ln36_reg_222_reg_n_0_[0] ;
  wire indvar_flatten_reg_82;
  wire indvar_flatten_reg_820;
  wire \indvar_flatten_reg_82[0]_i_2_n_0 ;
  wire [16:0]indvar_flatten_reg_82_reg;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_0 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_1 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_10 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_11 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_12 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_13 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_14 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_15 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_2 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_3 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_4 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_5 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_6 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_7 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_8 ;
  wire \indvar_flatten_reg_82_reg[0]_i_1_n_9 ;
  wire \indvar_flatten_reg_82_reg[16]_i_1_n_15 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_0 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_1 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_10 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_11 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_12 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_13 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_14 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_15 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_2 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_7 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_8 ;
  wire \indvar_flatten_reg_82_reg[8]_i_1_n_9 ;
  wire internal_empty_n4_out;
  wire [0:0]internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire [1:0]internal_full_n_reg;
  wire [1:0]internal_full_n_reg_0;
  wire \ireg_reg[16] ;
  wire \mOutPtr_reg[1] ;
  wire \mOutPtr_reg[1]_0 ;
  wire [8:0]\odata_reg[16] ;
  wire \odata_reg[4] ;
  wire [2:0]\odata_reg[4]_0 ;
  wire [3:0]\odata_reg[6] ;
  wire [8:0]p_hw_output_1_x_sca_1_reg_104;
  wire \p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0 ;
  wire \p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0 ;
  wire \p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0 ;
  wire [8:0]p_hw_output_1_x_sca_fu_187_p2;
  wire p_hw_output_1_y_sca_reg_93;
  wire \p_hw_output_1_y_sca_reg_93[8]_i_3_n_0 ;
  wire [8:0]p_hw_output_1_y_sca_reg_93_reg;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_3_empty_n;
  wire regslice_both_arg_0_V_value_V_U_n_1;
  wire regslice_both_arg_0_V_value_V_U_n_2;
  wire regslice_both_arg_0_V_value_V_U_n_24;
  wire regslice_both_arg_0_V_value_V_U_n_36;
  wire start_for_Loop_2_proc21_U0_full_n;
  wire start_once_reg;
  wire tmp_last_V_reg_208;
  wire \tmp_last_V_reg_208[0]_i_2_n_0 ;
  wire [7:0]\NLW_indvar_flatten_reg_82_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_indvar_flatten_reg_82_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \ap_CS_fsm[1]_i_3__0 
       (.I0(\icmp_ln36_reg_222[0]_i_9_n_0 ),
        .I1(\icmp_ln36_reg_222[0]_i_8_n_0 ),
        .I2(\icmp_ln36_reg_222[0]_i_7_n_0 ),
        .I3(\icmp_ln36_reg_222[0]_i_6_n_0 ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(\ap_CS_fsm[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(Loop_2_proc21_U0_ap_start),
        .O(\ap_CS_fsm[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_enable_reg_pp0_iter2_reg_n_0),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
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
        .Q(\ap_CS_fsm_reg[2]_0 ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_0_V_value_V_U_n_24),
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
  LUT1 #(
    .INIT(2'h1)) 
    \icmp_ln36_reg_222[0]_i_2 
       (.I0(\icmp_ln36_reg_222[0]_i_5_n_0 ),
        .O(icmp_ln36_fu_115_p2));
  LUT4 #(
    .INIT(16'hFDDD)) 
    \icmp_ln36_reg_222[0]_i_3 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\icmp_ln36_reg_222_reg_n_0_[0] ),
        .I2(p_in_1_stencil_stream_2_empty_n),
        .I3(p_in_1_stencil_stream_3_empty_n),
        .O(\icmp_ln36_reg_222[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22F2)) 
    \icmp_ln36_reg_222[0]_i_4 
       (.I0(ap_enable_reg_pp0_iter2_reg_n_0),
        .I1(icmp_ln36_reg_222_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(\icmp_ln36_reg_222_reg_n_0_[0] ),
        .O(\icmp_ln36_reg_222[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln36_reg_222[0]_i_5 
       (.I0(\icmp_ln36_reg_222[0]_i_6_n_0 ),
        .I1(\icmp_ln36_reg_222[0]_i_7_n_0 ),
        .I2(\icmp_ln36_reg_222[0]_i_8_n_0 ),
        .I3(\icmp_ln36_reg_222[0]_i_9_n_0 ),
        .O(\icmp_ln36_reg_222[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln36_reg_222[0]_i_6 
       (.I0(indvar_flatten_reg_82_reg[4]),
        .I1(indvar_flatten_reg_82_reg[3]),
        .I2(indvar_flatten_reg_82_reg[6]),
        .I3(indvar_flatten_reg_82_reg[5]),
        .O(\icmp_ln36_reg_222[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \icmp_ln36_reg_222[0]_i_7 
       (.I0(indvar_flatten_reg_82_reg[0]),
        .I1(indvar_flatten_reg_82_reg[15]),
        .I2(indvar_flatten_reg_82_reg[16]),
        .I3(indvar_flatten_reg_82_reg[2]),
        .I4(indvar_flatten_reg_82_reg[1]),
        .O(\icmp_ln36_reg_222[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln36_reg_222[0]_i_8 
       (.I0(indvar_flatten_reg_82_reg[12]),
        .I1(indvar_flatten_reg_82_reg[11]),
        .I2(indvar_flatten_reg_82_reg[14]),
        .I3(indvar_flatten_reg_82_reg[13]),
        .O(\icmp_ln36_reg_222[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln36_reg_222[0]_i_9 
       (.I0(indvar_flatten_reg_82_reg[8]),
        .I1(indvar_flatten_reg_82_reg[7]),
        .I2(indvar_flatten_reg_82_reg[10]),
        .I3(indvar_flatten_reg_82_reg[9]),
        .O(\icmp_ln36_reg_222[0]_i_9_n_0 ));
  FDRE \icmp_ln36_reg_222_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln36_reg_2220),
        .D(\icmp_ln36_reg_222_reg_n_0_[0] ),
        .Q(icmp_ln36_reg_222_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln36_reg_222_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln36_reg_2220),
        .D(icmp_ln36_fu_115_p2),
        .Q(\icmp_ln36_reg_222_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_82[0]_i_2 
       (.I0(indvar_flatten_reg_82_reg[0]),
        .O(\indvar_flatten_reg_82[0]_i_2_n_0 ));
  FDRE \indvar_flatten_reg_82_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_15 ),
        .Q(indvar_flatten_reg_82_reg[0]),
        .R(indvar_flatten_reg_82));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_82_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_reg_82_reg[0]_i_1_n_0 ,\indvar_flatten_reg_82_reg[0]_i_1_n_1 ,\indvar_flatten_reg_82_reg[0]_i_1_n_2 ,\indvar_flatten_reg_82_reg[0]_i_1_n_3 ,\indvar_flatten_reg_82_reg[0]_i_1_n_4 ,\indvar_flatten_reg_82_reg[0]_i_1_n_5 ,\indvar_flatten_reg_82_reg[0]_i_1_n_6 ,\indvar_flatten_reg_82_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_reg_82_reg[0]_i_1_n_8 ,\indvar_flatten_reg_82_reg[0]_i_1_n_9 ,\indvar_flatten_reg_82_reg[0]_i_1_n_10 ,\indvar_flatten_reg_82_reg[0]_i_1_n_11 ,\indvar_flatten_reg_82_reg[0]_i_1_n_12 ,\indvar_flatten_reg_82_reg[0]_i_1_n_13 ,\indvar_flatten_reg_82_reg[0]_i_1_n_14 ,\indvar_flatten_reg_82_reg[0]_i_1_n_15 }),
        .S({indvar_flatten_reg_82_reg[7:1],\indvar_flatten_reg_82[0]_i_2_n_0 }));
  FDRE \indvar_flatten_reg_82_reg[10] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_13 ),
        .Q(indvar_flatten_reg_82_reg[10]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[11] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_12 ),
        .Q(indvar_flatten_reg_82_reg[11]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[12] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_11 ),
        .Q(indvar_flatten_reg_82_reg[12]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[13] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_10 ),
        .Q(indvar_flatten_reg_82_reg[13]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[14] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_9 ),
        .Q(indvar_flatten_reg_82_reg[14]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[15] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_8 ),
        .Q(indvar_flatten_reg_82_reg[15]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[16] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[16]_i_1_n_15 ),
        .Q(indvar_flatten_reg_82_reg[16]),
        .R(indvar_flatten_reg_82));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_82_reg[16]_i_1 
       (.CI(\indvar_flatten_reg_82_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_indvar_flatten_reg_82_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten_reg_82_reg[16]_i_1_O_UNCONNECTED [7:1],\indvar_flatten_reg_82_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,indvar_flatten_reg_82_reg[16]}));
  FDRE \indvar_flatten_reg_82_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_14 ),
        .Q(indvar_flatten_reg_82_reg[1]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_13 ),
        .Q(indvar_flatten_reg_82_reg[2]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_12 ),
        .Q(indvar_flatten_reg_82_reg[3]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_11 ),
        .Q(indvar_flatten_reg_82_reg[4]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_10 ),
        .Q(indvar_flatten_reg_82_reg[5]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_9 ),
        .Q(indvar_flatten_reg_82_reg[6]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[0]_i_1_n_8 ),
        .Q(indvar_flatten_reg_82_reg[7]),
        .R(indvar_flatten_reg_82));
  FDRE \indvar_flatten_reg_82_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_15 ),
        .Q(indvar_flatten_reg_82_reg[8]),
        .R(indvar_flatten_reg_82));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_reg_82_reg[8]_i_1 
       (.CI(\indvar_flatten_reg_82_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_reg_82_reg[8]_i_1_n_0 ,\indvar_flatten_reg_82_reg[8]_i_1_n_1 ,\indvar_flatten_reg_82_reg[8]_i_1_n_2 ,\indvar_flatten_reg_82_reg[8]_i_1_n_3 ,\indvar_flatten_reg_82_reg[8]_i_1_n_4 ,\indvar_flatten_reg_82_reg[8]_i_1_n_5 ,\indvar_flatten_reg_82_reg[8]_i_1_n_6 ,\indvar_flatten_reg_82_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_reg_82_reg[8]_i_1_n_8 ,\indvar_flatten_reg_82_reg[8]_i_1_n_9 ,\indvar_flatten_reg_82_reg[8]_i_1_n_10 ,\indvar_flatten_reg_82_reg[8]_i_1_n_11 ,\indvar_flatten_reg_82_reg[8]_i_1_n_12 ,\indvar_flatten_reg_82_reg[8]_i_1_n_13 ,\indvar_flatten_reg_82_reg[8]_i_1_n_14 ,\indvar_flatten_reg_82_reg[8]_i_1_n_15 }),
        .S(indvar_flatten_reg_82_reg[15:8]));
  FDRE \indvar_flatten_reg_82_reg[9] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(\indvar_flatten_reg_82_reg[8]_i_1_n_14 ),
        .Q(indvar_flatten_reg_82_reg[9]),
        .R(indvar_flatten_reg_82));
  LUT2 #(
    .INIT(4'h7)) 
    internal_full_n_i_3__0
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(Loop_2_proc21_U0_ap_start),
        .O(\ap_CS_fsm_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \p_hw_output_1_x_sca_1_reg_104[0]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_104[0]),
        .O(p_hw_output_1_x_sca_fu_187_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_x_sca_1_reg_104[1]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_104[0]),
        .I1(p_hw_output_1_x_sca_1_reg_104[1]),
        .O(p_hw_output_1_x_sca_fu_187_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_hw_output_1_x_sca_1_reg_104[2]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_104[1]),
        .I1(p_hw_output_1_x_sca_1_reg_104[0]),
        .I2(p_hw_output_1_x_sca_1_reg_104[2]),
        .O(p_hw_output_1_x_sca_fu_187_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_hw_output_1_x_sca_1_reg_104[3]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_104[2]),
        .I1(p_hw_output_1_x_sca_1_reg_104[0]),
        .I2(p_hw_output_1_x_sca_1_reg_104[1]),
        .I3(p_hw_output_1_x_sca_1_reg_104[3]),
        .O(p_hw_output_1_x_sca_fu_187_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_hw_output_1_x_sca_1_reg_104[4]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_104[3]),
        .I1(p_hw_output_1_x_sca_1_reg_104[1]),
        .I2(p_hw_output_1_x_sca_1_reg_104[0]),
        .I3(p_hw_output_1_x_sca_1_reg_104[2]),
        .I4(p_hw_output_1_x_sca_1_reg_104[4]),
        .O(p_hw_output_1_x_sca_fu_187_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_hw_output_1_x_sca_1_reg_104[5]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_104[4]),
        .I1(p_hw_output_1_x_sca_1_reg_104[2]),
        .I2(p_hw_output_1_x_sca_1_reg_104[0]),
        .I3(p_hw_output_1_x_sca_1_reg_104[1]),
        .I4(p_hw_output_1_x_sca_1_reg_104[3]),
        .I5(p_hw_output_1_x_sca_1_reg_104[5]),
        .O(p_hw_output_1_x_sca_fu_187_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_x_sca_1_reg_104[6]_i_1 
       (.I0(\p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0 ),
        .I1(p_hw_output_1_x_sca_1_reg_104[6]),
        .O(p_hw_output_1_x_sca_fu_187_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_hw_output_1_x_sca_1_reg_104[7]_i_1 
       (.I0(p_hw_output_1_x_sca_1_reg_104[6]),
        .I1(\p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0 ),
        .I2(p_hw_output_1_x_sca_1_reg_104[7]),
        .O(p_hw_output_1_x_sca_fu_187_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7F808080)) 
    \p_hw_output_1_x_sca_1_reg_104[8]_i_3 
       (.I0(\p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0 ),
        .I1(p_hw_output_1_x_sca_1_reg_104[6]),
        .I2(p_hw_output_1_x_sca_1_reg_104[7]),
        .I3(p_hw_output_1_x_sca_1_reg_104[8]),
        .I4(\p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0 ),
        .O(p_hw_output_1_x_sca_fu_187_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_hw_output_1_x_sca_1_reg_104[8]_i_5 
       (.I0(p_hw_output_1_x_sca_1_reg_104[4]),
        .I1(p_hw_output_1_x_sca_1_reg_104[2]),
        .I2(p_hw_output_1_x_sca_1_reg_104[0]),
        .I3(p_hw_output_1_x_sca_1_reg_104[1]),
        .I4(p_hw_output_1_x_sca_1_reg_104[3]),
        .I5(p_hw_output_1_x_sca_1_reg_104[5]),
        .O(\p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \p_hw_output_1_x_sca_1_reg_104[8]_i_6 
       (.I0(p_hw_output_1_x_sca_1_reg_104[2]),
        .I1(p_hw_output_1_x_sca_1_reg_104[3]),
        .I2(p_hw_output_1_x_sca_1_reg_104[0]),
        .I3(p_hw_output_1_x_sca_1_reg_104[1]),
        .I4(\p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0 ),
        .O(\p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \p_hw_output_1_x_sca_1_reg_104[8]_i_7 
       (.I0(p_hw_output_1_x_sca_1_reg_104[5]),
        .I1(p_hw_output_1_x_sca_1_reg_104[4]),
        .I2(p_hw_output_1_x_sca_1_reg_104[7]),
        .I3(p_hw_output_1_x_sca_1_reg_104[6]),
        .O(\p_hw_output_1_x_sca_1_reg_104[8]_i_7_n_0 ));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[0]),
        .Q(p_hw_output_1_x_sca_1_reg_104[0]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[1]),
        .Q(p_hw_output_1_x_sca_1_reg_104[1]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[2]),
        .Q(p_hw_output_1_x_sca_1_reg_104[2]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[3]),
        .Q(p_hw_output_1_x_sca_1_reg_104[3]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[4]),
        .Q(p_hw_output_1_x_sca_1_reg_104[4]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[5]),
        .Q(p_hw_output_1_x_sca_1_reg_104[5]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[6]),
        .Q(p_hw_output_1_x_sca_1_reg_104[6]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[7]),
        .Q(p_hw_output_1_x_sca_1_reg_104[7]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_x_sca_1_reg_104_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_820),
        .D(p_hw_output_1_x_sca_fu_187_p2[8]),
        .Q(p_hw_output_1_x_sca_1_reg_104[8]),
        .R(indvar_flatten_reg_82));
  LUT1 #(
    .INIT(2'h1)) 
    \p_hw_output_1_y_sca_reg_93[0]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[0]),
        .O(add_ln36_1_fu_121_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_y_sca_reg_93[1]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[0]),
        .I1(p_hw_output_1_y_sca_reg_93_reg[1]),
        .O(add_ln36_1_fu_121_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_hw_output_1_y_sca_reg_93[2]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[1]),
        .I1(p_hw_output_1_y_sca_reg_93_reg[0]),
        .I2(p_hw_output_1_y_sca_reg_93_reg[2]),
        .O(add_ln36_1_fu_121_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_hw_output_1_y_sca_reg_93[3]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[2]),
        .I1(p_hw_output_1_y_sca_reg_93_reg[0]),
        .I2(p_hw_output_1_y_sca_reg_93_reg[1]),
        .I3(p_hw_output_1_y_sca_reg_93_reg[3]),
        .O(add_ln36_1_fu_121_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_hw_output_1_y_sca_reg_93[4]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[3]),
        .I1(p_hw_output_1_y_sca_reg_93_reg[1]),
        .I2(p_hw_output_1_y_sca_reg_93_reg[0]),
        .I3(p_hw_output_1_y_sca_reg_93_reg[2]),
        .I4(p_hw_output_1_y_sca_reg_93_reg[4]),
        .O(add_ln36_1_fu_121_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_hw_output_1_y_sca_reg_93[5]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[4]),
        .I1(p_hw_output_1_y_sca_reg_93_reg[2]),
        .I2(p_hw_output_1_y_sca_reg_93_reg[0]),
        .I3(p_hw_output_1_y_sca_reg_93_reg[1]),
        .I4(p_hw_output_1_y_sca_reg_93_reg[3]),
        .I5(p_hw_output_1_y_sca_reg_93_reg[5]),
        .O(add_ln36_1_fu_121_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \p_hw_output_1_y_sca_reg_93[6]_i_1 
       (.I0(\p_hw_output_1_y_sca_reg_93[8]_i_3_n_0 ),
        .I1(p_hw_output_1_y_sca_reg_93_reg[6]),
        .O(add_ln36_1_fu_121_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \p_hw_output_1_y_sca_reg_93[7]_i_1 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[6]),
        .I1(\p_hw_output_1_y_sca_reg_93[8]_i_3_n_0 ),
        .I2(p_hw_output_1_y_sca_reg_93_reg[7]),
        .O(add_ln36_1_fu_121_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_hw_output_1_y_sca_reg_93[8]_i_2 
       (.I0(\p_hw_output_1_y_sca_reg_93[8]_i_3_n_0 ),
        .I1(p_hw_output_1_y_sca_reg_93_reg[6]),
        .I2(p_hw_output_1_y_sca_reg_93_reg[7]),
        .I3(p_hw_output_1_y_sca_reg_93_reg[8]),
        .O(add_ln36_1_fu_121_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_hw_output_1_y_sca_reg_93[8]_i_3 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[4]),
        .I1(p_hw_output_1_y_sca_reg_93_reg[2]),
        .I2(p_hw_output_1_y_sca_reg_93_reg[0]),
        .I3(p_hw_output_1_y_sca_reg_93_reg[1]),
        .I4(p_hw_output_1_y_sca_reg_93_reg[3]),
        .I5(p_hw_output_1_y_sca_reg_93_reg[5]),
        .O(\p_hw_output_1_y_sca_reg_93[8]_i_3_n_0 ));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[0] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[0]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[0]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[1] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[1]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[1]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[2] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[2]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[2]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[3] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[3]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[3]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[4] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[4]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[4]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[5] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[5]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[5]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[6] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[6]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[6]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[7] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[7]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[7]),
        .R(indvar_flatten_reg_82));
  FDRE \p_hw_output_1_y_sca_reg_93_reg[8] 
       (.C(ap_clk),
        .CE(p_hw_output_1_y_sca_reg_93),
        .D(add_ln36_1_fu_121_p2[8]),
        .Q(p_hw_output_1_y_sca_reg_93_reg[8]),
        .R(indvar_flatten_reg_82));
  overlay_8x16_addone_8x16_0_0_regslice_both__parameterized0 regslice_both_arg_0_V_last_V_U
       (.D({Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read,tmp_last_V_reg_208}),
        .SR(SS),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TLAST(arg_0_TLAST),
        .arg_0_TREADY(arg_0_TREADY),
        .\odata_reg[1] (ap_rst_n_1));
  overlay_8x16_addone_8x16_0_0_regslice_both__parameterized1 regslice_both_arg_0_V_value_V_U
       (.D(ap_NS_fsm),
        .E(E),
        .Loop_2_proc21_U0_ap_start(Loop_2_proc21_U0_ap_start),
        .Q(Q),
        .SR(SS),
        .\ap_CS_fsm_reg[1] (ap_enable_reg_pp0_iter1_reg_n_0),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm[1]_i_3__0_n_0 ),
        .\ap_CS_fsm_reg[1]_1 (ap_enable_reg_pp0_iter2_reg_n_0),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm[2]_i_3_n_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(p_hw_output_1_y_sca_reg_93),
        .ap_enable_reg_pp0_iter0_reg_0(indvar_flatten_reg_82),
        .ap_enable_reg_pp0_iter0_reg_1(\ap_CS_fsm[1]_i_4_n_0 ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_arg_0_V_value_V_U_n_1),
        .ap_rst_n_1(regslice_both_arg_0_V_value_V_U_n_2),
        .ap_rst_n_2(ap_rst_n_0),
        .ap_rst_n_3(ap_rst_n_1),
        .ap_rst_n_4(ap_rst_n_2),
        .ap_rst_n_5(regslice_both_arg_0_V_value_V_U_n_24),
        .ap_rst_n_6(Loop_2_proc21_U0_p_in_1_stencil_stream_to_hw_output_1_V_last_V_read),
        .arg_0_TREADY(arg_0_TREADY),
        .arg_0_TREADY_0(arg_0_TREADY_0),
        .icmp_ln36_reg_2220(icmp_ln36_reg_2220),
        .icmp_ln36_reg_222_pp0_iter1_reg(icmp_ln36_reg_222_pp0_iter1_reg),
        .\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] (\icmp_ln36_reg_222[0]_i_4_n_0 ),
        .\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 (\icmp_ln36_reg_222[0]_i_3_n_0 ),
        .\icmp_ln36_reg_222_reg[0] (\icmp_ln36_reg_222_reg[0]_0 ),
        .indvar_flatten_reg_820(indvar_flatten_reg_820),
        .\indvar_flatten_reg_82_reg[0] (\icmp_ln36_reg_222[0]_i_5_n_0 ),
        .internal_empty_n4_out(internal_empty_n4_out),
        .internal_empty_n_reg(internal_empty_n_reg),
        .internal_empty_n_reg_0(internal_empty_n_reg_0),
        .internal_empty_n_reg_1(internal_empty_n_reg_1),
        .internal_full_n_reg(internal_full_n_reg),
        .internal_full_n_reg_0(internal_full_n_reg_0),
        .\ireg_reg[16] (\ireg_reg[16] ),
        .\ireg_reg[7] (D),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ),
        .\mOutPtr_reg[1]_0 (\mOutPtr_reg[1]_0 ),
        .\mOutPtr_reg[1]_1 ({\ap_CS_fsm_reg[2]_0 ,ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg_n_0_[0] }),
        .\odata_reg[16] (\odata_reg[16] ),
        .\odata_reg[16]_0 (\icmp_ln36_reg_222_reg_n_0_[0] ),
        .\odata_reg[4] (\odata_reg[4] ),
        .\odata_reg[4]_0 (\odata_reg[4]_0 ),
        .\odata_reg[6] (\odata_reg[6] ),
        .\p_hw_output_1_y_sca_reg_93_reg[0] (p_hw_output_1_x_sca_1_reg_104[8]),
        .\p_hw_output_1_y_sca_reg_93_reg[0]_0 (\p_hw_output_1_x_sca_1_reg_104[8]_i_6_n_0 ),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .start_for_Loop_2_proc21_U0_full_n(start_for_Loop_2_proc21_U0_full_n),
        .start_once_reg(start_once_reg),
        .\tmp_last_V_reg_208_reg[0] (regslice_both_arg_0_V_value_V_U_n_36),
        .\tmp_last_V_reg_208_reg[0]_0 (\tmp_last_V_reg_208[0]_i_2_n_0 ),
        .\tmp_last_V_reg_208_reg[0]_1 (\p_hw_output_1_x_sca_1_reg_104[8]_i_5_n_0 ),
        .\tmp_last_V_reg_208_reg[0]_2 (\p_hw_output_1_y_sca_reg_93[8]_i_3_n_0 ),
        .\tmp_last_V_reg_208_reg[0]_3 (tmp_last_V_reg_208));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \tmp_last_V_reg_208[0]_i_2 
       (.I0(p_hw_output_1_y_sca_reg_93_reg[6]),
        .I1(p_hw_output_1_x_sca_1_reg_104[8]),
        .I2(p_hw_output_1_x_sca_1_reg_104[6]),
        .I3(p_hw_output_1_x_sca_1_reg_104[7]),
        .I4(p_hw_output_1_y_sca_reg_93_reg[8]),
        .I5(p_hw_output_1_y_sca_reg_93_reg[7]),
        .O(\tmp_last_V_reg_208[0]_i_2_n_0 ));
  FDRE \tmp_last_V_reg_208_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_arg_0_V_value_V_U_n_36),
        .Q(tmp_last_V_reg_208),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d1_S" *) 
module overlay_8x16_addone_8x16_0_0_fifo_w1_d1_S
   (p_in_1_stencil_stream_3_full_n,
    p_in_1_stencil_stream_3_empty_n,
    \mOutPtr_reg[0]_0 ,
    Q,
    internal_full_n_reg_0,
    ap_clk,
    internal_empty_n_reg_0,
    SS,
    E,
    D);
  output p_in_1_stencil_stream_3_full_n;
  output p_in_1_stencil_stream_3_empty_n;
  output \mOutPtr_reg[0]_0 ;
  output [1:0]Q;
  input internal_full_n_reg_0;
  input ap_clk;
  input internal_empty_n_reg_0;
  input [0:0]SS;
  input [0:0]E;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire ap_clk;
  wire internal_empty_n_reg_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__0_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire p_in_1_stencil_stream_3_empty_n;
  wire p_in_1_stencil_stream_3_full_n;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    internal_empty_n_i_2__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\mOutPtr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_reg_0),
        .Q(p_in_1_stencil_stream_3_empty_n),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_reg_0),
        .Q(p_in_1_stencil_stream_3_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(Q[0]),
        .O(\mOutPtr[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D),
        .Q(Q[1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d1_S" *) 
module overlay_8x16_addone_8x16_0_0_fifo_w8_d1_S
   (p_in_1_stencil_stream_2_full_n,
    p_in_1_stencil_stream_2_empty_n,
    \ireg_reg[6] ,
    \SRL_SIG_reg[0][4] ,
    \SRL_SIG_reg[0][2] ,
    \mOutPtr_reg[0]_0 ,
    \mOutPtr_reg[1]_0 ,
    D,
    internal_full_n_reg_0,
    ap_clk,
    internal_empty_n_reg_0,
    Q,
    \odata_reg[6] ,
    E,
    \SRL_SIG_reg[0][7] ,
    SS,
    \mOutPtr_reg[0]_1 ,
    \mOutPtr_reg[1]_1 );
  output p_in_1_stencil_stream_2_full_n;
  output p_in_1_stencil_stream_2_empty_n;
  output [3:0]\ireg_reg[6] ;
  output [2:0]\SRL_SIG_reg[0][4] ;
  output \SRL_SIG_reg[0][2] ;
  output \mOutPtr_reg[0]_0 ;
  output [1:0]\mOutPtr_reg[1]_0 ;
  output [7:0]D;
  input internal_full_n_reg_0;
  input ap_clk;
  input internal_empty_n_reg_0;
  input [4:0]Q;
  input \odata_reg[6] ;
  input [0:0]E;
  input [7:0]\SRL_SIG_reg[0][7] ;
  input [0:0]SS;
  input [0:0]\mOutPtr_reg[0]_1 ;
  input [0:0]\mOutPtr_reg[1]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire \SRL_SIG_reg[0][2] ;
  wire [2:0]\SRL_SIG_reg[0][4] ;
  wire [7:0]\SRL_SIG_reg[0][7] ;
  wire [0:0]SS;
  wire ap_clk;
  wire internal_empty_n_reg_0;
  wire internal_full_n_reg_0;
  wire [3:0]\ireg_reg[6] ;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire [0:0]\mOutPtr_reg[0]_1 ;
  wire [1:0]\mOutPtr_reg[1]_0 ;
  wire [0:0]\mOutPtr_reg[1]_1 ;
  wire \odata_reg[6] ;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_2_full_n;

  overlay_8x16_addone_8x16_0_0_fifo_w8_d1_S_shiftReg U_fifo_w8_d1_S_ram
       (.D(D),
        .E(E),
        .Q(Q),
        .\SRL_SIG_reg[0][2]_0 (\SRL_SIG_reg[0][2] ),
        .\SRL_SIG_reg[0][4]_0 (\SRL_SIG_reg[0][4] ),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .ap_clk(ap_clk),
        .\ireg_reg[6] (\ireg_reg[6] ),
        .\odata_reg[6] (\odata_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    internal_empty_n_i_2__0
       (.I0(\mOutPtr_reg[1]_0 [0]),
        .I1(\mOutPtr_reg[1]_0 [1]),
        .O(\mOutPtr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_reg_0),
        .Q(p_in_1_stencil_stream_2_empty_n),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_reg_0),
        .Q(p_in_1_stencil_stream_2_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg[1]_0 [0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_1 ),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg[1]_0 [0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_1 ),
        .D(\mOutPtr_reg[1]_1 ),
        .Q(\mOutPtr_reg[1]_0 [1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d1_S_shiftReg" *) 
module overlay_8x16_addone_8x16_0_0_fifo_w8_d1_S_shiftReg
   (\ireg_reg[6] ,
    \SRL_SIG_reg[0][4]_0 ,
    \SRL_SIG_reg[0][2]_0 ,
    D,
    Q,
    \odata_reg[6] ,
    E,
    \SRL_SIG_reg[0][7]_0 ,
    ap_clk);
  output [3:0]\ireg_reg[6] ;
  output [2:0]\SRL_SIG_reg[0][4]_0 ;
  output \SRL_SIG_reg[0][2]_0 ;
  output [7:0]D;
  input [4:0]Q;
  input \odata_reg[6] ;
  input [0:0]E;
  input [7:0]\SRL_SIG_reg[0][7]_0 ;
  input ap_clk;

  wire [7:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [7:2]\SRL_SIG_reg[0] ;
  wire \SRL_SIG_reg[0][2]_0 ;
  wire [2:0]\SRL_SIG_reg[0][4]_0 ;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire ap_clk;
  wire [3:0]\ireg_reg[6] ;
  wire \odata_reg[6] ;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [0]),
        .Q(\SRL_SIG_reg[0][4]_0 [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [1]),
        .Q(\SRL_SIG_reg[0][4]_0 [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [2]),
        .Q(\SRL_SIG_reg[0] [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [3]),
        .Q(\SRL_SIG_reg[0] [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [4]),
        .Q(\SRL_SIG_reg[0][4]_0 [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [5]),
        .Q(\SRL_SIG_reg[0] [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [6]),
        .Q(\SRL_SIG_reg[0] [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(E),
        .D(\SRL_SIG_reg[0][7]_0 [7]),
        .Q(\SRL_SIG_reg[0] [7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ireg[0]_i_1 
       (.I0(\SRL_SIG_reg[0][4]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ireg[1]_i_1__0 
       (.I0(\SRL_SIG_reg[0][4]_0 [0]),
        .I1(\SRL_SIG_reg[0][4]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ireg[2]_i_1 
       (.I0(\SRL_SIG_reg[0][4]_0 [1]),
        .I1(\SRL_SIG_reg[0][4]_0 [0]),
        .I2(\SRL_SIG_reg[0] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ireg[3]_i_1 
       (.I0(\SRL_SIG_reg[0] [2]),
        .I1(\SRL_SIG_reg[0][4]_0 [0]),
        .I2(\SRL_SIG_reg[0][4]_0 [1]),
        .I3(\SRL_SIG_reg[0] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ireg[4]_i_1 
       (.I0(\SRL_SIG_reg[0] [3]),
        .I1(\SRL_SIG_reg[0][4]_0 [1]),
        .I2(\SRL_SIG_reg[0][4]_0 [0]),
        .I3(\SRL_SIG_reg[0] [2]),
        .I4(\SRL_SIG_reg[0][4]_0 [2]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ireg[5]_i_1 
       (.I0(\SRL_SIG_reg[0][4]_0 [2]),
        .I1(\SRL_SIG_reg[0] [2]),
        .I2(\SRL_SIG_reg[0][4]_0 [0]),
        .I3(\SRL_SIG_reg[0][4]_0 [1]),
        .I4(\SRL_SIG_reg[0] [3]),
        .I5(\SRL_SIG_reg[0] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ireg[6]_i_1 
       (.I0(\SRL_SIG_reg[0][2]_0 ),
        .I1(\SRL_SIG_reg[0][4]_0 [2]),
        .I2(\SRL_SIG_reg[0] [5]),
        .I3(\SRL_SIG_reg[0] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ireg[7]_i_1 
       (.I0(\SRL_SIG_reg[0][2]_0 ),
        .I1(\SRL_SIG_reg[0] [6]),
        .I2(\SRL_SIG_reg[0] [5]),
        .I3(\SRL_SIG_reg[0][4]_0 [2]),
        .I4(\SRL_SIG_reg[0] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \odata[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(\SRL_SIG_reg[0][4]_0 [1]),
        .I3(\SRL_SIG_reg[0][4]_0 [0]),
        .I4(\SRL_SIG_reg[0] [2]),
        .O(\ireg_reg[6] [0]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \odata[3]_i_1 
       (.I0(Q[1]),
        .I1(\odata_reg[6] ),
        .I2(\SRL_SIG_reg[0] [2]),
        .I3(\SRL_SIG_reg[0][4]_0 [0]),
        .I4(\SRL_SIG_reg[0][4]_0 [1]),
        .I5(\SRL_SIG_reg[0] [3]),
        .O(\ireg_reg[6] [1]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \odata[5]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(\SRL_SIG_reg[0][4]_0 [2]),
        .I3(\SRL_SIG_reg[0][2]_0 ),
        .I4(\SRL_SIG_reg[0] [5]),
        .O(\ireg_reg[6] [2]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \odata[6]_i_1 
       (.I0(Q[3]),
        .I1(\odata_reg[6] ),
        .I2(\SRL_SIG_reg[0][2]_0 ),
        .I3(\SRL_SIG_reg[0][4]_0 [2]),
        .I4(\SRL_SIG_reg[0] [5]),
        .I5(\SRL_SIG_reg[0] [6]),
        .O(\ireg_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \odata[6]_i_3 
       (.I0(\SRL_SIG_reg[0] [2]),
        .I1(\SRL_SIG_reg[0][4]_0 [0]),
        .I2(\SRL_SIG_reg[0][4]_0 [1]),
        .I3(\SRL_SIG_reg[0] [3]),
        .O(\SRL_SIG_reg[0][2]_0 ));
endmodule

(* ORIG_REF_NAME = "hls_target" *) (* hls_module = "yes" *) 
module overlay_8x16_addone_8x16_0_0_hls_target
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
  output [15:0]arg_0_TDATA;
  output [0:0]arg_0_TLAST;
  input [7:0]arg_1_TDATA;
  input [0:0]arg_1_TLAST;
  input ap_clk;
  input ap_rst_n;
  input arg_1_TVALID;
  output arg_1_TREADY;
  output arg_0_TVALID;
  input arg_0_TREADY;

  wire \<const0> ;
  wire Loop_1_proc20_U0_n_1;
  wire Loop_1_proc20_U0_n_3;
  wire Loop_1_proc20_U0_n_4;
  wire Loop_1_proc20_U0_n_5;
  wire Loop_1_proc20_U0_n_6;
  wire Loop_2_proc21_U0_ap_start;
  wire Loop_2_proc21_U0_n_19;
  wire Loop_2_proc21_U0_n_2;
  wire Loop_2_proc21_U0_n_20;
  wire Loop_2_proc21_U0_n_21;
  wire Loop_2_proc21_U0_n_23;
  wire Loop_2_proc21_U0_n_24;
  wire Loop_2_proc21_U0_n_26;
  wire Loop_2_proc21_U0_n_3;
  wire Loop_2_proc21_U0_n_4;
  wire Loop_2_proc21_U0_n_5;
  wire Loop_2_proc21_U0_n_6;
  wire Loop_2_proc21_U0_n_7;
  wire Loop_2_proc21_U0_n_8;
  wire Loop_2_proc21_U0_n_9;
  wire [4:0]\SRL_SIG_reg[0] ;
  wire ap_CS_fsm_state5;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]\^arg_0_TDATA ;
  wire [7:0]arg_0_TDATA_int;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire arg_0_TVALID;
  wire [7:0]arg_1_TDATA;
  wire arg_1_TREADY;
  wire arg_1_TVALID;
  wire internal_empty_n4_out;
  wire p_in_1_stencil_stream_2_U_n_10;
  wire p_in_1_stencil_stream_2_U_n_11;
  wire p_in_1_stencil_stream_2_U_n_12;
  wire p_in_1_stencil_stream_2_U_n_2;
  wire p_in_1_stencil_stream_2_U_n_3;
  wire p_in_1_stencil_stream_2_U_n_4;
  wire p_in_1_stencil_stream_2_U_n_5;
  wire p_in_1_stencil_stream_2_U_n_9;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_U_n_2;
  wire p_in_1_stencil_stream_3_U_n_3;
  wire p_in_1_stencil_stream_3_U_n_4;
  wire p_in_1_stencil_stream_3_empty_n;
  wire p_in_1_stencil_stream_3_full_n;
  wire \regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in ;
  wire shiftReg_ce;
  wire start_for_Loop_2_proc21_U0_full_n;
  wire start_once_reg;
  wire [7:0]tmp_value_V_reg_102;

  assign arg_0_TDATA[15] = \<const0> ;
  assign arg_0_TDATA[14] = \<const0> ;
  assign arg_0_TDATA[13] = \<const0> ;
  assign arg_0_TDATA[12] = \<const0> ;
  assign arg_0_TDATA[11] = \<const0> ;
  assign arg_0_TDATA[10] = \<const0> ;
  assign arg_0_TDATA[9] = \<const0> ;
  assign arg_0_TDATA[8] = \<const0> ;
  assign arg_0_TDATA[7:0] = \^arg_0_TDATA [7:0];
  GND GND
       (.G(\<const0> ));
  overlay_8x16_addone_8x16_0_0_Loop_1_proc20 Loop_1_proc20_U0
       (.D(Loop_1_proc20_U0_n_5),
        .E(Loop_1_proc20_U0_n_3),
        .Q({p_in_1_stencil_stream_2_U_n_11,p_in_1_stencil_stream_2_U_n_12}),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(Loop_1_proc20_U0_n_1),
        .ap_rst_n_1(Loop_1_proc20_U0_n_4),
        .arg_1_TREADY(arg_1_TREADY),
        .internal_full_n_reg(Loop_2_proc21_U0_n_8),
        .internal_full_n_reg_0(Loop_2_proc21_U0_n_21),
        .internal_full_n_reg_1(Loop_2_proc21_U0_n_20),
        .\ireg_reg[8] ({arg_1_TVALID,arg_1_TDATA}),
        .\mOutPtr_reg[0] (Loop_1_proc20_U0_n_6),
        .\mOutPtr_reg[1] (Loop_2_proc21_U0_n_7),
        .\mOutPtr_reg[1]_0 ({p_in_1_stencil_stream_3_U_n_3,p_in_1_stencil_stream_3_U_n_4}),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n),
        .shiftReg_ce(shiftReg_ce),
        .start_for_Loop_2_proc21_U0_full_n(start_for_Loop_2_proc21_U0_full_n),
        .start_once_reg(start_once_reg),
        .\tmp_value_V_reg_102_reg[7]_0 (tmp_value_V_reg_102));
  overlay_8x16_addone_8x16_0_0_Loop_2_proc21 Loop_2_proc21_U0
       (.D(arg_0_TDATA_int),
        .E(shiftReg_ce),
        .Loop_2_proc21_U0_ap_start(Loop_2_proc21_U0_ap_start),
        .Q({\regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in ,Loop_2_proc21_U0_n_2,Loop_2_proc21_U0_n_3,Loop_2_proc21_U0_n_4,Loop_2_proc21_U0_n_5}),
        .SS(ap_rst_n_inv),
        .\ap_CS_fsm_reg[2]_0 (ap_CS_fsm_state5),
        .\ap_CS_fsm_reg[2]_1 (Loop_2_proc21_U0_n_26),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(Loop_2_proc21_U0_n_6),
        .ap_rst_n_1(Loop_2_proc21_U0_n_7),
        .ap_rst_n_2(Loop_2_proc21_U0_n_9),
        .arg_0_TLAST(arg_0_TLAST),
        .arg_0_TREADY(arg_0_TREADY),
        .arg_0_TREADY_0(Loop_2_proc21_U0_n_23),
        .\icmp_ln36_reg_222_reg[0]_0 (Loop_2_proc21_U0_n_8),
        .internal_empty_n4_out(internal_empty_n4_out),
        .internal_empty_n_reg(Loop_2_proc21_U0_n_24),
        .internal_empty_n_reg_0(p_in_1_stencil_stream_3_U_n_2),
        .internal_empty_n_reg_1(p_in_1_stencil_stream_2_U_n_10),
        .internal_full_n_reg({p_in_1_stencil_stream_3_U_n_3,p_in_1_stencil_stream_3_U_n_4}),
        .internal_full_n_reg_0({p_in_1_stencil_stream_2_U_n_11,p_in_1_stencil_stream_2_U_n_12}),
        .\ireg_reg[16] (Loop_2_proc21_U0_n_19),
        .\mOutPtr_reg[1] (Loop_2_proc21_U0_n_20),
        .\mOutPtr_reg[1]_0 (Loop_2_proc21_U0_n_21),
        .\odata_reg[16] ({arg_0_TVALID,\^arg_0_TDATA }),
        .\odata_reg[4] (p_in_1_stencil_stream_2_U_n_9),
        .\odata_reg[4]_0 ({\SRL_SIG_reg[0] [4],\SRL_SIG_reg[0] [1:0]}),
        .\odata_reg[6] ({p_in_1_stencil_stream_2_U_n_2,p_in_1_stencil_stream_2_U_n_3,p_in_1_stencil_stream_2_U_n_4,p_in_1_stencil_stream_2_U_n_5}),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .start_for_Loop_2_proc21_U0_full_n(start_for_Loop_2_proc21_U0_full_n),
        .start_once_reg(start_once_reg));
  overlay_8x16_addone_8x16_0_0_fifo_w8_d1_S p_in_1_stencil_stream_2_U
       (.D(arg_0_TDATA_int),
        .E(shiftReg_ce),
        .Q({\regslice_both_arg_0_V_value_V_U/ibuf_inst/p_0_in ,Loop_2_proc21_U0_n_2,Loop_2_proc21_U0_n_3,Loop_2_proc21_U0_n_4,Loop_2_proc21_U0_n_5}),
        .\SRL_SIG_reg[0][2] (p_in_1_stencil_stream_2_U_n_9),
        .\SRL_SIG_reg[0][4] ({\SRL_SIG_reg[0] [4],\SRL_SIG_reg[0] [1:0]}),
        .\SRL_SIG_reg[0][7] (tmp_value_V_reg_102),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .internal_empty_n_reg_0(Loop_2_proc21_U0_n_9),
        .internal_full_n_reg_0(Loop_1_proc20_U0_n_1),
        .\ireg_reg[6] ({p_in_1_stencil_stream_2_U_n_2,p_in_1_stencil_stream_2_U_n_3,p_in_1_stencil_stream_2_U_n_4,p_in_1_stencil_stream_2_U_n_5}),
        .\mOutPtr_reg[0]_0 (p_in_1_stencil_stream_2_U_n_10),
        .\mOutPtr_reg[0]_1 (Loop_1_proc20_U0_n_3),
        .\mOutPtr_reg[1]_0 ({p_in_1_stencil_stream_2_U_n_11,p_in_1_stencil_stream_2_U_n_12}),
        .\mOutPtr_reg[1]_1 (Loop_1_proc20_U0_n_5),
        .\odata_reg[6] (Loop_2_proc21_U0_n_19),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n));
  overlay_8x16_addone_8x16_0_0_fifo_w1_d1_S p_in_1_stencil_stream_3_U
       (.D(Loop_1_proc20_U0_n_6),
        .E(Loop_1_proc20_U0_n_3),
        .Q({p_in_1_stencil_stream_3_U_n_3,p_in_1_stencil_stream_3_U_n_4}),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .internal_empty_n_reg_0(Loop_2_proc21_U0_n_6),
        .internal_full_n_reg_0(Loop_1_proc20_U0_n_4),
        .\mOutPtr_reg[0]_0 (p_in_1_stencil_stream_3_U_n_2),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n));
  overlay_8x16_addone_8x16_0_0_start_for_Loop_2_bkb start_for_Loop_2_bkb_U
       (.E(Loop_2_proc21_U0_n_24),
        .Loop_2_proc21_U0_ap_start(Loop_2_proc21_U0_ap_start),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_empty_n4_out(internal_empty_n4_out),
        .internal_full_n_reg_0(Loop_2_proc21_U0_n_26),
        .internal_full_n_reg_1(Loop_2_proc21_U0_n_23),
        .\mOutPtr_reg[1]_0 (ap_CS_fsm_state5),
        .start_for_Loop_2_proc21_U0_full_n(start_for_Loop_2_proc21_U0_full_n),
        .start_once_reg(start_once_reg));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module overlay_8x16_addone_8x16_0_0_ibuf
   (Q,
    indvar_flatten_reg_75_reg_4_sp_1,
    \indvar_flatten_reg_75_reg[4]_0 ,
    indvar_flatten_reg_75_reg_0_sp_1,
    indvar_flatten_reg_75_reg_12_sp_1,
    indvar_flatten_reg_75_reg_8_sp_1,
    internal_full_n_reg,
    arg_1_TREADY,
    D,
    \ireg_reg[0]_0 ,
    ap_enable_reg_pp0_iter0,
    \ireg_reg[0]_1 ,
    ap_rst_n,
    indvar_flatten_reg_75_reg,
    p_in_1_stencil_stream_3_full_n,
    p_in_1_stencil_stream_2_full_n,
    \ireg_reg[8]_0 ,
    \ireg_reg[8]_1 ,
    \ireg_reg[8]_2 ,
    \ireg_reg[8]_3 ,
    E,
    ap_clk);
  output [0:0]Q;
  output indvar_flatten_reg_75_reg_4_sp_1;
  output \indvar_flatten_reg_75_reg[4]_0 ;
  output indvar_flatten_reg_75_reg_0_sp_1;
  output indvar_flatten_reg_75_reg_12_sp_1;
  output indvar_flatten_reg_75_reg_8_sp_1;
  output internal_full_n_reg;
  output arg_1_TREADY;
  output [8:0]D;
  input \ireg_reg[0]_0 ;
  input ap_enable_reg_pp0_iter0;
  input [0:0]\ireg_reg[0]_1 ;
  input ap_rst_n;
  input [16:0]indvar_flatten_reg_75_reg;
  input p_in_1_stencil_stream_3_full_n;
  input p_in_1_stencil_stream_2_full_n;
  input \ireg_reg[8]_0 ;
  input \ireg_reg[8]_1 ;
  input [0:0]\ireg_reg[8]_2 ;
  input [8:0]\ireg_reg[8]_3 ;
  input [0:0]E;
  input ap_clk;

  wire [8:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_rst_n;
  wire arg_1_TREADY;
  wire [16:0]indvar_flatten_reg_75_reg;
  wire \indvar_flatten_reg_75_reg[4]_0 ;
  wire indvar_flatten_reg_75_reg_0_sn_1;
  wire indvar_flatten_reg_75_reg_12_sn_1;
  wire indvar_flatten_reg_75_reg_4_sn_1;
  wire indvar_flatten_reg_75_reg_8_sn_1;
  wire internal_full_n_reg;
  wire \ireg[8]_i_1_n_0 ;
  wire \ireg_reg[0]_0 ;
  wire [0:0]\ireg_reg[0]_1 ;
  wire \ireg_reg[8]_0 ;
  wire \ireg_reg[8]_1 ;
  wire [0:0]\ireg_reg[8]_2 ;
  wire [8:0]\ireg_reg[8]_3 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[2] ;
  wire \ireg_reg_n_0_[3] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[5] ;
  wire \ireg_reg_n_0_[6] ;
  wire \ireg_reg_n_0_[7] ;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_full_n;

  assign indvar_flatten_reg_75_reg_0_sp_1 = indvar_flatten_reg_75_reg_0_sn_1;
  assign indvar_flatten_reg_75_reg_12_sp_1 = indvar_flatten_reg_75_reg_12_sn_1;
  assign indvar_flatten_reg_75_reg_4_sp_1 = indvar_flatten_reg_75_reg_4_sn_1;
  assign indvar_flatten_reg_75_reg_8_sp_1 = indvar_flatten_reg_75_reg_8_sn_1;
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SRL_SIG[0][7]_i_3 
       (.I0(indvar_flatten_reg_75_reg[4]),
        .I1(indvar_flatten_reg_75_reg[3]),
        .I2(indvar_flatten_reg_75_reg[6]),
        .I3(indvar_flatten_reg_75_reg[5]),
        .O(\indvar_flatten_reg_75_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SRL_SIG[0][7]_i_4 
       (.I0(indvar_flatten_reg_75_reg[8]),
        .I1(indvar_flatten_reg_75_reg[7]),
        .I2(indvar_flatten_reg_75_reg[10]),
        .I3(indvar_flatten_reg_75_reg[9]),
        .O(indvar_flatten_reg_75_reg_8_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SRL_SIG[0][7]_i_5 
       (.I0(indvar_flatten_reg_75_reg[12]),
        .I1(indvar_flatten_reg_75_reg[11]),
        .I2(indvar_flatten_reg_75_reg[14]),
        .I3(indvar_flatten_reg_75_reg[13]),
        .O(indvar_flatten_reg_75_reg_12_sn_1));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \SRL_SIG[0][7]_i_6 
       (.I0(indvar_flatten_reg_75_reg[0]),
        .I1(indvar_flatten_reg_75_reg[15]),
        .I2(indvar_flatten_reg_75_reg[16]),
        .I3(indvar_flatten_reg_75_reg[2]),
        .I4(indvar_flatten_reg_75_reg[1]),
        .O(indvar_flatten_reg_75_reg_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    arg_1_TREADY_INST_0
       (.I0(\ireg_reg[8]_3 [8]),
        .I1(ap_rst_n),
        .I2(Q),
        .O(arg_1_TREADY));
  LUT6 #(
    .INIT(64'h8000AAAAFFFFFFFF)) 
    \ireg[8]_i_1 
       (.I0(Q),
        .I1(indvar_flatten_reg_75_reg_4_sn_1),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\ireg_reg[0]_1 ),
        .I5(ap_rst_n),
        .O(\ireg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ireg[8]_i_3 
       (.I0(\indvar_flatten_reg_75_reg[4]_0 ),
        .I1(indvar_flatten_reg_75_reg_0_sn_1),
        .I2(indvar_flatten_reg_75_reg_12_sn_1),
        .I3(indvar_flatten_reg_75_reg_8_sn_1),
        .O(indvar_flatten_reg_75_reg_4_sn_1));
  LUT5 #(
    .INIT(32'h0070FFFF)) 
    \ireg[8]_i_5 
       (.I0(p_in_1_stencil_stream_3_full_n),
        .I1(p_in_1_stencil_stream_2_full_n),
        .I2(\ireg_reg[8]_0 ),
        .I3(\ireg_reg[8]_1 ),
        .I4(\ireg_reg[8]_2 ),
        .O(internal_full_n_reg));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [2]),
        .Q(\ireg_reg_n_0_[2] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [3]),
        .Q(\ireg_reg_n_0_[3] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [5]),
        .Q(\ireg_reg_n_0_[5] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [6]),
        .Q(\ireg_reg_n_0_[6] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(\ireg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[8]_3 [8]),
        .Q(Q),
        .R(\ireg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[0]_i_1 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[1]_i_1__0 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[2]_i_1 
       (.I0(\ireg_reg_n_0_[2] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[3]_i_1__0 
       (.I0(\ireg_reg_n_0_[3] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[4]_i_1 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[5]_i_1 
       (.I0(\ireg_reg_n_0_[5] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[6]_i_1__0 
       (.I0(\ireg_reg_n_0_[6] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[7]_i_1__0 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(Q),
        .I2(\ireg_reg[8]_3 [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[8]_i_2 
       (.I0(\ireg_reg[8]_3 [8]),
        .I1(Q),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module overlay_8x16_addone_8x16_0_0_ibuf__parameterized0
   (Q,
    D,
    arg_0_TREADY,
    \ireg_reg[0]_0 ,
    ap_rst_n,
    \odata_reg[1] ,
    \ireg_reg[1]_0 ,
    E,
    ap_clk);
  output [0:0]Q;
  output [1:0]D;
  input arg_0_TREADY;
  input [0:0]\ireg_reg[0]_0 ;
  input ap_rst_n;
  input \odata_reg[1] ;
  input [1:0]\ireg_reg[1]_0 ;
  input [0:0]E;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire arg_0_TREADY;
  wire \ireg[1]_i_1_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [1:0]\ireg_reg[1]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \odata_reg[1] ;

  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[1]_i_1 
       (.I0(Q),
        .I1(arg_0_TREADY),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[1]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[1]_0 [1]),
        .Q(Q),
        .R(\ireg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[0]_i_2 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\ireg_reg[1]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \odata[1]_i_1 
       (.I0(Q),
        .I1(\odata_reg[1] ),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module overlay_8x16_addone_8x16_0_0_ibuf__parameterized1
   (ap_rst_n_0,
    ap_rst_n_1,
    Q,
    ap_rst_n_2,
    ap_rst_n_3,
    \icmp_ln36_reg_222_reg[0] ,
    ap_rst_n_4,
    D,
    ap_rst_n_5,
    ap_enable_reg_pp0_iter0_reg,
    \ireg_reg[16]_0 ,
    ap_enable_reg_pp0_iter0_reg_0,
    indvar_flatten_reg_820,
    \ireg_reg[16]_1 ,
    count,
    ap_rst_n_6,
    ap_rst_n_7,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[1]_0 ,
    \ap_CS_fsm_reg[1] ,
    \tmp_last_V_reg_208_reg[0] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    \ap_CS_fsm_reg[1]_0 ,
    \indvar_flatten_reg_82_reg[0] ,
    ap_enable_reg_pp0_iter0_reg_1,
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ,
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ,
    p_in_1_stencil_stream_3_empty_n,
    E,
    internal_empty_n_reg,
    p_in_1_stencil_stream_2_empty_n,
    internal_empty_n_reg_0,
    arg_0_TREADY,
    \ireg_reg[0]_0 ,
    \odata_reg[16] ,
    \ap_CS_fsm_reg[1]_1 ,
    \ap_CS_fsm_reg[1]_2 ,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    \p_hw_output_1_y_sca_reg_93_reg[0] ,
    \p_hw_output_1_y_sca_reg_93_reg[0]_0 ,
    Loop_2_proc21_U0_ap_start,
    internal_empty_n_reg_1,
    \count_reg[1] ,
    \count_reg[1]_0 ,
    internal_full_n_reg,
    \odata_reg[16]_0 ,
    internal_full_n_reg_0,
    icmp_ln36_reg_222_pp0_iter1_reg,
    \ireg_reg[7]_0 ,
    \odata_reg[4] ,
    \odata_reg[4]_0 ,
    \tmp_last_V_reg_208_reg[0]_0 ,
    \tmp_last_V_reg_208_reg[0]_1 ,
    \tmp_last_V_reg_208_reg[0]_2 ,
    \tmp_last_V_reg_208_reg[0]_3 ,
    \ireg_reg[16]_2 ,
    ap_clk);
  output ap_rst_n_0;
  output ap_rst_n_1;
  output [4:0]Q;
  output ap_rst_n_2;
  output ap_rst_n_3;
  output \icmp_ln36_reg_222_reg[0] ;
  output ap_rst_n_4;
  output [1:0]D;
  output ap_rst_n_5;
  output [0:0]ap_enable_reg_pp0_iter0_reg;
  output \ireg_reg[16]_0 ;
  output [0:0]ap_enable_reg_pp0_iter0_reg_0;
  output indvar_flatten_reg_820;
  output \ireg_reg[16]_1 ;
  output [0:0]count;
  output ap_rst_n_6;
  output [0:0]ap_rst_n_7;
  output \mOutPtr_reg[1] ;
  output \mOutPtr_reg[1]_0 ;
  output [4:0]\ap_CS_fsm_reg[1] ;
  output \tmp_last_V_reg_208_reg[0] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input \ap_CS_fsm_reg[1]_0 ;
  input \indvar_flatten_reg_82_reg[0] ;
  input ap_enable_reg_pp0_iter0_reg_1;
  input \icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ;
  input \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ;
  input p_in_1_stencil_stream_3_empty_n;
  input [0:0]E;
  input internal_empty_n_reg;
  input p_in_1_stencil_stream_2_empty_n;
  input internal_empty_n_reg_0;
  input arg_0_TREADY;
  input [0:0]\ireg_reg[0]_0 ;
  input [1:0]\odata_reg[16] ;
  input \ap_CS_fsm_reg[1]_1 ;
  input \ap_CS_fsm_reg[1]_2 ;
  input \ap_CS_fsm_reg[2] ;
  input \ap_CS_fsm_reg[2]_0 ;
  input [0:0]\p_hw_output_1_y_sca_reg_93_reg[0] ;
  input \p_hw_output_1_y_sca_reg_93_reg[0]_0 ;
  input Loop_2_proc21_U0_ap_start;
  input internal_empty_n_reg_1;
  input \count_reg[1] ;
  input \count_reg[1]_0 ;
  input [1:0]internal_full_n_reg;
  input \odata_reg[16]_0 ;
  input [1:0]internal_full_n_reg_0;
  input icmp_ln36_reg_222_pp0_iter1_reg;
  input [7:0]\ireg_reg[7]_0 ;
  input \odata_reg[4] ;
  input [2:0]\odata_reg[4]_0 ;
  input \tmp_last_V_reg_208_reg[0]_0 ;
  input \tmp_last_V_reg_208_reg[0]_1 ;
  input \tmp_last_V_reg_208_reg[0]_2 ;
  input [0:0]\tmp_last_V_reg_208_reg[0]_3 ;
  input [0:0]\ireg_reg[16]_2 ;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire Loop_2_proc21_U0_ap_start;
  wire [4:0]Q;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[2]_i_4_n_0 ;
  wire \ap_CS_fsm[2]_i_5_n_0 ;
  wire [4:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire \ap_CS_fsm_reg[1]_2 ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_2_n_0;
  wire [0:0]ap_enable_reg_pp0_iter0_reg;
  wire [0:0]ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter0_reg_1;
  wire ap_enable_reg_pp0_iter2_i_2_n_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire ap_rst_n_3;
  wire ap_rst_n_4;
  wire ap_rst_n_5;
  wire ap_rst_n_6;
  wire [0:0]ap_rst_n_7;
  wire arg_0_TREADY;
  wire [0:0]count;
  wire \count_reg[1] ;
  wire \count_reg[1]_0 ;
  wire icmp_ln36_reg_222_pp0_iter1_reg;
  wire \icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ;
  wire \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ;
  wire \icmp_ln36_reg_222_reg[0] ;
  wire indvar_flatten_reg_820;
  wire \indvar_flatten_reg_82_reg[0] ;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire [1:0]internal_full_n_reg;
  wire [1:0]internal_full_n_reg_0;
  wire \ireg[16]_i_1_n_0 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire \ireg_reg[16]_0 ;
  wire \ireg_reg[16]_1 ;
  wire [0:0]\ireg_reg[16]_2 ;
  wire [7:0]\ireg_reg[7]_0 ;
  wire \ireg_reg_n_0_[0] ;
  wire \ireg_reg_n_0_[1] ;
  wire \ireg_reg_n_0_[4] ;
  wire \ireg_reg_n_0_[7] ;
  wire \mOutPtr_reg[1] ;
  wire \mOutPtr_reg[1]_0 ;
  wire [1:0]\odata_reg[16] ;
  wire \odata_reg[16]_0 ;
  wire \odata_reg[4] ;
  wire [2:0]\odata_reg[4]_0 ;
  wire \p_hw_output_1_x_sca_1_reg_104[8]_i_4_n_0 ;
  wire [0:0]\p_hw_output_1_y_sca_reg_93_reg[0] ;
  wire \p_hw_output_1_y_sca_reg_93_reg[0]_0 ;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_3_empty_n;
  wire \tmp_last_V_reg_208_reg[0] ;
  wire \tmp_last_V_reg_208_reg[0]_0 ;
  wire \tmp_last_V_reg_208_reg[0]_1 ;
  wire \tmp_last_V_reg_208_reg[0]_2 ;
  wire [0:0]\tmp_last_V_reg_208_reg[0]_3 ;

  LUT6 #(
    .INIT(64'hF8F8FCF8FFFFFFFF)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(\odata_reg[16] [1]),
        .I2(\ap_CS_fsm[1]_i_2_n_0 ),
        .I3(\ap_CS_fsm_reg[1]_1 ),
        .I4(\ap_CS_fsm_reg[1]_2 ),
        .I5(ap_enable_reg_pp0_iter0_reg_1),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h40400040)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(icmp_ln36_reg_222_pp0_iter1_reg),
        .I1(\ap_CS_fsm_reg[1]_2 ),
        .I2(\odata_reg[16] [1]),
        .I3(ap_rst_n),
        .I4(Q[4]),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(\ap_CS_fsm_reg[2]_0 ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\indvar_flatten_reg_82_reg[0] ),
        .I4(\ap_CS_fsm[2]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0202000200020002)) 
    \ap_CS_fsm[2]_i_4 
       (.I0(\ap_CS_fsm_reg[1]_2 ),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .I2(\odata_reg[16] [0]),
        .I3(\ap_CS_fsm[2]_i_5_n_0 ),
        .I4(icmp_ln36_reg_222_pp0_iter1_reg),
        .I5(\odata_reg[16] [1]),
        .O(\ap_CS_fsm[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \ap_CS_fsm[2]_i_5 
       (.I0(\odata_reg[16] [1]),
        .I1(Q[4]),
        .I2(ap_rst_n),
        .O(\ap_CS_fsm[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A8A008A)) 
    ap_enable_reg_pp0_iter0_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_enable_reg_pp0_iter0_reg_1),
        .I3(\odata_reg[16] [1]),
        .I4(ap_enable_reg_pp0_iter0_i_2_n_0),
        .I5(\indvar_flatten_reg_82_reg[0] ),
        .O(ap_rst_n_5));
  LUT6 #(
    .INIT(64'hFFFF022202220222)) 
    ap_enable_reg_pp0_iter0_i_2
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(internal_empty_n_reg_1),
        .I2(p_in_1_stencil_stream_2_empty_n),
        .I3(p_in_1_stencil_stream_3_empty_n),
        .I4(Q[4]),
        .I5(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ),
        .O(ap_enable_reg_pp0_iter0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A800000)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(\ap_CS_fsm_reg[1]_0 ),
        .I4(\indvar_flatten_reg_82_reg[0] ),
        .I5(ap_enable_reg_pp0_iter0_i_2_n_0),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'h55515151FFFFFFFF)) 
    ap_enable_reg_pp0_iter1_i_2__0
       (.I0(\ireg_reg[16]_1 ),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .I2(internal_empty_n_reg_1),
        .I3(p_in_1_stencil_stream_2_empty_n),
        .I4(p_in_1_stencil_stream_3_empty_n),
        .I5(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ),
        .O(ap_block_pp0_stage0_subdone));
  LUT6 #(
    .INIT(64'hBB000000FB000000)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter0_reg_1),
        .I1(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ),
        .I2(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ),
        .I3(ap_enable_reg_pp0_iter2_i_2_n_0),
        .I4(ap_rst_n),
        .I5(Q[4]),
        .O(ap_rst_n_1));
  LUT6 #(
    .INIT(64'hFF00FFBBF400F400)) 
    ap_enable_reg_pp0_iter2_i_2
       (.I0(\ireg_reg[16]_1 ),
        .I1(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ),
        .I2(internal_empty_n_reg_1),
        .I3(\ap_CS_fsm_reg[1]_0 ),
        .I4(icmp_ln36_reg_222_pp0_iter1_reg),
        .I5(\ap_CS_fsm_reg[1]_2 ),
        .O(ap_enable_reg_pp0_iter2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h20FFA0A0)) 
    \count[0]_i_1 
       (.I0(ap_rst_n),
        .I1(arg_0_TREADY),
        .I2(\count_reg[1] ),
        .I3(ap_rst_n_3),
        .I4(\count_reg[1]_0 ),
        .O(ap_rst_n_6));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFDDD)) 
    \count[1]_i_1 
       (.I0(\count_reg[1] ),
        .I1(arg_0_TREADY),
        .I2(\count_reg[1]_0 ),
        .I3(ap_rst_n_3),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h40FF0000)) 
    \icmp_ln36_reg_222[0]_i_1 
       (.I0(Q[4]),
        .I1(ap_rst_n),
        .I2(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ),
        .I3(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ),
        .I4(\odata_reg[16] [1]),
        .O(\ireg_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hA8A0A8A0A8A0A800)) 
    internal_empty_n_i_1
       (.I0(ap_rst_n),
        .I1(ap_rst_n_3),
        .I2(p_in_1_stencil_stream_3_empty_n),
        .I3(E),
        .I4(\icmp_ln36_reg_222_reg[0] ),
        .I5(internal_empty_n_reg),
        .O(ap_rst_n_2));
  LUT6 #(
    .INIT(64'hA8A0A8A0A8A0A800)) 
    internal_empty_n_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_rst_n_3),
        .I2(p_in_1_stencil_stream_2_empty_n),
        .I3(E),
        .I4(\icmp_ln36_reg_222_reg[0] ),
        .I5(internal_empty_n_reg_0),
        .O(ap_rst_n_4));
  LUT6 #(
    .INIT(64'h8888888888088888)) 
    internal_full_n_i_2__0
       (.I0(internal_full_n_reg[1]),
        .I1(internal_full_n_reg[0]),
        .I2(\odata_reg[16] [1]),
        .I3(Q[4]),
        .I4(ap_rst_n),
        .I5(\odata_reg[16]_0 ),
        .O(\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    internal_full_n_i_3
       (.I0(internal_empty_n_reg_1),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .I2(p_in_1_stencil_stream_3_empty_n),
        .I3(p_in_1_stencil_stream_2_empty_n),
        .I4(\odata_reg[16] [1]),
        .I5(Q[4]),
        .O(\icmp_ln36_reg_222_reg[0] ));
  LUT6 #(
    .INIT(64'h8888888888088888)) 
    internal_full_n_i_4
       (.I0(internal_full_n_reg_0[1]),
        .I1(internal_full_n_reg_0[0]),
        .I2(\odata_reg[16] [1]),
        .I3(Q[4]),
        .I4(ap_rst_n),
        .I5(\odata_reg[16]_0 ),
        .O(\mOutPtr_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h8AFF)) 
    \ireg[16]_i_1 
       (.I0(Q[4]),
        .I1(arg_0_TREADY),
        .I2(\ireg_reg[0]_0 ),
        .I3(ap_rst_n),
        .O(\ireg[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ireg[16]_i_3 
       (.I0(ap_rst_n_3),
        .O(ap_rst_n_7));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ireg[16]_i_4 
       (.I0(\odata_reg[16]_0 ),
        .I1(ap_rst_n),
        .I2(Q[4]),
        .I3(\odata_reg[16] [1]),
        .O(ap_rst_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [0]),
        .Q(\ireg_reg_n_0_[0] ),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(ap_rst_n_7),
        .Q(Q[4]),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [1]),
        .Q(\ireg_reg_n_0_[1] ),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [2]),
        .Q(Q[0]),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [3]),
        .Q(Q[1]),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [4]),
        .Q(\ireg_reg_n_0_[4] ),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [5]),
        .Q(Q[2]),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [6]),
        .Q(Q[3]),
        .R(\ireg[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(\ireg_reg[16]_2 ),
        .D(\ireg_reg[7]_0 [7]),
        .Q(\ireg_reg_n_0_[7] ),
        .R(\ireg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \odata[0]_i_1__0 
       (.I0(\ireg_reg_n_0_[0] ),
        .I1(Q[4]),
        .I2(\odata_reg[4]_0 [0]),
        .O(\ap_CS_fsm_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \odata[16]_i_1 
       (.I0(\odata_reg[16]_0 ),
        .I1(\odata_reg[16] [1]),
        .I2(Q[4]),
        .O(\ap_CS_fsm_reg[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \odata[1]_i_1__1 
       (.I0(\ireg_reg_n_0_[1] ),
        .I1(Q[4]),
        .I2(\odata_reg[4]_0 [0]),
        .I3(\odata_reg[4]_0 [1]),
        .O(\ap_CS_fsm_reg[1] [1]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \odata[4]_i_1__0 
       (.I0(\ireg_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\odata_reg[4] ),
        .I3(\odata_reg[4]_0 [2]),
        .O(\ap_CS_fsm_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \odata[6]_i_2 
       (.I0(Q[4]),
        .I1(ap_rst_n),
        .O(\ireg_reg[16]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \odata[7]_i_3 
       (.I0(\ireg_reg_n_0_[7] ),
        .I1(Q[4]),
        .I2(\ireg_reg[7]_0 [7]),
        .O(\ap_CS_fsm_reg[1] [3]));
  LUT5 #(
    .INIT(32'hBAAAFAAA)) 
    \p_hw_output_1_x_sca_1_reg_104[8]_i_1 
       (.I0(\p_hw_output_1_x_sca_1_reg_104[8]_i_4_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\odata_reg[16] [0]),
        .I3(Loop_2_proc21_U0_ap_start),
        .I4(\indvar_flatten_reg_82_reg[0] ),
        .O(ap_enable_reg_pp0_iter0_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \p_hw_output_1_x_sca_1_reg_104[8]_i_2 
       (.I0(\indvar_flatten_reg_82_reg[0] ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\ireg_reg[16]_0 ),
        .O(indvar_flatten_reg_820));
  LUT6 #(
    .INIT(64'hF000700070007000)) 
    \p_hw_output_1_x_sca_1_reg_104[8]_i_4 
       (.I0(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ),
        .I1(\odata_reg[16] [1]),
        .I2(Loop_2_proc21_U0_ap_start),
        .I3(\odata_reg[16] [0]),
        .I4(\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ),
        .I5(\ireg_reg[16]_1 ),
        .O(\p_hw_output_1_x_sca_1_reg_104[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \p_hw_output_1_y_sca_reg_93[8]_i_1 
       (.I0(\ireg_reg[16]_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\p_hw_output_1_y_sca_reg_93_reg[0] ),
        .I3(\p_hw_output_1_y_sca_reg_93_reg[0]_0 ),
        .I4(\indvar_flatten_reg_82_reg[0] ),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT6 #(
    .INIT(64'h80FFFFFF80000000)) 
    \tmp_last_V_reg_208[0]_i_1 
       (.I0(\tmp_last_V_reg_208_reg[0]_0 ),
        .I1(\tmp_last_V_reg_208_reg[0]_1 ),
        .I2(\tmp_last_V_reg_208_reg[0]_2 ),
        .I3(\indvar_flatten_reg_82_reg[0] ),
        .I4(\ireg_reg[16]_0 ),
        .I5(\tmp_last_V_reg_208_reg[0]_3 ),
        .O(\tmp_last_V_reg_208_reg[0] ));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module overlay_8x16_addone_8x16_0_0_obuf
   (ap_rst_n_0,
    ap_rst_n_1,
    \odata_reg[8]_0 ,
    E,
    Q,
    ap_rst_n_2,
    D,
    \mOutPtr_reg[0] ,
    \odata_reg[8]_1 ,
    \icmp_ln24_reg_111_reg[0] ,
    arg_1_TREADY_int,
    indvar_flatten_reg_75,
    ap_enable_reg_pp0_iter0_reg,
    \icmp_ln24_reg_111_reg[0]_0 ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1_reg_0,
    \indvar_flatten_reg_75_reg[0] ,
    \indvar_flatten_reg_75_reg[0]_0 ,
    internal_full_n_reg,
    internal_full_n_reg_0,
    p_in_1_stencil_stream_2_full_n,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[1]_0 ,
    \odata_reg[0]_0 ,
    ap_enable_reg_pp0_iter0,
    internal_full_n_reg_1,
    p_in_1_stencil_stream_3_full_n,
    \SRL_SIG_reg[0][0] ,
    \SRL_SIG_reg[0][0]_0 ,
    \SRL_SIG_reg[0][0]_1 ,
    \SRL_SIG_reg[0][0]_2 ,
    \mOutPtr_reg[1]_1 ,
    \mOutPtr_reg[1]_2 ,
    \indvar_flatten_reg_75_reg[0]_1 ,
    \icmp_ln24_reg_111_reg[0]_1 ,
    \ireg_reg[8] ,
    \ireg_reg[8]_0 ,
    SS,
    \odata_reg[8]_2 ,
    ap_clk);
  output ap_rst_n_0;
  output ap_rst_n_1;
  output \odata_reg[8]_0 ;
  output [0:0]E;
  output [8:0]Q;
  output ap_rst_n_2;
  output [0:0]D;
  output [0:0]\mOutPtr_reg[0] ;
  output [0:0]\odata_reg[8]_1 ;
  output \icmp_ln24_reg_111_reg[0] ;
  output arg_1_TREADY_int;
  output indvar_flatten_reg_75;
  output [0:0]ap_enable_reg_pp0_iter0_reg;
  output \icmp_ln24_reg_111_reg[0]_0 ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \indvar_flatten_reg_75_reg[0] ;
  input \indvar_flatten_reg_75_reg[0]_0 ;
  input internal_full_n_reg;
  input internal_full_n_reg_0;
  input p_in_1_stencil_stream_2_full_n;
  input \mOutPtr_reg[1] ;
  input \mOutPtr_reg[1]_0 ;
  input \odata_reg[0]_0 ;
  input ap_enable_reg_pp0_iter0;
  input internal_full_n_reg_1;
  input p_in_1_stencil_stream_3_full_n;
  input \SRL_SIG_reg[0][0] ;
  input \SRL_SIG_reg[0][0]_0 ;
  input \SRL_SIG_reg[0][0]_1 ;
  input \SRL_SIG_reg[0][0]_2 ;
  input [1:0]\mOutPtr_reg[1]_1 ;
  input [1:0]\mOutPtr_reg[1]_2 ;
  input [0:0]\indvar_flatten_reg_75_reg[0]_1 ;
  input \icmp_ln24_reg_111_reg[0]_1 ;
  input \ireg_reg[8] ;
  input [0:0]\ireg_reg[8]_0 ;
  input [0:0]SS;
  input [8:0]\odata_reg[8]_2 ;
  input ap_clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire \SRL_SIG[0][7]_i_2_n_0 ;
  wire \SRL_SIG_reg[0][0] ;
  wire \SRL_SIG_reg[0][0]_0 ;
  wire \SRL_SIG_reg[0][0]_1 ;
  wire \SRL_SIG_reg[0][0]_2 ;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [0:0]ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1_i_3_n_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire arg_1_TREADY_int;
  wire \icmp_ln24_reg_111_reg[0] ;
  wire \icmp_ln24_reg_111_reg[0]_0 ;
  wire \icmp_ln24_reg_111_reg[0]_1 ;
  wire indvar_flatten_reg_75;
  wire \indvar_flatten_reg_75_reg[0] ;
  wire \indvar_flatten_reg_75_reg[0]_0 ;
  wire [0:0]\indvar_flatten_reg_75_reg[0]_1 ;
  wire internal_full_n_i_2_n_0;
  wire internal_full_n_reg;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \ireg_reg[8] ;
  wire [0:0]\ireg_reg[8]_0 ;
  wire [0:0]\mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  wire \mOutPtr_reg[1]_0 ;
  wire [1:0]\mOutPtr_reg[1]_1 ;
  wire [1:0]\mOutPtr_reg[1]_2 ;
  wire \odata_reg[0]_0 ;
  wire \odata_reg[8]_0 ;
  wire [0:0]\odata_reg[8]_1 ;
  wire [8:0]\odata_reg[8]_2 ;
  wire p_0_in;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_full_n;

  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(\SRL_SIG[0][7]_i_2_n_0 ),
        .I1(\SRL_SIG_reg[0][0] ),
        .I2(\SRL_SIG_reg[0][0]_0 ),
        .I3(\SRL_SIG_reg[0][0]_1 ),
        .I4(\SRL_SIG_reg[0][0]_2 ),
        .I5(\mOutPtr_reg[1] ),
        .O(\odata_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(Q[8]),
        .I1(ap_enable_reg_pp0_iter0),
        .O(\SRL_SIG[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888A000A000A000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter1_reg_0),
        .I3(\indvar_flatten_reg_75_reg[0] ),
        .I4(ap_enable_reg_pp0_iter1_i_3_n_0),
        .I5(\indvar_flatten_reg_75_reg[0]_0 ),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0001FFFF)) 
    ap_enable_reg_pp0_iter1_i_3
       (.I0(\SRL_SIG_reg[0][0]_2 ),
        .I1(\SRL_SIG_reg[0][0]_1 ),
        .I2(\SRL_SIG_reg[0][0]_0 ),
        .I3(\SRL_SIG_reg[0][0] ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[8]),
        .O(ap_enable_reg_pp0_iter1_i_3_n_0));
  LUT4 #(
    .INIT(16'h7F40)) 
    \icmp_ln24_reg_111[0]_i_1 
       (.I0(\odata_reg[0]_0 ),
        .I1(ap_enable_reg_pp0_iter1_i_3_n_0),
        .I2(\icmp_ln24_reg_111_reg[0] ),
        .I3(\icmp_ln24_reg_111_reg[0]_1 ),
        .O(\icmp_ln24_reg_111_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h007F00FF00FF00FF)) 
    \indvar_flatten_reg_75[0]_i_1 
       (.I0(\indvar_flatten_reg_75_reg[0]_1 ),
        .I1(\indvar_flatten_reg_75_reg[0]_0 ),
        .I2(\odata_reg[0]_0 ),
        .I3(\indvar_flatten_reg_75_reg[0] ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(Q[8]),
        .O(indvar_flatten_reg_75));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \indvar_flatten_reg_75[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(Q[8]),
        .I2(\icmp_ln24_reg_111_reg[0] ),
        .I3(\odata_reg[0]_0 ),
        .O(arg_1_TREADY_int));
  LUT6 #(
    .INIT(64'h5DFFFFFF5D5D5D5D)) 
    internal_full_n_i_1
       (.I0(ap_rst_n),
        .I1(internal_full_n_i_2_n_0),
        .I2(internal_full_n_reg),
        .I3(internal_full_n_reg_0),
        .I4(\odata_reg[8]_0 ),
        .I5(p_in_1_stencil_stream_2_full_n),
        .O(ap_rst_n_1));
  LUT6 #(
    .INIT(64'h5DFFFFFF5D5D5D5D)) 
    internal_full_n_i_1__0
       (.I0(ap_rst_n),
        .I1(internal_full_n_i_2_n_0),
        .I2(internal_full_n_reg),
        .I3(internal_full_n_reg_1),
        .I4(\odata_reg[8]_0 ),
        .I5(p_in_1_stencil_stream_3_full_n),
        .O(ap_rst_n_2));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    internal_full_n_i_2
       (.I0(\SRL_SIG[0][7]_i_2_n_0 ),
        .I1(\SRL_SIG_reg[0][0] ),
        .I2(\SRL_SIG_reg[0][0]_2 ),
        .I3(\SRL_SIG_reg[0][0]_1 ),
        .I4(\SRL_SIG_reg[0][0]_0 ),
        .I5(\mOutPtr_reg[1] ),
        .O(internal_full_n_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000DF00)) 
    \ireg[8]_i_2 
       (.I0(\odata_reg[0]_0 ),
        .I1(\ireg_reg[8] ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(Q[8]),
        .I4(\ireg_reg[8]_0 ),
        .O(ap_enable_reg_pp0_iter0_reg));
  LUT5 #(
    .INIT(32'hFBBB0000)) 
    \ireg[8]_i_4 
       (.I0(\icmp_ln24_reg_111_reg[0]_1 ),
        .I1(ap_enable_reg_pp0_iter1_reg_0),
        .I2(p_in_1_stencil_stream_2_full_n),
        .I3(p_in_1_stencil_stream_3_full_n),
        .I4(\indvar_flatten_reg_75_reg[0]_1 ),
        .O(\icmp_ln24_reg_111_reg[0] ));
  LUT6 #(
    .INIT(64'hACACAFACACACACAC)) 
    \mOutPtr[1]_i_1 
       (.I0(\odata_reg[8]_0 ),
        .I1(\mOutPtr_reg[1] ),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(\odata_reg[0]_0 ),
        .I4(Q[8]),
        .I5(ap_enable_reg_pp0_iter0),
        .O(E));
  LUT6 #(
    .INIT(64'h55AA5565AA55AA9A)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\mOutPtr_reg[1]_2 [0]),
        .I1(\SRL_SIG[0][7]_i_2_n_0 ),
        .I2(\odata_reg[0]_0 ),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(\mOutPtr_reg[1] ),
        .I5(\mOutPtr_reg[1]_2 [1]),
        .O(\mOutPtr_reg[0] ));
  LUT6 #(
    .INIT(64'h55AA5565AA55AA9A)) 
    \mOutPtr[1]_i_2 
       (.I0(\mOutPtr_reg[1]_1 [0]),
        .I1(\SRL_SIG[0][7]_i_2_n_0 ),
        .I2(\odata_reg[0]_0 ),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(\mOutPtr_reg[1] ),
        .I5(\mOutPtr_reg[1]_1 [1]),
        .O(D));
  LUT4 #(
    .INIT(16'hD555)) 
    \odata[8]_i_1 
       (.I0(Q[8]),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\icmp_ln24_reg_111_reg[0] ),
        .I3(\odata_reg[0]_0 ),
        .O(p_0_in));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [0]),
        .Q(Q[0]),
        .R(SS));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [1]),
        .Q(Q[1]),
        .R(SS));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [2]),
        .Q(Q[2]),
        .R(SS));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [3]),
        .Q(Q[3]),
        .R(SS));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [4]),
        .Q(Q[4]),
        .R(SS));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [5]),
        .Q(Q[5]),
        .R(SS));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [6]),
        .Q(Q[6]),
        .R(SS));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [7]),
        .Q(Q[7]),
        .R(SS));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\odata_reg[8]_2 [8]),
        .Q(Q[8]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \tmp_value_V_reg_102[7]_i_1 
       (.I0(Q[8]),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\icmp_ln24_reg_111_reg[0] ),
        .I3(\odata_reg[0]_0 ),
        .O(\odata_reg[8]_1 ));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module overlay_8x16_addone_8x16_0_0_obuf__parameterized0
   (Q,
    E,
    arg_0_TREADY,
    \ireg_reg[1] ,
    SR,
    D,
    ap_clk);
  output [1:0]Q;
  output [0:0]E;
  input arg_0_TREADY;
  input [0:0]\ireg_reg[1] ;
  input [0:0]SR;
  input [1:0]D;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire arg_0_TREADY;
  wire [0:0]\ireg_reg[1] ;
  wire \odata[0]_i_1__1_n_0 ;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[1]_i_2 
       (.I0(arg_0_TREADY),
        .I1(Q[1]),
        .I2(\ireg_reg[1] ),
        .O(E));
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
        .R(SR));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__1_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module overlay_8x16_addone_8x16_0_0_obuf__parameterized1
   (SR,
    internal_empty_n_reg,
    Q,
    arg_0_TREADY_0,
    ap_rst_n,
    p_in_1_stencil_stream_2_empty_n,
    p_in_1_stencil_stream_3_empty_n,
    \odata_reg[16]_0 ,
    \odata_reg[16]_1 ,
    arg_0_TREADY,
    \ireg_reg[16] ,
    D,
    ap_clk);
  output [0:0]SR;
  output internal_empty_n_reg;
  output [8:0]Q;
  output [0:0]arg_0_TREADY_0;
  input ap_rst_n;
  input p_in_1_stencil_stream_2_empty_n;
  input p_in_1_stencil_stream_3_empty_n;
  input \odata_reg[16]_0 ;
  input \odata_reg[16]_1 ;
  input arg_0_TREADY;
  input [0:0]\ireg_reg[16] ;
  input [8:0]D;
  input ap_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire arg_0_TREADY;
  wire [0:0]arg_0_TREADY_0;
  wire internal_empty_n_reg;
  wire [0:0]\ireg_reg[16] ;
  wire \odata[7]_i_2_n_0 ;
  wire \odata_reg[16]_0 ;
  wire \odata_reg[16]_1 ;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_3_empty_n;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[16]_i_2 
       (.I0(arg_0_TREADY),
        .I1(Q[8]),
        .I2(\ireg_reg[16] ),
        .O(arg_0_TREADY_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \odata[16]_i_2 
       (.I0(p_in_1_stencil_stream_2_empty_n),
        .I1(p_in_1_stencil_stream_3_empty_n),
        .I2(\odata_reg[16]_0 ),
        .I3(\odata_reg[16]_1 ),
        .O(internal_empty_n_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \odata[7]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[7]_i_2 
       (.I0(arg_0_TREADY),
        .I1(Q[8]),
        .O(\odata[7]_i_2_n_0 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(\odata[7]_i_2_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module overlay_8x16_addone_8x16_0_0_regslice_both
   (ap_rst_n_0,
    ap_rst_n_1,
    \odata_reg[8] ,
    E,
    indvar_flatten_reg_75_reg_4_sp_1,
    ap_rst_n_2,
    \indvar_flatten_reg_75_reg[4]_0 ,
    indvar_flatten_reg_75_reg_8_sp_1,
    indvar_flatten_reg_75_reg_12_sp_1,
    indvar_flatten_reg_75_reg_0_sp_1,
    D,
    \mOutPtr_reg[0] ,
    \odata_reg[8]_0 ,
    \icmp_ln24_reg_111_reg[0] ,
    arg_1_TREADY_int,
    indvar_flatten_reg_75,
    arg_1_TREADY,
    \icmp_ln24_reg_111_reg[0]_0 ,
    \odata_reg[7] ,
    ap_rst_n,
    ap_enable_reg_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1_reg_0,
    \indvar_flatten_reg_75_reg[0]_0 ,
    \indvar_flatten_reg_75_reg[0]_1 ,
    internal_full_n_reg,
    internal_full_n_reg_0,
    p_in_1_stencil_stream_2_full_n,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[1]_0 ,
    ap_enable_reg_pp0_iter0,
    internal_full_n_reg_1,
    p_in_1_stencil_stream_3_full_n,
    Q,
    \mOutPtr_reg[1]_1 ,
    \indvar_flatten_reg_75_reg[0]_2 ,
    indvar_flatten_reg_75_reg,
    \icmp_ln24_reg_111_reg[0]_1 ,
    \ireg_reg[8] ,
    ap_clk,
    SS);
  output ap_rst_n_0;
  output ap_rst_n_1;
  output \odata_reg[8] ;
  output [0:0]E;
  output indvar_flatten_reg_75_reg_4_sp_1;
  output ap_rst_n_2;
  output \indvar_flatten_reg_75_reg[4]_0 ;
  output indvar_flatten_reg_75_reg_8_sp_1;
  output indvar_flatten_reg_75_reg_12_sp_1;
  output indvar_flatten_reg_75_reg_0_sp_1;
  output [0:0]D;
  output [0:0]\mOutPtr_reg[0] ;
  output [0:0]\odata_reg[8]_0 ;
  output \icmp_ln24_reg_111_reg[0] ;
  output arg_1_TREADY_int;
  output indvar_flatten_reg_75;
  output arg_1_TREADY;
  output \icmp_ln24_reg_111_reg[0]_0 ;
  output [7:0]\odata_reg[7] ;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_enable_reg_pp0_iter1_reg_0;
  input \indvar_flatten_reg_75_reg[0]_0 ;
  input \indvar_flatten_reg_75_reg[0]_1 ;
  input internal_full_n_reg;
  input internal_full_n_reg_0;
  input p_in_1_stencil_stream_2_full_n;
  input \mOutPtr_reg[1] ;
  input \mOutPtr_reg[1]_0 ;
  input ap_enable_reg_pp0_iter0;
  input internal_full_n_reg_1;
  input p_in_1_stencil_stream_3_full_n;
  input [1:0]Q;
  input [1:0]\mOutPtr_reg[1]_1 ;
  input [0:0]\indvar_flatten_reg_75_reg[0]_2 ;
  input [16:0]indvar_flatten_reg_75_reg;
  input \icmp_ln24_reg_111_reg[0]_1 ;
  input [8:0]\ireg_reg[8] ;
  input ap_clk;
  input [0:0]SS;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
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
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire \icmp_ln24_reg_111_reg[0] ;
  wire \icmp_ln24_reg_111_reg[0]_0 ;
  wire \icmp_ln24_reg_111_reg[0]_1 ;
  wire indvar_flatten_reg_75;
  wire [16:0]indvar_flatten_reg_75_reg;
  wire \indvar_flatten_reg_75_reg[0]_0 ;
  wire \indvar_flatten_reg_75_reg[0]_1 ;
  wire [0:0]\indvar_flatten_reg_75_reg[0]_2 ;
  wire \indvar_flatten_reg_75_reg[4]_0 ;
  wire indvar_flatten_reg_75_reg_0_sn_1;
  wire indvar_flatten_reg_75_reg_12_sn_1;
  wire indvar_flatten_reg_75_reg_4_sn_1;
  wire indvar_flatten_reg_75_reg_8_sn_1;
  wire internal_full_n_reg;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire ireg01_out;
  wire [8:0]\ireg_reg[8] ;
  wire [0:0]\mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  wire \mOutPtr_reg[1]_0 ;
  wire [1:0]\mOutPtr_reg[1]_1 ;
  wire [7:0]\odata_reg[7] ;
  wire \odata_reg[8] ;
  wire [0:0]\odata_reg[8]_0 ;
  wire p_0_in;
  wire p_in_1_stencil_stream_2_full_n;
  wire p_in_1_stencil_stream_3_full_n;

  assign indvar_flatten_reg_75_reg_0_sp_1 = indvar_flatten_reg_75_reg_0_sn_1;
  assign indvar_flatten_reg_75_reg_12_sp_1 = indvar_flatten_reg_75_reg_12_sn_1;
  assign indvar_flatten_reg_75_reg_4_sp_1 = indvar_flatten_reg_75_reg_4_sn_1;
  assign indvar_flatten_reg_75_reg_8_sp_1 = indvar_flatten_reg_75_reg_8_sn_1;
  overlay_8x16_addone_8x16_0_0_ibuf ibuf_inst
       (.D({ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16}),
        .E(ireg01_out),
        .Q(p_0_in),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_rst_n(ap_rst_n),
        .arg_1_TREADY(arg_1_TREADY),
        .indvar_flatten_reg_75_reg(indvar_flatten_reg_75_reg),
        .\indvar_flatten_reg_75_reg[4]_0 (\indvar_flatten_reg_75_reg[4]_0 ),
        .indvar_flatten_reg_75_reg_0_sp_1(indvar_flatten_reg_75_reg_0_sn_1),
        .indvar_flatten_reg_75_reg_12_sp_1(indvar_flatten_reg_75_reg_12_sn_1),
        .indvar_flatten_reg_75_reg_4_sp_1(indvar_flatten_reg_75_reg_4_sn_1),
        .indvar_flatten_reg_75_reg_8_sp_1(indvar_flatten_reg_75_reg_8_sn_1),
        .internal_full_n_reg(ibuf_inst_n_6),
        .\ireg_reg[0]_0 (\icmp_ln24_reg_111_reg[0] ),
        .\ireg_reg[0]_1 (arg_1_TVALID_int),
        .\ireg_reg[8]_0 (ap_enable_reg_pp0_iter1_reg_0),
        .\ireg_reg[8]_1 (\icmp_ln24_reg_111_reg[0]_1 ),
        .\ireg_reg[8]_2 (\indvar_flatten_reg_75_reg[0]_2 ),
        .\ireg_reg[8]_3 (\ireg_reg[8] ),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n));
  overlay_8x16_addone_8x16_0_0_obuf obuf_inst
       (.D(D),
        .E(E),
        .Q({arg_1_TVALID_int,\odata_reg[7] }),
        .\SRL_SIG_reg[0][0] (\indvar_flatten_reg_75_reg[4]_0 ),
        .\SRL_SIG_reg[0][0]_0 (indvar_flatten_reg_75_reg_8_sn_1),
        .\SRL_SIG_reg[0][0]_1 (indvar_flatten_reg_75_reg_12_sn_1),
        .\SRL_SIG_reg[0][0]_2 (indvar_flatten_reg_75_reg_0_sn_1),
        .SS(SS),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ireg01_out),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ap_rst_n_1(ap_rst_n_1),
        .ap_rst_n_2(ap_rst_n_2),
        .arg_1_TREADY_int(arg_1_TREADY_int),
        .\icmp_ln24_reg_111_reg[0] (\icmp_ln24_reg_111_reg[0] ),
        .\icmp_ln24_reg_111_reg[0]_0 (\icmp_ln24_reg_111_reg[0]_0 ),
        .\icmp_ln24_reg_111_reg[0]_1 (\icmp_ln24_reg_111_reg[0]_1 ),
        .indvar_flatten_reg_75(indvar_flatten_reg_75),
        .\indvar_flatten_reg_75_reg[0] (\indvar_flatten_reg_75_reg[0]_0 ),
        .\indvar_flatten_reg_75_reg[0]_0 (\indvar_flatten_reg_75_reg[0]_1 ),
        .\indvar_flatten_reg_75_reg[0]_1 (\indvar_flatten_reg_75_reg[0]_2 ),
        .internal_full_n_reg(internal_full_n_reg),
        .internal_full_n_reg_0(internal_full_n_reg_0),
        .internal_full_n_reg_1(internal_full_n_reg_1),
        .\ireg_reg[8] (ibuf_inst_n_6),
        .\ireg_reg[8]_0 (p_0_in),
        .\mOutPtr_reg[0] (\mOutPtr_reg[0] ),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ),
        .\mOutPtr_reg[1]_0 (\mOutPtr_reg[1]_0 ),
        .\mOutPtr_reg[1]_1 (Q),
        .\mOutPtr_reg[1]_2 (\mOutPtr_reg[1]_1 ),
        .\odata_reg[0]_0 (indvar_flatten_reg_75_reg_4_sn_1),
        .\odata_reg[8]_0 (\odata_reg[8] ),
        .\odata_reg[8]_1 (\odata_reg[8]_0 ),
        .\odata_reg[8]_2 ({ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16}),
        .p_in_1_stencil_stream_2_full_n(p_in_1_stencil_stream_2_full_n),
        .p_in_1_stencil_stream_3_full_n(p_in_1_stencil_stream_3_full_n));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module overlay_8x16_addone_8x16_0_0_regslice_both__parameterized0
   (arg_0_TLAST,
    arg_0_TREADY,
    ap_rst_n,
    \odata_reg[1] ,
    D,
    ap_clk,
    SR);
  output [0:0]arg_0_TLAST;
  input arg_0_TREADY;
  input ap_rst_n;
  input \odata_reg[1] ;
  input [1:0]D;
  input ap_clk;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]arg_0_TLAST;
  wire arg_0_TREADY;
  wire [1:0]cdata;
  wire ireg01_out;
  wire obuf_inst_n_0;
  wire \odata_reg[1] ;
  wire p_0_in;

  overlay_8x16_addone_8x16_0_0_ibuf__parameterized0 ibuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q(p_0_in),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TREADY(arg_0_TREADY),
        .\ireg_reg[0]_0 (obuf_inst_n_0),
        .\ireg_reg[1]_0 (D),
        .\odata_reg[1] (\odata_reg[1] ));
  overlay_8x16_addone_8x16_0_0_obuf__parameterized0 obuf_inst
       (.D(cdata),
        .E(ireg01_out),
        .Q({obuf_inst_n_0,arg_0_TLAST}),
        .SR(SR),
        .ap_clk(ap_clk),
        .arg_0_TREADY(arg_0_TREADY),
        .\ireg_reg[1] (p_0_in));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module overlay_8x16_addone_8x16_0_0_regslice_both__parameterized1
   (SR,
    ap_rst_n_0,
    ap_rst_n_1,
    Q,
    ap_rst_n_2,
    ap_rst_n_3,
    \icmp_ln36_reg_222_reg[0] ,
    ap_rst_n_4,
    \odata_reg[16] ,
    D,
    ap_rst_n_5,
    ap_enable_reg_pp0_iter0_reg,
    icmp_ln36_reg_2220,
    ap_enable_reg_pp0_iter0_reg_0,
    indvar_flatten_reg_820,
    \ireg_reg[16] ,
    ap_rst_n_6,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[1]_0 ,
    arg_0_TREADY_0,
    internal_empty_n_reg,
    internal_empty_n4_out,
    \tmp_last_V_reg_208_reg[0] ,
    ap_clk,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    \ap_CS_fsm_reg[1] ,
    \indvar_flatten_reg_82_reg[0] ,
    ap_enable_reg_pp0_iter0_reg_1,
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ,
    \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ,
    p_in_1_stencil_stream_3_empty_n,
    E,
    internal_empty_n_reg_0,
    p_in_1_stencil_stream_2_empty_n,
    internal_empty_n_reg_1,
    arg_0_TREADY,
    \mOutPtr_reg[1]_1 ,
    \ap_CS_fsm_reg[1]_0 ,
    \ap_CS_fsm_reg[1]_1 ,
    \ap_CS_fsm_reg[2] ,
    \p_hw_output_1_y_sca_reg_93_reg[0] ,
    \p_hw_output_1_y_sca_reg_93_reg[0]_0 ,
    Loop_2_proc21_U0_ap_start,
    \odata_reg[16]_0 ,
    internal_full_n_reg,
    internal_full_n_reg_0,
    icmp_ln36_reg_222_pp0_iter1_reg,
    start_for_Loop_2_proc21_U0_full_n,
    start_once_reg,
    \ireg_reg[7] ,
    \odata_reg[4] ,
    \odata_reg[4]_0 ,
    \tmp_last_V_reg_208_reg[0]_0 ,
    \tmp_last_V_reg_208_reg[0]_1 ,
    \tmp_last_V_reg_208_reg[0]_2 ,
    \tmp_last_V_reg_208_reg[0]_3 ,
    \odata_reg[6] );
  output [0:0]SR;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output [4:0]Q;
  output ap_rst_n_2;
  output ap_rst_n_3;
  output \icmp_ln36_reg_222_reg[0] ;
  output ap_rst_n_4;
  output [8:0]\odata_reg[16] ;
  output [2:0]D;
  output ap_rst_n_5;
  output [0:0]ap_enable_reg_pp0_iter0_reg;
  output icmp_ln36_reg_2220;
  output [0:0]ap_enable_reg_pp0_iter0_reg_0;
  output indvar_flatten_reg_820;
  output \ireg_reg[16] ;
  output [0:0]ap_rst_n_6;
  output \mOutPtr_reg[1] ;
  output \mOutPtr_reg[1]_0 ;
  output arg_0_TREADY_0;
  output [0:0]internal_empty_n_reg;
  output internal_empty_n4_out;
  output \tmp_last_V_reg_208_reg[0] ;
  input ap_clk;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input \ap_CS_fsm_reg[1] ;
  input \indvar_flatten_reg_82_reg[0] ;
  input ap_enable_reg_pp0_iter0_reg_1;
  input \icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ;
  input \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ;
  input p_in_1_stencil_stream_3_empty_n;
  input [0:0]E;
  input internal_empty_n_reg_0;
  input p_in_1_stencil_stream_2_empty_n;
  input internal_empty_n_reg_1;
  input arg_0_TREADY;
  input [2:0]\mOutPtr_reg[1]_1 ;
  input \ap_CS_fsm_reg[1]_0 ;
  input \ap_CS_fsm_reg[1]_1 ;
  input \ap_CS_fsm_reg[2] ;
  input [0:0]\p_hw_output_1_y_sca_reg_93_reg[0] ;
  input \p_hw_output_1_y_sca_reg_93_reg[0]_0 ;
  input Loop_2_proc21_U0_ap_start;
  input \odata_reg[16]_0 ;
  input [1:0]internal_full_n_reg;
  input [1:0]internal_full_n_reg_0;
  input icmp_ln36_reg_222_pp0_iter1_reg;
  input start_for_Loop_2_proc21_U0_full_n;
  input start_once_reg;
  input [7:0]\ireg_reg[7] ;
  input \odata_reg[4] ;
  input [2:0]\odata_reg[4]_0 ;
  input \tmp_last_V_reg_208_reg[0]_0 ;
  input \tmp_last_V_reg_208_reg[0]_1 ;
  input \tmp_last_V_reg_208_reg[0]_2 ;
  input [0:0]\tmp_last_V_reg_208_reg[0]_3 ;
  input [3:0]\odata_reg[6] ;

  wire [2:0]D;
  wire [0:0]E;
  wire Loop_2_proc21_U0_ap_start;
  wire [4:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[2]_i_2_n_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [0:0]ap_enable_reg_pp0_iter0_reg;
  wire [0:0]ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter0_reg_1;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire ap_rst_n_3;
  wire ap_rst_n_4;
  wire ap_rst_n_5;
  wire [0:0]ap_rst_n_6;
  wire arg_0_TREADY;
  wire arg_0_TREADY_0;
  wire [1:1]count;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_28;
  wire icmp_ln36_reg_2220;
  wire icmp_ln36_reg_222_pp0_iter1_reg;
  wire \icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ;
  wire \icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ;
  wire \icmp_ln36_reg_222_reg[0] ;
  wire indvar_flatten_reg_820;
  wire \indvar_flatten_reg_82_reg[0] ;
  wire internal_empty_n4_out;
  wire [0:0]internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire [1:0]internal_full_n_reg;
  wire [1:0]internal_full_n_reg_0;
  wire ireg01_out;
  wire \ireg_reg[16] ;
  wire [7:0]\ireg_reg[7] ;
  wire \mOutPtr_reg[1] ;
  wire \mOutPtr_reg[1]_0 ;
  wire [2:0]\mOutPtr_reg[1]_1 ;
  wire obuf_inst_n_1;
  wire [8:0]\odata_reg[16] ;
  wire \odata_reg[16]_0 ;
  wire \odata_reg[4] ;
  wire [2:0]\odata_reg[4]_0 ;
  wire [3:0]\odata_reg[6] ;
  wire [0:0]\p_hw_output_1_y_sca_reg_93_reg[0] ;
  wire \p_hw_output_1_y_sca_reg_93_reg[0]_0 ;
  wire p_in_1_stencil_stream_2_empty_n;
  wire p_in_1_stencil_stream_3_empty_n;
  wire start_for_Loop_2_proc21_U0_full_n;
  wire start_once_reg;
  wire \tmp_last_V_reg_208_reg[0] ;
  wire \tmp_last_V_reg_208_reg[0]_0 ;
  wire \tmp_last_V_reg_208_reg[0]_1 ;
  wire \tmp_last_V_reg_208_reg[0]_2 ;
  wire [0:0]\tmp_last_V_reg_208_reg[0]_3 ;

  LUT5 #(
    .INIT(32'h000400F4)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(arg_0_TREADY_0),
        .I1(\mOutPtr_reg[1]_1 [2]),
        .I2(\mOutPtr_reg[1]_1 [0]),
        .I3(\mOutPtr_reg[1]_1 [1]),
        .I4(Loop_2_proc21_U0_ap_start),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h70)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(arg_0_TREADY),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(arg_0_TREADY_0));
  LUT6 #(
    .INIT(64'h0111111101010101)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(\mOutPtr_reg[1]_1 [1]),
        .I1(\mOutPtr_reg[1]_1 [0]),
        .I2(\mOutPtr_reg[1]_1 [2]),
        .I3(arg_0_TREADY),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\ap_CS_fsm[2]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_20),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[1] ),
        .R(SR));
  overlay_8x16_addone_8x16_0_0_ibuf__parameterized1 ibuf_inst
       (.D(D[2:1]),
        .E(E),
        .Loop_2_proc21_U0_ap_start(Loop_2_proc21_U0_ap_start),
        .Q(Q),
        .\ap_CS_fsm_reg[1] ({ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27,ibuf_inst_n_28}),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[1]_1 (\ap_CS_fsm_reg[1]_0 ),
        .\ap_CS_fsm_reg[1]_2 (\ap_CS_fsm_reg[1]_1 ),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm[2]_i_2_n_0 ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter0_reg_0(ap_enable_reg_pp0_iter0_reg_0),
        .ap_enable_reg_pp0_iter0_reg_1(ap_enable_reg_pp0_iter0_reg_1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ap_rst_n_1(ap_rst_n_1),
        .ap_rst_n_2(ap_rst_n_2),
        .ap_rst_n_3(ap_rst_n_3),
        .ap_rst_n_4(ap_rst_n_4),
        .ap_rst_n_5(ap_rst_n_5),
        .ap_rst_n_6(ibuf_inst_n_20),
        .ap_rst_n_7(ap_rst_n_6),
        .arg_0_TREADY(arg_0_TREADY),
        .count(count),
        .\count_reg[1] (\count_reg_n_0_[0] ),
        .\count_reg[1]_0 (\count_reg_n_0_[1] ),
        .icmp_ln36_reg_222_pp0_iter1_reg(icmp_ln36_reg_222_pp0_iter1_reg),
        .\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] (\icmp_ln36_reg_222_pp0_iter1_reg_reg[0] ),
        .\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 (\icmp_ln36_reg_222_pp0_iter1_reg_reg[0]_0 ),
        .\icmp_ln36_reg_222_reg[0] (\icmp_ln36_reg_222_reg[0] ),
        .indvar_flatten_reg_820(indvar_flatten_reg_820),
        .\indvar_flatten_reg_82_reg[0] (\indvar_flatten_reg_82_reg[0] ),
        .internal_empty_n_reg(internal_empty_n_reg_0),
        .internal_empty_n_reg_0(internal_empty_n_reg_1),
        .internal_empty_n_reg_1(\odata_reg[16]_0 ),
        .internal_full_n_reg(internal_full_n_reg),
        .internal_full_n_reg_0(internal_full_n_reg_0),
        .\ireg_reg[0]_0 (\odata_reg[16] [8]),
        .\ireg_reg[16]_0 (icmp_ln36_reg_2220),
        .\ireg_reg[16]_1 (\ireg_reg[16] ),
        .\ireg_reg[16]_2 (ireg01_out),
        .\ireg_reg[7]_0 (\ireg_reg[7] ),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ),
        .\mOutPtr_reg[1]_0 (\mOutPtr_reg[1]_0 ),
        .\odata_reg[16] (\mOutPtr_reg[1]_1 [1:0]),
        .\odata_reg[16]_0 (obuf_inst_n_1),
        .\odata_reg[4] (\odata_reg[4] ),
        .\odata_reg[4]_0 (\odata_reg[4]_0 ),
        .\p_hw_output_1_y_sca_reg_93_reg[0] (\p_hw_output_1_y_sca_reg_93_reg[0] ),
        .\p_hw_output_1_y_sca_reg_93_reg[0]_0 (\p_hw_output_1_y_sca_reg_93_reg[0]_0 ),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n),
        .\tmp_last_V_reg_208_reg[0] (\tmp_last_V_reg_208_reg[0] ),
        .\tmp_last_V_reg_208_reg[0]_0 (\tmp_last_V_reg_208_reg[0]_0 ),
        .\tmp_last_V_reg_208_reg[0]_1 (\tmp_last_V_reg_208_reg[0]_1 ),
        .\tmp_last_V_reg_208_reg[0]_2 (\tmp_last_V_reg_208_reg[0]_2 ),
        .\tmp_last_V_reg_208_reg[0]_3 (\tmp_last_V_reg_208_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0000F700)) 
    internal_empty_n_i_2
       (.I0(\mOutPtr_reg[1]_1 [2]),
        .I1(Loop_2_proc21_U0_ap_start),
        .I2(arg_0_TREADY_0),
        .I3(start_for_Loop_2_proc21_U0_full_n),
        .I4(start_once_reg),
        .O(internal_empty_n4_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h4040BF40)) 
    \mOutPtr[1]_i_1__1 
       (.I0(arg_0_TREADY_0),
        .I1(Loop_2_proc21_U0_ap_start),
        .I2(\mOutPtr_reg[1]_1 [2]),
        .I3(start_for_Loop_2_proc21_U0_full_n),
        .I4(start_once_reg),
        .O(internal_empty_n_reg));
  overlay_8x16_addone_8x16_0_0_obuf__parameterized1 obuf_inst
       (.D({ibuf_inst_n_24,ibuf_inst_n_25,\odata_reg[6] [3:2],ibuf_inst_n_26,\odata_reg[6] [1:0],ibuf_inst_n_27,ibuf_inst_n_28}),
        .Q(\odata_reg[16] ),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arg_0_TREADY(arg_0_TREADY),
        .arg_0_TREADY_0(ireg01_out),
        .internal_empty_n_reg(obuf_inst_n_1),
        .\ireg_reg[16] (Q[4]),
        .\odata_reg[16]_0 (\ap_CS_fsm_reg[1] ),
        .\odata_reg[16]_1 (\odata_reg[16]_0 ),
        .p_in_1_stencil_stream_2_empty_n(p_in_1_stencil_stream_2_empty_n),
        .p_in_1_stencil_stream_3_empty_n(p_in_1_stencil_stream_3_empty_n));
endmodule

(* ORIG_REF_NAME = "start_for_Loop_2_bkb" *) 
module overlay_8x16_addone_8x16_0_0_start_for_Loop_2_bkb
   (start_for_Loop_2_proc21_U0_full_n,
    Loop_2_proc21_U0_ap_start,
    ap_clk,
    ap_rst_n,
    start_once_reg,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    internal_empty_n4_out,
    \mOutPtr_reg[1]_0 ,
    SS,
    E);
  output start_for_Loop_2_proc21_U0_full_n;
  output Loop_2_proc21_U0_ap_start;
  input ap_clk;
  input ap_rst_n;
  input start_once_reg;
  input internal_full_n_reg_0;
  input internal_full_n_reg_1;
  input internal_empty_n4_out;
  input [0:0]\mOutPtr_reg[1]_0 ;
  input [0:0]SS;
  input [0:0]E;

  wire [0:0]E;
  wire Loop_2_proc21_U0_ap_start;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n4_out;
  wire internal_empty_n_i_1__1_n_0;
  wire internal_full_n_i_1__1_n_0;
  wire internal_full_n_i_2__1_n_0;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__1_n_0 ;
  wire \mOutPtr[1]_i_2__0_n_0 ;
  wire \mOutPtr[1]_i_3_n_0 ;
  wire [0:0]\mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_Loop_2_proc21_U0_full_n;
  wire start_once_reg;

  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A800)) 
    internal_empty_n_i_1__1
       (.I0(ap_rst_n),
        .I1(internal_empty_n4_out),
        .I2(Loop_2_proc21_U0_ap_start),
        .I3(\mOutPtr[1]_i_3_n_0 ),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(internal_empty_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_0),
        .Q(Loop_2_proc21_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF5D5F5D5F5D5FFFF)) 
    internal_full_n_i_1__1
       (.I0(ap_rst_n),
        .I1(start_once_reg),
        .I2(start_for_Loop_2_proc21_U0_full_n),
        .I3(internal_full_n_i_2__1_n_0),
        .I4(internal_full_n_reg_0),
        .I5(internal_full_n_reg_1),
        .O(internal_full_n_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    internal_full_n_i_2__1
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .O(internal_full_n_i_2__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_0),
        .Q(start_for_Loop_2_proc21_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_2__0 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr[1]_i_3_n_0 ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4FFF)) 
    \mOutPtr[1]_i_3 
       (.I0(start_once_reg),
        .I1(start_for_Loop_2_proc21_U0_full_n),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(Loop_2_proc21_U0_ap_start),
        .I4(internal_full_n_reg_1),
        .O(\mOutPtr[1]_i_3_n_0 ));
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
