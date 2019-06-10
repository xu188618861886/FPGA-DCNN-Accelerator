// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module output_result_9 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axi_outputs_AWVALID,
        m_axi_outputs_AWREADY,
        m_axi_outputs_AWADDR,
        m_axi_outputs_AWID,
        m_axi_outputs_AWLEN,
        m_axi_outputs_AWSIZE,
        m_axi_outputs_AWBURST,
        m_axi_outputs_AWLOCK,
        m_axi_outputs_AWCACHE,
        m_axi_outputs_AWPROT,
        m_axi_outputs_AWQOS,
        m_axi_outputs_AWREGION,
        m_axi_outputs_AWUSER,
        m_axi_outputs_WVALID,
        m_axi_outputs_WREADY,
        m_axi_outputs_WDATA,
        m_axi_outputs_WSTRB,
        m_axi_outputs_WLAST,
        m_axi_outputs_WID,
        m_axi_outputs_WUSER,
        m_axi_outputs_ARVALID,
        m_axi_outputs_ARREADY,
        m_axi_outputs_ARADDR,
        m_axi_outputs_ARID,
        m_axi_outputs_ARLEN,
        m_axi_outputs_ARSIZE,
        m_axi_outputs_ARBURST,
        m_axi_outputs_ARLOCK,
        m_axi_outputs_ARCACHE,
        m_axi_outputs_ARPROT,
        m_axi_outputs_ARQOS,
        m_axi_outputs_ARREGION,
        m_axi_outputs_ARUSER,
        m_axi_outputs_RVALID,
        m_axi_outputs_RREADY,
        m_axi_outputs_RDATA,
        m_axi_outputs_RLAST,
        m_axi_outputs_RID,
        m_axi_outputs_RUSER,
        m_axi_outputs_RRESP,
        m_axi_outputs_BVALID,
        m_axi_outputs_BREADY,
        m_axi_outputs_BRESP,
        m_axi_outputs_BID,
        m_axi_outputs_BUSER,
        outputs_offset_dout,
        outputs_offset_empty_n,
        outputs_offset_read,
        inputs_offset_c_dout,
        inputs_offset_c_empty_n,
        inputs_offset_c_read,
        output_buffer_0_V_dout,
        output_buffer_0_V_empty_n,
        output_buffer_0_V_read,
        output_buffer_1_V_dout,
        output_buffer_1_V_empty_n,
        output_buffer_1_V_read,
        result_buffer_V_dout,
        result_buffer_V_empty_n,
        result_buffer_V_read,
        result_c_V_dout,
        result_c_V_empty_n,
        result_c_V_read,
        result_r_V_dout,
        result_r_V_empty_n,
        result_r_V_read,
        result_n_V_dout,
        result_n_V_empty_n,
        result_n_V_read,
        cntl_V_din,
        cntl_V_full_n,
        cntl_V_write
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_pp0_stage0 = 13'd128;
parameter    ap_ST_fsm_state10 = 13'd256;
parameter    ap_ST_fsm_state11 = 13'd512;
parameter    ap_ST_fsm_state12 = 13'd1024;
parameter    ap_ST_fsm_state13 = 13'd2048;
parameter    ap_ST_fsm_state14 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_outputs_AWVALID;
input   m_axi_outputs_AWREADY;
output  [31:0] m_axi_outputs_AWADDR;
output  [0:0] m_axi_outputs_AWID;
output  [31:0] m_axi_outputs_AWLEN;
output  [2:0] m_axi_outputs_AWSIZE;
output  [1:0] m_axi_outputs_AWBURST;
output  [1:0] m_axi_outputs_AWLOCK;
output  [3:0] m_axi_outputs_AWCACHE;
output  [2:0] m_axi_outputs_AWPROT;
output  [3:0] m_axi_outputs_AWQOS;
output  [3:0] m_axi_outputs_AWREGION;
output  [0:0] m_axi_outputs_AWUSER;
output   m_axi_outputs_WVALID;
input   m_axi_outputs_WREADY;
output  [15:0] m_axi_outputs_WDATA;
output  [1:0] m_axi_outputs_WSTRB;
output   m_axi_outputs_WLAST;
output  [0:0] m_axi_outputs_WID;
output  [0:0] m_axi_outputs_WUSER;
output   m_axi_outputs_ARVALID;
input   m_axi_outputs_ARREADY;
output  [31:0] m_axi_outputs_ARADDR;
output  [0:0] m_axi_outputs_ARID;
output  [31:0] m_axi_outputs_ARLEN;
output  [2:0] m_axi_outputs_ARSIZE;
output  [1:0] m_axi_outputs_ARBURST;
output  [1:0] m_axi_outputs_ARLOCK;
output  [3:0] m_axi_outputs_ARCACHE;
output  [2:0] m_axi_outputs_ARPROT;
output  [3:0] m_axi_outputs_ARQOS;
output  [3:0] m_axi_outputs_ARREGION;
output  [0:0] m_axi_outputs_ARUSER;
input   m_axi_outputs_RVALID;
output   m_axi_outputs_RREADY;
input  [15:0] m_axi_outputs_RDATA;
input   m_axi_outputs_RLAST;
input  [0:0] m_axi_outputs_RID;
input  [0:0] m_axi_outputs_RUSER;
input  [1:0] m_axi_outputs_RRESP;
input   m_axi_outputs_BVALID;
output   m_axi_outputs_BREADY;
input  [1:0] m_axi_outputs_BRESP;
input  [0:0] m_axi_outputs_BID;
input  [0:0] m_axi_outputs_BUSER;
input  [30:0] outputs_offset_dout;
input   outputs_offset_empty_n;
output   outputs_offset_read;
input  [17:0] inputs_offset_c_dout;
input   inputs_offset_c_empty_n;
output   inputs_offset_c_read;
input  [15:0] output_buffer_0_V_dout;
input   output_buffer_0_V_empty_n;
output   output_buffer_0_V_read;
input  [15:0] output_buffer_1_V_dout;
input   output_buffer_1_V_empty_n;
output   output_buffer_1_V_read;
input   result_buffer_V_dout;
input   result_buffer_V_empty_n;
output   result_buffer_V_read;
input  [31:0] result_c_V_dout;
input   result_c_V_empty_n;
output   result_c_V_read;
input  [31:0] result_r_V_dout;
input   result_r_V_empty_n;
output   result_r_V_read;
input  [31:0] result_n_V_dout;
input   result_n_V_empty_n;
output   result_n_V_read;
output   cntl_V_din;
input   cntl_V_full_n;
output   cntl_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_outputs_AWVALID;
reg m_axi_outputs_WVALID;
reg m_axi_outputs_BREADY;
reg outputs_offset_read;
reg inputs_offset_c_read;
reg output_buffer_0_V_read;
reg output_buffer_1_V_read;
reg result_buffer_V_read;
reg result_c_V_read;
reg result_r_V_read;
reg result_n_V_read;
reg cntl_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    outputs_blk_n_AW;
wire    ap_CS_fsm_state7;
reg    outputs_blk_n_W;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_618_i_i_i_reg_536;
reg    outputs_blk_n_B;
wire    ap_CS_fsm_state14;
reg    outputs_offset_blk_n;
reg    inputs_offset_c_blk_n;
reg    cntl_V_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_615_i_i_i_fu_365_p2;
wire   [0:0] tmp_20_fu_380_p1;
reg   [30:0] i_0_i_i_i_i_reg_234;
wire   [32:0] outputs_offset_cast_s_fu_255_p1;
reg   [32:0] outputs_offset_cast_s_reg_462;
reg    ap_block_state1;
wire   [33:0] sext_cast_i_i_fu_259_p1;
reg   [33:0] sext_cast_i_i_reg_467;
reg   [31:0] tmp_19_reg_475;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_nbreadreq_fu_124_p3;
wire   [31:0] cLoops_fu_289_p3;
reg   [31:0] cLoops_reg_481;
wire    ap_CS_fsm_state4;
wire   [31:0] rLoops_fu_311_p3;
reg   [31:0] rLoops_reg_487;
wire   [31:0] nLoops_fu_330_p3;
reg   [31:0] nLoops_reg_492;
wire   [31:0] base_addr_fu_355_p2;
wire   [1:0] tn_fu_370_p2;
reg   [1:0] tn_reg_505;
reg    ap_predicate_op78_write_state5;
reg    ap_block_state5;
wire   [0:0] tmp_13_fu_376_p1;
reg   [0:0] tmp_13_reg_510;
wire   [30:0] tr_divS_fu_393_p2;
reg   [30:0] tr_divS_reg_520;
wire    ap_CS_fsm_state6;
reg   [31:0] outputs_addr_reg_525;
wire   [0:0] tmp_616_i_i_i_fu_388_p2;
wire   [31:0] base_addr_d1_1_fu_427_p2;
wire   [0:0] tmp_618_i_i_i_fu_437_p2;
wire    ap_block_state8_pp0_stage0_iter0;
wire    ap_block_state9_pp0_stage0_iter1;
reg    ap_sig_ioackin_m_axi_outputs_WREADY;
reg    ap_block_state9_io;
reg    ap_block_pp0_stage0_11001;
wire   [30:0] i_fu_442_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [31:0] base_addr_d2_1_fu_456_p2;
reg   [31:0] base_addr_d2_1_reg_555;
wire    ap_CS_fsm_state10;
reg    ap_sig_ioackin_m_axi_outputs_AWREADY;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state8;
reg   [31:0] base_addr_d2_reg_191;
reg   [1:0] tn_0_i_i_i_i_reg_201;
reg  signed [31:0] base_addr_d2_0_i_i_i_reg_212;
reg   [30:0] tr_divS_0_i_i_i_i_reg_223;
wire   [15:0] ap_phi_reg_pp0_iter0_tmp_18_load_i_i_reg_245;
reg   [15:0] ap_phi_reg_pp0_iter1_tmp_18_load_i_i_reg_245;
wire  signed [63:0] sum_cast_i_i_fu_417_p1;
reg    ap_reg_ioackin_m_axi_outputs_AWREADY;
reg    ap_reg_ioackin_m_axi_outputs_WREADY;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] tmp_9_fu_275_p3;
wire   [31:0] tmp_607_i_i_i_fu_283_p2;
wire   [0:0] tmp_10_fu_297_p3;
wire   [31:0] tmp_609_i_i_i_fu_305_p2;
wire   [31:0] tmp_610_i_i_i_fu_319_p2;
wire   [0:0] tmp_611_i_i_i_fu_324_p2;
wire   [31:0] tmp_12_fu_343_p2;
wire   [31:0] tmp_11_fu_338_p2;
wire   [31:0] tmp1_i_i_fu_349_p2;
wire   [31:0] tn_0_i_cast_i_i_i_fu_361_p1;
wire   [31:0] tr_divS_0_i_cast_i_i_fu_384_p1;
wire  signed [32:0] tmp_cast_i_i_fu_399_p1;
wire   [32:0] tmp_1_i_i_fu_403_p2;
wire  signed [33:0] tmp_1_cast_i_i_fu_408_p1;
wire   [33:0] sum_i_i_fu_412_p2;
wire   [31:0] i_0_i_cast_i_i_i_fu_433_p1;
reg   [12:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_259;
reg    ap_condition_560;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_reg_ioackin_m_axi_outputs_AWREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_outputs_WREADY = 1'b0;
end

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
        end else if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (tmp_20_fu_380_p1 == 1'd0) & (tmp_615_i_i_i_fu_365_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state8) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_sig_ioackin_m_axi_outputs_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state8))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state8);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_sig_ioackin_m_axi_outputs_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_outputs_AWREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            if ((ap_sig_ioackin_m_axi_outputs_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_outputs_AWREADY <= 1'b0;
            end else if ((m_axi_outputs_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_outputs_AWREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_outputs_WREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_560)) begin
            if ((1'b0 == ap_block_pp0_stage0_11001)) begin
                ap_reg_ioackin_m_axi_outputs_WREADY <= 1'b0;
            end else if (((1'b0 == ap_block_pp0_stage0_01001) & (m_axi_outputs_WREADY == 1'b1))) begin
                ap_reg_ioackin_m_axi_outputs_WREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_259)) begin
        if (((tmp_13_reg_510 == 1'd0) & (tmp_618_i_i_i_fu_437_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_tmp_18_load_i_i_reg_245 <= output_buffer_0_V_dout;
        end else if (((tmp_618_i_i_i_fu_437_p2 == 1'd1) & (tmp_13_reg_510 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_tmp_18_load_i_i_reg_245 <= output_buffer_1_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_18_load_i_i_reg_245 <= ap_phi_reg_pp0_iter0_tmp_18_load_i_i_reg_245;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_outputs_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        base_addr_d2_0_i_i_i_reg_212 <= base_addr_d2_1_reg_555;
    end else if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (tmp_615_i_i_i_fu_365_p2 == 1'd1))) begin
        base_addr_d2_0_i_i_i_reg_212 <= base_addr_d2_reg_191;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_616_i_i_i_fu_388_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        base_addr_d2_reg_191 <= base_addr_d1_1_fu_427_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        base_addr_d2_reg_191 <= base_addr_fu_355_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_618_i_i_i_fu_437_p2 == 1'd1))) begin
        i_0_i_i_i_i_reg_234 <= i_fu_442_p2;
    end else if (((ap_sig_ioackin_m_axi_outputs_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        i_0_i_i_i_i_reg_234 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_616_i_i_i_fu_388_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tn_0_i_i_i_i_reg_201 <= tn_reg_505;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tn_0_i_i_i_i_reg_201 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_outputs_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        tr_divS_0_i_i_i_i_reg_223 <= tr_divS_reg_520;
    end else if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (tmp_615_i_i_i_fu_365_p2 == 1'd1))) begin
        tr_divS_0_i_i_i_i_reg_223 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        base_addr_d2_1_reg_555 <= base_addr_d2_1_fu_456_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cLoops_reg_481 <= cLoops_fu_289_p3;
        nLoops_reg_492 <= nLoops_fu_330_p3;
        rLoops_reg_487 <= rLoops_fu_311_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_616_i_i_i_fu_388_p2 == 1'd1))) begin
        outputs_addr_reg_525 <= sum_cast_i_i_fu_417_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((inputs_offset_c_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_cast_s_reg_462[17 : 0] <= outputs_offset_cast_s_fu_255_p1[17 : 0];
        sext_cast_i_i_reg_467[30 : 0] <= sext_cast_i_i_fu_259_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (tmp_615_i_i_i_fu_365_p2 == 1'd1))) begin
        tmp_13_reg_510 <= tmp_13_fu_376_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_nbreadreq_fu_124_p3 == 1'd1))) begin
        tmp_19_reg_475 <= result_n_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_618_i_i_i_reg_536 <= tmp_618_i_i_i_fu_437_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        tn_reg_505 <= tn_fu_370_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tr_divS_reg_520 <= tr_divS_fu_393_p2;
    end
end

always @ (*) begin
    if ((tmp_618_i_i_i_fu_437_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state8 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state8 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (tmp_20_fu_380_p1 == 1'd0) & (tmp_615_i_i_i_fu_365_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (tmp_20_fu_380_p1 == 1'd0) & (tmp_615_i_i_i_fu_365_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_outputs_AWREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_outputs_AWREADY = m_axi_outputs_AWREADY;
    end else begin
        ap_sig_ioackin_m_axi_outputs_AWREADY = 1'b1;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_outputs_WREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_outputs_WREADY = m_axi_outputs_WREADY;
    end else begin
        ap_sig_ioackin_m_axi_outputs_WREADY = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_20_fu_380_p1 == 1'd0) & (tmp_615_i_i_i_fu_365_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        cntl_V_blk_n = cntl_V_full_n;
    end else begin
        cntl_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (ap_predicate_op78_write_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        cntl_V_write = 1'b1;
    end else begin
        cntl_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inputs_offset_c_blk_n = inputs_offset_c_empty_n;
    end else begin
        inputs_offset_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((inputs_offset_c_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inputs_offset_c_read = 1'b1;
    end else begin
        inputs_offset_c_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_outputs_AWREADY == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
        m_axi_outputs_AWVALID = 1'b1;
    end else begin
        m_axi_outputs_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_outputs_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        m_axi_outputs_BREADY = 1'b1;
    end else begin
        m_axi_outputs_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_reg_ioackin_m_axi_outputs_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_618_i_i_i_reg_536 == 1'd1))) begin
        m_axi_outputs_WVALID = 1'b1;
    end else begin
        m_axi_outputs_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_13_reg_510 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (output_buffer_0_V_empty_n == 1'b1) & (tmp_618_i_i_i_fu_437_p2 == 1'd1))) begin
        output_buffer_0_V_read = 1'b1;
    end else begin
        output_buffer_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (output_buffer_1_V_empty_n == 1'b1) & (tmp_618_i_i_i_fu_437_p2 == 1'd1) & (tmp_13_reg_510 == 1'd1))) begin
        output_buffer_1_V_read = 1'b1;
    end else begin
        output_buffer_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        outputs_blk_n_AW = m_axi_outputs_AWREADY;
    end else begin
        outputs_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        outputs_blk_n_B = m_axi_outputs_BVALID;
    end else begin
        outputs_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_618_i_i_i_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage0))) begin
        outputs_blk_n_W = m_axi_outputs_WREADY;
    end else begin
        outputs_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_blk_n = outputs_offset_empty_n;
    end else begin
        outputs_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((inputs_offset_c_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_read = 1'b1;
    end else begin
        outputs_offset_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (tmp_615_i_i_i_fu_365_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (result_buffer_V_empty_n == 1'b1))) begin
        result_buffer_V_read = 1'b1;
    end else begin
        result_buffer_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (result_c_V_empty_n == 1'b1))) begin
        result_c_V_read = 1'b1;
    end else begin
        result_c_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (result_n_V_empty_n == 1'b1) & (tmp_nbreadreq_fu_124_p3 == 1'd1))) begin
        result_n_V_read = 1'b1;
    end else begin
        result_n_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (result_r_V_empty_n == 1'b1))) begin
        result_r_V_read = 1'b1;
    end else begin
        result_r_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((inputs_offset_c_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_nbreadreq_fu_124_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (tmp_20_fu_380_p1 == 1'd0) & (tmp_615_i_i_i_fu_365_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (tmp_615_i_i_i_fu_365_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (tmp_20_fu_380_p1 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (tmp_615_i_i_i_fu_365_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((tmp_616_i_i_i_fu_388_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((ap_sig_ioackin_m_axi_outputs_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((tmp_618_i_i_i_fu_437_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((tmp_618_i_i_i_fu_437_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((m_axi_outputs_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((1'b1 == ap_block_state9_io) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b1 == ap_block_state9_io) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((inputs_offset_c_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state5 = ((ap_predicate_op78_write_state5 == 1'b1) & (cntl_V_full_n == 1'b0));
end

assign ap_block_state8_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_io = ((ap_sig_ioackin_m_axi_outputs_WREADY == 1'b0) & (tmp_618_i_i_i_reg_536 == 1'd1));
end

assign ap_block_state9_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_259 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_560 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_618_i_i_i_reg_536 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_tmp_18_load_i_i_reg_245 = 'bx;

always @ (*) begin
    ap_predicate_op78_write_state5 = ((tmp_20_fu_380_p1 == 1'd0) & (tmp_615_i_i_i_fu_365_p2 == 1'd0));
end

assign base_addr_d1_1_fu_427_p2 = (base_addr_d2_reg_191 + 32'd256);

assign base_addr_d2_1_fu_456_p2 = ($signed(base_addr_d2_0_i_i_i_reg_212) + $signed(32'd16));

assign base_addr_fu_355_p2 = (tmp1_i_i_fu_349_p2 + result_c_V_dout);

assign cLoops_fu_289_p3 = ((tmp_9_fu_275_p3[0:0] === 1'b1) ? 32'd16 : tmp_607_i_i_i_fu_283_p2);

assign cntl_V_din = 1'd0;

assign i_0_i_cast_i_i_i_fu_433_p1 = i_0_i_i_i_i_reg_234;

assign i_fu_442_p2 = (i_0_i_i_i_i_reg_234 + 31'd1);

assign m_axi_outputs_ARADDR = 32'd0;

assign m_axi_outputs_ARBURST = 2'd0;

assign m_axi_outputs_ARCACHE = 4'd0;

assign m_axi_outputs_ARID = 1'd0;

assign m_axi_outputs_ARLEN = 32'd0;

assign m_axi_outputs_ARLOCK = 2'd0;

assign m_axi_outputs_ARPROT = 3'd0;

assign m_axi_outputs_ARQOS = 4'd0;

assign m_axi_outputs_ARREGION = 4'd0;

assign m_axi_outputs_ARSIZE = 3'd0;

assign m_axi_outputs_ARUSER = 1'd0;

assign m_axi_outputs_ARVALID = 1'b0;

assign m_axi_outputs_AWADDR = outputs_addr_reg_525;

assign m_axi_outputs_AWBURST = 2'd0;

assign m_axi_outputs_AWCACHE = 4'd0;

assign m_axi_outputs_AWID = 1'd0;

assign m_axi_outputs_AWLEN = cLoops_reg_481;

assign m_axi_outputs_AWLOCK = 2'd0;

assign m_axi_outputs_AWPROT = 3'd0;

assign m_axi_outputs_AWQOS = 4'd0;

assign m_axi_outputs_AWREGION = 4'd0;

assign m_axi_outputs_AWSIZE = 3'd0;

assign m_axi_outputs_AWUSER = 1'd0;

assign m_axi_outputs_RREADY = 1'b0;

assign m_axi_outputs_WDATA = ap_phi_reg_pp0_iter1_tmp_18_load_i_i_reg_245;

assign m_axi_outputs_WID = 1'd0;

assign m_axi_outputs_WLAST = 1'b0;

assign m_axi_outputs_WSTRB = 2'd3;

assign m_axi_outputs_WUSER = 1'd0;

assign nLoops_fu_330_p3 = ((tmp_611_i_i_i_fu_324_p2[0:0] === 1'b1) ? 32'd2 : tmp_610_i_i_i_fu_319_p2);

assign outputs_offset_cast_s_fu_255_p1 = inputs_offset_c_dout;

assign rLoops_fu_311_p3 = ((tmp_10_fu_297_p3[0:0] === 1'b1) ? 32'd16 : tmp_609_i_i_i_fu_305_p2);

assign sext_cast_i_i_fu_259_p1 = outputs_offset_dout;

assign sum_cast_i_i_fu_417_p1 = $signed(sum_i_i_fu_412_p2);

assign sum_i_i_fu_412_p2 = ($signed(sext_cast_i_i_reg_467) + $signed(tmp_1_cast_i_i_fu_408_p1));

assign tmp1_i_i_fu_349_p2 = (tmp_12_fu_343_p2 + tmp_11_fu_338_p2);

assign tmp_10_fu_297_p3 = result_r_V_dout[32'd31];

assign tmp_11_fu_338_p2 = tmp_19_reg_475 << 32'd8;

assign tmp_12_fu_343_p2 = result_r_V_dout << 32'd4;

assign tmp_13_fu_376_p1 = tn_0_i_i_i_i_reg_201[0:0];

assign tmp_1_cast_i_i_fu_408_p1 = $signed(tmp_1_i_i_fu_403_p2);

assign tmp_1_i_i_fu_403_p2 = ($signed(outputs_offset_cast_s_reg_462) + $signed(tmp_cast_i_i_fu_399_p1));

assign tmp_20_fu_380_p1 = result_buffer_V_dout;

assign tmp_607_i_i_i_fu_283_p2 = (32'd16 - result_c_V_dout);

assign tmp_609_i_i_i_fu_305_p2 = (32'd16 - result_r_V_dout);

assign tmp_610_i_i_i_fu_319_p2 = (32'd512 - tmp_19_reg_475);

assign tmp_611_i_i_i_fu_324_p2 = (($signed(tmp_610_i_i_i_fu_319_p2) > $signed(32'd2)) ? 1'b1 : 1'b0);

assign tmp_615_i_i_i_fu_365_p2 = (($signed(tn_0_i_cast_i_i_i_fu_361_p1) < $signed(nLoops_reg_492)) ? 1'b1 : 1'b0);

assign tmp_616_i_i_i_fu_388_p2 = (($signed(tr_divS_0_i_cast_i_i_fu_384_p1) < $signed(rLoops_reg_487)) ? 1'b1 : 1'b0);

assign tmp_618_i_i_i_fu_437_p2 = (($signed(i_0_i_cast_i_i_i_fu_433_p1) < $signed(cLoops_reg_481)) ? 1'b1 : 1'b0);

assign tmp_9_fu_275_p3 = result_c_V_dout[32'd31];

assign tmp_cast_i_i_fu_399_p1 = base_addr_d2_0_i_i_i_reg_212;

assign tmp_nbreadreq_fu_124_p3 = result_buffer_V_empty_n;

assign tn_0_i_cast_i_i_i_fu_361_p1 = tn_0_i_i_i_i_reg_201;

assign tn_fu_370_p2 = (tn_0_i_i_i_i_reg_201 + 2'd1);

assign tr_divS_0_i_cast_i_i_fu_384_p1 = tr_divS_0_i_i_i_i_reg_223;

assign tr_divS_fu_393_p2 = (tr_divS_0_i_i_i_i_reg_223 + 31'd1);

always @ (posedge ap_clk) begin
    outputs_offset_cast_s_reg_462[32:18] <= 15'b000000000000000;
    sext_cast_i_i_reg_467[33:31] <= 3'b000;
end

endmodule //output_result_9
