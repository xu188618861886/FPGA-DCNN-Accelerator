// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _copy_weight_fmem2buf_8_HH_
#define _copy_weight_fmem2buf_8_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct copy_weight_fmem2buf_8 : public sc_module {
    // Port declarations 86
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_weights_AWVALID;
    sc_in< sc_logic > m_axi_weights_AWREADY;
    sc_out< sc_lv<32> > m_axi_weights_AWADDR;
    sc_out< sc_lv<1> > m_axi_weights_AWID;
    sc_out< sc_lv<32> > m_axi_weights_AWLEN;
    sc_out< sc_lv<3> > m_axi_weights_AWSIZE;
    sc_out< sc_lv<2> > m_axi_weights_AWBURST;
    sc_out< sc_lv<2> > m_axi_weights_AWLOCK;
    sc_out< sc_lv<4> > m_axi_weights_AWCACHE;
    sc_out< sc_lv<3> > m_axi_weights_AWPROT;
    sc_out< sc_lv<4> > m_axi_weights_AWQOS;
    sc_out< sc_lv<4> > m_axi_weights_AWREGION;
    sc_out< sc_lv<1> > m_axi_weights_AWUSER;
    sc_out< sc_logic > m_axi_weights_WVALID;
    sc_in< sc_logic > m_axi_weights_WREADY;
    sc_out< sc_lv<16> > m_axi_weights_WDATA;
    sc_out< sc_lv<2> > m_axi_weights_WSTRB;
    sc_out< sc_logic > m_axi_weights_WLAST;
    sc_out< sc_lv<1> > m_axi_weights_WID;
    sc_out< sc_lv<1> > m_axi_weights_WUSER;
    sc_out< sc_logic > m_axi_weights_ARVALID;
    sc_in< sc_logic > m_axi_weights_ARREADY;
    sc_out< sc_lv<32> > m_axi_weights_ARADDR;
    sc_out< sc_lv<1> > m_axi_weights_ARID;
    sc_out< sc_lv<32> > m_axi_weights_ARLEN;
    sc_out< sc_lv<3> > m_axi_weights_ARSIZE;
    sc_out< sc_lv<2> > m_axi_weights_ARBURST;
    sc_out< sc_lv<2> > m_axi_weights_ARLOCK;
    sc_out< sc_lv<4> > m_axi_weights_ARCACHE;
    sc_out< sc_lv<3> > m_axi_weights_ARPROT;
    sc_out< sc_lv<4> > m_axi_weights_ARQOS;
    sc_out< sc_lv<4> > m_axi_weights_ARREGION;
    sc_out< sc_lv<1> > m_axi_weights_ARUSER;
    sc_in< sc_logic > m_axi_weights_RVALID;
    sc_out< sc_logic > m_axi_weights_RREADY;
    sc_in< sc_lv<16> > m_axi_weights_RDATA;
    sc_in< sc_logic > m_axi_weights_RLAST;
    sc_in< sc_lv<1> > m_axi_weights_RID;
    sc_in< sc_lv<1> > m_axi_weights_RUSER;
    sc_in< sc_lv<2> > m_axi_weights_RRESP;
    sc_in< sc_logic > m_axi_weights_BVALID;
    sc_out< sc_logic > m_axi_weights_BREADY;
    sc_in< sc_lv<2> > m_axi_weights_BRESP;
    sc_in< sc_lv<1> > m_axi_weights_BID;
    sc_in< sc_lv<1> > m_axi_weights_BUSER;
    sc_in< sc_lv<31> > weights_offset;
    sc_out< sc_lv<16> > weight_buffer_0_V_din;
    sc_in< sc_logic > weight_buffer_0_V_full_n;
    sc_out< sc_logic > weight_buffer_0_V_write;
    sc_out< sc_lv<16> > weight_buffer_1_V_din;
    sc_in< sc_logic > weight_buffer_1_V_full_n;
    sc_out< sc_logic > weight_buffer_1_V_write;
    sc_out< sc_lv<16> > weight_buffer_2_V_din;
    sc_in< sc_logic > weight_buffer_2_V_full_n;
    sc_out< sc_logic > weight_buffer_2_V_write;
    sc_out< sc_lv<16> > weight_buffer_3_V_din;
    sc_in< sc_logic > weight_buffer_3_V_full_n;
    sc_out< sc_logic > weight_buffer_3_V_write;
    sc_out< sc_lv<16> > weight_buffer_4_V_din;
    sc_in< sc_logic > weight_buffer_4_V_full_n;
    sc_out< sc_logic > weight_buffer_4_V_write;
    sc_out< sc_lv<16> > weight_buffer_5_V_din;
    sc_in< sc_logic > weight_buffer_5_V_full_n;
    sc_out< sc_logic > weight_buffer_5_V_write;
    sc_out< sc_lv<16> > weight_buffer_6_V_din;
    sc_in< sc_logic > weight_buffer_6_V_full_n;
    sc_out< sc_logic > weight_buffer_6_V_write;
    sc_out< sc_lv<16> > weight_buffer_7_V_din;
    sc_in< sc_logic > weight_buffer_7_V_full_n;
    sc_out< sc_logic > weight_buffer_7_V_write;
    sc_out< sc_lv<16> > weight_buffer_8_V_din;
    sc_in< sc_logic > weight_buffer_8_V_full_n;
    sc_out< sc_logic > weight_buffer_8_V_write;
    sc_in< sc_lv<6> > n;
    sc_in< sc_lv<9> > r;
    sc_in< sc_lv<9> > c;
    sc_in< sc_lv<6> > nLoops;
    sc_out< sc_logic > weight_cntl_V_din;
    sc_in< sc_logic > weight_cntl_V_full_n;
    sc_out< sc_logic > weight_cntl_V_write;


    // Module declarations
    copy_weight_fmem2buf_8(sc_module_name name);
    SC_HAS_PROCESS(copy_weight_fmem2buf_8);

    ~copy_weight_fmem2buf_8();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > weights_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > weights_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<4> > i_reg_256;
    sc_signal< sc_lv<4> > i_reg_256_pp0_iter1_reg;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > weights_offset_cast_fu_268_p1;
    sc_signal< sc_lv<32> > weights_offset_cast_reg_358;
    sc_signal< sc_lv<9> > base_addr1_fu_284_p2;
    sc_signal< sc_lv<1> > tmp_536_fu_296_p2;
    sc_signal< sc_lv<1> > tmp_536_reg_368;
    sc_signal< sc_lv<3> > tmp_537_fu_302_p1;
    sc_signal< sc_lv<3> > tmp_537_reg_372;
    sc_signal< sc_lv<2> > tn_2_fu_315_p2;
    sc_signal< sc_lv<2> > tn_2_reg_380;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > weights_addr_reg_385;
    sc_signal< sc_lv<1> > tmp_s_fu_310_p2;
    sc_signal< sc_lv<1> > exitcond_fu_340_p2;
    sc_signal< sc_lv<1> > exitcond_reg_391;
    sc_signal< sc_lv<4> > i_2_fu_346_p2;
    sc_signal< sc_lv<4> > i_2_reg_395;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<16> > tmp_538_reg_400;
    sc_signal< sc_lv<9> > base_addr1_d1_2_fu_352_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state10;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<9> > base_addr1_d_reg_235;
    sc_signal< sc_lv<2> > tn_reg_245;
    sc_signal< sc_lv<4> > ap_phi_mux_i_phi_fu_260_p4;
    sc_signal< sc_lv<64> > sum_cast_fu_330_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_weights_ARREADY;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_weights_ARREADY;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<9> > p_shl_fu_276_p3;
    sc_signal< sc_lv<9> > n_cast3_fu_272_p1;
    sc_signal< sc_lv<9> > tmp_fu_290_p2;
    sc_signal< sc_lv<3> > tn_cast_cast_fu_306_p1;
    sc_signal< sc_lv<32> > tmp_152_cast_fu_321_p1;
    sc_signal< sc_lv<32> > sum_fu_325_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
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
    static const sc_lv<11> ap_ST_fsm_pp0_stage0;
    static const sc_lv<11> ap_ST_fsm_state13;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_9;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<9> ap_const_lv9_9;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter0();
    void thread_ap_block_state11_pp0_stage0_iter1();
    void thread_ap_block_state12_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state10();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_phi_fu_260_p4();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_weights_ARREADY();
    void thread_base_addr1_d1_2_fu_352_p2();
    void thread_base_addr1_fu_284_p2();
    void thread_exitcond_fu_340_p2();
    void thread_i_2_fu_346_p2();
    void thread_m_axi_weights_ARADDR();
    void thread_m_axi_weights_ARBURST();
    void thread_m_axi_weights_ARCACHE();
    void thread_m_axi_weights_ARID();
    void thread_m_axi_weights_ARLEN();
    void thread_m_axi_weights_ARLOCK();
    void thread_m_axi_weights_ARPROT();
    void thread_m_axi_weights_ARQOS();
    void thread_m_axi_weights_ARREGION();
    void thread_m_axi_weights_ARSIZE();
    void thread_m_axi_weights_ARUSER();
    void thread_m_axi_weights_ARVALID();
    void thread_m_axi_weights_AWADDR();
    void thread_m_axi_weights_AWBURST();
    void thread_m_axi_weights_AWCACHE();
    void thread_m_axi_weights_AWID();
    void thread_m_axi_weights_AWLEN();
    void thread_m_axi_weights_AWLOCK();
    void thread_m_axi_weights_AWPROT();
    void thread_m_axi_weights_AWQOS();
    void thread_m_axi_weights_AWREGION();
    void thread_m_axi_weights_AWSIZE();
    void thread_m_axi_weights_AWUSER();
    void thread_m_axi_weights_AWVALID();
    void thread_m_axi_weights_BREADY();
    void thread_m_axi_weights_RREADY();
    void thread_m_axi_weights_WDATA();
    void thread_m_axi_weights_WID();
    void thread_m_axi_weights_WLAST();
    void thread_m_axi_weights_WSTRB();
    void thread_m_axi_weights_WUSER();
    void thread_m_axi_weights_WVALID();
    void thread_n_cast3_fu_272_p1();
    void thread_p_shl_fu_276_p3();
    void thread_sum_cast_fu_330_p1();
    void thread_sum_fu_325_p2();
    void thread_tmp_152_cast_fu_321_p1();
    void thread_tmp_536_fu_296_p2();
    void thread_tmp_537_fu_302_p1();
    void thread_tmp_fu_290_p2();
    void thread_tmp_s_fu_310_p2();
    void thread_tn_2_fu_315_p2();
    void thread_tn_cast_cast_fu_306_p1();
    void thread_weight_buffer_0_V_din();
    void thread_weight_buffer_0_V_write();
    void thread_weight_buffer_1_V_din();
    void thread_weight_buffer_1_V_write();
    void thread_weight_buffer_2_V_din();
    void thread_weight_buffer_2_V_write();
    void thread_weight_buffer_3_V_din();
    void thread_weight_buffer_3_V_write();
    void thread_weight_buffer_4_V_din();
    void thread_weight_buffer_4_V_write();
    void thread_weight_buffer_5_V_din();
    void thread_weight_buffer_5_V_write();
    void thread_weight_buffer_6_V_din();
    void thread_weight_buffer_6_V_write();
    void thread_weight_buffer_7_V_din();
    void thread_weight_buffer_7_V_write();
    void thread_weight_buffer_8_V_din();
    void thread_weight_buffer_8_V_write();
    void thread_weight_cntl_V_din();
    void thread_weight_cntl_V_write();
    void thread_weights_blk_n_AR();
    void thread_weights_blk_n_R();
    void thread_weights_offset_cast_fu_268_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
