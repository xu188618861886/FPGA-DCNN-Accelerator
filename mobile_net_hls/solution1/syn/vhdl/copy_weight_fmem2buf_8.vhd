-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity copy_weight_fmem2buf_8 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_weights_AWVALID : OUT STD_LOGIC;
    m_axi_weights_AWREADY : IN STD_LOGIC;
    m_axi_weights_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_WVALID : OUT STD_LOGIC;
    m_axi_weights_WREADY : IN STD_LOGIC;
    m_axi_weights_WDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_weights_WSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_WLAST : OUT STD_LOGIC;
    m_axi_weights_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_ARVALID : OUT STD_LOGIC;
    m_axi_weights_ARREADY : IN STD_LOGIC;
    m_axi_weights_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_weights_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_weights_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_weights_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_RVALID : IN STD_LOGIC;
    m_axi_weights_RREADY : OUT STD_LOGIC;
    m_axi_weights_RDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    m_axi_weights_RLAST : IN STD_LOGIC;
    m_axi_weights_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_BVALID : IN STD_LOGIC;
    m_axi_weights_BREADY : OUT STD_LOGIC;
    m_axi_weights_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_weights_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_weights_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    weights_offset : IN STD_LOGIC_VECTOR (30 downto 0);
    weight_buffer_0_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_0_V_full_n : IN STD_LOGIC;
    weight_buffer_0_V_write : OUT STD_LOGIC;
    weight_buffer_1_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_1_V_full_n : IN STD_LOGIC;
    weight_buffer_1_V_write : OUT STD_LOGIC;
    weight_buffer_2_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_2_V_full_n : IN STD_LOGIC;
    weight_buffer_2_V_write : OUT STD_LOGIC;
    weight_buffer_3_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_3_V_full_n : IN STD_LOGIC;
    weight_buffer_3_V_write : OUT STD_LOGIC;
    weight_buffer_4_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_4_V_full_n : IN STD_LOGIC;
    weight_buffer_4_V_write : OUT STD_LOGIC;
    weight_buffer_5_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_5_V_full_n : IN STD_LOGIC;
    weight_buffer_5_V_write : OUT STD_LOGIC;
    weight_buffer_6_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_6_V_full_n : IN STD_LOGIC;
    weight_buffer_6_V_write : OUT STD_LOGIC;
    weight_buffer_7_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_7_V_full_n : IN STD_LOGIC;
    weight_buffer_7_V_write : OUT STD_LOGIC;
    weight_buffer_8_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    weight_buffer_8_V_full_n : IN STD_LOGIC;
    weight_buffer_8_V_write : OUT STD_LOGIC;
    n : IN STD_LOGIC_VECTOR (5 downto 0);
    r : IN STD_LOGIC_VECTOR (8 downto 0);
    c : IN STD_LOGIC_VECTOR (8 downto 0);
    nLoops : IN STD_LOGIC_VECTOR (5 downto 0);
    weight_cntl_V_din : OUT STD_LOGIC;
    weight_cntl_V_full_n : IN STD_LOGIC;
    weight_cntl_V_write : OUT STD_LOGIC );
end;


architecture behav of copy_weight_fmem2buf_8 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv9_9 : STD_LOGIC_VECTOR (8 downto 0) := "000001001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal weights_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal weights_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal i_reg_256 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_256_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_state10_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state12_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal weights_offset_cast_fu_268_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal weights_offset_cast_reg_358 : STD_LOGIC_VECTOR (31 downto 0);
    signal base_addr1_fu_284_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_536_fu_296_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_536_reg_368 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_537_fu_302_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_537_reg_372 : STD_LOGIC_VECTOR (2 downto 0);
    signal tn_2_fu_315_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tn_2_reg_380 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal weights_addr_reg_385 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_310_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_fu_340_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_reg_391 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_2_fu_346_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_2_reg_395 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_538_reg_400 : STD_LOGIC_VECTOR (15 downto 0);
    signal base_addr1_d1_2_fu_352_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state10 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal base_addr1_d_reg_235 : STD_LOGIC_VECTOR (8 downto 0);
    signal tn_reg_245 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_phi_mux_i_phi_fu_260_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sum_cast_fu_330_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_weights_ARREADY : STD_LOGIC := '0';
    signal ap_sig_ioackin_m_axi_weights_ARREADY : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_shl_fu_276_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal n_cast3_fu_272_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_fu_290_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tn_cast_cast_fu_306_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_152_cast_fu_321_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sum_fu_325_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state10) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state10)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state10);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_weights_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_weights_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    if ((ap_sig_ioackin_m_axi_weights_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_weights_ARREADY <= ap_const_logic_0;
                    elsif ((m_axi_weights_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_weights_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    base_addr1_d_reg_235_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (tmp_536_fu_296_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1))) then 
                base_addr1_d_reg_235 <= base_addr1_fu_284_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                base_addr1_d_reg_235 <= base_addr1_d1_2_fu_352_p2;
            end if; 
        end if;
    end process;

    i_reg_256_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_reg_391 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_reg_256 <= i_2_reg_395;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                i_reg_256 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    tn_reg_245_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (tmp_536_fu_296_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1))) then 
                tn_reg_245 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                tn_reg_245 <= tn_2_reg_380;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_reg_391 <= exitcond_fu_340_p2;
                i_reg_256_pp0_iter1_reg <= i_reg_256;
                tmp_538_reg_400 <= m_axi_weights_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                i_2_reg_395 <= i_2_fu_346_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_536_reg_368 <= tmp_536_fu_296_p2;
                    weights_offset_cast_reg_358(30 downto 0) <= weights_offset_cast_fu_268_p1(30 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (tmp_536_fu_296_p2 = ap_const_lv1_1) and (ap_start = ap_const_logic_1))) then
                tmp_537_reg_372 <= tmp_537_fu_302_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_536_reg_368 = ap_const_lv1_1))) then
                tn_2_reg_380 <= tn_2_fu_315_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_s_fu_310_p2 = ap_const_lv1_1) and (tmp_536_reg_368 = ap_const_lv1_1))) then
                weights_addr_reg_385 <= sum_cast_fu_330_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;
    weights_offset_cast_reg_358(31) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, ap_enable_reg_pp0_iter1, tmp_536_reg_368, ap_CS_fsm_state2, tmp_s_fu_310_p2, exitcond_fu_340_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter2, ap_sig_ioackin_m_axi_weights_ARREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((tmp_s_fu_310_p2 = ap_const_lv1_0) or (tmp_536_reg_368 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_sig_ioackin_m_axi_weights_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (exitcond_fu_340_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (exitcond_fu_340_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(9);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state13 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(m_axi_weights_RVALID, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_01001 <= ((m_axi_weights_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(m_axi_weights_RVALID, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_11001 <= ((m_axi_weights_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(m_axi_weights_RVALID, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_subdone <= ((m_axi_weights_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state10_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state11_pp0_stage0_iter1_assign_proc : process(m_axi_weights_RVALID)
    begin
                ap_block_state11_pp0_stage0_iter1 <= (m_axi_weights_RVALID = ap_const_logic_0);
    end process;

        ap_block_state12_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state10_assign_proc : process(exitcond_fu_340_p2)
    begin
        if ((exitcond_fu_340_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state10 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state10 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, tmp_536_reg_368, ap_CS_fsm_state2, tmp_s_fu_310_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and ((tmp_s_fu_310_p2 = ap_const_lv1_0) or (tmp_536_reg_368 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_phi_fu_260_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, i_reg_256, exitcond_reg_391, i_2_reg_395)
    begin
        if (((exitcond_reg_391 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_i_phi_fu_260_p4 <= i_2_reg_395;
        else 
            ap_phi_mux_i_phi_fu_260_p4 <= i_reg_256;
        end if; 
    end process;


    ap_ready_assign_proc : process(tmp_536_reg_368, ap_CS_fsm_state2, tmp_s_fu_310_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and ((tmp_s_fu_310_p2 = ap_const_lv1_0) or (tmp_536_reg_368 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_weights_ARREADY_assign_proc : process(m_axi_weights_ARREADY, ap_reg_ioackin_m_axi_weights_ARREADY)
    begin
        if ((ap_reg_ioackin_m_axi_weights_ARREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_weights_ARREADY <= m_axi_weights_ARREADY;
        else 
            ap_sig_ioackin_m_axi_weights_ARREADY <= ap_const_logic_1;
        end if; 
    end process;

    base_addr1_d1_2_fu_352_p2 <= std_logic_vector(unsigned(base_addr1_d_reg_235) + unsigned(ap_const_lv9_9));
    base_addr1_fu_284_p2 <= std_logic_vector(unsigned(p_shl_fu_276_p3) + unsigned(n_cast3_fu_272_p1));
    exitcond_fu_340_p2 <= "1" when (ap_phi_mux_i_phi_fu_260_p4 = ap_const_lv4_9) else "0";
    i_2_fu_346_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_phi_fu_260_p4) + unsigned(ap_const_lv4_1));
    m_axi_weights_ARADDR <= weights_addr_reg_385;
    m_axi_weights_ARBURST <= ap_const_lv2_0;
    m_axi_weights_ARCACHE <= ap_const_lv4_0;
    m_axi_weights_ARID <= ap_const_lv1_0;
    m_axi_weights_ARLEN <= ap_const_lv32_9;
    m_axi_weights_ARLOCK <= ap_const_lv2_0;
    m_axi_weights_ARPROT <= ap_const_lv3_0;
    m_axi_weights_ARQOS <= ap_const_lv4_0;
    m_axi_weights_ARREGION <= ap_const_lv4_0;
    m_axi_weights_ARSIZE <= ap_const_lv3_0;
    m_axi_weights_ARUSER <= ap_const_lv1_0;

    m_axi_weights_ARVALID_assign_proc : process(ap_CS_fsm_state3, ap_reg_ioackin_m_axi_weights_ARREADY)
    begin
        if (((ap_reg_ioackin_m_axi_weights_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_weights_ARVALID <= ap_const_logic_1;
        else 
            m_axi_weights_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_weights_AWADDR <= ap_const_lv32_0;
    m_axi_weights_AWBURST <= ap_const_lv2_0;
    m_axi_weights_AWCACHE <= ap_const_lv4_0;
    m_axi_weights_AWID <= ap_const_lv1_0;
    m_axi_weights_AWLEN <= ap_const_lv32_0;
    m_axi_weights_AWLOCK <= ap_const_lv2_0;
    m_axi_weights_AWPROT <= ap_const_lv3_0;
    m_axi_weights_AWQOS <= ap_const_lv4_0;
    m_axi_weights_AWREGION <= ap_const_lv4_0;
    m_axi_weights_AWSIZE <= ap_const_lv3_0;
    m_axi_weights_AWUSER <= ap_const_lv1_0;
    m_axi_weights_AWVALID <= ap_const_logic_0;
    m_axi_weights_BREADY <= ap_const_logic_0;

    m_axi_weights_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_weights_RREADY <= ap_const_logic_1;
        else 
            m_axi_weights_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_weights_WDATA <= ap_const_lv16_0;
    m_axi_weights_WID <= ap_const_lv1_0;
    m_axi_weights_WLAST <= ap_const_logic_0;
    m_axi_weights_WSTRB <= ap_const_lv2_0;
    m_axi_weights_WUSER <= ap_const_lv1_0;
    m_axi_weights_WVALID <= ap_const_logic_0;
    n_cast3_fu_272_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n),9));
    p_shl_fu_276_p3 <= (n & ap_const_lv3_0);
    sum_cast_fu_330_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sum_fu_325_p2),64));
    sum_fu_325_p2 <= std_logic_vector(unsigned(weights_offset_cast_reg_358) + unsigned(tmp_152_cast_fu_321_p1));
    tmp_152_cast_fu_321_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(base_addr1_d_reg_235),32));
    tmp_536_fu_296_p2 <= "1" when (tmp_fu_290_p2 = ap_const_lv9_0) else "0";
    tmp_537_fu_302_p1 <= nLoops(3 - 1 downto 0);
    tmp_fu_290_p2 <= (r or c);
    tmp_s_fu_310_p2 <= "1" when (signed(tn_cast_cast_fu_306_p1) < signed(tmp_537_reg_372)) else "0";
    tn_2_fu_315_p2 <= std_logic_vector(unsigned(tn_reg_245) + unsigned(ap_const_lv2_1));
    tn_cast_cast_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tn_reg_245),3));
    weight_buffer_0_V_din <= tmp_538_reg_400;

    weight_buffer_0_V_write_assign_proc : process(weight_buffer_0_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((i_reg_256_pp0_iter1_reg = ap_const_lv4_0) and (weight_buffer_0_V_full_n = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            weight_buffer_0_V_write <= ap_const_logic_1;
        else 
            weight_buffer_0_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_1_V_din <= tmp_538_reg_400;

    weight_buffer_1_V_write_assign_proc : process(weight_buffer_1_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((weight_buffer_1_V_full_n = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_256_pp0_iter1_reg = ap_const_lv4_1))) then 
            weight_buffer_1_V_write <= ap_const_logic_1;
        else 
            weight_buffer_1_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_2_V_din <= tmp_538_reg_400;

    weight_buffer_2_V_write_assign_proc : process(weight_buffer_2_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((weight_buffer_2_V_full_n = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_256_pp0_iter1_reg = ap_const_lv4_2))) then 
            weight_buffer_2_V_write <= ap_const_logic_1;
        else 
            weight_buffer_2_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_3_V_din <= tmp_538_reg_400;

    weight_buffer_3_V_write_assign_proc : process(weight_buffer_3_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (weight_buffer_3_V_full_n = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_256_pp0_iter1_reg = ap_const_lv4_3))) then 
            weight_buffer_3_V_write <= ap_const_logic_1;
        else 
            weight_buffer_3_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_4_V_din <= tmp_538_reg_400;

    weight_buffer_4_V_write_assign_proc : process(weight_buffer_4_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (weight_buffer_4_V_full_n = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_256_pp0_iter1_reg = ap_const_lv4_4))) then 
            weight_buffer_4_V_write <= ap_const_logic_1;
        else 
            weight_buffer_4_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_5_V_din <= tmp_538_reg_400;

    weight_buffer_5_V_write_assign_proc : process(weight_buffer_5_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (weight_buffer_5_V_full_n = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_256_pp0_iter1_reg = ap_const_lv4_5))) then 
            weight_buffer_5_V_write <= ap_const_logic_1;
        else 
            weight_buffer_5_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_6_V_din <= tmp_538_reg_400;

    weight_buffer_6_V_write_assign_proc : process(weight_buffer_6_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (weight_buffer_6_V_full_n = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_256_pp0_iter1_reg = ap_const_lv4_6))) then 
            weight_buffer_6_V_write <= ap_const_logic_1;
        else 
            weight_buffer_6_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_7_V_din <= tmp_538_reg_400;

    weight_buffer_7_V_write_assign_proc : process(weight_buffer_7_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (weight_buffer_7_V_full_n = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_256_pp0_iter1_reg = ap_const_lv4_7))) then 
            weight_buffer_7_V_write <= ap_const_logic_1;
        else 
            weight_buffer_7_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_buffer_8_V_din <= tmp_538_reg_400;

    weight_buffer_8_V_write_assign_proc : process(weight_buffer_8_V_full_n, i_reg_256_pp0_iter1_reg, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if ((not((i_reg_256_pp0_iter1_reg = ap_const_lv4_0)) and not((i_reg_256_pp0_iter1_reg = ap_const_lv4_1)) and not((i_reg_256_pp0_iter1_reg = ap_const_lv4_2)) and not((i_reg_256_pp0_iter1_reg = ap_const_lv4_3)) and not((i_reg_256_pp0_iter1_reg = ap_const_lv4_4)) and not((i_reg_256_pp0_iter1_reg = ap_const_lv4_5)) and not((i_reg_256_pp0_iter1_reg = ap_const_lv4_6)) and not((i_reg_256_pp0_iter1_reg = ap_const_lv4_7)) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (weight_buffer_8_V_full_n = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            weight_buffer_8_V_write <= ap_const_logic_1;
        else 
            weight_buffer_8_V_write <= ap_const_logic_0;
        end if; 
    end process;

    weight_cntl_V_din <= ap_const_logic_0;

    weight_cntl_V_write_assign_proc : process(weight_cntl_V_full_n, tmp_536_reg_368, ap_CS_fsm_state2, tmp_s_fu_310_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (weight_cntl_V_full_n = ap_const_logic_1) and ((tmp_s_fu_310_p2 = ap_const_lv1_0) or (tmp_536_reg_368 = ap_const_lv1_0)))) then 
            weight_cntl_V_write <= ap_const_logic_1;
        else 
            weight_cntl_V_write <= ap_const_logic_0;
        end if; 
    end process;


    weights_blk_n_AR_assign_proc : process(m_axi_weights_ARREADY, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            weights_blk_n_AR <= m_axi_weights_ARREADY;
        else 
            weights_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    weights_blk_n_R_assign_proc : process(m_axi_weights_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            weights_blk_n_R <= m_axi_weights_RVALID;
        else 
            weights_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    weights_offset_cast_fu_268_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(weights_offset),32));
end behav;
