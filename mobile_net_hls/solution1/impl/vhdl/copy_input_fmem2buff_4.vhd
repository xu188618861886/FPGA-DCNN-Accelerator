-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity copy_input_fmem2buff_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_inputs_AWVALID : OUT STD_LOGIC;
    m_axi_inputs_AWREADY : IN STD_LOGIC;
    m_axi_inputs_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_inputs_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_inputs_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inputs_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inputs_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inputs_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inputs_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inputs_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inputs_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inputs_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_WVALID : OUT STD_LOGIC;
    m_axi_inputs_WREADY : IN STD_LOGIC;
    m_axi_inputs_WDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_inputs_WSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inputs_WLAST : OUT STD_LOGIC;
    m_axi_inputs_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_ARVALID : OUT STD_LOGIC;
    m_axi_inputs_ARREADY : IN STD_LOGIC;
    m_axi_inputs_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_inputs_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_inputs_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inputs_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inputs_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inputs_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inputs_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_inputs_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inputs_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_inputs_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_RVALID : IN STD_LOGIC;
    m_axi_inputs_RREADY : OUT STD_LOGIC;
    m_axi_inputs_RDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    m_axi_inputs_RLAST : IN STD_LOGIC;
    m_axi_inputs_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inputs_BVALID : IN STD_LOGIC;
    m_axi_inputs_BREADY : OUT STD_LOGIC;
    m_axi_inputs_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_inputs_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_inputs_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    inputs_offset : IN STD_LOGIC_VECTOR (30 downto 0);
    inputs_offset1 : IN STD_LOGIC_VECTOR (17 downto 0);
    input_buffer_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    input_buffer_V_full_n : IN STD_LOGIC;
    input_buffer_V_write : OUT STD_LOGIC;
    n : IN STD_LOGIC_VECTOR (9 downto 0);
    nLoops : IN STD_LOGIC_VECTOR (1 downto 0);
    input_cntl_V_din : OUT STD_LOGIC;
    input_cntl_V_full_n : IN STD_LOGIC;
    input_cntl_V_write : OUT STD_LOGIC );
end;


architecture behav of copy_input_fmem2buff_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv18_100 : STD_LOGIC_VECTOR (17 downto 0) := "000000000100000000";
    constant ap_const_lv18_10 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000010000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal inputs_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal inputs_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond_reg_347 : STD_LOGIC_VECTOR (0 downto 0);
    signal i2_reg_190 : STD_LOGIC_VECTOR (4 downto 0);
    signal inputs_offset_cast_fu_201_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal inputs_offset_cast_reg_305 : STD_LOGIC_VECTOR (31 downto 0);
    signal base_addr1_cast4_fu_217_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal inputs_offset_cast_c_fu_221_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal inputs_offset_cast_c_reg_315 : STD_LOGIC_VECTOR (18 downto 0);
    signal tn_13_fu_230_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tn_13_reg_323 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tr_5_fu_242_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tr_5_reg_331 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal inputs_addr_reg_336 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond3_fu_236_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal base_addr1_d1_4_fu_276_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal exitcond_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state11_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state12_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state13_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exitcond_reg_347_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_288_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_595_reg_356 : STD_LOGIC_VECTOR (15 downto 0);
    signal base_addr1_d2_4_fu_294_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state11 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal base_addr1_d2_reg_147 : STD_LOGIC_VECTOR (17 downto 0);
    signal tn_reg_157 : STD_LOGIC_VECTOR (1 downto 0);
    signal base_addr1_d_reg_168 : STD_LOGIC_VECTOR (17 downto 0);
    signal exitcond1_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tr_reg_179 : STD_LOGIC_VECTOR (4 downto 0);
    signal sum2_cast_fu_266_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_inputs_ARREADY : STD_LOGIC := '0';
    signal ap_sig_ioackin_m_axi_inputs_ARREADY : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_594_fu_205_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal base_addr1_fu_209_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_s_fu_248_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_106_fu_252_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_246_cast_fu_257_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sum2_fu_261_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state11) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
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
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state11)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state11);
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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_inputs_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_inputs_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                    if ((ap_sig_ioackin_m_axi_inputs_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_inputs_ARREADY <= ap_const_logic_0;
                    elsif ((m_axi_inputs_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_inputs_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    base_addr1_d2_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_236_p2 = ap_const_lv1_1))) then 
                base_addr1_d2_reg_147 <= base_addr1_d1_4_fu_276_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                base_addr1_d2_reg_147 <= base_addr1_cast4_fu_217_p1;
            end if; 
        end if;
    end process;

    base_addr1_d_reg_168_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
                base_addr1_d_reg_168 <= base_addr1_d2_4_fu_294_p2;
            elsif (((exitcond1_fu_225_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                base_addr1_d_reg_168 <= base_addr1_d2_reg_147;
            end if; 
        end if;
    end process;

    i2_reg_190_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                i2_reg_190 <= ap_const_lv5_0;
            elsif (((exitcond_fu_282_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i2_reg_190 <= i_fu_288_p2;
            end if; 
        end if;
    end process;

    tn_reg_157_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_236_p2 = ap_const_lv1_1))) then 
                tn_reg_157 <= tn_13_reg_323;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                tn_reg_157 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    tr_reg_179_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
                tr_reg_179 <= tr_5_reg_331;
            elsif (((exitcond1_fu_225_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                tr_reg_179 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_reg_347 <= exitcond_fu_282_p2;
                exitcond_reg_347_pp0_iter1_reg <= exitcond_reg_347;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                inputs_addr_reg_336 <= sum2_cast_fu_266_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    inputs_offset_cast_c_reg_315(17 downto 0) <= inputs_offset_cast_c_fu_221_p1(17 downto 0);
                    inputs_offset_cast_reg_305(30 downto 0) <= inputs_offset_cast_fu_201_p1(30 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_reg_347 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_595_reg_356 <= m_axi_inputs_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                tn_13_reg_323 <= tn_13_fu_230_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                tr_5_reg_331 <= tr_5_fu_242_p2;
            end if;
        end if;
    end process;
    inputs_offset_cast_reg_305(31) <= '0';
    inputs_offset_cast_c_reg_315(18) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state4, ap_enable_reg_pp0_iter1, ap_CS_fsm_state2, ap_CS_fsm_state3, exitcond3_fu_236_p2, exitcond_fu_282_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter2, exitcond1_fu_225_p2, ap_sig_ioackin_m_axi_inputs_ARREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_225_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_236_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_sig_ioackin_m_axi_inputs_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_fu_282_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_fu_282_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state14;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(10);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state14 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(m_axi_inputs_RVALID, ap_enable_reg_pp0_iter1, exitcond_reg_347)
    begin
                ap_block_pp0_stage0_01001 <= ((exitcond_reg_347 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(m_axi_inputs_RVALID, ap_enable_reg_pp0_iter1, exitcond_reg_347)
    begin
                ap_block_pp0_stage0_11001 <= ((exitcond_reg_347 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(m_axi_inputs_RVALID, ap_enable_reg_pp0_iter1, exitcond_reg_347)
    begin
                ap_block_pp0_stage0_subdone <= ((exitcond_reg_347 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state11_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state12_pp0_stage0_iter1_assign_proc : process(m_axi_inputs_RVALID, exitcond_reg_347)
    begin
                ap_block_state12_pp0_stage0_iter1 <= ((exitcond_reg_347 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0));
    end process;

        ap_block_state13_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state11_assign_proc : process(exitcond_fu_282_p2)
    begin
        if ((exitcond_fu_282_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state11 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state11 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_225_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_225_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_225_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_225_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_inputs_ARREADY_assign_proc : process(m_axi_inputs_ARREADY, ap_reg_ioackin_m_axi_inputs_ARREADY)
    begin
        if ((ap_reg_ioackin_m_axi_inputs_ARREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_inputs_ARREADY <= m_axi_inputs_ARREADY;
        else 
            ap_sig_ioackin_m_axi_inputs_ARREADY <= ap_const_logic_1;
        end if; 
    end process;

    base_addr1_cast4_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(base_addr1_fu_209_p3),18));
    base_addr1_d1_4_fu_276_p2 <= std_logic_vector(unsigned(base_addr1_d2_reg_147) + unsigned(ap_const_lv18_100));
    base_addr1_d2_4_fu_294_p2 <= std_logic_vector(unsigned(base_addr1_d_reg_168) + unsigned(ap_const_lv18_10));
    base_addr1_fu_209_p3 <= (tmp_594_fu_205_p1 & ap_const_lv8_0);
    exitcond1_fu_225_p2 <= "1" when (tn_reg_157 = nLoops) else "0";
    exitcond3_fu_236_p2 <= "1" when (tr_reg_179 = ap_const_lv5_10) else "0";
    exitcond_fu_282_p2 <= "1" when (i2_reg_190 = ap_const_lv5_10) else "0";
    i_fu_288_p2 <= std_logic_vector(unsigned(i2_reg_190) + unsigned(ap_const_lv5_1));
    input_buffer_V_din <= tmp_595_reg_356;

    input_buffer_V_write_assign_proc : process(input_buffer_V_full_n, ap_block_pp0_stage0_11001, exitcond_reg_347_pp0_iter1_reg, ap_enable_reg_pp0_iter2)
    begin
        if (((exitcond_reg_347_pp0_iter1_reg = ap_const_lv1_0) and (input_buffer_V_full_n = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            input_buffer_V_write <= ap_const_logic_1;
        else 
            input_buffer_V_write <= ap_const_logic_0;
        end if; 
    end process;

    input_cntl_V_din <= ap_const_logic_0;

    input_cntl_V_write_assign_proc : process(input_cntl_V_full_n, ap_CS_fsm_state2, exitcond1_fu_225_p2)
    begin
        if (((input_cntl_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_225_p2 = ap_const_lv1_1))) then 
            input_cntl_V_write <= ap_const_logic_1;
        else 
            input_cntl_V_write <= ap_const_logic_0;
        end if; 
    end process;


    inputs_blk_n_AR_assign_proc : process(m_axi_inputs_ARREADY, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            inputs_blk_n_AR <= m_axi_inputs_ARREADY;
        else 
            inputs_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    inputs_blk_n_R_assign_proc : process(m_axi_inputs_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_347)
    begin
        if (((exitcond_reg_347 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            inputs_blk_n_R <= m_axi_inputs_RVALID;
        else 
            inputs_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    inputs_offset_cast_c_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inputs_offset1),19));
    inputs_offset_cast_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inputs_offset),32));
    m_axi_inputs_ARADDR <= inputs_addr_reg_336;
    m_axi_inputs_ARBURST <= ap_const_lv2_0;
    m_axi_inputs_ARCACHE <= ap_const_lv4_0;
    m_axi_inputs_ARID <= ap_const_lv1_0;
    m_axi_inputs_ARLEN <= ap_const_lv32_10;
    m_axi_inputs_ARLOCK <= ap_const_lv2_0;
    m_axi_inputs_ARPROT <= ap_const_lv3_0;
    m_axi_inputs_ARQOS <= ap_const_lv4_0;
    m_axi_inputs_ARREGION <= ap_const_lv4_0;
    m_axi_inputs_ARSIZE <= ap_const_lv3_0;
    m_axi_inputs_ARUSER <= ap_const_lv1_0;

    m_axi_inputs_ARVALID_assign_proc : process(ap_CS_fsm_state4, ap_reg_ioackin_m_axi_inputs_ARREADY)
    begin
        if (((ap_reg_ioackin_m_axi_inputs_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            m_axi_inputs_ARVALID <= ap_const_logic_1;
        else 
            m_axi_inputs_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_inputs_AWADDR <= ap_const_lv32_0;
    m_axi_inputs_AWBURST <= ap_const_lv2_0;
    m_axi_inputs_AWCACHE <= ap_const_lv4_0;
    m_axi_inputs_AWID <= ap_const_lv1_0;
    m_axi_inputs_AWLEN <= ap_const_lv32_0;
    m_axi_inputs_AWLOCK <= ap_const_lv2_0;
    m_axi_inputs_AWPROT <= ap_const_lv3_0;
    m_axi_inputs_AWQOS <= ap_const_lv4_0;
    m_axi_inputs_AWREGION <= ap_const_lv4_0;
    m_axi_inputs_AWSIZE <= ap_const_lv3_0;
    m_axi_inputs_AWUSER <= ap_const_lv1_0;
    m_axi_inputs_AWVALID <= ap_const_logic_0;
    m_axi_inputs_BREADY <= ap_const_logic_0;

    m_axi_inputs_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_347, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_347 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_inputs_RREADY <= ap_const_logic_1;
        else 
            m_axi_inputs_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_inputs_WDATA <= ap_const_lv16_0;
    m_axi_inputs_WID <= ap_const_lv1_0;
    m_axi_inputs_WLAST <= ap_const_logic_0;
    m_axi_inputs_WSTRB <= ap_const_lv2_0;
    m_axi_inputs_WUSER <= ap_const_lv1_0;
    m_axi_inputs_WVALID <= ap_const_logic_0;
    sum2_cast_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sum2_fu_261_p2),64));
    sum2_fu_261_p2 <= std_logic_vector(unsigned(inputs_offset_cast_reg_305) + unsigned(tmp_246_cast_fu_257_p1));
    tmp_106_fu_252_p2 <= std_logic_vector(unsigned(inputs_offset_cast_c_reg_315) + unsigned(tmp_s_fu_248_p1));
    tmp_246_cast_fu_257_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_106_fu_252_p2),32));
    tmp_594_fu_205_p1 <= n(9 - 1 downto 0);
    tmp_s_fu_248_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(base_addr1_d_reg_168),19));
    tn_13_fu_230_p2 <= std_logic_vector(unsigned(tn_reg_157) + unsigned(ap_const_lv2_1));
    tr_5_fu_242_p2 <= std_logic_vector(unsigned(tr_reg_179) + unsigned(ap_const_lv5_1));
end behav;
