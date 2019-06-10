-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity copy_input_fmem2buff is
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
    inputs_offset1 : IN STD_LOGIC_VECTOR (9 downto 0);
    input_buffer_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    input_buffer_V_full_n : IN STD_LOGIC;
    input_buffer_V_write : OUT STD_LOGIC;
    n : IN STD_LOGIC_VECTOR (9 downto 0);
    nLoops : IN STD_LOGIC_VECTOR (5 downto 0);
    input_cntl_V_din : OUT STD_LOGIC;
    input_cntl_V_full_n : IN STD_LOGIC;
    input_cntl_V_write : OUT STD_LOGIC );
end;


architecture behav of copy_input_fmem2buff is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal inputs_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal inputs_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond_reg_207 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_126 : STD_LOGIC_VECTOR (5 downto 0);
    signal inputs_addr_reg_191 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_ioackin_m_axi_inputs_ARREADY : STD_LOGIC;
    signal exitcond_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state9_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exitcond_reg_207_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_2_fu_185_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_reg_216 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state9 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal sum2_cast_fu_165_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_inputs_ARREADY : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_70_fu_145_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal inputs_offset_cast_c_fu_141_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_71_fu_149_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_72_cast_fu_155_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal inputs_offset_cast_fu_137_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sum2_fu_159_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state9) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
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
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state9)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state9);
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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
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
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    if ((ap_sig_ioackin_m_axi_inputs_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_inputs_ARREADY <= ap_const_logic_0;
                    elsif ((m_axi_inputs_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_inputs_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    i_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_180_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_reg_126 <= i_2_fu_185_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                i_reg_126 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_reg_207 <= exitcond_fu_180_p2;
                exitcond_reg_207_pp0_iter1_reg <= exitcond_reg_207;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                inputs_addr_reg_191 <= sum2_cast_fu_165_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_reg_207 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_216 <= m_axi_inputs_RDATA;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_enable_reg_pp0_iter1, ap_sig_ioackin_m_axi_inputs_ARREADY, exitcond_fu_180_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_sig_ioackin_m_axi_inputs_ARREADY = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_fu_180_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_fu_180_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(8);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(m_axi_inputs_RVALID, ap_enable_reg_pp0_iter1, exitcond_reg_207)
    begin
                ap_block_pp0_stage0_01001 <= ((exitcond_reg_207 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(m_axi_inputs_RVALID, ap_enable_reg_pp0_iter1, exitcond_reg_207)
    begin
                ap_block_pp0_stage0_11001 <= ((exitcond_reg_207 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(m_axi_inputs_RVALID, ap_enable_reg_pp0_iter1, exitcond_reg_207)
    begin
                ap_block_pp0_stage0_subdone <= ((exitcond_reg_207 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_state10_pp0_stage0_iter1_assign_proc : process(m_axi_inputs_RVALID, exitcond_reg_207)
    begin
                ap_block_state10_pp0_stage0_iter1 <= ((exitcond_reg_207 = ap_const_lv1_0) and (m_axi_inputs_RVALID = ap_const_logic_0));
    end process;

        ap_block_state11_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state9_assign_proc : process(exitcond_fu_180_p2)
    begin
        if ((exitcond_fu_180_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state9 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state9 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
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

    exitcond_fu_180_p2 <= "1" when (i_reg_126 = nLoops) else "0";
    i_2_fu_185_p2 <= std_logic_vector(unsigned(i_reg_126) + unsigned(ap_const_lv6_1));
    input_buffer_V_din <= tmp_reg_216;

    input_buffer_V_write_assign_proc : process(input_buffer_V_full_n, ap_block_pp0_stage0_11001, exitcond_reg_207_pp0_iter1_reg, ap_enable_reg_pp0_iter2)
    begin
        if (((exitcond_reg_207_pp0_iter1_reg = ap_const_lv1_0) and (input_buffer_V_full_n = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            input_buffer_V_write <= ap_const_logic_1;
        else 
            input_buffer_V_write <= ap_const_logic_0;
        end if; 
    end process;

    input_cntl_V_din <= ap_const_logic_0;

    input_cntl_V_write_assign_proc : process(input_cntl_V_full_n, ap_CS_fsm_state12)
    begin
        if (((input_cntl_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
            input_cntl_V_write <= ap_const_logic_1;
        else 
            input_cntl_V_write <= ap_const_logic_0;
        end if; 
    end process;


    inputs_blk_n_AR_assign_proc : process(m_axi_inputs_ARREADY, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            inputs_blk_n_AR <= m_axi_inputs_ARREADY;
        else 
            inputs_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    inputs_blk_n_R_assign_proc : process(m_axi_inputs_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_207)
    begin
        if (((exitcond_reg_207 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            inputs_blk_n_R <= m_axi_inputs_RVALID;
        else 
            inputs_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    inputs_offset_cast_c_fu_141_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inputs_offset1),11));
    inputs_offset_cast_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(inputs_offset),32));
    m_axi_inputs_ARADDR <= inputs_addr_reg_191;
    m_axi_inputs_ARBURST <= ap_const_lv2_0;
    m_axi_inputs_ARCACHE <= ap_const_lv4_0;
    m_axi_inputs_ARID <= ap_const_lv1_0;
    m_axi_inputs_ARLEN <= std_logic_vector(IEEE.numeric_std.resize(unsigned(nLoops),32));
    m_axi_inputs_ARLOCK <= ap_const_lv2_0;
    m_axi_inputs_ARPROT <= ap_const_lv3_0;
    m_axi_inputs_ARQOS <= ap_const_lv4_0;
    m_axi_inputs_ARREGION <= ap_const_lv4_0;
    m_axi_inputs_ARSIZE <= ap_const_lv3_0;
    m_axi_inputs_ARUSER <= ap_const_lv1_0;

    m_axi_inputs_ARVALID_assign_proc : process(ap_CS_fsm_state2, ap_reg_ioackin_m_axi_inputs_ARREADY)
    begin
        if (((ap_reg_ioackin_m_axi_inputs_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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

    m_axi_inputs_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_207, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_207 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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
    sum2_cast_fu_165_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sum2_fu_159_p2),64));
    sum2_fu_159_p2 <= std_logic_vector(unsigned(tmp_72_cast_fu_155_p1) + unsigned(inputs_offset_cast_fu_137_p1));
    tmp_70_fu_145_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n),11));
    tmp_71_fu_149_p2 <= std_logic_vector(unsigned(tmp_70_fu_145_p1) + unsigned(inputs_offset_cast_c_fu_141_p1));
    tmp_72_cast_fu_155_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_71_fu_149_p2),32));
end behav;
