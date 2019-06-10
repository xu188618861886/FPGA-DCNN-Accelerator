// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "copy_beta_fmem2buffe_3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic copy_beta_fmem2buffe_3::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic copy_beta_fmem2buffe_3::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state1 = "1";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state2 = "10";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state3 = "100";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state4 = "1000";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state5 = "10000";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state6 = "100000";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state7 = "1000000";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state8 = "10000000";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_pp0_stage0 = "100000000";
const sc_lv<10> copy_beta_fmem2buffe_3::ap_ST_fsm_state12 = "1000000000";
const bool copy_beta_fmem2buffe_3::ap_const_boolean_1 = true;
const sc_lv<32> copy_beta_fmem2buffe_3::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> copy_beta_fmem2buffe_3::ap_const_lv1_0 = "0";
const sc_lv<3> copy_beta_fmem2buffe_3::ap_const_lv3_0 = "000";
const sc_lv<2> copy_beta_fmem2buffe_3::ap_const_lv2_0 = "00";
const sc_lv<4> copy_beta_fmem2buffe_3::ap_const_lv4_0 = "0000";
const sc_lv<16> copy_beta_fmem2buffe_3::ap_const_lv16_0 = "0000000000000000";
const sc_lv<32> copy_beta_fmem2buffe_3::ap_const_lv32_1 = "1";
const sc_lv<32> copy_beta_fmem2buffe_3::ap_const_lv32_8 = "1000";
const bool copy_beta_fmem2buffe_3::ap_const_boolean_0 = false;
const sc_lv<32> copy_beta_fmem2buffe_3::ap_const_lv32_7 = "111";
const sc_lv<1> copy_beta_fmem2buffe_3::ap_const_lv1_1 = "1";
const sc_lv<32> copy_beta_fmem2buffe_3::ap_const_lv32_9 = "1001";
const sc_lv<2> copy_beta_fmem2buffe_3::ap_const_lv2_1 = "1";

copy_beta_fmem2buffe_3::copy_beta_fmem2buffe_3(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state12);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( m_axi_betas_RVALID );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_185 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( m_axi_betas_RVALID );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_185 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( m_axi_betas_RVALID );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_185 );

    SC_METHOD(thread_ap_block_state10_pp0_stage0_iter1);
    sensitive << ( m_axi_betas_RVALID );
    sensitive << ( exitcond_reg_185 );

    SC_METHOD(thread_ap_block_state11_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state9_pp0_stage0_iter0);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state9);
    sensitive << ( exitcond_fu_158_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_ap_sig_ioackin_m_axi_betas_ARREADY);
    sensitive << ( m_axi_betas_ARREADY );
    sensitive << ( ap_reg_ioackin_m_axi_betas_ARREADY );

    SC_METHOD(thread_beta_buffer_V_din);
    sensitive << ( exitcond_reg_185_pp0_iter1_reg );
    sensitive << ( tmp_632_reg_194 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_beta_buffer_V_write);
    sensitive << ( beta_buffer_V_full_n );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( exitcond_reg_185_pp0_iter1_reg );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_beta_cntl_V_din);
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_beta_cntl_V_write);
    sensitive << ( beta_cntl_V_full_n );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_betas_blk_n_AR);
    sensitive << ( m_axi_betas_ARREADY );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_betas_blk_n_R);
    sensitive << ( m_axi_betas_RVALID );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_reg_185 );

    SC_METHOD(thread_betas_offset_cast_fu_129_p1);
    sensitive << ( betas_offset );

    SC_METHOD(thread_exitcond_fu_158_p2);
    sensitive << ( nLoops );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( i_reg_118 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_i_25_fu_163_p2);
    sensitive << ( i_reg_118 );

    SC_METHOD(thread_m_axi_betas_ARADDR);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( betas_addr_reg_169 );
    sensitive << ( ap_reg_ioackin_m_axi_betas_ARREADY );

    SC_METHOD(thread_m_axi_betas_ARBURST);

    SC_METHOD(thread_m_axi_betas_ARCACHE);

    SC_METHOD(thread_m_axi_betas_ARID);

    SC_METHOD(thread_m_axi_betas_ARLEN);
    sensitive << ( nLoops );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_reg_ioackin_m_axi_betas_ARREADY );

    SC_METHOD(thread_m_axi_betas_ARLOCK);

    SC_METHOD(thread_m_axi_betas_ARPROT);

    SC_METHOD(thread_m_axi_betas_ARQOS);

    SC_METHOD(thread_m_axi_betas_ARREGION);

    SC_METHOD(thread_m_axi_betas_ARSIZE);

    SC_METHOD(thread_m_axi_betas_ARUSER);

    SC_METHOD(thread_m_axi_betas_ARVALID);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_reg_ioackin_m_axi_betas_ARREADY );

    SC_METHOD(thread_m_axi_betas_AWADDR);

    SC_METHOD(thread_m_axi_betas_AWBURST);

    SC_METHOD(thread_m_axi_betas_AWCACHE);

    SC_METHOD(thread_m_axi_betas_AWID);

    SC_METHOD(thread_m_axi_betas_AWLEN);

    SC_METHOD(thread_m_axi_betas_AWLOCK);

    SC_METHOD(thread_m_axi_betas_AWPROT);

    SC_METHOD(thread_m_axi_betas_AWQOS);

    SC_METHOD(thread_m_axi_betas_AWREGION);

    SC_METHOD(thread_m_axi_betas_AWSIZE);

    SC_METHOD(thread_m_axi_betas_AWUSER);

    SC_METHOD(thread_m_axi_betas_AWVALID);

    SC_METHOD(thread_m_axi_betas_BREADY);

    SC_METHOD(thread_m_axi_betas_RREADY);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_185 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_m_axi_betas_WDATA);

    SC_METHOD(thread_m_axi_betas_WID);

    SC_METHOD(thread_m_axi_betas_WLAST);

    SC_METHOD(thread_m_axi_betas_WSTRB);

    SC_METHOD(thread_m_axi_betas_WUSER);

    SC_METHOD(thread_m_axi_betas_WVALID);

    SC_METHOD(thread_sum_cast_fu_143_p1);
    sensitive << ( sum_fu_137_p2 );

    SC_METHOD(thread_sum_fu_137_p2);
    sensitive << ( tmp_cast_fu_133_p1 );
    sensitive << ( betas_offset_cast_fu_129_p1 );

    SC_METHOD(thread_tmp_cast_fu_133_p1);
    sensitive << ( n );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_sig_ioackin_m_axi_betas_ARREADY );
    sensitive << ( exitcond_fu_158_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_CS_fsm = "0000000001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    ap_reg_ioackin_m_axi_betas_ARREADY = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "copy_beta_fmem2buffe_3_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, m_axi_betas_AWVALID, "(port)m_axi_betas_AWVALID");
    sc_trace(mVcdFile, m_axi_betas_AWREADY, "(port)m_axi_betas_AWREADY");
    sc_trace(mVcdFile, m_axi_betas_AWADDR, "(port)m_axi_betas_AWADDR");
    sc_trace(mVcdFile, m_axi_betas_AWID, "(port)m_axi_betas_AWID");
    sc_trace(mVcdFile, m_axi_betas_AWLEN, "(port)m_axi_betas_AWLEN");
    sc_trace(mVcdFile, m_axi_betas_AWSIZE, "(port)m_axi_betas_AWSIZE");
    sc_trace(mVcdFile, m_axi_betas_AWBURST, "(port)m_axi_betas_AWBURST");
    sc_trace(mVcdFile, m_axi_betas_AWLOCK, "(port)m_axi_betas_AWLOCK");
    sc_trace(mVcdFile, m_axi_betas_AWCACHE, "(port)m_axi_betas_AWCACHE");
    sc_trace(mVcdFile, m_axi_betas_AWPROT, "(port)m_axi_betas_AWPROT");
    sc_trace(mVcdFile, m_axi_betas_AWQOS, "(port)m_axi_betas_AWQOS");
    sc_trace(mVcdFile, m_axi_betas_AWREGION, "(port)m_axi_betas_AWREGION");
    sc_trace(mVcdFile, m_axi_betas_AWUSER, "(port)m_axi_betas_AWUSER");
    sc_trace(mVcdFile, m_axi_betas_WVALID, "(port)m_axi_betas_WVALID");
    sc_trace(mVcdFile, m_axi_betas_WREADY, "(port)m_axi_betas_WREADY");
    sc_trace(mVcdFile, m_axi_betas_WDATA, "(port)m_axi_betas_WDATA");
    sc_trace(mVcdFile, m_axi_betas_WSTRB, "(port)m_axi_betas_WSTRB");
    sc_trace(mVcdFile, m_axi_betas_WLAST, "(port)m_axi_betas_WLAST");
    sc_trace(mVcdFile, m_axi_betas_WID, "(port)m_axi_betas_WID");
    sc_trace(mVcdFile, m_axi_betas_WUSER, "(port)m_axi_betas_WUSER");
    sc_trace(mVcdFile, m_axi_betas_ARVALID, "(port)m_axi_betas_ARVALID");
    sc_trace(mVcdFile, m_axi_betas_ARREADY, "(port)m_axi_betas_ARREADY");
    sc_trace(mVcdFile, m_axi_betas_ARADDR, "(port)m_axi_betas_ARADDR");
    sc_trace(mVcdFile, m_axi_betas_ARID, "(port)m_axi_betas_ARID");
    sc_trace(mVcdFile, m_axi_betas_ARLEN, "(port)m_axi_betas_ARLEN");
    sc_trace(mVcdFile, m_axi_betas_ARSIZE, "(port)m_axi_betas_ARSIZE");
    sc_trace(mVcdFile, m_axi_betas_ARBURST, "(port)m_axi_betas_ARBURST");
    sc_trace(mVcdFile, m_axi_betas_ARLOCK, "(port)m_axi_betas_ARLOCK");
    sc_trace(mVcdFile, m_axi_betas_ARCACHE, "(port)m_axi_betas_ARCACHE");
    sc_trace(mVcdFile, m_axi_betas_ARPROT, "(port)m_axi_betas_ARPROT");
    sc_trace(mVcdFile, m_axi_betas_ARQOS, "(port)m_axi_betas_ARQOS");
    sc_trace(mVcdFile, m_axi_betas_ARREGION, "(port)m_axi_betas_ARREGION");
    sc_trace(mVcdFile, m_axi_betas_ARUSER, "(port)m_axi_betas_ARUSER");
    sc_trace(mVcdFile, m_axi_betas_RVALID, "(port)m_axi_betas_RVALID");
    sc_trace(mVcdFile, m_axi_betas_RREADY, "(port)m_axi_betas_RREADY");
    sc_trace(mVcdFile, m_axi_betas_RDATA, "(port)m_axi_betas_RDATA");
    sc_trace(mVcdFile, m_axi_betas_RLAST, "(port)m_axi_betas_RLAST");
    sc_trace(mVcdFile, m_axi_betas_RID, "(port)m_axi_betas_RID");
    sc_trace(mVcdFile, m_axi_betas_RUSER, "(port)m_axi_betas_RUSER");
    sc_trace(mVcdFile, m_axi_betas_RRESP, "(port)m_axi_betas_RRESP");
    sc_trace(mVcdFile, m_axi_betas_BVALID, "(port)m_axi_betas_BVALID");
    sc_trace(mVcdFile, m_axi_betas_BREADY, "(port)m_axi_betas_BREADY");
    sc_trace(mVcdFile, m_axi_betas_BRESP, "(port)m_axi_betas_BRESP");
    sc_trace(mVcdFile, m_axi_betas_BID, "(port)m_axi_betas_BID");
    sc_trace(mVcdFile, m_axi_betas_BUSER, "(port)m_axi_betas_BUSER");
    sc_trace(mVcdFile, betas_offset, "(port)betas_offset");
    sc_trace(mVcdFile, beta_buffer_V_din, "(port)beta_buffer_V_din");
    sc_trace(mVcdFile, beta_buffer_V_full_n, "(port)beta_buffer_V_full_n");
    sc_trace(mVcdFile, beta_buffer_V_write, "(port)beta_buffer_V_write");
    sc_trace(mVcdFile, n, "(port)n");
    sc_trace(mVcdFile, nLoops, "(port)nLoops");
    sc_trace(mVcdFile, beta_cntl_V_din, "(port)beta_cntl_V_din");
    sc_trace(mVcdFile, beta_cntl_V_full_n, "(port)beta_cntl_V_full_n");
    sc_trace(mVcdFile, beta_cntl_V_write, "(port)beta_cntl_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, betas_blk_n_AR, "betas_blk_n_AR");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, betas_blk_n_R, "betas_blk_n_R");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, exitcond_reg_185, "exitcond_reg_185");
    sc_trace(mVcdFile, i_reg_118, "i_reg_118");
    sc_trace(mVcdFile, betas_addr_reg_169, "betas_addr_reg_169");
    sc_trace(mVcdFile, ap_sig_ioackin_m_axi_betas_ARREADY, "ap_sig_ioackin_m_axi_betas_ARREADY");
    sc_trace(mVcdFile, exitcond_fu_158_p2, "exitcond_fu_158_p2");
    sc_trace(mVcdFile, ap_block_state9_pp0_stage0_iter0, "ap_block_state9_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state10_pp0_stage0_iter1, "ap_block_state10_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state11_pp0_stage0_iter2, "ap_block_state11_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, exitcond_reg_185_pp0_iter1_reg, "exitcond_reg_185_pp0_iter1_reg");
    sc_trace(mVcdFile, i_25_fu_163_p2, "i_25_fu_163_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_632_reg_194, "tmp_632_reg_194");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state9, "ap_condition_pp0_exit_iter0_state9");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, sum_cast_fu_143_p1, "sum_cast_fu_143_p1");
    sc_trace(mVcdFile, ap_reg_ioackin_m_axi_betas_ARREADY, "ap_reg_ioackin_m_axi_betas_ARREADY");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, ap_CS_fsm_state12, "ap_CS_fsm_state12");
    sc_trace(mVcdFile, tmp_cast_fu_133_p1, "tmp_cast_fu_133_p1");
    sc_trace(mVcdFile, betas_offset_cast_fu_129_p1, "betas_offset_cast_fu_129_p1");
    sc_trace(mVcdFile, sum_fu_137_p2, "sum_fu_137_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

copy_beta_fmem2buffe_3::~copy_beta_fmem2buffe_3() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void copy_beta_fmem2buffe_3::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state9.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state9.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state9.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ioackin_m_axi_betas_ARREADY = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
            if (esl_seteq<1,1,1>(ap_sig_ioackin_m_axi_betas_ARREADY.read(), ap_const_logic_1)) {
                ap_reg_ioackin_m_axi_betas_ARREADY = ap_const_logic_0;
            } else if (esl_seteq<1,1,1>(ap_const_logic_1, m_axi_betas_ARREADY.read())) {
                ap_reg_ioackin_m_axi_betas_ARREADY = ap_const_logic_1;
            }
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        i_reg_118 = ap_const_lv2_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_158_p2.read()))) {
        i_reg_118 = i_25_fu_163_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        betas_addr_reg_169 =  (sc_lv<32>) (sum_cast_fu_143_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exitcond_reg_185 = exitcond_fu_158_p2.read();
        exitcond_reg_185_pp0_iter1_reg = exitcond_reg_185.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_632_reg_194 = m_axi_betas_RDATA.read();
    }
}

void copy_beta_fmem2buffe_3::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[8];
}

void copy_beta_fmem2buffe_3::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void copy_beta_fmem2buffe_3::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read()[9];
}

void copy_beta_fmem2buffe_3::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void copy_beta_fmem2buffe_3::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void copy_beta_fmem2buffe_3::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void copy_beta_fmem2buffe_3::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185.read()) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_betas_RVALID.read()));
}

void copy_beta_fmem2buffe_3::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185.read()) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_betas_RVALID.read()));
}

void copy_beta_fmem2buffe_3::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185.read()) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_betas_RVALID.read()));
}

void copy_beta_fmem2buffe_3::thread_ap_block_state10_pp0_stage0_iter1() {
    ap_block_state10_pp0_stage0_iter1 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185.read()) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_betas_RVALID.read()));
}

void copy_beta_fmem2buffe_3::thread_ap_block_state11_pp0_stage0_iter2() {
    ap_block_state11_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void copy_beta_fmem2buffe_3::thread_ap_block_state9_pp0_stage0_iter0() {
    ap_block_state9_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void copy_beta_fmem2buffe_3::thread_ap_condition_pp0_exit_iter0_state9() {
    if (esl_seteq<1,1,1>(exitcond_fu_158_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state9 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state9 = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void copy_beta_fmem2buffe_3::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_ap_sig_ioackin_m_axi_betas_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_betas_ARREADY.read())) {
        ap_sig_ioackin_m_axi_betas_ARREADY = m_axi_betas_ARREADY.read();
    } else {
        ap_sig_ioackin_m_axi_betas_ARREADY = ap_const_logic_1;
    }
}

void copy_beta_fmem2buffe_3::thread_beta_buffer_V_din() {
    beta_buffer_V_din = tmp_632_reg_194.read();
}

void copy_beta_fmem2buffe_3::thread_beta_buffer_V_write() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, beta_buffer_V_full_n.read()))) {
        beta_buffer_V_write = ap_const_logic_1;
    } else {
        beta_buffer_V_write = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_beta_cntl_V_din() {
    beta_cntl_V_din =  (sc_logic) (ap_const_lv1_0[0]);
}

void copy_beta_fmem2buffe_3::thread_beta_cntl_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, beta_cntl_V_full_n.read()))) {
        beta_cntl_V_write = ap_const_logic_1;
    } else {
        beta_cntl_V_write = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_betas_blk_n_AR() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        betas_blk_n_AR = m_axi_betas_ARREADY.read();
    } else {
        betas_blk_n_AR = ap_const_logic_1;
    }
}

void copy_beta_fmem2buffe_3::thread_betas_blk_n_R() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185.read()))) {
        betas_blk_n_R = m_axi_betas_RVALID.read();
    } else {
        betas_blk_n_R = ap_const_logic_1;
    }
}

void copy_beta_fmem2buffe_3::thread_betas_offset_cast_fu_129_p1() {
    betas_offset_cast_fu_129_p1 = esl_zext<32,31>(betas_offset.read());
}

void copy_beta_fmem2buffe_3::thread_exitcond_fu_158_p2() {
    exitcond_fu_158_p2 = (!i_reg_118.read().is_01() || !nLoops.read().is_01())? sc_lv<1>(): sc_lv<1>(i_reg_118.read() == nLoops.read());
}

void copy_beta_fmem2buffe_3::thread_i_25_fu_163_p2() {
    i_25_fu_163_p2 = (!i_reg_118.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_reg_118.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARADDR() {
    m_axi_betas_ARADDR = betas_addr_reg_169.read();
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARBURST() {
    m_axi_betas_ARBURST = ap_const_lv2_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARCACHE() {
    m_axi_betas_ARCACHE = ap_const_lv4_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARID() {
    m_axi_betas_ARID = ap_const_lv1_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARLEN() {
    m_axi_betas_ARLEN = esl_zext<32,2>(nLoops.read());
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARLOCK() {
    m_axi_betas_ARLOCK = ap_const_lv2_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARPROT() {
    m_axi_betas_ARPROT = ap_const_lv3_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARQOS() {
    m_axi_betas_ARQOS = ap_const_lv4_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARREGION() {
    m_axi_betas_ARREGION = ap_const_lv4_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARSIZE() {
    m_axi_betas_ARSIZE = ap_const_lv3_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARUSER() {
    m_axi_betas_ARUSER = ap_const_lv1_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_betas_ARREADY.read()))) {
        m_axi_betas_ARVALID = ap_const_logic_1;
    } else {
        m_axi_betas_ARVALID = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWADDR() {
    m_axi_betas_AWADDR = ap_const_lv32_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWBURST() {
    m_axi_betas_AWBURST = ap_const_lv2_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWCACHE() {
    m_axi_betas_AWCACHE = ap_const_lv4_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWID() {
    m_axi_betas_AWID = ap_const_lv1_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWLEN() {
    m_axi_betas_AWLEN = ap_const_lv32_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWLOCK() {
    m_axi_betas_AWLOCK = ap_const_lv2_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWPROT() {
    m_axi_betas_AWPROT = ap_const_lv3_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWQOS() {
    m_axi_betas_AWQOS = ap_const_lv4_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWREGION() {
    m_axi_betas_AWREGION = ap_const_lv4_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWSIZE() {
    m_axi_betas_AWSIZE = ap_const_lv3_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWUSER() {
    m_axi_betas_AWUSER = ap_const_lv1_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_AWVALID() {
    m_axi_betas_AWVALID = ap_const_logic_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_BREADY() {
    m_axi_betas_BREADY = ap_const_logic_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_RREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_185.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        m_axi_betas_RREADY = ap_const_logic_1;
    } else {
        m_axi_betas_RREADY = ap_const_logic_0;
    }
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_WDATA() {
    m_axi_betas_WDATA = ap_const_lv16_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_WID() {
    m_axi_betas_WID = ap_const_lv1_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_WLAST() {
    m_axi_betas_WLAST = ap_const_logic_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_WSTRB() {
    m_axi_betas_WSTRB = ap_const_lv2_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_WUSER() {
    m_axi_betas_WUSER = ap_const_lv1_0;
}

void copy_beta_fmem2buffe_3::thread_m_axi_betas_WVALID() {
    m_axi_betas_WVALID = ap_const_logic_0;
}

void copy_beta_fmem2buffe_3::thread_sum_cast_fu_143_p1() {
    sum_cast_fu_143_p1 = esl_zext<64,32>(sum_fu_137_p2.read());
}

void copy_beta_fmem2buffe_3::thread_sum_fu_137_p2() {
    sum_fu_137_p2 = (!tmp_cast_fu_133_p1.read().is_01() || !betas_offset_cast_fu_129_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_cast_fu_133_p1.read()) + sc_biguint<32>(betas_offset_cast_fu_129_p1.read()));
}

void copy_beta_fmem2buffe_3::thread_tmp_cast_fu_133_p1() {
    tmp_cast_fu_133_p1 = esl_zext<32,10>(n.read());
}

void copy_beta_fmem2buffe_3::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_sig_ioackin_m_axi_betas_ARREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            break;
        case 256 : 
            if ((!(esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_fu_158_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(exitcond_fu_158_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state12;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXX";
            break;
    }
}

}

