// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module penult_layer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axi_inputs_AWVALID,
        m_axi_inputs_AWREADY,
        m_axi_inputs_AWADDR,
        m_axi_inputs_AWID,
        m_axi_inputs_AWLEN,
        m_axi_inputs_AWSIZE,
        m_axi_inputs_AWBURST,
        m_axi_inputs_AWLOCK,
        m_axi_inputs_AWCACHE,
        m_axi_inputs_AWPROT,
        m_axi_inputs_AWQOS,
        m_axi_inputs_AWREGION,
        m_axi_inputs_AWUSER,
        m_axi_inputs_WVALID,
        m_axi_inputs_WREADY,
        m_axi_inputs_WDATA,
        m_axi_inputs_WSTRB,
        m_axi_inputs_WLAST,
        m_axi_inputs_WID,
        m_axi_inputs_WUSER,
        m_axi_inputs_ARVALID,
        m_axi_inputs_ARREADY,
        m_axi_inputs_ARADDR,
        m_axi_inputs_ARID,
        m_axi_inputs_ARLEN,
        m_axi_inputs_ARSIZE,
        m_axi_inputs_ARBURST,
        m_axi_inputs_ARLOCK,
        m_axi_inputs_ARCACHE,
        m_axi_inputs_ARPROT,
        m_axi_inputs_ARQOS,
        m_axi_inputs_ARREGION,
        m_axi_inputs_ARUSER,
        m_axi_inputs_RVALID,
        m_axi_inputs_RREADY,
        m_axi_inputs_RDATA,
        m_axi_inputs_RLAST,
        m_axi_inputs_RID,
        m_axi_inputs_RUSER,
        m_axi_inputs_RRESP,
        m_axi_inputs_BVALID,
        m_axi_inputs_BREADY,
        m_axi_inputs_BRESP,
        m_axi_inputs_BID,
        m_axi_inputs_BUSER,
        inputs_offset_dout,
        inputs_offset_empty_n,
        inputs_offset_read,
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
        pre_ready_V_dout,
        pre_ready_V_empty_n,
        pre_ready_V_read,
        nxt_ready_V_din,
        nxt_ready_V_full_n,
        nxt_ready_V_write
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_inputs_AWVALID;
input   m_axi_inputs_AWREADY;
output  [31:0] m_axi_inputs_AWADDR;
output  [0:0] m_axi_inputs_AWID;
output  [31:0] m_axi_inputs_AWLEN;
output  [2:0] m_axi_inputs_AWSIZE;
output  [1:0] m_axi_inputs_AWBURST;
output  [1:0] m_axi_inputs_AWLOCK;
output  [3:0] m_axi_inputs_AWCACHE;
output  [2:0] m_axi_inputs_AWPROT;
output  [3:0] m_axi_inputs_AWQOS;
output  [3:0] m_axi_inputs_AWREGION;
output  [0:0] m_axi_inputs_AWUSER;
output   m_axi_inputs_WVALID;
input   m_axi_inputs_WREADY;
output  [15:0] m_axi_inputs_WDATA;
output  [1:0] m_axi_inputs_WSTRB;
output   m_axi_inputs_WLAST;
output  [0:0] m_axi_inputs_WID;
output  [0:0] m_axi_inputs_WUSER;
output   m_axi_inputs_ARVALID;
input   m_axi_inputs_ARREADY;
output  [31:0] m_axi_inputs_ARADDR;
output  [0:0] m_axi_inputs_ARID;
output  [31:0] m_axi_inputs_ARLEN;
output  [2:0] m_axi_inputs_ARSIZE;
output  [1:0] m_axi_inputs_ARBURST;
output  [1:0] m_axi_inputs_ARLOCK;
output  [3:0] m_axi_inputs_ARCACHE;
output  [2:0] m_axi_inputs_ARPROT;
output  [3:0] m_axi_inputs_ARQOS;
output  [3:0] m_axi_inputs_ARREGION;
output  [0:0] m_axi_inputs_ARUSER;
input   m_axi_inputs_RVALID;
output   m_axi_inputs_RREADY;
input  [15:0] m_axi_inputs_RDATA;
input   m_axi_inputs_RLAST;
input  [0:0] m_axi_inputs_RID;
input  [0:0] m_axi_inputs_RUSER;
input  [1:0] m_axi_inputs_RRESP;
input   m_axi_inputs_BVALID;
output   m_axi_inputs_BREADY;
input  [1:0] m_axi_inputs_BRESP;
input  [0:0] m_axi_inputs_BID;
input  [0:0] m_axi_inputs_BUSER;
input  [31:0] inputs_offset_dout;
input   inputs_offset_empty_n;
output   inputs_offset_read;
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
input  [31:0] outputs_offset_dout;
input   outputs_offset_empty_n;
output   outputs_offset_read;
input   pre_ready_V_dout;
input   pre_ready_V_empty_n;
output   pre_ready_V_read;
output   nxt_ready_V_din;
input   nxt_ready_V_full_n;
output   nxt_ready_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_inputs_ARVALID;
reg m_axi_inputs_RREADY;
reg inputs_offset_read;
reg m_axi_outputs_AWVALID;
reg m_axi_outputs_WVALID;
reg m_axi_outputs_BREADY;
reg outputs_offset_read;
reg pre_ready_V_read;
reg nxt_ready_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    inputs_offset_blk_n;
reg    outputs_offset_blk_n;
reg   [30:0] outputs_offset2_i_reg_234;
reg    ap_block_state1;
reg   [30:0] inputs_offset1_i_reg_239;
wire   [17:0] tmp_4_i_fu_184_p3;
reg   [17:0] tmp_4_i_reg_250;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_1_nbreadreq_fu_96_p3;
wire   [0:0] tmp_2_nbwritereq_fu_104_p3;
wire   [9:0] tmp_6_i_fu_193_p3;
reg   [9:0] tmp_6_i_reg_255;
wire   [0:0] pingpang_flag_fu_202_p2;
reg   [0:0] pingpang_flag_reg_260;
wire    grp_pool_fu_149_ap_start;
wire    grp_pool_fu_149_ap_done;
wire    grp_pool_fu_149_ap_idle;
wire    grp_pool_fu_149_ap_ready;
wire    grp_pool_fu_149_m_axi_inputs_AWVALID;
wire   [31:0] grp_pool_fu_149_m_axi_inputs_AWADDR;
wire   [0:0] grp_pool_fu_149_m_axi_inputs_AWID;
wire   [31:0] grp_pool_fu_149_m_axi_inputs_AWLEN;
wire   [2:0] grp_pool_fu_149_m_axi_inputs_AWSIZE;
wire   [1:0] grp_pool_fu_149_m_axi_inputs_AWBURST;
wire   [1:0] grp_pool_fu_149_m_axi_inputs_AWLOCK;
wire   [3:0] grp_pool_fu_149_m_axi_inputs_AWCACHE;
wire   [2:0] grp_pool_fu_149_m_axi_inputs_AWPROT;
wire   [3:0] grp_pool_fu_149_m_axi_inputs_AWQOS;
wire   [3:0] grp_pool_fu_149_m_axi_inputs_AWREGION;
wire   [0:0] grp_pool_fu_149_m_axi_inputs_AWUSER;
wire    grp_pool_fu_149_m_axi_inputs_WVALID;
wire   [15:0] grp_pool_fu_149_m_axi_inputs_WDATA;
wire   [1:0] grp_pool_fu_149_m_axi_inputs_WSTRB;
wire    grp_pool_fu_149_m_axi_inputs_WLAST;
wire   [0:0] grp_pool_fu_149_m_axi_inputs_WID;
wire   [0:0] grp_pool_fu_149_m_axi_inputs_WUSER;
wire    grp_pool_fu_149_m_axi_inputs_ARVALID;
wire   [31:0] grp_pool_fu_149_m_axi_inputs_ARADDR;
wire   [0:0] grp_pool_fu_149_m_axi_inputs_ARID;
wire   [31:0] grp_pool_fu_149_m_axi_inputs_ARLEN;
wire   [2:0] grp_pool_fu_149_m_axi_inputs_ARSIZE;
wire   [1:0] grp_pool_fu_149_m_axi_inputs_ARBURST;
wire   [1:0] grp_pool_fu_149_m_axi_inputs_ARLOCK;
wire   [3:0] grp_pool_fu_149_m_axi_inputs_ARCACHE;
wire   [2:0] grp_pool_fu_149_m_axi_inputs_ARPROT;
wire   [3:0] grp_pool_fu_149_m_axi_inputs_ARQOS;
wire   [3:0] grp_pool_fu_149_m_axi_inputs_ARREGION;
wire   [0:0] grp_pool_fu_149_m_axi_inputs_ARUSER;
wire    grp_pool_fu_149_m_axi_inputs_RREADY;
wire    grp_pool_fu_149_m_axi_inputs_BREADY;
wire    grp_pool_fu_149_m_axi_outputs_AWVALID;
wire   [31:0] grp_pool_fu_149_m_axi_outputs_AWADDR;
wire   [0:0] grp_pool_fu_149_m_axi_outputs_AWID;
wire   [31:0] grp_pool_fu_149_m_axi_outputs_AWLEN;
wire   [2:0] grp_pool_fu_149_m_axi_outputs_AWSIZE;
wire   [1:0] grp_pool_fu_149_m_axi_outputs_AWBURST;
wire   [1:0] grp_pool_fu_149_m_axi_outputs_AWLOCK;
wire   [3:0] grp_pool_fu_149_m_axi_outputs_AWCACHE;
wire   [2:0] grp_pool_fu_149_m_axi_outputs_AWPROT;
wire   [3:0] grp_pool_fu_149_m_axi_outputs_AWQOS;
wire   [3:0] grp_pool_fu_149_m_axi_outputs_AWREGION;
wire   [0:0] grp_pool_fu_149_m_axi_outputs_AWUSER;
wire    grp_pool_fu_149_m_axi_outputs_WVALID;
wire   [15:0] grp_pool_fu_149_m_axi_outputs_WDATA;
wire   [1:0] grp_pool_fu_149_m_axi_outputs_WSTRB;
wire    grp_pool_fu_149_m_axi_outputs_WLAST;
wire   [0:0] grp_pool_fu_149_m_axi_outputs_WID;
wire   [0:0] grp_pool_fu_149_m_axi_outputs_WUSER;
wire    grp_pool_fu_149_m_axi_outputs_ARVALID;
wire   [31:0] grp_pool_fu_149_m_axi_outputs_ARADDR;
wire   [0:0] grp_pool_fu_149_m_axi_outputs_ARID;
wire   [31:0] grp_pool_fu_149_m_axi_outputs_ARLEN;
wire   [2:0] grp_pool_fu_149_m_axi_outputs_ARSIZE;
wire   [1:0] grp_pool_fu_149_m_axi_outputs_ARBURST;
wire   [1:0] grp_pool_fu_149_m_axi_outputs_ARLOCK;
wire   [3:0] grp_pool_fu_149_m_axi_outputs_ARCACHE;
wire   [2:0] grp_pool_fu_149_m_axi_outputs_ARPROT;
wire   [3:0] grp_pool_fu_149_m_axi_outputs_ARQOS;
wire   [3:0] grp_pool_fu_149_m_axi_outputs_ARREGION;
wire   [0:0] grp_pool_fu_149_m_axi_outputs_ARUSER;
wire    grp_pool_fu_149_m_axi_outputs_RREADY;
wire    grp_pool_fu_149_m_axi_outputs_BREADY;
wire    grp_pool_fu_149_cntl_V_din;
wire    grp_pool_fu_149_cntl_V_write;
reg   [0:0] pingpang_flag_i_reg_137;
wire    ap_CS_fsm_state6;
wire   [0:0] p_08_i_load_load_fu_218_p1;
reg    grp_pool_fu_149_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [0:0] cntl_V_din;
wire    cntl_V_full_n;
reg    cntl_V_write;
wire   [0:0] tmp_3_nbreadreq_fu_112_p3;
wire   [0:0] cntl_V_dout;
wire    cntl_V_empty_n;
reg    cntl_V_read;
wire    ap_CS_fsm_state5;
reg   [0:0] tmp_fu_76;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 grp_pool_fu_149_ap_start_reg = 1'b0;
end

pool grp_pool_fu_149(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_pool_fu_149_ap_start),
    .ap_done(grp_pool_fu_149_ap_done),
    .ap_idle(grp_pool_fu_149_ap_idle),
    .ap_ready(grp_pool_fu_149_ap_ready),
    .m_axi_inputs_AWVALID(grp_pool_fu_149_m_axi_inputs_AWVALID),
    .m_axi_inputs_AWREADY(1'b0),
    .m_axi_inputs_AWADDR(grp_pool_fu_149_m_axi_inputs_AWADDR),
    .m_axi_inputs_AWID(grp_pool_fu_149_m_axi_inputs_AWID),
    .m_axi_inputs_AWLEN(grp_pool_fu_149_m_axi_inputs_AWLEN),
    .m_axi_inputs_AWSIZE(grp_pool_fu_149_m_axi_inputs_AWSIZE),
    .m_axi_inputs_AWBURST(grp_pool_fu_149_m_axi_inputs_AWBURST),
    .m_axi_inputs_AWLOCK(grp_pool_fu_149_m_axi_inputs_AWLOCK),
    .m_axi_inputs_AWCACHE(grp_pool_fu_149_m_axi_inputs_AWCACHE),
    .m_axi_inputs_AWPROT(grp_pool_fu_149_m_axi_inputs_AWPROT),
    .m_axi_inputs_AWQOS(grp_pool_fu_149_m_axi_inputs_AWQOS),
    .m_axi_inputs_AWREGION(grp_pool_fu_149_m_axi_inputs_AWREGION),
    .m_axi_inputs_AWUSER(grp_pool_fu_149_m_axi_inputs_AWUSER),
    .m_axi_inputs_WVALID(grp_pool_fu_149_m_axi_inputs_WVALID),
    .m_axi_inputs_WREADY(1'b0),
    .m_axi_inputs_WDATA(grp_pool_fu_149_m_axi_inputs_WDATA),
    .m_axi_inputs_WSTRB(grp_pool_fu_149_m_axi_inputs_WSTRB),
    .m_axi_inputs_WLAST(grp_pool_fu_149_m_axi_inputs_WLAST),
    .m_axi_inputs_WID(grp_pool_fu_149_m_axi_inputs_WID),
    .m_axi_inputs_WUSER(grp_pool_fu_149_m_axi_inputs_WUSER),
    .m_axi_inputs_ARVALID(grp_pool_fu_149_m_axi_inputs_ARVALID),
    .m_axi_inputs_ARREADY(m_axi_inputs_ARREADY),
    .m_axi_inputs_ARADDR(grp_pool_fu_149_m_axi_inputs_ARADDR),
    .m_axi_inputs_ARID(grp_pool_fu_149_m_axi_inputs_ARID),
    .m_axi_inputs_ARLEN(grp_pool_fu_149_m_axi_inputs_ARLEN),
    .m_axi_inputs_ARSIZE(grp_pool_fu_149_m_axi_inputs_ARSIZE),
    .m_axi_inputs_ARBURST(grp_pool_fu_149_m_axi_inputs_ARBURST),
    .m_axi_inputs_ARLOCK(grp_pool_fu_149_m_axi_inputs_ARLOCK),
    .m_axi_inputs_ARCACHE(grp_pool_fu_149_m_axi_inputs_ARCACHE),
    .m_axi_inputs_ARPROT(grp_pool_fu_149_m_axi_inputs_ARPROT),
    .m_axi_inputs_ARQOS(grp_pool_fu_149_m_axi_inputs_ARQOS),
    .m_axi_inputs_ARREGION(grp_pool_fu_149_m_axi_inputs_ARREGION),
    .m_axi_inputs_ARUSER(grp_pool_fu_149_m_axi_inputs_ARUSER),
    .m_axi_inputs_RVALID(m_axi_inputs_RVALID),
    .m_axi_inputs_RREADY(grp_pool_fu_149_m_axi_inputs_RREADY),
    .m_axi_inputs_RDATA(m_axi_inputs_RDATA),
    .m_axi_inputs_RLAST(m_axi_inputs_RLAST),
    .m_axi_inputs_RID(m_axi_inputs_RID),
    .m_axi_inputs_RUSER(m_axi_inputs_RUSER),
    .m_axi_inputs_RRESP(m_axi_inputs_RRESP),
    .m_axi_inputs_BVALID(1'b0),
    .m_axi_inputs_BREADY(grp_pool_fu_149_m_axi_inputs_BREADY),
    .m_axi_inputs_BRESP(2'd0),
    .m_axi_inputs_BID(1'd0),
    .m_axi_inputs_BUSER(1'd0),
    .inputs_offset(inputs_offset1_i_reg_239),
    .inputs_offset1(tmp_4_i_reg_250),
    .m_axi_outputs_AWVALID(grp_pool_fu_149_m_axi_outputs_AWVALID),
    .m_axi_outputs_AWREADY(m_axi_outputs_AWREADY),
    .m_axi_outputs_AWADDR(grp_pool_fu_149_m_axi_outputs_AWADDR),
    .m_axi_outputs_AWID(grp_pool_fu_149_m_axi_outputs_AWID),
    .m_axi_outputs_AWLEN(grp_pool_fu_149_m_axi_outputs_AWLEN),
    .m_axi_outputs_AWSIZE(grp_pool_fu_149_m_axi_outputs_AWSIZE),
    .m_axi_outputs_AWBURST(grp_pool_fu_149_m_axi_outputs_AWBURST),
    .m_axi_outputs_AWLOCK(grp_pool_fu_149_m_axi_outputs_AWLOCK),
    .m_axi_outputs_AWCACHE(grp_pool_fu_149_m_axi_outputs_AWCACHE),
    .m_axi_outputs_AWPROT(grp_pool_fu_149_m_axi_outputs_AWPROT),
    .m_axi_outputs_AWQOS(grp_pool_fu_149_m_axi_outputs_AWQOS),
    .m_axi_outputs_AWREGION(grp_pool_fu_149_m_axi_outputs_AWREGION),
    .m_axi_outputs_AWUSER(grp_pool_fu_149_m_axi_outputs_AWUSER),
    .m_axi_outputs_WVALID(grp_pool_fu_149_m_axi_outputs_WVALID),
    .m_axi_outputs_WREADY(m_axi_outputs_WREADY),
    .m_axi_outputs_WDATA(grp_pool_fu_149_m_axi_outputs_WDATA),
    .m_axi_outputs_WSTRB(grp_pool_fu_149_m_axi_outputs_WSTRB),
    .m_axi_outputs_WLAST(grp_pool_fu_149_m_axi_outputs_WLAST),
    .m_axi_outputs_WID(grp_pool_fu_149_m_axi_outputs_WID),
    .m_axi_outputs_WUSER(grp_pool_fu_149_m_axi_outputs_WUSER),
    .m_axi_outputs_ARVALID(grp_pool_fu_149_m_axi_outputs_ARVALID),
    .m_axi_outputs_ARREADY(1'b0),
    .m_axi_outputs_ARADDR(grp_pool_fu_149_m_axi_outputs_ARADDR),
    .m_axi_outputs_ARID(grp_pool_fu_149_m_axi_outputs_ARID),
    .m_axi_outputs_ARLEN(grp_pool_fu_149_m_axi_outputs_ARLEN),
    .m_axi_outputs_ARSIZE(grp_pool_fu_149_m_axi_outputs_ARSIZE),
    .m_axi_outputs_ARBURST(grp_pool_fu_149_m_axi_outputs_ARBURST),
    .m_axi_outputs_ARLOCK(grp_pool_fu_149_m_axi_outputs_ARLOCK),
    .m_axi_outputs_ARCACHE(grp_pool_fu_149_m_axi_outputs_ARCACHE),
    .m_axi_outputs_ARPROT(grp_pool_fu_149_m_axi_outputs_ARPROT),
    .m_axi_outputs_ARQOS(grp_pool_fu_149_m_axi_outputs_ARQOS),
    .m_axi_outputs_ARREGION(grp_pool_fu_149_m_axi_outputs_ARREGION),
    .m_axi_outputs_ARUSER(grp_pool_fu_149_m_axi_outputs_ARUSER),
    .m_axi_outputs_RVALID(1'b0),
    .m_axi_outputs_RREADY(grp_pool_fu_149_m_axi_outputs_RREADY),
    .m_axi_outputs_RDATA(16'd0),
    .m_axi_outputs_RLAST(1'b0),
    .m_axi_outputs_RID(1'd0),
    .m_axi_outputs_RUSER(1'd0),
    .m_axi_outputs_RRESP(2'd0),
    .m_axi_outputs_BVALID(m_axi_outputs_BVALID),
    .m_axi_outputs_BREADY(grp_pool_fu_149_m_axi_outputs_BREADY),
    .m_axi_outputs_BRESP(m_axi_outputs_BRESP),
    .m_axi_outputs_BID(m_axi_outputs_BID),
    .m_axi_outputs_BUSER(m_axi_outputs_BUSER),
    .outputs_offset(outputs_offset2_i_reg_234),
    .outputs_offset2(tmp_6_i_reg_255),
    .cntl_V_din(grp_pool_fu_149_cntl_V_din),
    .cntl_V_full_n(cntl_V_full_n),
    .cntl_V_write(grp_pool_fu_149_cntl_V_write)
);

fifo_w1_d1_A_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x_x cntl_V_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(cntl_V_din),
    .if_full_n(cntl_V_full_n),
    .if_write(cntl_V_write),
    .if_dout(cntl_V_dout),
    .if_empty_n(cntl_V_empty_n),
    .if_read(cntl_V_read)
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
        end else if (((p_08_i_load_load_fu_218_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_pool_fu_149_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (tmp_2_nbwritereq_fu_104_p3 == 1'd1) & (tmp_1_nbreadreq_fu_96_p3 == 1'd1))) begin
            grp_pool_fu_149_ap_start_reg <= 1'b1;
        end else if ((grp_pool_fu_149_ap_ready == 1'b1)) begin
            grp_pool_fu_149_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (p_08_i_load_load_fu_218_p1 == 1'd1))) begin
        pingpang_flag_i_reg_137 <= pingpang_flag_reg_260;
    end else if ((~((inputs_offset_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        pingpang_flag_i_reg_137 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((inputs_offset_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inputs_offset1_i_reg_239 <= {{inputs_offset_dout[31:1]}};
        outputs_offset2_i_reg_234 <= {{outputs_offset_dout[31:1]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_2_nbwritereq_fu_104_p3 == 1'd1) & (tmp_1_nbreadreq_fu_96_p3 == 1'd1))) begin
        pingpang_flag_reg_260 <= pingpang_flag_fu_202_p2;
        tmp_4_i_reg_250[17] <= tmp_4_i_fu_184_p3[17];
        tmp_6_i_reg_255[9] <= tmp_6_i_fu_193_p3[9];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (tmp_3_nbreadreq_fu_112_p3 == 1'd1))) begin
        tmp_fu_76 <= pre_ready_V_dout;
    end
end

always @ (*) begin
    if (((p_08_i_load_load_fu_218_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
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
    if (((p_08_i_load_load_fu_218_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (cntl_V_empty_n == 1'b1) & (tmp_3_nbreadreq_fu_112_p3 == 1'd1))) begin
        cntl_V_read = 1'b1;
    end else begin
        cntl_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cntl_V_write = grp_pool_fu_149_cntl_V_write;
    end else begin
        cntl_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inputs_offset_blk_n = inputs_offset_empty_n;
    end else begin
        inputs_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((inputs_offset_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inputs_offset_read = 1'b1;
    end else begin
        inputs_offset_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state3) & (tmp_2_nbwritereq_fu_104_p3 == 1'd1) & (tmp_1_nbreadreq_fu_96_p3 == 1'd1)))) begin
        m_axi_inputs_ARVALID = grp_pool_fu_149_m_axi_inputs_ARVALID;
    end else begin
        m_axi_inputs_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state3) & (tmp_2_nbwritereq_fu_104_p3 == 1'd1) & (tmp_1_nbreadreq_fu_96_p3 == 1'd1)))) begin
        m_axi_inputs_RREADY = grp_pool_fu_149_m_axi_inputs_RREADY;
    end else begin
        m_axi_inputs_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state3) & (tmp_2_nbwritereq_fu_104_p3 == 1'd1) & (tmp_1_nbreadreq_fu_96_p3 == 1'd1)))) begin
        m_axi_outputs_AWVALID = grp_pool_fu_149_m_axi_outputs_AWVALID;
    end else begin
        m_axi_outputs_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state3) & (tmp_2_nbwritereq_fu_104_p3 == 1'd1) & (tmp_1_nbreadreq_fu_96_p3 == 1'd1)))) begin
        m_axi_outputs_BREADY = grp_pool_fu_149_m_axi_outputs_BREADY;
    end else begin
        m_axi_outputs_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state3) & (tmp_2_nbwritereq_fu_104_p3 == 1'd1) & (tmp_1_nbreadreq_fu_96_p3 == 1'd1)))) begin
        m_axi_outputs_WVALID = grp_pool_fu_149_m_axi_outputs_WVALID;
    end else begin
        m_axi_outputs_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (nxt_ready_V_full_n == 1'b1) & (tmp_3_nbreadreq_fu_112_p3 == 1'd1))) begin
        nxt_ready_V_write = 1'b1;
    end else begin
        nxt_ready_V_write = 1'b0;
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
    if ((~((inputs_offset_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_read = 1'b1;
    end else begin
        outputs_offset_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (pre_ready_V_empty_n == 1'b1) & (tmp_3_nbreadreq_fu_112_p3 == 1'd1))) begin
        pre_ready_V_read = 1'b1;
    end else begin
        pre_ready_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((inputs_offset_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & ((tmp_2_nbwritereq_fu_104_p3 == 1'd0) | (tmp_1_nbreadreq_fu_96_p3 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_pool_fu_149_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((p_08_i_load_load_fu_218_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((inputs_offset_empty_n == 1'b0) | (outputs_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign cntl_V_din = grp_pool_fu_149_cntl_V_din;

assign grp_pool_fu_149_ap_start = grp_pool_fu_149_ap_start_reg;

assign m_axi_inputs_ARADDR = grp_pool_fu_149_m_axi_inputs_ARADDR;

assign m_axi_inputs_ARBURST = grp_pool_fu_149_m_axi_inputs_ARBURST;

assign m_axi_inputs_ARCACHE = grp_pool_fu_149_m_axi_inputs_ARCACHE;

assign m_axi_inputs_ARID = grp_pool_fu_149_m_axi_inputs_ARID;

assign m_axi_inputs_ARLEN = grp_pool_fu_149_m_axi_inputs_ARLEN;

assign m_axi_inputs_ARLOCK = grp_pool_fu_149_m_axi_inputs_ARLOCK;

assign m_axi_inputs_ARPROT = grp_pool_fu_149_m_axi_inputs_ARPROT;

assign m_axi_inputs_ARQOS = grp_pool_fu_149_m_axi_inputs_ARQOS;

assign m_axi_inputs_ARREGION = grp_pool_fu_149_m_axi_inputs_ARREGION;

assign m_axi_inputs_ARSIZE = grp_pool_fu_149_m_axi_inputs_ARSIZE;

assign m_axi_inputs_ARUSER = grp_pool_fu_149_m_axi_inputs_ARUSER;

assign m_axi_inputs_AWADDR = 32'd0;

assign m_axi_inputs_AWBURST = 2'd0;

assign m_axi_inputs_AWCACHE = 4'd0;

assign m_axi_inputs_AWID = 1'd0;

assign m_axi_inputs_AWLEN = 32'd0;

assign m_axi_inputs_AWLOCK = 2'd0;

assign m_axi_inputs_AWPROT = 3'd0;

assign m_axi_inputs_AWQOS = 4'd0;

assign m_axi_inputs_AWREGION = 4'd0;

assign m_axi_inputs_AWSIZE = 3'd0;

assign m_axi_inputs_AWUSER = 1'd0;

assign m_axi_inputs_AWVALID = 1'b0;

assign m_axi_inputs_BREADY = 1'b0;

assign m_axi_inputs_WDATA = 16'd0;

assign m_axi_inputs_WID = 1'd0;

assign m_axi_inputs_WLAST = 1'b0;

assign m_axi_inputs_WSTRB = 2'd0;

assign m_axi_inputs_WUSER = 1'd0;

assign m_axi_inputs_WVALID = 1'b0;

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

assign m_axi_outputs_AWADDR = grp_pool_fu_149_m_axi_outputs_AWADDR;

assign m_axi_outputs_AWBURST = grp_pool_fu_149_m_axi_outputs_AWBURST;

assign m_axi_outputs_AWCACHE = grp_pool_fu_149_m_axi_outputs_AWCACHE;

assign m_axi_outputs_AWID = grp_pool_fu_149_m_axi_outputs_AWID;

assign m_axi_outputs_AWLEN = grp_pool_fu_149_m_axi_outputs_AWLEN;

assign m_axi_outputs_AWLOCK = grp_pool_fu_149_m_axi_outputs_AWLOCK;

assign m_axi_outputs_AWPROT = grp_pool_fu_149_m_axi_outputs_AWPROT;

assign m_axi_outputs_AWQOS = grp_pool_fu_149_m_axi_outputs_AWQOS;

assign m_axi_outputs_AWREGION = grp_pool_fu_149_m_axi_outputs_AWREGION;

assign m_axi_outputs_AWSIZE = grp_pool_fu_149_m_axi_outputs_AWSIZE;

assign m_axi_outputs_AWUSER = grp_pool_fu_149_m_axi_outputs_AWUSER;

assign m_axi_outputs_RREADY = 1'b0;

assign m_axi_outputs_WDATA = grp_pool_fu_149_m_axi_outputs_WDATA;

assign m_axi_outputs_WID = grp_pool_fu_149_m_axi_outputs_WID;

assign m_axi_outputs_WLAST = grp_pool_fu_149_m_axi_outputs_WLAST;

assign m_axi_outputs_WSTRB = grp_pool_fu_149_m_axi_outputs_WSTRB;

assign m_axi_outputs_WUSER = grp_pool_fu_149_m_axi_outputs_WUSER;

assign nxt_ready_V_din = pre_ready_V_dout;

assign p_08_i_load_load_fu_218_p1 = tmp_fu_76;

assign pingpang_flag_fu_202_p2 = (pingpang_flag_i_reg_137 ^ 1'd1);

assign tmp_1_nbreadreq_fu_96_p3 = pre_ready_V_empty_n;

assign tmp_2_nbwritereq_fu_104_p3 = nxt_ready_V_full_n;

assign tmp_3_nbreadreq_fu_112_p3 = cntl_V_empty_n;

assign tmp_4_i_fu_184_p3 = ((pingpang_flag_i_reg_137[0:0] === 1'b1) ? 18'd131072 : 18'd0);

assign tmp_6_i_fu_193_p3 = ((pingpang_flag_i_reg_137[0:0] === 1'b1) ? 10'd512 : 10'd0);

always @ (posedge ap_clk) begin
    tmp_4_i_reg_250[16:0] <= 17'b00000000000000000;
    tmp_6_i_reg_255[8:0] <= 9'b000000000;
end

endmodule //penult_layer
