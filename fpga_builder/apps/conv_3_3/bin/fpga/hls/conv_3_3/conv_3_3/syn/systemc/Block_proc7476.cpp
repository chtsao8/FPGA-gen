// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Block_proc7476.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Block_proc7476::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Block_proc7476::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> Block_proc7476::ap_ST_fsm_state1 = "1";
const sc_lv<2> Block_proc7476::ap_ST_fsm_state2 = "10";
const sc_lv<32> Block_proc7476::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Block_proc7476::ap_const_lv32_1 = "1";
const bool Block_proc7476::ap_const_boolean_1 = true;

Block_proc7476::Block_proc7476(sc_module_name name) : sc_module(name), mVcdFile(0) {
    regslice_both_arg_out_V_data_V_U = new regslice_both<16>("regslice_both_arg_out_V_data_V_U");
    regslice_both_arg_out_V_data_V_U->ap_clk(ap_clk);
    regslice_both_arg_out_V_data_V_U->ap_rst(ap_rst);
    regslice_both_arg_out_V_data_V_U->data_in(val_assign);
    regslice_both_arg_out_V_data_V_U->vld_in(arg_out_TVALID_int);
    regslice_both_arg_out_V_data_V_U->ack_in(arg_out_TREADY_int);
    regslice_both_arg_out_V_data_V_U->data_out(arg_out_TDATA);
    regslice_both_arg_out_V_data_V_U->vld_out(regslice_both_arg_out_V_data_V_U_vld_out);
    regslice_both_arg_out_V_data_V_U->ack_out(arg_out_TREADY);
    regslice_both_arg_out_V_data_V_U->apdone_blk(regslice_both_arg_out_V_data_V_U_apdone_blk);
    regslice_both_arg_out_V_tlast_V_U = new regslice_both<1>("regslice_both_arg_out_V_tlast_V_U");
    regslice_both_arg_out_V_tlast_V_U->ap_clk(ap_clk);
    regslice_both_arg_out_V_tlast_V_U->ap_rst(ap_rst);
    regslice_both_arg_out_V_tlast_V_U->data_in(val_assign_1);
    regslice_both_arg_out_V_tlast_V_U->vld_in(arg_out_TVALID_int);
    regslice_both_arg_out_V_tlast_V_U->ack_in(regslice_both_arg_out_V_tlast_V_U_ack_in_dummy);
    regslice_both_arg_out_V_tlast_V_U->data_out(arg_out_TLAST);
    regslice_both_arg_out_V_tlast_V_U->vld_out(regslice_both_arg_out_V_tlast_V_U_vld_out);
    regslice_both_arg_out_V_tlast_V_U->ack_out(arg_out_TREADY);
    regslice_both_arg_out_V_tlast_V_U->apdone_blk(regslice_both_arg_out_V_tlast_V_U_apdone_blk);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( regslice_both_arg_out_V_data_V_U_apdone_blk );
    sensitive << ( arg_out_TREADY_int );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( regslice_both_arg_out_V_data_V_U_apdone_blk );
    sensitive << ( arg_out_TREADY_int );

    SC_METHOD(thread_arg_out_TDATA_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( arg_out_TREADY_int );

    SC_METHOD(thread_arg_out_TVALID);
    sensitive << ( regslice_both_arg_out_V_data_V_U_vld_out );

    SC_METHOD(thread_arg_out_TVALID_int);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( arg_out_TREADY_int );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( regslice_both_arg_out_V_data_V_U_apdone_blk );
    sensitive << ( arg_out_TREADY_int );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Block_proc7476_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, val_assign, "(port)val_assign");
    sc_trace(mVcdFile, val_assign_1, "(port)val_assign_1");
    sc_trace(mVcdFile, arg_out_TDATA, "(port)arg_out_TDATA");
    sc_trace(mVcdFile, arg_out_TVALID, "(port)arg_out_TVALID");
    sc_trace(mVcdFile, arg_out_TREADY, "(port)arg_out_TREADY");
    sc_trace(mVcdFile, arg_out_TLAST, "(port)arg_out_TLAST");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, arg_out_TDATA_blk_n, "arg_out_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, regslice_both_arg_out_V_data_V_U_apdone_blk, "regslice_both_arg_out_V_data_V_U_apdone_blk");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, arg_out_TVALID_int, "arg_out_TVALID_int");
    sc_trace(mVcdFile, arg_out_TREADY_int, "arg_out_TREADY_int");
    sc_trace(mVcdFile, regslice_both_arg_out_V_data_V_U_vld_out, "regslice_both_arg_out_V_data_V_U_vld_out");
    sc_trace(mVcdFile, regslice_both_arg_out_V_tlast_V_U_apdone_blk, "regslice_both_arg_out_V_tlast_V_U_apdone_blk");
    sc_trace(mVcdFile, regslice_both_arg_out_V_tlast_V_U_ack_in_dummy, "regslice_both_arg_out_V_tlast_V_U_ack_in_dummy");
    sc_trace(mVcdFile, regslice_both_arg_out_V_tlast_V_U_vld_out, "regslice_both_arg_out_V_tlast_V_U_vld_out");
#endif

    }
}

Block_proc7476::~Block_proc7476() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete regslice_both_arg_out_V_data_V_U;
    delete regslice_both_arg_out_V_tlast_V_U;
}

void Block_proc7476::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_arg_out_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_logic_0, arg_out_TREADY_int.read())))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
}

void Block_proc7476::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Block_proc7476::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Block_proc7476::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Block_proc7476::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_arg_out_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_logic_0, arg_out_TREADY_int.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Block_proc7476::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Block_proc7476::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_arg_out_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_logic_0, arg_out_TREADY_int.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Block_proc7476::thread_arg_out_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        arg_out_TDATA_blk_n = arg_out_TREADY_int.read();
    } else {
        arg_out_TDATA_blk_n = ap_const_logic_1;
    }
}

void Block_proc7476::thread_arg_out_TVALID() {
    arg_out_TVALID = regslice_both_arg_out_V_data_V_U_vld_out.read();
}

void Block_proc7476::thread_arg_out_TVALID_int() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, arg_out_TREADY_int.read())))) {
        arg_out_TVALID_int = ap_const_logic_1;
    } else {
        arg_out_TVALID_int = ap_const_logic_0;
    }
}

void Block_proc7476::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, arg_out_TREADY_int.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !(esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_arg_out_V_data_V_U_apdone_blk.read()) || esl_seteq<1,1,1>(ap_const_logic_0, arg_out_TREADY_int.read())))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}
