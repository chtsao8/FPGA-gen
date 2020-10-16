// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module unoptimized_conv_3_3 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        hw_input_stencil_values_V_val_V_dout,
        hw_input_stencil_values_V_val_V_empty_n,
        hw_input_stencil_values_V_val_V_read,
        hw_output_stencil_values_V_val_V_din,
        hw_output_stencil_values_V_val_V_full_n,
        hw_output_stencil_values_V_val_V_write,
        tlast_values_V_val_V_din,
        tlast_values_V_val_V_full_n,
        tlast_values_V_val_V_write
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [15:0] hw_input_stencil_values_V_val_V_dout;
input   hw_input_stencil_values_V_val_V_empty_n;
output   hw_input_stencil_values_V_val_V_read;
output  [15:0] hw_output_stencil_values_V_val_V_din;
input   hw_output_stencil_values_V_val_V_full_n;
output   hw_output_stencil_values_V_val_V_write;
output  [0:0] tlast_values_V_val_V_din;
input   tlast_values_V_val_V_full_n;
output   tlast_values_V_val_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg hw_input_stencil_values_V_val_V_read;
reg hw_output_stencil_values_V_val_V_write;
reg tlast_values_V_val_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    hw_input_stencil_values_V_val_V_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln392_fu_245_p2;
reg    hw_output_stencil_values_V_val_V_blk_n;
wire    ap_CS_fsm_state11;
reg    tlast_values_V_val_V_blk_n;
wire   [6:0] c3_fu_227_p2;
reg   [6:0] c3_reg_541;
wire    ap_CS_fsm_state2;
wire   [13:0] zext_ln392_fu_241_p1;
reg   [13:0] zext_ln392_reg_546;
wire   [0:0] icmp_ln391_fu_221_p2;
wire   [6:0] c5_fu_251_p2;
reg    ap_block_state3;
wire   [5:0] c3_1_fu_277_p2;
reg   [5:0] c3_1_reg_562;
wire    ap_CS_fsm_state4;
wire   [5:0] add_ln142_fu_283_p2;
reg   [5:0] add_ln142_reg_570;
wire   [0:0] icmp_ln394_fu_271_p2;
wire   [5:0] c5_1_fu_295_p2;
reg   [5:0] c5_1_reg_580;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln395_fu_289_p2;
wire  signed [15:0] hw_input_global_wrap_q0;
reg   [15:0] hw_input_global_wrap_7_reg_593;
wire    ap_CS_fsm_state6;
wire   [5:0] add_ln187_fu_326_p2;
reg   [5:0] add_ln187_reg_604;
wire    ap_CS_fsm_state7;
wire   [15:0] hw_input_global_wrap_q1;
reg   [15:0] hw_input_global_wrap_15_reg_625;
wire   [13:0] empty_11_fu_368_p1;
reg   [13:0] empty_11_reg_631;
wire    ap_CS_fsm_state8;
wire  signed [15:0] grp_fu_522_p3;
reg  signed [15:0] add_ln58_4_reg_646;
wire    ap_CS_fsm_state9;
wire   [13:0] tmp_i231_fu_460_p2;
reg   [13:0] tmp_i231_reg_661;
wire   [15:0] add_ln58_fu_465_p2;
reg   [15:0] add_ln58_reg_666;
wire   [15:0] add_ln58_2_fu_476_p2;
reg   [15:0] add_ln58_2_reg_671;
wire  signed [15:0] grp_fu_530_p3;
reg  signed [15:0] add_ln58_5_reg_676;
wire    ap_CS_fsm_state10;
reg   [11:0] hw_input_global_wrap_address0;
reg    hw_input_global_wrap_ce0;
reg    hw_input_global_wrap_we0;
reg   [11:0] hw_input_global_wrap_address1;
reg    hw_input_global_wrap_ce1;
reg   [6:0] hw_input_global_wrap_1_reg_175;
reg    ap_block_state1;
reg   [6:0] hw_input_global_wrap_2_reg_186;
reg   [5:0] hw_output_s0_y_v33_a_reg_197;
reg   [5:0] hw_output_s0_x_v32_a_reg_209;
reg    ap_block_state11;
wire   [63:0] zext_ln321_1_fu_266_p1;
wire   [63:0] zext_ln201_fu_309_p1;
wire   [63:0] zext_ln201_3_fu_321_p1;
wire   [63:0] zext_ln201_6_fu_340_p1;
wire   [63:0] zext_ln201_1_fu_352_p1;
wire   [63:0] zext_ln201_4_fu_363_p1;
wire   [63:0] zext_ln201_2_fu_379_p1;
wire   [63:0] zext_ln201_7_fu_390_p1;
wire   [63:0] zext_ln201_5_fu_413_p1;
wire   [63:0] zext_ln201_8_fu_424_p1;
wire   [12:0] tmp_2_fu_233_p3;
wire   [13:0] zext_ln321_fu_257_p1;
wire   [13:0] add_ln321_fu_261_p2;
wire   [11:0] tmp_3_fu_301_p3;
wire   [11:0] tmp_6_fu_314_p3;
wire   [11:0] tmp_9_fu_332_p3;
wire   [11:0] tmp_4_fu_345_p3;
wire   [11:0] tmp_7_fu_357_p3;
wire   [11:0] tmp_5_fu_372_p3;
wire   [11:0] tmp_s_fu_384_p3;
wire   [15:0] shl_ln40_fu_395_p2;
wire   [11:0] tmp_8_fu_407_p3;
wire   [11:0] tmp_1_fu_418_p3;
wire   [15:0] shl_ln38_fu_434_p2;
wire   [15:0] shl_ln38_1_fu_439_p2;
wire   [13:0] empty_10_fu_456_p1;
wire   [15:0] shl_ln34_fu_429_p2;
wire   [15:0] p_265_fu_444_p2;
wire   [15:0] add_ln58_1_fu_470_p2;
wire   [15:0] shl_ln45_fu_450_p2;
wire   [15:0] shl_ln47_fu_482_p2;
wire   [15:0] tmp1_i_fu_494_p3;
(* use_dsp48 = "no" *) wire   [15:0] add_ln58_6_fu_505_p2;
(* use_dsp48 = "no" *) wire   [15:0] add_ln58_7_fu_510_p2;
wire   [15:0] add_ln58_3_fu_501_p2;
wire   [5:0] grp_fu_522_p0;
wire   [15:0] grp_fu_522_p2;
wire   [5:0] grp_fu_530_p0;
wire   [15:0] grp_fu_530_p2;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
end

unoptimized_conv_bkb #(
    .DataWidth( 16 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
hw_input_global_wrap_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(hw_input_global_wrap_address0),
    .ce0(hw_input_global_wrap_ce0),
    .we0(hw_input_global_wrap_we0),
    .d0(hw_input_stencil_values_V_val_V_dout),
    .q0(hw_input_global_wrap_q0),
    .address1(hw_input_global_wrap_address1),
    .ce1(hw_input_global_wrap_ce1),
    .q1(hw_input_global_wrap_q1)
);

unoptimized_conv_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
unoptimized_conv_cud_U6(
    .din0(grp_fu_522_p0),
    .din1(hw_input_global_wrap_q0),
    .din2(grp_fu_522_p2),
    .dout(grp_fu_522_p3)
);

unoptimized_conv_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
unoptimized_conv_cud_U7(
    .din0(grp_fu_530_p0),
    .din1(hw_input_global_wrap_q0),
    .din2(grp_fu_530_p2),
    .dout(grp_fu_530_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln394_fu_271_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0)) & (icmp_ln392_fu_245_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        hw_input_global_wrap_1_reg_175 <= c3_reg_541;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        hw_input_global_wrap_1_reg_175 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln391_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        hw_input_global_wrap_2_reg_186 <= 7'd0;
    end else if ((~((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0)) & (icmp_ln392_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        hw_input_global_wrap_2_reg_186 <= c5_fu_251_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln394_fu_271_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hw_output_s0_x_v32_a_reg_209 <= 6'd0;
    end else if ((~((tlast_values_V_val_V_full_n == 1'b0) | (hw_output_stencil_values_V_val_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        hw_output_s0_x_v32_a_reg_209 <= c5_1_reg_580;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln391_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        hw_output_s0_y_v33_a_reg_197 <= 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln395_fu_289_p2 == 1'd1))) begin
        hw_output_s0_y_v33_a_reg_197 <= c3_1_reg_562;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln394_fu_271_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln142_reg_570 <= add_ln142_fu_283_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln187_reg_604 <= add_ln187_fu_326_p2;
        hw_input_global_wrap_7_reg_593 <= hw_input_global_wrap_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln58_2_reg_671[15 : 1] <= add_ln58_2_fu_476_p2[15 : 1];
        add_ln58_reg_666 <= add_ln58_fu_465_p2;
        tmp_i231_reg_661 <= tmp_i231_fu_460_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln58_4_reg_646 <= grp_fu_522_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln58_5_reg_676 <= grp_fu_530_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c3_1_reg_562 <= c3_1_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        c3_reg_541 <= c3_fu_227_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        c5_1_reg_580 <= c5_1_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_11_reg_631 <= empty_11_fu_368_p1;
        hw_input_global_wrap_15_reg_625 <= hw_input_global_wrap_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln391_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        zext_ln392_reg_546[12 : 6] <= zext_ln392_fu_241_p1[12 : 6];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln394_fu_271_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        hw_input_global_wrap_address0 = zext_ln201_5_fu_413_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hw_input_global_wrap_address0 = zext_ln201_2_fu_379_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        hw_input_global_wrap_address0 = zext_ln201_4_fu_363_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        hw_input_global_wrap_address0 = zext_ln201_3_fu_321_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        hw_input_global_wrap_address0 = zext_ln201_fu_309_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        hw_input_global_wrap_address0 = zext_ln321_1_fu_266_p1;
    end else begin
        hw_input_global_wrap_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        hw_input_global_wrap_address1 = zext_ln201_8_fu_424_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hw_input_global_wrap_address1 = zext_ln201_7_fu_390_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        hw_input_global_wrap_address1 = zext_ln201_1_fu_352_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        hw_input_global_wrap_address1 = zext_ln201_6_fu_340_p1;
    end else begin
        hw_input_global_wrap_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (~((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3)))) begin
        hw_input_global_wrap_ce0 = 1'b1;
    end else begin
        hw_input_global_wrap_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        hw_input_global_wrap_ce1 = 1'b1;
    end else begin
        hw_input_global_wrap_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0)) & (icmp_ln392_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        hw_input_global_wrap_we0 = 1'b1;
    end else begin
        hw_input_global_wrap_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln392_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        hw_input_stencil_values_V_val_V_blk_n = hw_input_stencil_values_V_val_V_empty_n;
    end else begin
        hw_input_stencil_values_V_val_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0)) & (icmp_ln392_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        hw_input_stencil_values_V_val_V_read = 1'b1;
    end else begin
        hw_input_stencil_values_V_val_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        hw_output_stencil_values_V_val_V_blk_n = hw_output_stencil_values_V_val_V_full_n;
    end else begin
        hw_output_stencil_values_V_val_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((tlast_values_V_val_V_full_n == 1'b0) | (hw_output_stencil_values_V_val_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        hw_output_stencil_values_V_val_V_write = 1'b1;
    end else begin
        hw_output_stencil_values_V_val_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln394_fu_271_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tlast_values_V_val_V_blk_n = tlast_values_V_val_V_full_n;
    end else begin
        tlast_values_V_val_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((tlast_values_V_val_V_full_n == 1'b0) | (hw_output_stencil_values_V_val_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        tlast_values_V_val_V_write = 1'b1;
    end else begin
        tlast_values_V_val_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln391_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0)) & (icmp_ln392_fu_245_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0)) & (icmp_ln392_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln394_fu_271_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln395_fu_289_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if ((~((tlast_values_V_val_V_full_n == 1'b0) | (hw_output_stencil_values_V_val_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln142_fu_283_p2 = (hw_output_s0_y_v33_a_reg_197 + 6'd2);

assign add_ln187_fu_326_p2 = (6'd2 + hw_output_s0_x_v32_a_reg_209);

assign add_ln321_fu_261_p2 = (zext_ln392_reg_546 + zext_ln321_fu_257_p1);

assign add_ln58_1_fu_470_p2 = (shl_ln34_fu_429_p2 + p_265_fu_444_p2);

assign add_ln58_2_fu_476_p2 = (add_ln58_1_fu_470_p2 + shl_ln45_fu_450_p2);

assign add_ln58_3_fu_501_p2 = (add_ln58_2_reg_671 + add_ln58_reg_666);

assign add_ln58_6_fu_505_p2 = ($signed(add_ln58_5_reg_676) + $signed(tmp1_i_fu_494_p3));

assign add_ln58_7_fu_510_p2 = ($signed(add_ln58_6_fu_505_p2) + $signed(add_ln58_4_reg_646));

assign add_ln58_fu_465_p2 = ($signed(hw_input_global_wrap_q0) + $signed(hw_input_global_wrap_7_reg_593));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state11 = ((tlast_values_V_val_V_full_n == 1'b0) | (hw_output_stencil_values_V_val_V_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state3 = ((icmp_ln392_fu_245_p2 == 1'd0) & (hw_input_stencil_values_V_val_V_empty_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign c3_1_fu_277_p2 = (hw_output_s0_y_v33_a_reg_197 + 6'd1);

assign c3_fu_227_p2 = (hw_input_global_wrap_1_reg_175 + 7'd1);

assign c5_1_fu_295_p2 = (hw_output_s0_x_v32_a_reg_209 + 6'd1);

assign c5_fu_251_p2 = (hw_input_global_wrap_2_reg_186 + 7'd1);

assign empty_10_fu_456_p1 = hw_input_global_wrap_q1[13:0];

assign empty_11_fu_368_p1 = hw_input_global_wrap_q0[13:0];

assign grp_fu_522_p0 = 16'd19;

assign grp_fu_522_p2 = (shl_ln40_fu_395_p2 - hw_input_global_wrap_q1);

assign grp_fu_530_p0 = 16'd21;

assign grp_fu_530_p2 = (shl_ln47_fu_482_p2 - hw_input_global_wrap_q1);

assign hw_output_stencil_values_V_val_V_din = (add_ln58_7_fu_510_p2 + add_ln58_3_fu_501_p2);

assign icmp_ln391_fu_221_p2 = ((hw_input_global_wrap_1_reg_175 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln392_fu_245_p2 = ((hw_input_global_wrap_2_reg_186 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln394_fu_271_p2 = ((hw_output_s0_y_v33_a_reg_197 == 6'd62) ? 1'b1 : 1'b0);

assign icmp_ln395_fu_289_p2 = ((hw_output_s0_x_v32_a_reg_209 == 6'd62) ? 1'b1 : 1'b0);

assign p_265_fu_444_p2 = (shl_ln38_fu_434_p2 - shl_ln38_1_fu_439_p2);

assign shl_ln34_fu_429_p2 = hw_input_global_wrap_7_reg_593 << 16'd4;

assign shl_ln38_1_fu_439_p2 = hw_input_global_wrap_15_reg_625 << 16'd1;

assign shl_ln38_fu_434_p2 = hw_input_global_wrap_15_reg_625 << 16'd3;

assign shl_ln40_fu_395_p2 = hw_input_global_wrap_q1 << 16'd3;

assign shl_ln45_fu_450_p2 = hw_input_global_wrap_q0 << 16'd2;

assign shl_ln47_fu_482_p2 = hw_input_global_wrap_q1 << 16'd4;

assign start_out = real_start;

assign tlast_values_V_val_V_din = 1'd0;

assign tmp1_i_fu_494_p3 = {{tmp_i231_reg_661}, {2'd0}};

assign tmp_1_fu_418_p3 = {{add_ln142_reg_570}, {add_ln187_reg_604}};

assign tmp_2_fu_233_p3 = {{hw_input_global_wrap_1_reg_175}, {6'd0}};

assign tmp_3_fu_301_p3 = {{hw_output_s0_y_v33_a_reg_197}, {hw_output_s0_x_v32_a_reg_209}};

assign tmp_4_fu_345_p3 = {{c3_1_reg_562}, {hw_output_s0_x_v32_a_reg_209}};

assign tmp_5_fu_372_p3 = {{add_ln142_reg_570}, {hw_output_s0_x_v32_a_reg_209}};

assign tmp_6_fu_314_p3 = {{hw_output_s0_y_v33_a_reg_197}, {c5_1_reg_580}};

assign tmp_7_fu_357_p3 = {{c3_1_reg_562}, {c5_1_reg_580}};

assign tmp_8_fu_407_p3 = {{add_ln142_reg_570}, {c5_1_reg_580}};

assign tmp_9_fu_332_p3 = {{hw_output_s0_y_v33_a_reg_197}, {add_ln187_fu_326_p2}};

assign tmp_i231_fu_460_p2 = (empty_10_fu_456_p1 + empty_11_reg_631);

assign tmp_s_fu_384_p3 = {{c3_1_reg_562}, {add_ln187_reg_604}};

assign zext_ln201_1_fu_352_p1 = tmp_4_fu_345_p3;

assign zext_ln201_2_fu_379_p1 = tmp_5_fu_372_p3;

assign zext_ln201_3_fu_321_p1 = tmp_6_fu_314_p3;

assign zext_ln201_4_fu_363_p1 = tmp_7_fu_357_p3;

assign zext_ln201_5_fu_413_p1 = tmp_8_fu_407_p3;

assign zext_ln201_6_fu_340_p1 = tmp_9_fu_332_p3;

assign zext_ln201_7_fu_390_p1 = tmp_s_fu_384_p3;

assign zext_ln201_8_fu_424_p1 = tmp_1_fu_418_p3;

assign zext_ln201_fu_309_p1 = tmp_3_fu_301_p3;

assign zext_ln321_1_fu_266_p1 = add_ln321_fu_261_p2;

assign zext_ln321_fu_257_p1 = hw_input_global_wrap_2_reg_186;

assign zext_ln392_fu_241_p1 = tmp_2_fu_233_p3;

always @ (posedge ap_clk) begin
    zext_ln392_reg_546[5:0] <= 6'b000000;
    zext_ln392_reg_546[13] <= 1'b0;
    add_ln58_2_reg_671[0] <= 1'b0;
end

endmodule //unoptimized_conv_3_3