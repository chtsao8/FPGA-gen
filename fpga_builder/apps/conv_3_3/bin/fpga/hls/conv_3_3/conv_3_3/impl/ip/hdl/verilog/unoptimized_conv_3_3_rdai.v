// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="unoptimized_conv_3_3_rdai,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=4.129000,HLS_SYN_LAT=31258,HLS_SYN_TPT=31259,HLS_SYN_MEM=4,HLS_SYN_DSP=2,HLS_SYN_FF=306,HLS_SYN_LUT=952,HLS_VERSION=2020_1}" *)

module unoptimized_conv_3_3_rdai (
        arg_in0_TDATA,
        arg_in0_TLAST,
        arg_out_TDATA,
        arg_out_TLAST,
        ap_clk,
        ap_rst_n,
        arg_in0_TVALID,
        arg_in0_TREADY,
        arg_out_TVALID,
        arg_out_TREADY
);


input  [15:0] arg_in0_TDATA;
input  [0:0] arg_in0_TLAST;
output  [15:0] arg_out_TDATA;
output  [0:0] arg_out_TLAST;
input   ap_clk;
input   ap_rst_n;
input   arg_in0_TVALID;
output   arg_in0_TREADY;
output   arg_out_TVALID;
input   arg_out_TREADY;

 reg    ap_rst_n_inv;
wire    Block_proc75_U0_ap_start;
wire    Block_proc75_U0_ap_done;
wire    Block_proc75_U0_ap_continue;
wire    Block_proc75_U0_ap_idle;
wire    Block_proc75_U0_ap_ready;
wire    Block_proc75_U0_arg_in0_TREADY;
wire   [15:0] Block_proc75_U0_ap_return;
wire    ap_channel_done_this_assign_channel;
wire    this_assign_channel_full_n;
wire    write_U0_ap_start;
wire    write_U0_ap_done;
wire    write_U0_ap_continue;
wire    write_U0_ap_idle;
wire    write_U0_ap_ready;
wire    write_U0_start_out;
wire    write_U0_start_write;
wire   [15:0] write_U0_HWStream_hw_uint_16_values_V_val_V_din;
wire    write_U0_HWStream_hw_uint_16_values_V_val_V_write;
wire    unoptimized_conv_3_3_U0_ap_start;
wire    unoptimized_conv_3_3_U0_start_full_n;
wire    unoptimized_conv_3_3_U0_ap_done;
wire    unoptimized_conv_3_3_U0_ap_continue;
wire    unoptimized_conv_3_3_U0_ap_idle;
wire    unoptimized_conv_3_3_U0_ap_ready;
wire    unoptimized_conv_3_3_U0_start_out;
wire    unoptimized_conv_3_3_U0_start_write;
wire    unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read;
wire   [15:0] unoptimized_conv_3_3_U0_hw_output_stencil_values_V_val_V_din;
wire    unoptimized_conv_3_3_U0_hw_output_stencil_values_V_val_V_write;
wire   [0:0] unoptimized_conv_3_3_U0_tlast_values_V_val_V_din;
wire    unoptimized_conv_3_3_U0_tlast_values_V_val_V_write;
wire    read_1_U0_ap_start;
wire    read_1_U0_ap_done;
wire    read_1_U0_ap_continue;
wire    read_1_U0_ap_idle;
wire    read_1_U0_ap_ready;
wire    read_1_U0_HWStream_hw_uint_16_values_V_val_V_read;
wire   [15:0] read_1_U0_ap_return;
wire    ap_channel_done_p_0;
wire    p_0_full_n;
wire    operator_int_1_U0_ap_start;
wire    operator_int_1_U0_ap_done;
wire    operator_int_1_U0_ap_continue;
wire    operator_int_1_U0_ap_idle;
wire    operator_int_1_U0_ap_ready;
wire   [15:0] operator_int_1_U0_hw_uint_16_val_V;
wire    operator_int_1_U0_hw_uint_16_val_V_ap_vld;
wire    ap_channel_done_val_assign_channel;
wire    val_assign_channel_full_n;
wire    read_U0_ap_start;
wire    read_U0_ap_done;
wire    read_U0_ap_continue;
wire    read_U0_ap_idle;
wire    read_U0_ap_ready;
wire    read_U0_HWStream_hw_uint_1_values_V_val_V_read;
wire   [0:0] read_U0_ap_return;
wire    ap_channel_done_p_s;
wire    p_s_full_n;
wire    operator_int_U0_ap_start;
wire    operator_int_U0_ap_done;
wire    operator_int_U0_ap_continue;
wire    operator_int_U0_ap_idle;
wire    operator_int_U0_ap_ready;
wire   [0:0] operator_int_U0_hw_uint_1_val_V;
wire    operator_int_U0_hw_uint_1_val_V_ap_vld;
wire    ap_channel_done_val_assign_1_channel;
wire    val_assign_1_channel_full_n;
wire    Block_proc7476_U0_ap_start;
wire    Block_proc7476_U0_ap_done;
wire    Block_proc7476_U0_ap_continue;
wire    Block_proc7476_U0_ap_idle;
wire    Block_proc7476_U0_ap_ready;
wire   [15:0] Block_proc7476_U0_arg_out_TDATA;
wire    Block_proc7476_U0_arg_out_TVALID;
wire   [0:0] Block_proc7476_U0_arg_out_TLAST;
wire    ap_sync_continue;
wire   [15:0] this_assign_channel_dout;
wire    this_assign_channel_empty_n;
wire    arg_in0_hwstream_val_full_n;
wire   [15:0] arg_in0_hwstream_val_dout;
wire    arg_in0_hwstream_val_empty_n;
wire    arg_out_data_values_s_full_n;
wire   [15:0] arg_out_data_values_s_dout;
wire    arg_out_data_values_s_empty_n;
wire    arg_out_tlast_values_full_n;
wire   [0:0] arg_out_tlast_values_dout;
wire    arg_out_tlast_values_empty_n;
wire   [15:0] p_0_dout;
wire    p_0_empty_n;
wire   [15:0] val_assign_channel_dout;
wire    val_assign_channel_empty_n;
wire   [0:0] p_s_dout;
wire    p_s_empty_n;
wire   [0:0] val_assign_1_channel_dout;
wire    val_assign_1_channel_empty_n;
wire    Block_proc75_U0_start_full_n;
wire    Block_proc75_U0_start_write;
wire   [0:0] start_for_unoptimized_conv_3_3_U0_din;
wire    start_for_unoptimized_conv_3_3_U0_full_n;
wire   [0:0] start_for_unoptimized_conv_3_3_U0_dout;
wire    start_for_unoptimized_conv_3_3_U0_empty_n;
wire   [0:0] start_for_read_1_U0_din;
wire    start_for_read_1_U0_full_n;
wire   [0:0] start_for_read_1_U0_dout;
wire    start_for_read_1_U0_empty_n;
wire   [0:0] start_for_read_U0_din;
wire    start_for_read_U0_full_n;
wire   [0:0] start_for_read_U0_dout;
wire    start_for_read_U0_empty_n;
wire    read_1_U0_start_full_n;
wire    read_1_U0_start_write;
wire    operator_int_1_U0_start_full_n;
wire    operator_int_1_U0_start_write;
wire    read_U0_start_full_n;
wire    read_U0_start_write;
wire    operator_int_U0_start_full_n;
wire    operator_int_U0_start_write;
wire    Block_proc7476_U0_start_full_n;
wire    Block_proc7476_U0_start_write;

Block_proc75 Block_proc75_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_proc75_U0_ap_start),
    .ap_done(Block_proc75_U0_ap_done),
    .ap_continue(Block_proc75_U0_ap_continue),
    .ap_idle(Block_proc75_U0_ap_idle),
    .ap_ready(Block_proc75_U0_ap_ready),
    .arg_in0_TDATA(arg_in0_TDATA),
    .arg_in0_TVALID(arg_in0_TVALID),
    .arg_in0_TREADY(Block_proc75_U0_arg_in0_TREADY),
    .arg_in0_TLAST(arg_in0_TLAST),
    .ap_return(Block_proc75_U0_ap_return)
);

write_r write_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(write_U0_ap_start),
    .start_full_n(start_for_unoptimized_conv_3_3_U0_full_n),
    .ap_done(write_U0_ap_done),
    .ap_continue(write_U0_ap_continue),
    .ap_idle(write_U0_ap_idle),
    .ap_ready(write_U0_ap_ready),
    .start_out(write_U0_start_out),
    .start_write(write_U0_start_write),
    .HWStream_hw_uint_16_values_V_val_V_din(write_U0_HWStream_hw_uint_16_values_V_val_V_din),
    .HWStream_hw_uint_16_values_V_val_V_full_n(arg_in0_hwstream_val_full_n),
    .HWStream_hw_uint_16_values_V_val_V_write(write_U0_HWStream_hw_uint_16_values_V_val_V_write),
    .v_val_V_read(this_assign_channel_dout)
);

unoptimized_conv_3_3 unoptimized_conv_3_3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(unoptimized_conv_3_3_U0_ap_start),
    .start_full_n(unoptimized_conv_3_3_U0_start_full_n),
    .ap_done(unoptimized_conv_3_3_U0_ap_done),
    .ap_continue(unoptimized_conv_3_3_U0_ap_continue),
    .ap_idle(unoptimized_conv_3_3_U0_ap_idle),
    .ap_ready(unoptimized_conv_3_3_U0_ap_ready),
    .start_out(unoptimized_conv_3_3_U0_start_out),
    .start_write(unoptimized_conv_3_3_U0_start_write),
    .hw_input_stencil_values_V_val_V_dout(arg_in0_hwstream_val_dout),
    .hw_input_stencil_values_V_val_V_empty_n(arg_in0_hwstream_val_empty_n),
    .hw_input_stencil_values_V_val_V_read(unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read),
    .hw_output_stencil_values_V_val_V_din(unoptimized_conv_3_3_U0_hw_output_stencil_values_V_val_V_din),
    .hw_output_stencil_values_V_val_V_full_n(arg_out_data_values_s_full_n),
    .hw_output_stencil_values_V_val_V_write(unoptimized_conv_3_3_U0_hw_output_stencil_values_V_val_V_write),
    .tlast_values_V_val_V_din(unoptimized_conv_3_3_U0_tlast_values_V_val_V_din),
    .tlast_values_V_val_V_full_n(arg_out_tlast_values_full_n),
    .tlast_values_V_val_V_write(unoptimized_conv_3_3_U0_tlast_values_V_val_V_write)
);

read_1 read_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(read_1_U0_ap_start),
    .ap_done(read_1_U0_ap_done),
    .ap_continue(read_1_U0_ap_continue),
    .ap_idle(read_1_U0_ap_idle),
    .ap_ready(read_1_U0_ap_ready),
    .HWStream_hw_uint_16_values_V_val_V_dout(arg_out_data_values_s_dout),
    .HWStream_hw_uint_16_values_V_val_V_empty_n(arg_out_data_values_s_empty_n),
    .HWStream_hw_uint_16_values_V_val_V_read(read_1_U0_HWStream_hw_uint_16_values_V_val_V_read),
    .ap_return(read_1_U0_ap_return)
);

operator_int_1 operator_int_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(operator_int_1_U0_ap_start),
    .ap_done(operator_int_1_U0_ap_done),
    .ap_continue(operator_int_1_U0_ap_continue),
    .ap_idle(operator_int_1_U0_ap_idle),
    .ap_ready(operator_int_1_U0_ap_ready),
    .hw_uint_16_val_V(operator_int_1_U0_hw_uint_16_val_V),
    .hw_uint_16_val_V_ap_vld(operator_int_1_U0_hw_uint_16_val_V_ap_vld),
    .p_read(p_0_dout)
);

read_r read_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(read_U0_ap_start),
    .ap_done(read_U0_ap_done),
    .ap_continue(read_U0_ap_continue),
    .ap_idle(read_U0_ap_idle),
    .ap_ready(read_U0_ap_ready),
    .HWStream_hw_uint_1_values_V_val_V_dout(arg_out_tlast_values_dout),
    .HWStream_hw_uint_1_values_V_val_V_empty_n(arg_out_tlast_values_empty_n),
    .HWStream_hw_uint_1_values_V_val_V_read(read_U0_HWStream_hw_uint_1_values_V_val_V_read),
    .ap_return(read_U0_ap_return)
);

operator_int operator_int_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(operator_int_U0_ap_start),
    .ap_done(operator_int_U0_ap_done),
    .ap_continue(operator_int_U0_ap_continue),
    .ap_idle(operator_int_U0_ap_idle),
    .ap_ready(operator_int_U0_ap_ready),
    .hw_uint_1_val_V(operator_int_U0_hw_uint_1_val_V),
    .hw_uint_1_val_V_ap_vld(operator_int_U0_hw_uint_1_val_V_ap_vld),
    .p_read(p_s_dout)
);

Block_proc7476 Block_proc7476_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_proc7476_U0_ap_start),
    .ap_done(Block_proc7476_U0_ap_done),
    .ap_continue(Block_proc7476_U0_ap_continue),
    .ap_idle(Block_proc7476_U0_ap_idle),
    .ap_ready(Block_proc7476_U0_ap_ready),
    .val_assign(val_assign_channel_dout),
    .val_assign_1(val_assign_1_channel_dout),
    .arg_out_TDATA(Block_proc7476_U0_arg_out_TDATA),
    .arg_out_TVALID(Block_proc7476_U0_arg_out_TVALID),
    .arg_out_TREADY(arg_out_TREADY),
    .arg_out_TLAST(Block_proc7476_U0_arg_out_TLAST)
);

fifo_w16_d2_A this_assign_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_proc75_U0_ap_return),
    .if_full_n(this_assign_channel_full_n),
    .if_write(Block_proc75_U0_ap_done),
    .if_dout(this_assign_channel_dout),
    .if_empty_n(this_assign_channel_empty_n),
    .if_read(write_U0_ap_ready)
);

fifo_w16_d2_A arg_in0_hwstream_val_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(write_U0_HWStream_hw_uint_16_values_V_val_V_din),
    .if_full_n(arg_in0_hwstream_val_full_n),
    .if_write(write_U0_HWStream_hw_uint_16_values_V_val_V_write),
    .if_dout(arg_in0_hwstream_val_dout),
    .if_empty_n(arg_in0_hwstream_val_empty_n),
    .if_read(unoptimized_conv_3_3_U0_hw_input_stencil_values_V_val_V_read)
);

fifo_w16_d2_A arg_out_data_values_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(unoptimized_conv_3_3_U0_hw_output_stencil_values_V_val_V_din),
    .if_full_n(arg_out_data_values_s_full_n),
    .if_write(unoptimized_conv_3_3_U0_hw_output_stencil_values_V_val_V_write),
    .if_dout(arg_out_data_values_s_dout),
    .if_empty_n(arg_out_data_values_s_empty_n),
    .if_read(read_1_U0_HWStream_hw_uint_16_values_V_val_V_read)
);

fifo_w1_d2_A arg_out_tlast_values_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(unoptimized_conv_3_3_U0_tlast_values_V_val_V_din),
    .if_full_n(arg_out_tlast_values_full_n),
    .if_write(unoptimized_conv_3_3_U0_tlast_values_V_val_V_write),
    .if_dout(arg_out_tlast_values_dout),
    .if_empty_n(arg_out_tlast_values_empty_n),
    .if_read(read_U0_HWStream_hw_uint_1_values_V_val_V_read)
);

fifo_w16_d2_A p_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(read_1_U0_ap_return),
    .if_full_n(p_0_full_n),
    .if_write(read_1_U0_ap_done),
    .if_dout(p_0_dout),
    .if_empty_n(p_0_empty_n),
    .if_read(operator_int_1_U0_ap_ready)
);

fifo_w16_d2_A val_assign_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(operator_int_1_U0_hw_uint_16_val_V),
    .if_full_n(val_assign_channel_full_n),
    .if_write(operator_int_1_U0_ap_done),
    .if_dout(val_assign_channel_dout),
    .if_empty_n(val_assign_channel_empty_n),
    .if_read(Block_proc7476_U0_ap_ready)
);

fifo_w1_d2_A p_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(read_U0_ap_return),
    .if_full_n(p_s_full_n),
    .if_write(read_U0_ap_done),
    .if_dout(p_s_dout),
    .if_empty_n(p_s_empty_n),
    .if_read(operator_int_U0_ap_ready)
);

fifo_w1_d2_A val_assign_1_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(operator_int_U0_hw_uint_1_val_V),
    .if_full_n(val_assign_1_channel_full_n),
    .if_write(operator_int_U0_ap_done),
    .if_dout(val_assign_1_channel_dout),
    .if_empty_n(val_assign_1_channel_empty_n),
    .if_read(Block_proc7476_U0_ap_ready)
);

start_for_unoptimdEe start_for_unoptimdEe_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_unoptimized_conv_3_3_U0_din),
    .if_full_n(start_for_unoptimized_conv_3_3_U0_full_n),
    .if_write(write_U0_start_write),
    .if_dout(start_for_unoptimized_conv_3_3_U0_dout),
    .if_empty_n(start_for_unoptimized_conv_3_3_U0_empty_n),
    .if_read(unoptimized_conv_3_3_U0_ap_ready)
);

start_for_read_1_U0 start_for_read_1_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_read_1_U0_din),
    .if_full_n(start_for_read_1_U0_full_n),
    .if_write(unoptimized_conv_3_3_U0_start_write),
    .if_dout(start_for_read_1_U0_dout),
    .if_empty_n(start_for_read_1_U0_empty_n),
    .if_read(read_1_U0_ap_ready)
);

start_for_read_U0 start_for_read_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_read_U0_din),
    .if_full_n(start_for_read_U0_full_n),
    .if_write(unoptimized_conv_3_3_U0_start_write),
    .if_dout(start_for_read_U0_dout),
    .if_empty_n(start_for_read_U0_empty_n),
    .if_read(read_U0_ap_ready)
);

assign Block_proc7476_U0_ap_continue = 1'b1;

assign Block_proc7476_U0_ap_start = (val_assign_channel_empty_n & val_assign_1_channel_empty_n);

assign Block_proc7476_U0_start_full_n = 1'b1;

assign Block_proc7476_U0_start_write = 1'b0;

assign Block_proc75_U0_ap_continue = this_assign_channel_full_n;

assign Block_proc75_U0_ap_start = 1'b1;

assign Block_proc75_U0_start_full_n = 1'b1;

assign Block_proc75_U0_start_write = 1'b0;

assign ap_channel_done_p_0 = read_1_U0_ap_done;

assign ap_channel_done_p_s = read_U0_ap_done;

assign ap_channel_done_this_assign_channel = Block_proc75_U0_ap_done;

assign ap_channel_done_val_assign_1_channel = operator_int_U0_ap_done;

assign ap_channel_done_val_assign_channel = operator_int_1_U0_ap_done;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign arg_in0_TREADY = Block_proc75_U0_arg_in0_TREADY;

assign arg_out_TDATA = Block_proc7476_U0_arg_out_TDATA;

assign arg_out_TLAST = Block_proc7476_U0_arg_out_TLAST;

assign arg_out_TVALID = Block_proc7476_U0_arg_out_TVALID;

assign operator_int_1_U0_ap_continue = val_assign_channel_full_n;

assign operator_int_1_U0_ap_start = p_0_empty_n;

assign operator_int_1_U0_start_full_n = 1'b1;

assign operator_int_1_U0_start_write = 1'b0;

assign operator_int_U0_ap_continue = val_assign_1_channel_full_n;

assign operator_int_U0_ap_start = p_s_empty_n;

assign operator_int_U0_start_full_n = 1'b1;

assign operator_int_U0_start_write = 1'b0;

assign read_1_U0_ap_continue = p_0_full_n;

assign read_1_U0_ap_start = start_for_read_1_U0_empty_n;

assign read_1_U0_start_full_n = 1'b1;

assign read_1_U0_start_write = 1'b0;

assign read_U0_ap_continue = p_s_full_n;

assign read_U0_ap_start = start_for_read_U0_empty_n;

assign read_U0_start_full_n = 1'b1;

assign read_U0_start_write = 1'b0;

assign start_for_read_1_U0_din = 1'b1;

assign start_for_read_U0_din = 1'b1;

assign start_for_unoptimized_conv_3_3_U0_din = 1'b1;

assign unoptimized_conv_3_3_U0_ap_continue = 1'b1;

assign unoptimized_conv_3_3_U0_ap_start = start_for_unoptimized_conv_3_3_U0_empty_n;

assign unoptimized_conv_3_3_U0_start_full_n = (start_for_read_U0_full_n & start_for_read_1_U0_full_n);

assign write_U0_ap_continue = 1'b1;

assign write_U0_ap_start = this_assign_channel_empty_n;

endmodule //unoptimized_conv_3_3_rdai