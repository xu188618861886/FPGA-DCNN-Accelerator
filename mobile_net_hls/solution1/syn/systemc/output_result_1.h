// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _output_result_1_HH_
#define _output_result_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct output_result_1 : public sc_module {
    // Port declarations 73
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_outputs_AWVALID;
    sc_in< sc_logic > m_axi_outputs_AWREADY;
    sc_out< sc_lv<32> > m_axi_outputs_AWADDR;
    sc_out< sc_lv<1> > m_axi_outputs_AWID;
    sc_out< sc_lv<32> > m_axi_outputs_AWLEN;
    sc_out< sc_lv<3> > m_axi_outputs_AWSIZE;
    sc_out< sc_lv<2> > m_axi_outputs_AWBURST;
    sc_out< sc_lv<2> > m_axi_outputs_AWLOCK;
    sc_out< sc_lv<4> > m_axi_outputs_AWCACHE;
    sc_out< sc_lv<3> > m_axi_outputs_AWPROT;
    sc_out< sc_lv<4> > m_axi_outputs_AWQOS;
    sc_out< sc_lv<4> > m_axi_outputs_AWREGION;
    sc_out< sc_lv<1> > m_axi_outputs_AWUSER;
    sc_out< sc_logic > m_axi_outputs_WVALID;
    sc_in< sc_logic > m_axi_outputs_WREADY;
    sc_out< sc_lv<16> > m_axi_outputs_WDATA;
    sc_out< sc_lv<2> > m_axi_outputs_WSTRB;
    sc_out< sc_logic > m_axi_outputs_WLAST;
    sc_out< sc_lv<1> > m_axi_outputs_WID;
    sc_out< sc_lv<1> > m_axi_outputs_WUSER;
    sc_out< sc_logic > m_axi_outputs_ARVALID;
    sc_in< sc_logic > m_axi_outputs_ARREADY;
    sc_out< sc_lv<32> > m_axi_outputs_ARADDR;
    sc_out< sc_lv<1> > m_axi_outputs_ARID;
    sc_out< sc_lv<32> > m_axi_outputs_ARLEN;
    sc_out< sc_lv<3> > m_axi_outputs_ARSIZE;
    sc_out< sc_lv<2> > m_axi_outputs_ARBURST;
    sc_out< sc_lv<2> > m_axi_outputs_ARLOCK;
    sc_out< sc_lv<4> > m_axi_outputs_ARCACHE;
    sc_out< sc_lv<3> > m_axi_outputs_ARPROT;
    sc_out< sc_lv<4> > m_axi_outputs_ARQOS;
    sc_out< sc_lv<4> > m_axi_outputs_ARREGION;
    sc_out< sc_lv<1> > m_axi_outputs_ARUSER;
    sc_in< sc_logic > m_axi_outputs_RVALID;
    sc_out< sc_logic > m_axi_outputs_RREADY;
    sc_in< sc_lv<16> > m_axi_outputs_RDATA;
    sc_in< sc_logic > m_axi_outputs_RLAST;
    sc_in< sc_lv<1> > m_axi_outputs_RID;
    sc_in< sc_lv<1> > m_axi_outputs_RUSER;
    sc_in< sc_lv<2> > m_axi_outputs_RRESP;
    sc_in< sc_logic > m_axi_outputs_BVALID;
    sc_out< sc_logic > m_axi_outputs_BREADY;
    sc_in< sc_lv<2> > m_axi_outputs_BRESP;
    sc_in< sc_lv<1> > m_axi_outputs_BID;
    sc_in< sc_lv<1> > m_axi_outputs_BUSER;
    sc_in< sc_lv<31> > outputs_offset_dout;
    sc_in< sc_logic > outputs_offset_empty_n;
    sc_out< sc_logic > outputs_offset_read;
    sc_in< sc_lv<3> > outputs_offset_c_dout;
    sc_in< sc_logic > outputs_offset_c_empty_n;
    sc_out< sc_logic > outputs_offset_c_read;
    sc_in< sc_lv<16> > output_buffer_V_dout;
    sc_in< sc_logic > output_buffer_V_empty_n;
    sc_out< sc_logic > output_buffer_V_read;
    sc_in< sc_logic > result_buffer_V_dout;
    sc_in< sc_logic > result_buffer_V_empty_n;
    sc_out< sc_logic > result_buffer_V_read;
    sc_in< sc_lv<32> > result_m_V_dout;
    sc_in< sc_logic > result_m_V_empty_n;
    sc_out< sc_logic > result_m_V_read;
    sc_in< sc_lv<32> > result_n_V_dout;
    sc_in< sc_logic > result_n_V_empty_n;
    sc_out< sc_logic > result_n_V_read;
    sc_out< sc_logic > cntl_V_din;
    sc_in< sc_logic > cntl_V_full_n;
    sc_out< sc_logic > cntl_V_write;


    // Module declarations
    output_result_1(sc_module_name name);
    SC_HAS_PROCESS(output_result_1);

    ~output_result_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > outputs_blk_n_AW;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > outputs_blk_n_W;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_87_i_i_i_reg_296;
    sc_signal< sc_logic > outputs_blk_n_B;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > tmp_85_i_i_i_reg_281;
    sc_signal< sc_logic > outputs_offset_blk_n;
    sc_signal< sc_logic > outputs_offset_c_blk_n;
    sc_signal< sc_logic > cntl_V_blk_n;
    sc_signal< sc_lv<1> > tmp_277_fu_258_p1;
    sc_signal< sc_lv<31> > i_0_i_i_i_i_reg_157;
    sc_signal< sc_lv<33> > outputs_offset_cast_s_fu_168_p1;
    sc_signal< sc_lv<33> > outputs_offset_cast_s_reg_262;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<34> > sext_cast_i_i_fu_172_p1;
    sc_signal< sc_lv<34> > sext_cast_i_i_reg_267;
    sc_signal< sc_lv<32> > mLoops_fu_198_p3;
    sc_signal< sc_lv<32> > mLoops_reg_275;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_102_p3;
    sc_signal< sc_lv<1> > tmp_85_i_i_i_fu_206_p2;
    sc_signal< sc_lv<33> > tmp_39_i_i_fu_216_p2;
    sc_signal< sc_lv<33> > tmp_39_i_i_reg_285;
    sc_signal< sc_lv<32> > outputs_addr_reg_290;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_87_i_i_i_fu_243_p2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_outputs_WREADY;
    sc_signal< bool > ap_block_state7_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<31> > i_fu_248_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<16> > tmp_276_reg_305;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_outputs_AWREADY;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state6;
    sc_signal< sc_lv<64> > sum_cast_i_i_fu_229_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_outputs_AWREADY;
    sc_signal< bool > ap_block_state12;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_outputs_WREADY;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > tmp_271_fu_184_p1;
    sc_signal< sc_lv<32> > tmp_84_i_i_i_fu_192_p1;
    sc_signal< sc_lv<1> > tmp_271_fu_184_p3;
    sc_signal< sc_lv<32> > tmp_84_i_i_i_fu_192_p2;
    sc_signal< sc_lv<32> > tmp_cast_i_i_fu_212_p0;
    sc_signal< sc_lv<33> > tmp_cast_i_i_fu_212_p1;
    sc_signal< sc_lv<34> > tmp_39_cast_i_i_fu_221_p1;
    sc_signal< sc_lv<34> > sum_i_i_fu_224_p2;
    sc_signal< sc_lv<32> > i_0_i_cast_i_i_i_fu_239_p1;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_410;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_pp0_stage0;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<11> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_1DF;
    static const sc_lv<31> ap_const_lv31_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state12();
    void thread_ap_block_state6_pp0_stage0_iter0();
    void thread_ap_block_state7_io();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_condition_410();
    void thread_ap_condition_pp0_exit_iter0_state6();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_outputs_AWREADY();
    void thread_ap_sig_ioackin_m_axi_outputs_WREADY();
    void thread_cntl_V_blk_n();
    void thread_cntl_V_din();
    void thread_cntl_V_write();
    void thread_i_0_i_cast_i_i_i_fu_239_p1();
    void thread_i_fu_248_p2();
    void thread_mLoops_fu_198_p3();
    void thread_m_axi_outputs_ARADDR();
    void thread_m_axi_outputs_ARBURST();
    void thread_m_axi_outputs_ARCACHE();
    void thread_m_axi_outputs_ARID();
    void thread_m_axi_outputs_ARLEN();
    void thread_m_axi_outputs_ARLOCK();
    void thread_m_axi_outputs_ARPROT();
    void thread_m_axi_outputs_ARQOS();
    void thread_m_axi_outputs_ARREGION();
    void thread_m_axi_outputs_ARSIZE();
    void thread_m_axi_outputs_ARUSER();
    void thread_m_axi_outputs_ARVALID();
    void thread_m_axi_outputs_AWADDR();
    void thread_m_axi_outputs_AWBURST();
    void thread_m_axi_outputs_AWCACHE();
    void thread_m_axi_outputs_AWID();
    void thread_m_axi_outputs_AWLEN();
    void thread_m_axi_outputs_AWLOCK();
    void thread_m_axi_outputs_AWPROT();
    void thread_m_axi_outputs_AWQOS();
    void thread_m_axi_outputs_AWREGION();
    void thread_m_axi_outputs_AWSIZE();
    void thread_m_axi_outputs_AWUSER();
    void thread_m_axi_outputs_AWVALID();
    void thread_m_axi_outputs_BREADY();
    void thread_m_axi_outputs_RREADY();
    void thread_m_axi_outputs_WDATA();
    void thread_m_axi_outputs_WID();
    void thread_m_axi_outputs_WLAST();
    void thread_m_axi_outputs_WSTRB();
    void thread_m_axi_outputs_WUSER();
    void thread_m_axi_outputs_WVALID();
    void thread_output_buffer_V_read();
    void thread_outputs_blk_n_AW();
    void thread_outputs_blk_n_B();
    void thread_outputs_blk_n_W();
    void thread_outputs_offset_blk_n();
    void thread_outputs_offset_c_blk_n();
    void thread_outputs_offset_c_read();
    void thread_outputs_offset_cast_s_fu_168_p1();
    void thread_outputs_offset_read();
    void thread_result_buffer_V_read();
    void thread_result_m_V_read();
    void thread_result_n_V_read();
    void thread_sext_cast_i_i_fu_172_p1();
    void thread_sum_cast_i_i_fu_229_p1();
    void thread_sum_i_i_fu_224_p2();
    void thread_tmp_271_fu_184_p1();
    void thread_tmp_271_fu_184_p3();
    void thread_tmp_277_fu_258_p1();
    void thread_tmp_39_cast_i_i_fu_221_p1();
    void thread_tmp_39_i_i_fu_216_p2();
    void thread_tmp_84_i_i_i_fu_192_p1();
    void thread_tmp_84_i_i_i_fu_192_p2();
    void thread_tmp_85_i_i_i_fu_206_p2();
    void thread_tmp_87_i_i_i_fu_243_p2();
    void thread_tmp_cast_i_i_fu_212_p0();
    void thread_tmp_cast_i_i_fu_212_p1();
    void thread_tmp_nbreadreq_fu_102_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
