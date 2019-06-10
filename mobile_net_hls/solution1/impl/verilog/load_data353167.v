// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module load_data353167 (
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
        inputs_offset,
        inputs_offset1,
        input_buffer_V_din,
        input_buffer_V_full_n,
        input_buffer_V_write,
        data_buffer_V_din,
        data_buffer_V_full_n,
        data_buffer_V_write,
        data_n_V_din,
        data_n_V_full_n,
        data_n_V_write,
        data_r_V_din,
        data_r_V_full_n,
        data_r_V_write,
        data_c_V_din,
        data_c_V_full_n,
        data_c_V_write,
        outputs_offset2,
        outputs_offset_c_din,
        outputs_offset_c_full_n,
        outputs_offset_c_write,
        outputs_offset,
        outputs_offset_out_din,
        outputs_offset_out_full_n,
        outputs_offset_out_write
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage0 = 16'd16384;
parameter    ap_ST_fsm_state18 = 16'd32768;

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
input  [30:0] inputs_offset;
input  [17:0] inputs_offset1;
output  [15:0] input_buffer_V_din;
input   input_buffer_V_full_n;
output   input_buffer_V_write;
output   data_buffer_V_din;
input   data_buffer_V_full_n;
output   data_buffer_V_write;
output  [31:0] data_n_V_din;
input   data_n_V_full_n;
output   data_n_V_write;
output  [31:0] data_r_V_din;
input   data_r_V_full_n;
output   data_r_V_write;
output  [31:0] data_c_V_din;
input   data_c_V_full_n;
output   data_c_V_write;
input  [9:0] outputs_offset2;
output  [9:0] outputs_offset_c_din;
input   outputs_offset_c_full_n;
output   outputs_offset_c_write;
input  [30:0] outputs_offset;
output  [30:0] outputs_offset_out_din;
input   outputs_offset_out_full_n;
output   outputs_offset_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_inputs_ARVALID;
reg m_axi_inputs_RREADY;
reg input_buffer_V_write;
reg data_buffer_V_write;
reg data_n_V_write;
reg data_r_V_write;
reg data_c_V_write;
reg outputs_offset_c_write;
reg outputs_offset_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    inputs_blk_n_AR;
wire    ap_CS_fsm_state8;
reg    inputs_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_i_i_reg_761;
reg    outputs_offset_c_blk_n;
reg    outputs_offset_out_blk_n;
reg   [3:0] i_0_i_i_i_i_i_i_reg_302;
wire   [31:0] inputs_offset_cast_i_fu_313_p1;
reg   [31:0] inputs_offset_cast_i_reg_637;
reg    ap_block_state1;
wire   [18:0] inputs_offset_cast_i_1_fu_317_p1;
reg   [18:0] inputs_offset_cast_i_1_reg_642;
wire   [31:0] tmp_305_fu_321_p1;
reg   [31:0] tmp_305_reg_647;
wire    ap_CS_fsm_state2;
wire   [3:0] nLoops_fu_349_p3;
reg   [3:0] nLoops_reg_655;
wire   [0:0] tmp_fu_325_p3;
reg   [0:0] tmp_295_reg_660;
wire   [31:0] tmp_307_fu_375_p1;
reg   [31:0] tmp_307_reg_665;
wire    ap_CS_fsm_state3;
wire   [3:0] rLoops_fu_403_p3;
reg   [3:0] rLoops_reg_673;
wire   [0:0] tmp_296_fu_379_p3;
wire   [8:0] tmp_298_fu_421_p1;
reg   [8:0] tmp_298_reg_678;
reg   [0:0] tmp_299_reg_683;
wire   [9:0] n_fu_433_p2;
wire   [31:0] tmp_309_fu_439_p1;
reg   [31:0] tmp_309_reg_693;
wire    ap_CS_fsm_state4;
wire   [4:0] r_fu_451_p2;
wire   [0:0] tmp_300_fu_443_p3;
wire   [3:0] cLoops_fu_473_p3;
reg   [3:0] cLoops_reg_709;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_301_nbwritereq_fu_180_p3;
wire   [4:0] cLoops_cast_i_i_i_i_s_fu_481_p1;
reg   [4:0] cLoops_cast_i_i_i_i_s_reg_714;
wire   [17:0] base_addr_cast_i_i_i_fu_504_p1;
wire   [31:0] tmp_40_i_i_i_fu_508_p1;
reg   [31:0] tmp_40_i_i_i_reg_724;
wire   [3:0] tn_fu_517_p2;
reg   [3:0] tn_reg_732;
wire    ap_CS_fsm_state6;
wire   [4:0] c_fu_553_p2;
wire   [0:0] exitcond2_i_i_i_fu_512_p2;
wire   [3:0] tr_fu_564_p2;
reg   [3:0] tr_reg_745;
wire    ap_CS_fsm_state7;
reg   [31:0] inputs_addr_reg_750;
wire   [0:0] exitcond1_i_i_i_fu_559_p2;
wire   [17:0] base_addr_d1_13_fu_620_p2;
wire   [0:0] exitcond_i_i_i_fu_626_p2;
wire    ap_block_state15_pp0_stage0_iter0;
reg    ap_block_state16_pp0_stage0_iter1;
wire    ap_block_state17_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_i_i_i_reg_761_pp0_iter1_reg;
wire   [3:0] i_fu_631_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [15:0] tmp_312_reg_770;
wire    ap_CS_fsm_state14;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state15;
reg    ap_enable_reg_pp0_iter2;
reg   [9:0] tmp_304_reg_234;
reg   [4:0] tmp_306_reg_246;
reg   [4:0] tmp_308_reg_258;
reg   [17:0] base_addr_d1_0_i_i_i_reg_270;
reg   [3:0] tn_0_i_i_i_i_i_i_reg_280;
reg   [3:0] tr_0_i_i_i_i_i_i_reg_291;
wire    ap_CS_fsm_state18;
wire   [63:0] sum_cast_i_i_i_fu_610_p1;
reg    ap_reg_ioackin_m_axi_inputs_ARREADY;
reg    ap_sig_ioackin_m_axi_inputs_ARREADY;
reg    ap_block_pp0_stage0_01001;
wire   [9:0] tmp_i_i_i_i_i_fu_333_p2;
wire   [0:0] tmp_15_i_i_i_i_i_fu_343_p2;
wire   [3:0] tmp_294_fu_339_p1;
wire   [9:0] nLoops_cast10_i_i_i_s_fu_357_p1;
wire   [9:0] tmp_16_i_i_i_i_i_fu_361_p2;
wire   [4:0] tmp_18_i_i_i_i_i_fu_387_p2;
wire   [0:0] tmp_19_i_i_i_i_i_fu_397_p2;
wire   [3:0] tmp_297_fu_393_p1;
wire   [4:0] rLoops_cast_i_i_i_i_s_fu_411_p1;
wire   [4:0] tmp_20_i_i_i_i_i_fu_415_p2;
wire   [4:0] tmp_23_i_i_i_i_i_fu_457_p2;
wire   [0:0] tmp_24_i_i_i_i_i_fu_467_p2;
wire   [3:0] tmp_302_fu_463_p1;
wire   [2:0] tmp_22_i_i_i_fu_485_p4;
wire   [16:0] base_addr_fu_495_p4;
wire   [4:0] tmp_31_i_i_i_i_i_fu_523_p2;
wire   [0:0] tmp_303_fu_528_p3;
wire   [0:0] tmp4_i_i_i_fu_536_p2;
wire   [0:0] sel_tmp1_i_i_i_fu_541_p2;
wire   [2:0] tmp_311_fu_570_p1;
wire   [6:0] tmp_33_i_i_i_fu_574_p3;
wire   [17:0] tmp_34_i_i_i_fu_582_p1;
wire   [17:0] tmp_35_i_i_i_fu_586_p2;
wire   [18:0] tmp_36_i_i_i_fu_592_p1;
wire   [18:0] tmp_37_i_i_i_fu_596_p2;
wire   [31:0] tmp_38_cast_i_i_i_fu_601_p1;
wire   [31:0] sum_i_i_i_fu_605_p2;
reg   [15:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_reg_ioackin_m_axi_inputs_ARREADY = 1'b0;
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_325_p3 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state15) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state14)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state15)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state15);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state14)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_inputs_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            if ((ap_sig_ioackin_m_axi_inputs_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_inputs_ARREADY <= 1'b0;
            end else if ((m_axi_inputs_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_inputs_ARREADY <= 1'b1;
            end
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
    if (((exitcond1_i_i_i_fu_559_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        base_addr_d1_0_i_i_i_reg_270 <= base_addr_d1_13_fu_620_p2;
    end else if (((tmp_301_nbwritereq_fu_180_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        base_addr_d1_0_i_i_i_reg_270 <= base_addr_cast_i_i_i_fu_504_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_i_i_i_fu_626_p2 == 1'd0))) begin
        i_0_i_i_i_i_i_i_reg_302 <= i_fu_631_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        i_0_i_i_i_i_i_i_reg_302 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_296_fu_379_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_304_reg_234 <= n_fu_433_p2;
    end else if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outputs_offset_out_full_n == 1'b0) | (outputs_offset_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_304_reg_234 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_325_p3 == 1'd0))) begin
        tmp_306_reg_246 <= 5'd0;
    end else if (((tmp_300_fu_443_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_306_reg_246 <= r_fu_451_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_296_fu_379_p3 == 1'd0))) begin
        tmp_308_reg_258 <= 5'd0;
    end else if (((exitcond2_i_i_i_fu_512_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_308_reg_258 <= c_fu_553_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_i_i_i_fu_559_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        tn_0_i_i_i_i_i_i_reg_280 <= tn_reg_732;
    end else if (((tmp_301_nbwritereq_fu_180_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        tn_0_i_i_i_i_i_i_reg_280 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        tr_0_i_i_i_i_i_i_reg_291 <= tr_reg_745;
    end else if (((1'b1 == ap_CS_fsm_state6) & (exitcond2_i_i_i_fu_512_p2 == 1'd0))) begin
        tr_0_i_i_i_i_i_i_reg_291 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_301_nbwritereq_fu_180_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        cLoops_cast_i_i_i_i_s_reg_714[3 : 0] <= cLoops_cast_i_i_i_i_s_fu_481_p1[3 : 0];
        cLoops_reg_709 <= cLoops_fu_473_p3;
        tmp_40_i_i_i_reg_724[3 : 0] <= tmp_40_i_i_i_fu_508_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_i_i_i_reg_761 <= exitcond_i_i_i_fu_626_p2;
        exitcond_i_i_i_reg_761_pp0_iter1_reg <= exitcond_i_i_i_reg_761;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (exitcond1_i_i_i_fu_559_p2 == 1'd0))) begin
        inputs_addr_reg_750 <= sum_cast_i_i_i_fu_610_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outputs_offset_out_full_n == 1'b0) | (outputs_offset_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        inputs_offset_cast_i_1_reg_642[17 : 0] <= inputs_offset_cast_i_1_fu_317_p1[17 : 0];
        inputs_offset_cast_i_reg_637[30 : 0] <= inputs_offset_cast_i_fu_313_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_325_p3 == 1'd0))) begin
        nLoops_reg_655 <= nLoops_fu_349_p3;
        tmp_295_reg_660 <= tmp_16_i_i_i_i_i_fu_361_p2[32'd9];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_296_fu_379_p3 == 1'd0))) begin
        rLoops_reg_673 <= rLoops_fu_403_p3;
        tmp_298_reg_678 <= tmp_298_fu_421_p1;
        tmp_299_reg_683 <= tmp_20_i_i_i_i_i_fu_415_p2[32'd4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_305_reg_647[9 : 0] <= tmp_305_fu_321_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_307_reg_665[4 : 0] <= tmp_307_fu_375_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_309_reg_693[4 : 0] <= tmp_309_fu_439_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_i_i_i_reg_761 == 1'd0))) begin
        tmp_312_reg_770 <= m_axi_inputs_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tn_reg_732 <= tn_fu_517_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tr_reg_745 <= tr_fu_564_p2;
    end
end

always @ (*) begin
    if ((exitcond_i_i_i_fu_626_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state15 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state15 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_325_p3 == 1'd1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_inputs_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_inputs_ARREADY = m_axi_inputs_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_inputs_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond2_i_i_i_fu_512_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (data_buffer_V_full_n == 1'b1))) begin
        data_buffer_V_write = 1'b1;
    end else begin
        data_buffer_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond2_i_i_i_fu_512_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (data_c_V_full_n == 1'b1))) begin
        data_c_V_write = 1'b1;
    end else begin
        data_c_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond2_i_i_i_fu_512_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (data_n_V_full_n == 1'b1))) begin
        data_n_V_write = 1'b1;
    end else begin
        data_n_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond2_i_i_i_fu_512_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (data_r_V_full_n == 1'b1))) begin
        data_r_V_write = 1'b1;
    end else begin
        data_r_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (input_buffer_V_full_n == 1'b1) & (exitcond_i_i_i_reg_761_pp0_iter1_reg == 1'd0))) begin
        input_buffer_V_write = 1'b1;
    end else begin
        input_buffer_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        inputs_blk_n_AR = m_axi_inputs_ARREADY;
    end else begin
        inputs_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (exitcond_i_i_i_reg_761 == 1'd0))) begin
        inputs_blk_n_R = m_axi_inputs_RVALID;
    end else begin
        inputs_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_325_p3 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_inputs_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_inputs_ARVALID = 1'b1;
    end else begin
        m_axi_inputs_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_i_i_i_reg_761 == 1'd0))) begin
        m_axi_inputs_RREADY = 1'b1;
    end else begin
        m_axi_inputs_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_c_blk_n = outputs_offset_c_full_n;
    end else begin
        outputs_offset_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outputs_offset_out_full_n == 1'b0) | (outputs_offset_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_c_write = 1'b1;
    end else begin
        outputs_offset_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_out_blk_n = outputs_offset_out_full_n;
    end else begin
        outputs_offset_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outputs_offset_out_full_n == 1'b0) | (outputs_offset_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        outputs_offset_out_write = 1'b1;
    end else begin
        outputs_offset_out_write = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outputs_offset_out_full_n == 1'b0) | (outputs_offset_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_325_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_296_fu_379_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_300_fu_443_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_301_nbwritereq_fu_180_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond2_i_i_i_fu_512_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond1_i_i_i_fu_559_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((ap_sig_ioackin_m_axi_inputs_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_i_i_i_fu_626_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_i_i_i_fu_626_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_inputs_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (exitcond_i_i_i_reg_761 == 1'd0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_inputs_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (exitcond_i_i_i_reg_761 == 1'd0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_inputs_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (exitcond_i_i_i_reg_761 == 1'd0));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outputs_offset_out_full_n == 1'b0) | (outputs_offset_c_full_n == 1'b0));
end

assign ap_block_state15_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state16_pp0_stage0_iter1 = ((m_axi_inputs_RVALID == 1'b0) & (exitcond_i_i_i_reg_761 == 1'd0));
end

assign ap_block_state17_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign base_addr_cast_i_i_i_fu_504_p1 = base_addr_fu_495_p4;

assign base_addr_d1_13_fu_620_p2 = (base_addr_d1_0_i_i_i_reg_270 + 18'd256);

assign base_addr_fu_495_p4 = {{{tmp_298_reg_678}, {tmp_22_i_i_i_fu_485_p4}}, {tmp_308_reg_258}};

assign cLoops_cast_i_i_i_i_s_fu_481_p1 = cLoops_fu_473_p3;

assign cLoops_fu_473_p3 = ((tmp_24_i_i_i_i_i_fu_467_p2[0:0] === 1'b1) ? 4'd8 : tmp_302_fu_463_p1);

assign c_fu_553_p2 = (tmp_308_reg_258 + 5'd8);

assign data_buffer_V_din = (sel_tmp1_i_i_i_fu_541_p2 ^ 1'd1);

assign data_c_V_din = tmp_309_reg_693;

assign data_n_V_din = tmp_305_reg_647;

assign data_r_V_din = tmp_307_reg_665;

assign exitcond1_i_i_i_fu_559_p2 = ((tr_0_i_i_i_i_i_i_reg_291 == rLoops_reg_673) ? 1'b1 : 1'b0);

assign exitcond2_i_i_i_fu_512_p2 = ((tn_0_i_i_i_i_i_i_reg_280 == nLoops_reg_655) ? 1'b1 : 1'b0);

assign exitcond_i_i_i_fu_626_p2 = ((i_0_i_i_i_i_i_i_reg_302 == cLoops_reg_709) ? 1'b1 : 1'b0);

assign i_fu_631_p2 = (i_0_i_i_i_i_i_i_reg_302 + 4'd1);

assign input_buffer_V_din = tmp_312_reg_770;

assign inputs_offset_cast_i_1_fu_317_p1 = inputs_offset1;

assign inputs_offset_cast_i_fu_313_p1 = inputs_offset;

assign m_axi_inputs_ARADDR = inputs_addr_reg_750;

assign m_axi_inputs_ARBURST = 2'd0;

assign m_axi_inputs_ARCACHE = 4'd0;

assign m_axi_inputs_ARID = 1'd0;

assign m_axi_inputs_ARLEN = tmp_40_i_i_i_reg_724;

assign m_axi_inputs_ARLOCK = 2'd0;

assign m_axi_inputs_ARPROT = 3'd0;

assign m_axi_inputs_ARQOS = 4'd0;

assign m_axi_inputs_ARREGION = 4'd0;

assign m_axi_inputs_ARSIZE = 3'd0;

assign m_axi_inputs_ARUSER = 1'd0;

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

assign nLoops_cast10_i_i_i_s_fu_357_p1 = nLoops_fu_349_p3;

assign nLoops_fu_349_p3 = ((tmp_15_i_i_i_i_i_fu_343_p2[0:0] === 1'b1) ? 4'd8 : tmp_294_fu_339_p1);

assign n_fu_433_p2 = (tmp_304_reg_234 + 10'd8);

assign outputs_offset_c_din = outputs_offset2;

assign outputs_offset_out_din = outputs_offset;

assign rLoops_cast_i_i_i_i_s_fu_411_p1 = rLoops_fu_403_p3;

assign rLoops_fu_403_p3 = ((tmp_19_i_i_i_i_i_fu_397_p2[0:0] === 1'b1) ? 4'd8 : tmp_297_fu_393_p1);

assign r_fu_451_p2 = (tmp_306_reg_246 + 5'd8);

assign sel_tmp1_i_i_i_fu_541_p2 = (tmp_299_reg_683 & tmp4_i_i_i_fu_536_p2);

assign start_out = real_start;

assign sum_cast_i_i_i_fu_610_p1 = sum_i_i_i_fu_605_p2;

assign sum_i_i_i_fu_605_p2 = (tmp_38_cast_i_i_i_fu_601_p1 + inputs_offset_cast_i_reg_637);

assign tmp4_i_i_i_fu_536_p2 = (tmp_303_fu_528_p3 & tmp_295_reg_660);

assign tmp_15_i_i_i_i_i_fu_343_p2 = ((tmp_i_i_i_i_i_fu_333_p2 > 10'd8) ? 1'b1 : 1'b0);

assign tmp_16_i_i_i_i_i_fu_361_p2 = (tmp_304_reg_234 + nLoops_cast10_i_i_i_s_fu_357_p1);

assign tmp_18_i_i_i_i_i_fu_387_p2 = ($signed(5'd16) - $signed(tmp_306_reg_246));

assign tmp_19_i_i_i_i_i_fu_397_p2 = ((tmp_18_i_i_i_i_i_fu_387_p2 > 5'd8) ? 1'b1 : 1'b0);

assign tmp_20_i_i_i_i_i_fu_415_p2 = (tmp_306_reg_246 + rLoops_cast_i_i_i_i_s_fu_411_p1);

assign tmp_22_i_i_i_fu_485_p4 = {{tmp_306_reg_246[3:1]}};

assign tmp_23_i_i_i_i_i_fu_457_p2 = ($signed(5'd16) - $signed(tmp_308_reg_258));

assign tmp_24_i_i_i_i_i_fu_467_p2 = ((tmp_23_i_i_i_i_i_fu_457_p2 > 5'd8) ? 1'b1 : 1'b0);

assign tmp_294_fu_339_p1 = tmp_i_i_i_i_i_fu_333_p2[3:0];

assign tmp_296_fu_379_p3 = tmp_306_reg_246[32'd4];

assign tmp_297_fu_393_p1 = tmp_18_i_i_i_i_i_fu_387_p2[3:0];

assign tmp_298_fu_421_p1 = tmp_304_reg_234[8:0];

assign tmp_300_fu_443_p3 = tmp_308_reg_258[32'd4];

assign tmp_301_nbwritereq_fu_180_p3 = data_buffer_V_full_n;

assign tmp_302_fu_463_p1 = tmp_23_i_i_i_i_i_fu_457_p2[3:0];

assign tmp_303_fu_528_p3 = tmp_31_i_i_i_i_i_fu_523_p2[32'd4];

assign tmp_305_fu_321_p1 = tmp_304_reg_234;

assign tmp_307_fu_375_p1 = tmp_306_reg_246;

assign tmp_309_fu_439_p1 = tmp_308_reg_258;

assign tmp_311_fu_570_p1 = tr_0_i_i_i_i_i_i_reg_291[2:0];

assign tmp_31_i_i_i_i_i_fu_523_p2 = (tmp_308_reg_258 + cLoops_cast_i_i_i_i_s_reg_714);

assign tmp_33_i_i_i_fu_574_p3 = {{tmp_311_fu_570_p1}, {4'd0}};

assign tmp_34_i_i_i_fu_582_p1 = tmp_33_i_i_i_fu_574_p3;

assign tmp_35_i_i_i_fu_586_p2 = (base_addr_d1_0_i_i_i_reg_270 + tmp_34_i_i_i_fu_582_p1);

assign tmp_36_i_i_i_fu_592_p1 = tmp_35_i_i_i_fu_586_p2;

assign tmp_37_i_i_i_fu_596_p2 = (tmp_36_i_i_i_fu_592_p1 + inputs_offset_cast_i_1_reg_642);

assign tmp_38_cast_i_i_i_fu_601_p1 = tmp_37_i_i_i_fu_596_p2;

assign tmp_40_i_i_i_fu_508_p1 = cLoops_fu_473_p3;

assign tmp_fu_325_p3 = tmp_304_reg_234[32'd9];

assign tmp_i_i_i_i_i_fu_333_p2 = ($signed(10'd512) - $signed(tmp_304_reg_234));

assign tn_fu_517_p2 = (tn_0_i_i_i_i_i_i_reg_280 + 4'd1);

assign tr_fu_564_p2 = (tr_0_i_i_i_i_i_i_reg_291 + 4'd1);

always @ (posedge ap_clk) begin
    inputs_offset_cast_i_reg_637[31] <= 1'b0;
    inputs_offset_cast_i_1_reg_642[18] <= 1'b0;
    tmp_305_reg_647[31:10] <= 22'b0000000000000000000000;
    tmp_307_reg_665[31:5] <= 27'b000000000000000000000000000;
    tmp_309_reg_693[31:5] <= 27'b000000000000000000000000000;
    cLoops_cast_i_i_i_i_s_reg_714[4] <= 1'b0;
    tmp_40_i_i_i_reg_724[31:4] <= 28'b0000000000000000000000000000;
end

endmodule //load_data353167