// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _unoptimized_conv_3_3_HH_
#define _unoptimized_conv_3_3_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "unoptimized_conv_cud.h"
#include "unoptimized_conv_bkb.h"

namespace ap_rtl {

struct unoptimized_conv_3_3 : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<16> > hw_input_stencil_values_V_val_V_dout;
    sc_in< sc_logic > hw_input_stencil_values_V_val_V_empty_n;
    sc_out< sc_logic > hw_input_stencil_values_V_val_V_read;
    sc_out< sc_lv<16> > hw_output_stencil_values_V_val_V_din;
    sc_in< sc_logic > hw_output_stencil_values_V_val_V_full_n;
    sc_out< sc_logic > hw_output_stencil_values_V_val_V_write;
    sc_out< sc_lv<1> > tlast_values_V_val_V_din;
    sc_in< sc_logic > tlast_values_V_val_V_full_n;
    sc_out< sc_logic > tlast_values_V_val_V_write;


    // Module declarations
    unoptimized_conv_3_3(sc_module_name name);
    SC_HAS_PROCESS(unoptimized_conv_3_3);

    ~unoptimized_conv_3_3();

    sc_trace_file* mVcdFile;

    unoptimized_conv_bkb* hw_input_global_wrap_U;
    unoptimized_conv_cud<1,1,6,16,16,16>* unoptimized_conv_cud_U6;
    unoptimized_conv_cud<1,1,6,16,16,16>* unoptimized_conv_cud_U7;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > hw_input_stencil_values_V_val_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln392_fu_245_p2;
    sc_signal< sc_logic > hw_output_stencil_values_V_val_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > tlast_values_V_val_V_blk_n;
    sc_signal< sc_lv<7> > c3_fu_227_p2;
    sc_signal< sc_lv<7> > c3_reg_541;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<14> > zext_ln392_fu_241_p1;
    sc_signal< sc_lv<14> > zext_ln392_reg_546;
    sc_signal< sc_lv<1> > icmp_ln391_fu_221_p2;
    sc_signal< sc_lv<7> > c5_fu_251_p2;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<6> > c3_1_fu_277_p2;
    sc_signal< sc_lv<6> > c3_1_reg_562;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > add_ln142_fu_283_p2;
    sc_signal< sc_lv<6> > add_ln142_reg_570;
    sc_signal< sc_lv<1> > icmp_ln394_fu_271_p2;
    sc_signal< sc_lv<6> > c5_1_fu_295_p2;
    sc_signal< sc_lv<6> > c5_1_reg_580;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln395_fu_289_p2;
    sc_signal< sc_lv<16> > hw_input_global_wrap_q0;
    sc_signal< sc_lv<16> > hw_input_global_wrap_7_reg_593;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > add_ln187_fu_326_p2;
    sc_signal< sc_lv<6> > add_ln187_reg_604;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<16> > hw_input_global_wrap_q1;
    sc_signal< sc_lv<16> > hw_input_global_wrap_15_reg_625;
    sc_signal< sc_lv<14> > empty_11_fu_368_p1;
    sc_signal< sc_lv<14> > empty_11_reg_631;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<16> > grp_fu_522_p3;
    sc_signal< sc_lv<16> > add_ln58_4_reg_646;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<14> > tmp_i231_fu_460_p2;
    sc_signal< sc_lv<14> > tmp_i231_reg_661;
    sc_signal< sc_lv<16> > add_ln58_fu_465_p2;
    sc_signal< sc_lv<16> > add_ln58_reg_666;
    sc_signal< sc_lv<16> > add_ln58_2_fu_476_p2;
    sc_signal< sc_lv<16> > add_ln58_2_reg_671;
    sc_signal< sc_lv<16> > grp_fu_530_p3;
    sc_signal< sc_lv<16> > add_ln58_5_reg_676;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<12> > hw_input_global_wrap_address0;
    sc_signal< sc_logic > hw_input_global_wrap_ce0;
    sc_signal< sc_logic > hw_input_global_wrap_we0;
    sc_signal< sc_lv<12> > hw_input_global_wrap_address1;
    sc_signal< sc_logic > hw_input_global_wrap_ce1;
    sc_signal< sc_lv<7> > hw_input_global_wrap_1_reg_175;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<7> > hw_input_global_wrap_2_reg_186;
    sc_signal< sc_lv<6> > hw_output_s0_y_v33_a_reg_197;
    sc_signal< sc_lv<6> > hw_output_s0_x_v32_a_reg_209;
    sc_signal< bool > ap_block_state11;
    sc_signal< sc_lv<64> > zext_ln321_1_fu_266_p1;
    sc_signal< sc_lv<64> > zext_ln201_fu_309_p1;
    sc_signal< sc_lv<64> > zext_ln201_3_fu_321_p1;
    sc_signal< sc_lv<64> > zext_ln201_6_fu_340_p1;
    sc_signal< sc_lv<64> > zext_ln201_1_fu_352_p1;
    sc_signal< sc_lv<64> > zext_ln201_4_fu_363_p1;
    sc_signal< sc_lv<64> > zext_ln201_2_fu_379_p1;
    sc_signal< sc_lv<64> > zext_ln201_7_fu_390_p1;
    sc_signal< sc_lv<64> > zext_ln201_5_fu_413_p1;
    sc_signal< sc_lv<64> > zext_ln201_8_fu_424_p1;
    sc_signal< sc_lv<13> > tmp_2_fu_233_p3;
    sc_signal< sc_lv<14> > zext_ln321_fu_257_p1;
    sc_signal< sc_lv<14> > add_ln321_fu_261_p2;
    sc_signal< sc_lv<12> > tmp_3_fu_301_p3;
    sc_signal< sc_lv<12> > tmp_6_fu_314_p3;
    sc_signal< sc_lv<12> > tmp_9_fu_332_p3;
    sc_signal< sc_lv<12> > tmp_4_fu_345_p3;
    sc_signal< sc_lv<12> > tmp_7_fu_357_p3;
    sc_signal< sc_lv<12> > tmp_5_fu_372_p3;
    sc_signal< sc_lv<12> > tmp_s_fu_384_p3;
    sc_signal< sc_lv<16> > shl_ln40_fu_395_p2;
    sc_signal< sc_lv<12> > tmp_8_fu_407_p3;
    sc_signal< sc_lv<12> > tmp_1_fu_418_p3;
    sc_signal< sc_lv<16> > shl_ln38_fu_434_p2;
    sc_signal< sc_lv<16> > shl_ln38_1_fu_439_p2;
    sc_signal< sc_lv<14> > empty_10_fu_456_p1;
    sc_signal< sc_lv<16> > shl_ln34_fu_429_p2;
    sc_signal< sc_lv<16> > p_265_fu_444_p2;
    sc_signal< sc_lv<16> > add_ln58_1_fu_470_p2;
    sc_signal< sc_lv<16> > shl_ln45_fu_450_p2;
    sc_signal< sc_lv<16> > shl_ln47_fu_482_p2;
    sc_signal< sc_lv<16> > tmp1_i_fu_494_p3;
    sc_signal< sc_lv<16> > add_ln58_6_fu_505_p2;
    sc_signal< sc_lv<16> > add_ln58_7_fu_510_p2;
    sc_signal< sc_lv<16> > add_ln58_3_fu_501_p2;
    sc_signal< sc_lv<6> > grp_fu_522_p0;
    sc_signal< sc_lv<16> > grp_fu_522_p2;
    sc_signal< sc_lv<6> > grp_fu_530_p0;
    sc_signal< sc_lv<16> > grp_fu_530_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<6> ap_const_lv6_3E;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<16> ap_const_lv16_3;
    static const sc_lv<16> ap_const_lv16_4;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<16> ap_const_lv16_2;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<16> ap_const_lv16_13;
    static const sc_lv<16> ap_const_lv16_15;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln142_fu_283_p2();
    void thread_add_ln187_fu_326_p2();
    void thread_add_ln321_fu_261_p2();
    void thread_add_ln58_1_fu_470_p2();
    void thread_add_ln58_2_fu_476_p2();
    void thread_add_ln58_3_fu_501_p2();
    void thread_add_ln58_6_fu_505_p2();
    void thread_add_ln58_7_fu_510_p2();
    void thread_add_ln58_fu_465_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state11();
    void thread_ap_block_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c3_1_fu_277_p2();
    void thread_c3_fu_227_p2();
    void thread_c5_1_fu_295_p2();
    void thread_c5_fu_251_p2();
    void thread_empty_10_fu_456_p1();
    void thread_empty_11_fu_368_p1();
    void thread_grp_fu_522_p0();
    void thread_grp_fu_522_p2();
    void thread_grp_fu_530_p0();
    void thread_grp_fu_530_p2();
    void thread_hw_input_global_wrap_address0();
    void thread_hw_input_global_wrap_address1();
    void thread_hw_input_global_wrap_ce0();
    void thread_hw_input_global_wrap_ce1();
    void thread_hw_input_global_wrap_we0();
    void thread_hw_input_stencil_values_V_val_V_blk_n();
    void thread_hw_input_stencil_values_V_val_V_read();
    void thread_hw_output_stencil_values_V_val_V_blk_n();
    void thread_hw_output_stencil_values_V_val_V_din();
    void thread_hw_output_stencil_values_V_val_V_write();
    void thread_icmp_ln391_fu_221_p2();
    void thread_icmp_ln392_fu_245_p2();
    void thread_icmp_ln394_fu_271_p2();
    void thread_icmp_ln395_fu_289_p2();
    void thread_internal_ap_ready();
    void thread_p_265_fu_444_p2();
    void thread_real_start();
    void thread_shl_ln34_fu_429_p2();
    void thread_shl_ln38_1_fu_439_p2();
    void thread_shl_ln38_fu_434_p2();
    void thread_shl_ln40_fu_395_p2();
    void thread_shl_ln45_fu_450_p2();
    void thread_shl_ln47_fu_482_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_tlast_values_V_val_V_blk_n();
    void thread_tlast_values_V_val_V_din();
    void thread_tlast_values_V_val_V_write();
    void thread_tmp1_i_fu_494_p3();
    void thread_tmp_1_fu_418_p3();
    void thread_tmp_2_fu_233_p3();
    void thread_tmp_3_fu_301_p3();
    void thread_tmp_4_fu_345_p3();
    void thread_tmp_5_fu_372_p3();
    void thread_tmp_6_fu_314_p3();
    void thread_tmp_7_fu_357_p3();
    void thread_tmp_8_fu_407_p3();
    void thread_tmp_9_fu_332_p3();
    void thread_tmp_i231_fu_460_p2();
    void thread_tmp_s_fu_384_p3();
    void thread_zext_ln201_1_fu_352_p1();
    void thread_zext_ln201_2_fu_379_p1();
    void thread_zext_ln201_3_fu_321_p1();
    void thread_zext_ln201_4_fu_363_p1();
    void thread_zext_ln201_5_fu_413_p1();
    void thread_zext_ln201_6_fu_340_p1();
    void thread_zext_ln201_7_fu_390_p1();
    void thread_zext_ln201_8_fu_424_p1();
    void thread_zext_ln201_fu_309_p1();
    void thread_zext_ln321_1_fu_266_p1();
    void thread_zext_ln321_fu_257_p1();
    void thread_zext_ln392_fu_241_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif