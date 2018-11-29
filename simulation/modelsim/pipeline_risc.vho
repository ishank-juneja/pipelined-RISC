-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/29/2018 18:01:23"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	output : OUT std_logic
	);
END datapath;

-- Design Ports Information
-- output	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl|output[1]~31_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[0]~16_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~21_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~22_combout\ : std_logic;
SIGNAL \ctrl|output[7]~29_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~38_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~39_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~28_combout\ : std_logic;
SIGNAL \temp_instr[3]~6_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[0]~4_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[0]~5_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~26_combout\ : std_logic;
SIGNAL \temp_instr[4]~5_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~36_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~37_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[1]~2_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~27_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~32_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[0]~6_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[1]~1_combout\ : std_logic;
SIGNAL \stage1_1|DE|next_t3[3]~4_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[3]~2_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[2]~2_combout\ : std_logic;
SIGNAL \stage1_1|DE|next_t3[5]~1_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~29_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[5]~3_combout\ : std_logic;
SIGNAL \stage1_1|DE|next_t3[4]~0_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[4]~0_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[1]~3_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[1]~4_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[1]~3_combout\ : std_logic;
SIGNAL \temp_instr[5]~4_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[2]~0_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[2]~1_combout\ : std_logic;
SIGNAL \ctrl|output[8]~25_combout\ : std_logic;
SIGNAL \stage2_2|m_23|o[1]~0_combout\ : std_logic;
SIGNAL \stage2_2|DH|kill_bit~2_combout\ : std_logic;
SIGNAL \ctrl|output[5]~27_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~30_combout\ : std_logic;
SIGNAL \temp_instr[6]~3_combout\ : std_logic;
SIGNAL \PR1_instr|Q[6]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|m_20|o[0]~2_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~33_combout\ : std_logic;
SIGNAL \temp_instr[7]~2_combout\ : std_logic;
SIGNAL \PR1_instr|Q[7]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|m_20|o[1]~1_combout\ : std_logic;
SIGNAL \stage2_2|m_20|o[2]~0_combout\ : std_logic;
SIGNAL \stage2_2|DH|kill_bit~0_combout\ : std_logic;
SIGNAL \stage2_2|DH|kill_bit~1_combout\ : std_logic;
SIGNAL \stage2_2|DH|kill_bit~3_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[7]~7_combout\ : std_logic;
SIGNAL \stage1_1|DE|next_t3[7]~3_combout\ : std_logic;
SIGNAL \pause~1_combout\ : std_logic;
SIGNAL \pause~0_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[6]~4_combout\ : std_logic;
SIGNAL \stage1_1|DE|next_t3[6]~2_combout\ : std_logic;
SIGNAL \pause~2_combout\ : std_logic;
SIGNAL \pause~3_combout\ : std_logic;
SIGNAL \ctrl|Equal10~1_combout\ : std_logic;
SIGNAL \ctrl|Equal10~2_combout\ : std_logic;
SIGNAL \ctrl|output[9]~24_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[2]~21\ : std_logic;
SIGNAL \PR2_lmloop|Q[3]~22_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[3]~23\ : std_logic;
SIGNAL \PR2_lmloop|Q[4]~24_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[4]~25\ : std_logic;
SIGNAL \PR2_lmloop|Q[5]~26_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[5]~27\ : std_logic;
SIGNAL \PR2_lmloop|Q[6]~28_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[6]~29\ : std_logic;
SIGNAL \PR2_lmloop|Q[7]~30_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[7]~31\ : std_logic;
SIGNAL \PR2_lmloop|Q[8]~32_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[8]~33\ : std_logic;
SIGNAL \PR2_lmloop|Q[9]~34_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[9]~35\ : std_logic;
SIGNAL \PR2_lmloop|Q[10]~36_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[10]~37\ : std_logic;
SIGNAL \PR2_lmloop|Q[11]~38_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[11]~39\ : std_logic;
SIGNAL \PR2_lmloop|Q[12]~40_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[12]~41\ : std_logic;
SIGNAL \PR2_lmloop|Q[13]~42_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[13]~26_combout\ : std_logic;
SIGNAL \PR3_rfa3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~6_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~8_combout\ : std_logic;
SIGNAL \zero_flag|Q~0_combout\ : std_logic;
SIGNAL \zero_flag|Q~1_combout\ : std_logic;
SIGNAL \zero_flag|Q~q\ : std_logic;
SIGNAL \temp_instr[1]~9_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~51_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~0_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~1_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~2_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~3_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \ctrl|Equal10~0_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[3]~37_combout\ : std_logic;
SIGNAL \PR2_pc|Q[3]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[3]~35_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr3~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr2~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr0~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr1~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[3]~52_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[3]~53_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr4~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr6~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[3]~50_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr5~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r7_write~combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[3]~10_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr7~combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[3]~51_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[3]~54_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~7_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[0]~10_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[3]~36_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[3]~37_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[3]~57_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[3]~14_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[3]~10_combout\ : std_logic;
SIGNAL \PR2_pc|Q[2]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[2]~38_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[2]~57_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[2]~58_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[2]~11_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[2]~55_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[2]~56_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[2]~59_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[2]~15_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[2]~11_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~27_combout\ : std_logic;
SIGNAL \temp_instr[0]~8_combout\ : std_logic;
SIGNAL \PR1_LS7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~41_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[0]~67_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[0]~68_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[0]~65_combout\ : std_logic;
SIGNAL \PR1_pc|Q[0]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[0]~13_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[0]~66_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[0]~69_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[0]~43_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[0]~17_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[0]~18_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[0]~9_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[0]~41_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[0]~42_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~42_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa0|c~0_combout\ : std_logic;
SIGNAL \PR1_pc|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[1]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[1]~44_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[1]~43_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[1]~52_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~21feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~21_q\ : std_logic;
SIGNAL \PR2_ctrl|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PR3_ctrl|Q[6]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~74_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~75_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~23_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~73_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[0]~53_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[2]~39_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[2]~50_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~26_q\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~31_combout\ : std_logic;
SIGNAL \temp_instr[2]~7_combout\ : std_logic;
SIGNAL \PR1_LS7|Q[9]~feeder_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa0|c~0_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~1_cout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~3\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~5\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~7\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~9\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~10_combout\ : std_logic;
SIGNAL \ctrl|output~23_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[4]~2_combout\ : std_logic;
SIGNAL \PR2_ctrl|Q[4]~feeder_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[4]~3_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[4]~4_combout\ : std_logic;
SIGNAL \incPC[0]~1\ : std_logic;
SIGNAL \incPC[1]~3\ : std_logic;
SIGNAL \incPC[2]~5\ : std_logic;
SIGNAL \incPC[3]~7\ : std_logic;
SIGNAL \incPC[4]~9\ : std_logic;
SIGNAL \incPC[5]~10_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[5]~12_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[5]~32_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[4]~5_combout\ : std_logic;
SIGNAL \m_51|o[5]~36_combout\ : std_logic;
SIGNAL \m_51|o[5]~37_combout\ : std_logic;
SIGNAL \m_51|o[5]~38_combout\ : std_logic;
SIGNAL \stage0_0|PC_WR~combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[5]~29_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[5]~8_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[5]~35_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[5]~55_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[4]~36_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[4]~56_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~7\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~9\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~10_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[5]~14_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[6]~37_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[6]~38_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[6]~35_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[6]~7_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[6]~36_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[6]~39_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[6]~11_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[6]~7_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[6]~34_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[6]~54_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~11\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~12_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[6]~15_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~28_q\ : std_logic;
SIGNAL \PR3_LS7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[7]~33_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[7]~53_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~29_q\ : std_logic;
SIGNAL \stage3_1|m_34|o[8]~32_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[8]~52_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[8]~feeder_combout\ : std_logic;
SIGNAL \m_2x|o[8]~0_combout\ : std_logic;
SIGNAL \m_2x|o[7]~1_combout\ : std_logic;
SIGNAL \m_2x|o[6]~2_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~11\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~13\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~14_combout\ : std_logic;
SIGNAL \incPC[5]~11\ : std_logic;
SIGNAL \incPC[6]~13\ : std_logic;
SIGNAL \incPC[7]~14_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[7]~30_combout\ : std_logic;
SIGNAL \m_51|o[7]~30_combout\ : std_logic;
SIGNAL \m_51|o[7]~31_combout\ : std_logic;
SIGNAL \m_51|o[7]~32_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~15\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~16_combout\ : std_logic;
SIGNAL \incPC[7]~15\ : std_logic;
SIGNAL \incPC[8]~16_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[8]~9_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[8]~29_combout\ : std_logic;
SIGNAL \m_51|o[8]~27_combout\ : std_logic;
SIGNAL \m_51|o[8]~28_combout\ : std_logic;
SIGNAL \m_51|o[8]~29_combout\ : std_logic;
SIGNAL \PR1_pc|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[8]~10_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[8]~11_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[8]~5_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~13\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~15\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~16_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[8]~7_combout\ : std_logic;
SIGNAL \PR3_aluout|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~31_q\ : std_logic;
SIGNAL \stage3_1|m_34|o[10]~30_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[10]~50_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[10]~3_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r6|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[10]~15_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[10]~16_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r3|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[10]~17_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[10]~18_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[10]~19_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[10]~7_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[10]~3_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[9]~31_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[9]~51_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[9]~feeder_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~17\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~18_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[9]~8_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[9]~28_combout\ : std_logic;
SIGNAL \incPC[8]~17\ : std_logic;
SIGNAL \incPC[9]~18_combout\ : std_logic;
SIGNAL \m_51|o[9]~24_combout\ : std_logic;
SIGNAL \m_51|o[9]~25_combout\ : std_logic;
SIGNAL \m_51|o[9]~26_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~17\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~18_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[9]~8_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[9]~8_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[9]~9_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[9]~4_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~19\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~20_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[10]~3_combout\ : std_logic;
SIGNAL \PR3_aluout|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~33_q\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~19\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~21\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~23\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~24_combout\ : std_logic;
SIGNAL \incPC[9]~19\ : std_logic;
SIGNAL \incPC[10]~21\ : std_logic;
SIGNAL \incPC[11]~23\ : std_logic;
SIGNAL \incPC[12]~24_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[12]~7_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[12]~8_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[12]~1_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[12]~5_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[12]~6_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[12]~9_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[12]~5_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[12]~25_combout\ : std_logic;
SIGNAL \m_51|o[12]~15_combout\ : std_logic;
SIGNAL \m_51|o[12]~16_combout\ : std_logic;
SIGNAL \m_51|o[12]~17_combout\ : std_logic;
SIGNAL \PR1_pc|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PR3_pc|Q[12]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[12]~2_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[12]~3_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[12]~1_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[12]~28_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[12]~48_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[11]~29_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[11]~49_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~21\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~23\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~24_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[12]~5_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[14]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[14]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[14]~72_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[14]~73_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[14]~14_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r6|Q[14]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[14]~70_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[14]~71_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[14]~74_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[14]~19_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[14]~13_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[13]~43\ : std_logic;
SIGNAL \PR2_lmloop|Q[14]~44_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[14]~45_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[14]~58_combout\ : std_logic;
SIGNAL \PR2_LS7|Q[13]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[35]~0_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~76_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~35_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~38_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~42_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[13]~0_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[13]~1_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~25\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~26_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[13]~2_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[13]~3_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[13]~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[13]~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[13]~1_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[13]~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[13]~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[13]~24_combout\ : std_logic;
SIGNAL \incPC[12]~25\ : std_logic;
SIGNAL \incPC[13]~26_combout\ : std_logic;
SIGNAL \m_51|o[13]~12_combout\ : std_logic;
SIGNAL \m_51|o[13]~13_combout\ : std_logic;
SIGNAL \m_51|o[13]~14_combout\ : std_logic;
SIGNAL \PR2_pc|Q[13]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[13]~0_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[13]~1_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[13]~0_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~25\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~27\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~28_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[14]~1_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[37]~1_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~77_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~36_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~69_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~70_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[14]~28_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[14]~29_combout\ : std_logic;
SIGNAL \incPC[13]~27\ : std_logic;
SIGNAL \incPC[14]~28_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~27\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~28_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[14]~34_combout\ : std_logic;
SIGNAL \m_51|o[14]~42_combout\ : std_logic;
SIGNAL \m_51|o[14]~43_combout\ : std_logic;
SIGNAL \m_51|o[14]~44_combout\ : std_logic;
SIGNAL \PR1_pc|Q[14]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[14]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[14]~14_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[14]~15_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[14]~46_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[14]~47_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~34_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~43_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~44_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[12]~2_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[12]~3_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[12]~14_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[12]~15_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~45_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~46_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[11]~4_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[11]~5_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~22_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[11]~26_combout\ : std_logic;
SIGNAL \incPC[11]~22_combout\ : std_logic;
SIGNAL \m_51|o[11]~18_combout\ : std_logic;
SIGNAL \m_51|o[11]~19_combout\ : std_logic;
SIGNAL \m_51|o[11]~20_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[11]~2_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[11]~10_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[11]~11_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[11]~12_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[11]~13_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[11]~14_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[11]~6_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[11]~2_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~22_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[11]~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[11]~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[11]~5_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[11]~16_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[11]~17_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~32_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~47_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~48_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[10]~6_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[10]~7_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~20_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[10]~27_combout\ : std_logic;
SIGNAL \m_51|o[10]~21_combout\ : std_logic;
SIGNAL \incPC[10]~20_combout\ : std_logic;
SIGNAL \m_51|o[10]~22_combout\ : std_logic;
SIGNAL \m_51|o[10]~23_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[10]~6_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[10]~7_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[10]~18_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[10]~19_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~49_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~50_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[9]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[9]~8_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[9]~9_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[9]~22_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[9]~23_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[9]~20_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[9]~4_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[9]~21_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[9]~24_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[9]~20_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[9]~21_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~30_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~51_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~52_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[8]~10_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[8]~11_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[8]~27_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[8]~28_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[8]~5_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r6|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[8]~25_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[8]~26_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[8]~29_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[8]~22_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[8]~23_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~53_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~54_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[7]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[7]~12_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[7]~13_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[7]~32_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[7]~33_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[7]~6_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[7]~30_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[7]~31_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[7]~34_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[7]~10_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[7]~6_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~14_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[7]~6_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[7]~12_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[7]~13_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[7]~24_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[7]~25_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~55_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~56_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[6]~14_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[6]~15_combout\ : std_logic;
SIGNAL \incPC[6]~12_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~12_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[6]~31_combout\ : std_logic;
SIGNAL \m_51|o[6]~33_combout\ : std_logic;
SIGNAL \m_51|o[6]~34_combout\ : std_logic;
SIGNAL \m_51|o[6]~35_combout\ : std_logic;
SIGNAL \PR0_pc|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[6]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[6]~26_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[6]~27_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[6]~28_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~27_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~57_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~58_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[5]~16_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[5]~17_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[5]~40_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[5]~8_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[5]~41_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[5]~42_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[5]~43_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[5]~44_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[5]~30_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[5]~31_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~59_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~60_combout\ : std_logic;
SIGNAL \PR2_pc|Q[4]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[4]~18_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[4]~19_combout\ : std_logic;
SIGNAL \incPC[4]~8_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~8_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[4]~33_combout\ : std_logic;
SIGNAL \m_51|o[4]~39_combout\ : std_logic;
SIGNAL \m_51|o[4]~40_combout\ : std_logic;
SIGNAL \m_51|o[4]~41_combout\ : std_logic;
SIGNAL \PR0_pc|Q[4]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[4]~9_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[4]~45_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[4]~46_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[4]~47_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[4]~48_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[4]~49_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[4]~13_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[4]~9_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~8_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[4]~13_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[4]~32_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[4]~33_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[4]~34_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~65_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~66_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[1]~24_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[1]~25_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[1]~62_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[1]~63_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[1]~12_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[1]~60_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[1]~61_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[1]~64_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[1]~45_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[1]~44_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~1_cout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~2_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[1]~10_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[1]~40_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[1]~16_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[1]~12_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~3\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~5\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~6_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[3]~12_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~40_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~39_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~41_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~37_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~71_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~72_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~29\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~30_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[15]~35_combout\ : std_logic;
SIGNAL \incPC[14]~29\ : std_logic;
SIGNAL \incPC[15]~30_combout\ : std_logic;
SIGNAL \m_51|o[15]~45_combout\ : std_logic;
SIGNAL \m_51|o[15]~46_combout\ : std_logic;
SIGNAL \m_51|o[15]~47_combout\ : std_logic;
SIGNAL \PR1_pc|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[15]~30_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[15]~31_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r3|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[15]~77_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[15]~78_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[15]~15_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[15]~75_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[15]~76_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[15]~79_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[15]~20_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[15]~14_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~29\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~30_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[15]~2_combout\ : std_logic;
SIGNAL \PR3_aluout|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[15]~16_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[15]~17_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[15]~48_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[15]~49_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[14]~45\ : std_logic;
SIGNAL \PR2_lmloop|Q[15]~46_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[15]~46_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[15]~59_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~31\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~32_combout\ : std_logic;
SIGNAL \ctrl_edit|new_ctrl[8]~1_combout\ : std_logic;
SIGNAL \carry_flag|Q~0_combout\ : std_logic;
SIGNAL \carry_flag|Q~q\ : std_logic;
SIGNAL \ctrl_edit|x~0_combout\ : std_logic;
SIGNAL \ctrl|output[2]~26_combout\ : std_logic;
SIGNAL \ctrl_edit|new_ctrl[2]~0_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~9_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[0]~11_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[13]~12_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2[13]~13_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[13]~47_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~26_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[13]~0_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~0_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~1_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~2_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~3_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~4_combout\ : std_logic;
SIGNAL \branch_taken~0_combout\ : std_logic;
SIGNAL \create_bubble3~combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[0]~17\ : std_logic;
SIGNAL \PR2_lmloop|Q[1]~18_combout\ : std_logic;
SIGNAL \PR2_lmloop|Q[1]~19\ : std_logic;
SIGNAL \PR2_lmloop|Q[2]~20_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[2]~38_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[2]~39_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[2]~40_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~4_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[2]~11_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~24_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~63_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~64_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[2]~22_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[2]~23_combout\ : std_logic;
SIGNAL \incPC[2]~4_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[2]~21_combout\ : std_logic;
SIGNAL \m_51|o[2]~0_combout\ : std_logic;
SIGNAL \m_51|o[2]~1_combout\ : std_logic;
SIGNAL \m_51|o[2]~2_combout\ : std_logic;
SIGNAL \temp_instr[12]~0_combout\ : std_logic;
SIGNAL \ctrl|output~22_combout\ : std_logic;
SIGNAL \stage2_2|DH|kill_bit~4_combout\ : std_logic;
SIGNAL \PR3_ctrl|Q[1]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~25_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~61_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~62_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[3]~20_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[3]~21_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~6_combout\ : std_logic;
SIGNAL \incPC[3]~6_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[3]~23_combout\ : std_logic;
SIGNAL \m_51|o[3]~6_combout\ : std_logic;
SIGNAL \m_51|o[3]~7_combout\ : std_logic;
SIGNAL \m_51|o[3]~8_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~25_combout\ : std_logic;
SIGNAL \temp_instr[15]~1_combout\ : std_logic;
SIGNAL \ctrl|output[15]~28_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[1]~5_combout\ : std_logic;
SIGNAL \stage0_0|M10|o[2]~5_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[0]~0_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[0]~1_combout\ : std_logic;
SIGNAL \stage2_2|m_23|o[0]~2_combout\ : std_logic;
SIGNAL \create_bubble5~0_combout\ : std_logic;
SIGNAL \create_bubble2~combout\ : std_logic;
SIGNAL \PR2_ctrl|Q[0]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~22_q\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~67_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \stage4_1|data_mem|RAM~68_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[0]~26_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[0]~27_combout\ : std_logic;
SIGNAL \incPC[0]~0_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa0|s~0_combout\ : std_logic;
SIGNAL \m_51|o[0]~9_combout\ : std_logic;
SIGNAL \m_51|o[0]~10_combout\ : std_logic;
SIGNAL \m_51|o[0]~11_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~34_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~35_combout\ : std_logic;
SIGNAL \stage2_2|m_23|o[2]~1_combout\ : std_logic;
SIGNAL \m51_select~0_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa1|s~2_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[1]~22_combout\ : std_logic;
SIGNAL \incPC[1]~2_combout\ : std_logic;
SIGNAL \m_51|o[1]~3_combout\ : std_logic;
SIGNAL \m_51|o[1]~4_combout\ : std_logic;
SIGNAL \m_51|o[1]~5_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~23_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~24_combout\ : std_logic;
SIGNAL \ctrl|output[0]~30_combout\ : std_logic;
SIGNAL \PR1_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_adderout|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR1_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r5|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR1_pe|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR0_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR1_instr|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR0_mux|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PR2_rfa1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR4_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR0_instr|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR4_rfa3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r6|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR4_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_lmloop|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_rfa3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR4_memdout|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_rfa3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR3_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage4_1|data_mem|RAM_rtl_0_bypass\ : std_logic_vector(0 TO 40);
SIGNAL \PR4_aluout|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_aluout|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage0_0|PC|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR4_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_newd2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_d1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR1_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_rfa2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \PR3_ctrl|ALT_INV_Q\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \ALT_INV_create_bubble3~combout\ : std_logic;
SIGNAL \ALT_INV_create_bubble2~combout\ : std_logic;
SIGNAL \ALT_INV_create_bubble5~0_combout\ : std_logic;
SIGNAL \PR2_ctrl|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 15);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \PR3_newd2|Q\(15) & \PR3_newd2|Q\(14) & 
\PR3_newd2|Q\(13) & \PR3_newd2|Q\(12) & \PR3_newd2|Q\(11) & \PR3_newd2|Q\(10) & \PR3_newd2|Q\(9) & \PR3_newd2|Q\(8) & \PR3_newd2|Q\(7) & \PR3_newd2|Q\(6) & \PR3_newd2|Q\(5) & \PR3_newd2|Q\(4) & \PR3_newd2|Q\(3) & \PR3_newd2|Q\(2) & 
\PR3_newd2|Q\(1) & \PR3_newd2|Q\(0));

\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PR3_aluout|Q\(3) & \PR3_aluout|Q\(2) & \PR3_aluout|Q\(1) & \PR3_aluout|Q\(0));

\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\stage3_1|alu_1|M|o[3]~12_combout\ & \stage3_1|alu_1|M|o[2]~11_combout\ & \stage3_1|alu_1|M|o[1]~10_combout\ & \stage3_1|alu_1|M|o[0]~9_combout\);

\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a1\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a2\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a3\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a4\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a5\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a6\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a7\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a8\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a9\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a10\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a11\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a12\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a13\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a14\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a15\ <= \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\PR3_ctrl|ALT_INV_Q\(6) <= NOT \PR3_ctrl|Q\(6);
\ALT_INV_create_bubble3~combout\ <= NOT \create_bubble3~combout\;
\ALT_INV_create_bubble2~combout\ <= NOT \create_bubble2~combout\;
\ALT_INV_create_bubble5~0_combout\ <= NOT \create_bubble5~0_combout\;
\PR2_ctrl|ALT_INV_Q\(15) <= NOT \PR2_ctrl|Q\(15);

-- Location: IOOBUF_X38_Y34_N16
\output~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl|output[0]~30_combout\,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y14_N18
\ctrl|output[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[1]~31_combout\ = (!\PR0_instr|Q\(15) & !\PR0_instr|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR0_instr|Q\(15),
	datad => \PR0_instr|Q\(14),
	combout => \ctrl|output[1]~31_combout\);

-- Location: LCCOMB_X27_Y17_N0
\PR2_lmloop|Q[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[0]~16_combout\ = \PR2_lmloop|Q\(0) $ (VCC)
-- \PR2_lmloop|Q[0]~17\ = CARRY(\PR2_lmloop|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(0),
	datad => VCC,
	combout => \PR2_lmloop|Q[0]~16_combout\,
	cout => \PR2_lmloop|Q[0]~17\);

-- Location: IOIBUF_X53_Y14_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X31_Y14_N5
\PR1_ctrl|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[15]~28_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(15));

-- Location: LCCOMB_X36_Y14_N24
\stage0_0|InstrMem|RAM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~21_combout\ = (\stage0_0|PC|Q\(2) & ((\stage0_0|PC|Q\(0) & ((!\stage0_0|PC|Q\(3)))) # (!\stage0_0|PC|Q\(0) & ((\stage0_0|PC|Q\(1)) # (\stage0_0|PC|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~21_combout\);

-- Location: LCCOMB_X36_Y14_N6
\stage0_0|InstrMem|RAM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~22_combout\ = (\create_bubble2~combout\) # (!\stage0_0|InstrMem|RAM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~21_combout\,
	datad => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~22_combout\);

-- Location: LCCOMB_X31_Y14_N30
\ctrl|output[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[7]~29_combout\ = (!\PR0_instr|Q\(15) & ((\PR0_instr|Q\(14) & (!\PR0_instr|Q\(13) & !\PR0_instr|Q\(12))) # (!\PR0_instr|Q\(14) & ((!\PR0_instr|Q\(12)) # (!\PR0_instr|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|output[7]~29_combout\);

-- Location: FF_X31_Y14_N31
\PR1_ctrl|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[7]~29_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(7));

-- Location: LCCOMB_X36_Y14_N26
\stage0_0|InstrMem|RAM~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~38_combout\ = (\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(2) & (\stage0_0|PC|Q\(1) $ (\stage0_0|PC|Q\(3))))) # (!\stage0_0|PC|Q\(0) & (((\stage0_0|PC|Q\(3) & !\stage0_0|PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~38_combout\);

-- Location: LCCOMB_X32_Y14_N8
\stage0_0|InstrMem|RAM~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~39_combout\ = (\stage0_0|InstrMem|RAM~38_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~38_combout\,
	datad => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~39_combout\);

-- Location: FF_X32_Y14_N9
\PR0_instr|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(9));

-- Location: FF_X32_Y14_N21
\PR1_instr|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(9));

-- Location: LCCOMB_X36_Y14_N22
\stage0_0|InstrMem|RAM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~28_combout\ = (\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(3) $ (((\stage0_0|PC|Q\(1) & \stage0_0|PC|Q\(2)))))) # (!\stage0_0|PC|Q\(0) & (!\stage0_0|PC|Q\(1) & (!\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~28_combout\);

-- Location: LCCOMB_X32_Y14_N26
\temp_instr[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[3]~6_combout\ = (\stage0_0|InstrMem|RAM~28_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~28_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[3]~6_combout\);

-- Location: FF_X32_Y14_N27
\PR0_instr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[3]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(3));

-- Location: FF_X32_Y14_N29
\PR1_instr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(3));

-- Location: LCCOMB_X32_Y14_N20
\stage2_2|m_22|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[0]~4_combout\ = (\PR1_ctrl|Q\(7) & ((\PR1_ctrl|Q\(6) & ((\PR1_instr|Q\(3)))) # (!\PR1_ctrl|Q\(6) & (\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_ctrl|Q\(6),
	datab => \PR1_ctrl|Q\(7),
	datac => \PR1_instr|Q\(9),
	datad => \PR1_instr|Q\(3),
	combout => \stage2_2|m_22|o[0]~4_combout\);

-- Location: LCCOMB_X32_Y14_N28
\stage2_2|m_22|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[0]~5_combout\ = (\stage2_2|m_22|o[0]~4_combout\) # ((!\PR1_ctrl|Q\(7) & \PR1_pe|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_ctrl|Q\(7),
	datab => \stage2_2|m_22|o[0]~4_combout\,
	datad => \PR1_pe|Q\(0),
	combout => \stage2_2|m_22|o[0]~5_combout\);

-- Location: LCCOMB_X36_Y14_N30
\stage0_0|InstrMem|RAM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~26_combout\ = (\stage0_0|PC|Q\(3) & (!\stage0_0|PC|Q\(2) & ((\stage0_0|PC|Q\(1)) # (\stage0_0|PC|Q\(0))))) # (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(1) & (\stage0_0|PC|Q\(0))) # (!\stage0_0|PC|Q\(1) & (!\stage0_0|PC|Q\(0) & 
-- \stage0_0|PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~26_combout\);

-- Location: LCCOMB_X32_Y14_N30
\temp_instr[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[4]~5_combout\ = (\stage0_0|InstrMem|RAM~26_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~26_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[4]~5_combout\);

-- Location: FF_X32_Y14_N31
\PR0_instr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[4]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(4));

-- Location: FF_X32_Y14_N7
\PR1_instr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(4));

-- Location: LCCOMB_X36_Y14_N16
\stage0_0|InstrMem|RAM~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~36_combout\ = (\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(1) & (!\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(2)))) # (!\stage0_0|PC|Q\(0) & (((\stage0_0|PC|Q\(3) & !\stage0_0|PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~36_combout\);

-- Location: LCCOMB_X32_Y14_N22
\stage0_0|InstrMem|RAM~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~37_combout\ = (\stage0_0|InstrMem|RAM~36_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|InstrMem|RAM~36_combout\,
	datad => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~37_combout\);

-- Location: FF_X32_Y14_N23
\PR0_instr|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(10));

-- Location: FF_X32_Y14_N1
\PR1_instr|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(10));

-- Location: LCCOMB_X32_Y14_N6
\stage2_2|m_22|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[1]~2_combout\ = (\PR1_ctrl|Q\(7) & ((\PR1_ctrl|Q\(6) & (\PR1_instr|Q\(4))) # (!\PR1_ctrl|Q\(6) & ((\PR1_instr|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_ctrl|Q\(6),
	datab => \PR1_ctrl|Q\(7),
	datac => \PR1_instr|Q\(4),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|m_22|o[1]~2_combout\);

-- Location: LCCOMB_X36_Y14_N4
\stage0_0|InstrMem|RAM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~27_combout\ = (\stage0_0|PC|Q\(1) & (((!\stage0_0|PC|Q\(2)) # (!\stage0_0|PC|Q\(3))))) # (!\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(3))) # (!\stage0_0|PC|Q\(0) & (!\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~27_combout\);

-- Location: LCCOMB_X36_Y14_N2
\stage0_0|InstrMem|RAM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~32_combout\ = (\stage0_0|PC|Q\(3) & (!\stage0_0|PC|Q\(2) & (\stage0_0|PC|Q\(1) $ (!\stage0_0|PC|Q\(0))))) # (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(0) & (!\stage0_0|PC|Q\(1))) # (!\stage0_0|PC|Q\(0) & ((\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~32_combout\);

-- Location: LCCOMB_X35_Y14_N16
\stage0_0|M10|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[0]~6_combout\ = (!\ctrl|output[15]~28_combout\ & \stage0_0|InstrMem|RAM~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|output[15]~28_combout\,
	datad => \stage0_0|InstrMem|RAM~32_combout\,
	combout => \stage0_0|M10|o[0]~6_combout\);

-- Location: FF_X35_Y14_N17
\PR0_mux|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|M10|o[0]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(0));

-- Location: LCCOMB_X35_Y14_N26
\stage0_0|M10|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[1]~1_combout\ = (\ctrl|output[15]~28_combout\ & (((\PR0_mux|Q\(1) & \PR0_mux|Q\(0))))) # (!\ctrl|output[15]~28_combout\ & (\stage0_0|InstrMem|RAM~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|output[15]~28_combout\,
	datab => \stage0_0|InstrMem|RAM~27_combout\,
	datac => \PR0_mux|Q\(1),
	datad => \PR0_mux|Q\(0),
	combout => \stage0_0|M10|o[1]~1_combout\);

-- Location: FF_X35_Y14_N27
\PR0_mux|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|M10|o[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(1));

-- Location: LCCOMB_X35_Y14_N4
\stage1_1|DE|next_t3[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|DE|next_t3[3]~4_combout\ = (\PR0_mux|Q\(3) & ((\PR0_mux|Q\(1)) # ((\PR0_mux|Q\(0)) # (\PR0_mux|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(1),
	datab => \PR0_mux|Q\(0),
	datac => \PR0_mux|Q\(3),
	datad => \PR0_mux|Q\(2),
	combout => \stage1_1|DE|next_t3[3]~4_combout\);

-- Location: LCCOMB_X35_Y14_N14
\stage0_0|M10|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[3]~2_combout\ = (\ctrl|output[15]~28_combout\ & (\stage1_1|DE|next_t3[3]~4_combout\)) # (!\ctrl|output[15]~28_combout\ & ((\stage0_0|InstrMem|RAM~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|output[15]~28_combout\,
	datab => \stage1_1|DE|next_t3[3]~4_combout\,
	datad => \stage0_0|InstrMem|RAM~28_combout\,
	combout => \stage0_0|M10|o[3]~2_combout\);

-- Location: FF_X35_Y14_N5
\PR0_mux|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|M10|o[3]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(3));

-- Location: LCCOMB_X35_Y14_N24
\stage1_1|PE|output[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[2]~2_combout\ = (!\PR0_mux|Q\(2) & (!\PR0_mux|Q\(3) & (!\PR0_mux|Q\(1) & !\PR0_mux|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(2),
	datab => \PR0_mux|Q\(3),
	datac => \PR0_mux|Q\(1),
	datad => \PR0_mux|Q\(0),
	combout => \stage1_1|PE|output[2]~2_combout\);

-- Location: LCCOMB_X35_Y14_N18
\stage1_1|DE|next_t3[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|DE|next_t3[5]~1_combout\ = (\PR0_mux|Q\(5) & ((\stage1_1|PE|output[1]~4_combout\) # ((!\stage1_1|PE|output[0]~1_combout\) # (!\stage1_1|PE|output[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1_1|PE|output[1]~4_combout\,
	datab => \stage1_1|PE|output[2]~2_combout\,
	datac => \PR0_mux|Q\(5),
	datad => \stage1_1|PE|output[0]~1_combout\,
	combout => \stage1_1|DE|next_t3[5]~1_combout\);

-- Location: LCCOMB_X36_Y14_N0
\stage0_0|InstrMem|RAM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~29_combout\ = (\stage0_0|PC|Q\(1) & (\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(3) $ (\stage0_0|PC|Q\(2))))) # (!\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(0)) # (!\stage0_0|PC|Q\(2)))) # (!\stage0_0|PC|Q\(3) & 
-- ((\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~29_combout\);

-- Location: LCCOMB_X35_Y14_N30
\stage0_0|M10|o[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[5]~3_combout\ = (\ctrl|output[15]~28_combout\ & (\stage1_1|DE|next_t3[5]~1_combout\)) # (!\ctrl|output[15]~28_combout\ & ((\stage0_0|InstrMem|RAM~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|output[15]~28_combout\,
	datab => \stage1_1|DE|next_t3[5]~1_combout\,
	datac => \stage0_0|InstrMem|RAM~29_combout\,
	combout => \stage0_0|M10|o[5]~3_combout\);

-- Location: FF_X35_Y14_N31
\PR0_mux|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|M10|o[5]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(5));

-- Location: LCCOMB_X35_Y14_N28
\stage1_1|DE|next_t3[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|DE|next_t3[4]~0_combout\ = (\PR0_mux|Q\(4) & ((\stage1_1|PE|output[1]~4_combout\) # ((\stage1_1|PE|output[0]~1_combout\) # (!\stage1_1|PE|output[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1_1|PE|output[1]~4_combout\,
	datab => \stage1_1|PE|output[2]~2_combout\,
	datac => \PR0_mux|Q\(4),
	datad => \stage1_1|PE|output[0]~1_combout\,
	combout => \stage1_1|DE|next_t3[4]~0_combout\);

-- Location: LCCOMB_X34_Y14_N6
\stage0_0|M10|o[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[4]~0_combout\ = (\ctrl|output[15]~28_combout\ & (\stage1_1|DE|next_t3[4]~0_combout\)) # (!\ctrl|output[15]~28_combout\ & ((\stage0_0|InstrMem|RAM~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage1_1|DE|next_t3[4]~0_combout\,
	datac => \ctrl|output[15]~28_combout\,
	datad => \stage0_0|InstrMem|RAM~26_combout\,
	combout => \stage0_0|M10|o[4]~0_combout\);

-- Location: FF_X35_Y14_N29
\PR0_mux|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|M10|o[4]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(4));

-- Location: LCCOMB_X35_Y14_N2
\stage1_1|PE|output[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[1]~3_combout\ = (\PR0_mux|Q\(2)) # ((\PR0_mux|Q\(3)) # ((!\PR0_mux|Q\(5) & !\PR0_mux|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(2),
	datab => \PR0_mux|Q\(3),
	datac => \PR0_mux|Q\(5),
	datad => \PR0_mux|Q\(4),
	combout => \stage1_1|PE|output[1]~3_combout\);

-- Location: LCCOMB_X35_Y14_N12
\stage1_1|PE|output[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[1]~4_combout\ = (\stage1_1|PE|output[1]~3_combout\ & (!\PR0_mux|Q\(1) & !\PR0_mux|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage1_1|PE|output[1]~3_combout\,
	datac => \PR0_mux|Q\(1),
	datad => \PR0_mux|Q\(0),
	combout => \stage1_1|PE|output[1]~4_combout\);

-- Location: FF_X32_Y14_N19
\PR1_pe|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage1_1|PE|output[1]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pe|Q\(1));

-- Location: LCCOMB_X32_Y14_N12
\stage2_2|m_22|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[1]~3_combout\ = (\stage2_2|m_22|o[1]~2_combout\) # ((\PR1_pe|Q\(1) & !\PR1_ctrl|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_22|o[1]~2_combout\,
	datab => \PR1_pe|Q\(1),
	datad => \PR1_ctrl|Q\(7),
	combout => \stage2_2|m_22|o[1]~3_combout\);

-- Location: FF_X35_Y14_N25
\PR1_pe|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage1_1|PE|output[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pe|Q\(2));

-- Location: LCCOMB_X32_Y14_N10
\temp_instr[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[5]~4_combout\ = (\stage0_0|InstrMem|RAM~29_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|InstrMem|RAM~29_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[5]~4_combout\);

-- Location: FF_X32_Y14_N11
\PR0_instr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[5]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(5));

-- Location: FF_X32_Y14_N13
\PR1_instr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(5));

-- Location: LCCOMB_X32_Y14_N24
\stage2_2|m_22|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[2]~0_combout\ = (\PR1_ctrl|Q\(7) & ((\PR1_ctrl|Q\(6) & (\PR1_instr|Q\(5))) # (!\PR1_ctrl|Q\(6) & ((\PR1_instr|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_ctrl|Q\(6),
	datab => \PR1_instr|Q\(5),
	datac => \PR1_instr|Q\(11),
	datad => \PR1_ctrl|Q\(7),
	combout => \stage2_2|m_22|o[2]~0_combout\);

-- Location: LCCOMB_X32_Y14_N18
\stage2_2|m_22|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[2]~1_combout\ = (\stage2_2|m_22|o[2]~0_combout\) # ((\PR1_pe|Q\(2) & !\PR1_ctrl|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pe|Q\(2),
	datab => \PR1_ctrl|Q\(7),
	datad => \stage2_2|m_22|o[2]~0_combout\,
	combout => \stage2_2|m_22|o[2]~1_combout\);

-- Location: LCCOMB_X31_Y14_N26
\ctrl|output[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[8]~25_combout\ = (!\PR0_instr|Q\(15) & (!\PR0_instr|Q\(13) & !\PR0_instr|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(14),
	combout => \ctrl|output[8]~25_combout\);

-- Location: FF_X31_Y14_N27
\PR1_ctrl|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[8]~25_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(8));

-- Location: LCCOMB_X30_Y14_N20
\stage2_2|m_23|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_23|o[1]~0_combout\ = (\PR1_ctrl|Q\(8) & ((\PR1_instr|Q\(10)))) # (!\PR1_ctrl|Q\(8) & (\PR1_pe|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pe|Q\(1),
	datac => \PR1_ctrl|Q\(8),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|m_23|o[1]~0_combout\);

-- Location: FF_X30_Y14_N21
\PR2_rfa3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|m_23|o[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa3|Q\(1));

-- Location: LCCOMB_X32_Y14_N2
\stage2_2|DH|kill_bit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|DH|kill_bit~2_combout\ = (\stage2_2|m_22|o[1]~3_combout\ & (\PR2_rfa3|Q\(1) & (\stage2_2|m_22|o[2]~1_combout\ $ (!\PR2_rfa3|Q\(2))))) # (!\stage2_2|m_22|o[1]~3_combout\ & (!\PR2_rfa3|Q\(1) & (\stage2_2|m_22|o[2]~1_combout\ $ 
-- (!\PR2_rfa3|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_22|o[1]~3_combout\,
	datab => \stage2_2|m_22|o[2]~1_combout\,
	datac => \PR2_rfa3|Q\(2),
	datad => \PR2_rfa3|Q\(1),
	combout => \stage2_2|DH|kill_bit~2_combout\);

-- Location: LCCOMB_X31_Y14_N20
\ctrl|output[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[5]~27_combout\ = (\PR0_instr|Q\(14) & (!\PR0_instr|Q\(15) & \PR0_instr|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datac => \PR0_instr|Q\(15),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|output[5]~27_combout\);

-- Location: FF_X31_Y14_N21
\PR1_ctrl|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[5]~27_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(5));

-- Location: LCCOMB_X36_Y14_N14
\stage0_0|InstrMem|RAM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~30_combout\ = (\stage0_0|PC|Q\(3) & (((!\stage0_0|PC|Q\(2))))) # (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(2)) # ((\stage0_0|PC|Q\(1) & \stage0_0|PC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~30_combout\);

-- Location: LCCOMB_X34_Y14_N30
\temp_instr[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[6]~3_combout\ = (\stage0_0|InstrMem|RAM~30_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|InstrMem|RAM~30_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[6]~3_combout\);

-- Location: FF_X34_Y14_N31
\PR0_instr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[6]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(6));

-- Location: LCCOMB_X30_Y14_N6
\PR1_instr|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_instr|Q[6]~feeder_combout\ = \PR0_instr|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(6),
	combout => \PR1_instr|Q[6]~feeder_combout\);

-- Location: FF_X30_Y14_N7
\PR1_instr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_instr|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(6));

-- Location: LCCOMB_X30_Y14_N16
\stage2_2|m_20|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_20|o[0]~2_combout\ = (\PR1_ctrl|Q\(5) & ((\PR1_instr|Q\(6)))) # (!\PR1_ctrl|Q\(5) & (\PR1_instr|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_ctrl|Q\(5),
	datab => \PR1_instr|Q\(9),
	datad => \PR1_instr|Q\(6),
	combout => \stage2_2|m_20|o[0]~2_combout\);

-- Location: LCCOMB_X36_Y14_N28
\stage0_0|InstrMem|RAM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~33_combout\ = (\stage0_0|PC|Q\(1) & (\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(3) $ (\stage0_0|PC|Q\(2))))) # (!\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(2))) # (!\stage0_0|PC|Q\(0) & 
-- (\stage0_0|PC|Q\(3) $ (\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~33_combout\);

-- Location: LCCOMB_X34_Y14_N28
\temp_instr[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[7]~2_combout\ = (\stage0_0|InstrMem|RAM~33_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~33_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[7]~2_combout\);

-- Location: FF_X34_Y14_N29
\PR0_instr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[7]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(7));

-- Location: LCCOMB_X30_Y14_N12
\PR1_instr|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_instr|Q[7]~feeder_combout\ = \PR0_instr|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(7),
	combout => \PR1_instr|Q[7]~feeder_combout\);

-- Location: FF_X30_Y14_N13
\PR1_instr|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_instr|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(7));

-- Location: LCCOMB_X30_Y14_N26
\stage2_2|m_20|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_20|o[1]~1_combout\ = (\PR1_ctrl|Q\(5) & (\PR1_instr|Q\(7))) # (!\PR1_ctrl|Q\(5) & ((\PR1_instr|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(7),
	datac => \PR1_ctrl|Q\(5),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|m_20|o[1]~1_combout\);

-- Location: FF_X30_Y14_N25
\PR1_instr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(8));

-- Location: LCCOMB_X30_Y14_N10
\stage2_2|m_20|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_20|o[2]~0_combout\ = (\PR1_ctrl|Q\(5) & ((\PR1_instr|Q\(8)))) # (!\PR1_ctrl|Q\(5) & (\PR1_instr|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(11),
	datab => \PR1_instr|Q\(8),
	datac => \PR1_ctrl|Q\(5),
	combout => \stage2_2|m_20|o[2]~0_combout\);

-- Location: LCCOMB_X30_Y14_N8
\stage2_2|DH|kill_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|DH|kill_bit~0_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (\PR2_rfa3|Q\(1) & (\PR2_rfa3|Q\(2) $ (!\stage2_2|m_20|o[2]~0_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (!\PR2_rfa3|Q\(1) & (\PR2_rfa3|Q\(2) $ 
-- (!\stage2_2|m_20|o[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \PR2_rfa3|Q\(1),
	datac => \PR2_rfa3|Q\(2),
	datad => \stage2_2|m_20|o[2]~0_combout\,
	combout => \stage2_2|DH|kill_bit~0_combout\);

-- Location: LCCOMB_X34_Y14_N20
\stage2_2|DH|kill_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|DH|kill_bit~1_combout\ = (\stage2_2|DH|kill_bit~0_combout\ & (\stage2_2|m_20|o[0]~2_combout\ $ (!\PR2_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|DH|kill_bit~0_combout\,
	datad => \PR2_rfa3|Q\(0),
	combout => \stage2_2|DH|kill_bit~1_combout\);

-- Location: LCCOMB_X34_Y14_N10
\stage2_2|DH|kill_bit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|DH|kill_bit~3_combout\ = (\stage2_2|DH|kill_bit~1_combout\) # ((\stage2_2|DH|kill_bit~2_combout\ & (\stage2_2|m_22|o[0]~5_combout\ $ (!\PR2_rfa3|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_22|o[0]~5_combout\,
	datab => \PR2_rfa3|Q\(0),
	datac => \stage2_2|DH|kill_bit~2_combout\,
	datad => \stage2_2|DH|kill_bit~1_combout\,
	combout => \stage2_2|DH|kill_bit~3_combout\);

-- Location: LCCOMB_X34_Y14_N12
\stage0_0|M10|o[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[7]~7_combout\ = (\ctrl|output[15]~28_combout\ & (\stage1_1|DE|next_t3[7]~3_combout\)) # (!\ctrl|output[15]~28_combout\ & ((\stage0_0|InstrMem|RAM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1_1|DE|next_t3[7]~3_combout\,
	datac => \ctrl|output[15]~28_combout\,
	datad => \stage0_0|InstrMem|RAM~33_combout\,
	combout => \stage0_0|M10|o[7]~7_combout\);

-- Location: FF_X34_Y14_N13
\PR0_mux|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|M10|o[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(7));

-- Location: LCCOMB_X34_Y14_N22
\stage1_1|DE|next_t3[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|DE|next_t3[7]~3_combout\ = (\PR0_mux|Q\(7) & (((!\stage1_1|PE|output[2]~2_combout\) # (!\stage1_1|PE|output[0]~1_combout\)) # (!\stage1_1|PE|output[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(7),
	datab => \stage1_1|PE|output[1]~4_combout\,
	datac => \stage1_1|PE|output[0]~1_combout\,
	datad => \stage1_1|PE|output[2]~2_combout\,
	combout => \stage1_1|DE|next_t3[7]~3_combout\);

-- Location: LCCOMB_X35_Y14_N0
\pause~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pause~1_combout\ = (\PR0_mux|Q\(2) & ((\PR0_mux|Q\(3)) # ((\PR0_mux|Q\(1)) # (\PR0_mux|Q\(0))))) # (!\PR0_mux|Q\(2) & ((\PR0_mux|Q\(3) & ((\PR0_mux|Q\(1)) # (\PR0_mux|Q\(0)))) # (!\PR0_mux|Q\(3) & (\PR0_mux|Q\(1) & \PR0_mux|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(2),
	datab => \PR0_mux|Q\(3),
	datac => \PR0_mux|Q\(1),
	datad => \PR0_mux|Q\(0),
	combout => \pause~1_combout\);

-- Location: LCCOMB_X34_Y14_N8
\pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pause~0_combout\ = (\stage1_1|DE|next_t3[4]~0_combout\) # (\stage1_1|DE|next_t3[5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage1_1|DE|next_t3[4]~0_combout\,
	datad => \stage1_1|DE|next_t3[5]~1_combout\,
	combout => \pause~0_combout\);

-- Location: LCCOMB_X34_Y14_N14
\stage0_0|M10|o[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[6]~4_combout\ = (\ctrl|output[15]~28_combout\ & ((\stage1_1|DE|next_t3[6]~2_combout\))) # (!\ctrl|output[15]~28_combout\ & (\stage0_0|InstrMem|RAM~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~30_combout\,
	datab => \stage1_1|DE|next_t3[6]~2_combout\,
	datac => \ctrl|output[15]~28_combout\,
	combout => \stage0_0|M10|o[6]~4_combout\);

-- Location: FF_X34_Y14_N15
\PR0_mux|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|M10|o[6]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(6));

-- Location: LCCOMB_X34_Y14_N18
\stage1_1|DE|next_t3[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|DE|next_t3[6]~2_combout\ = (\PR0_mux|Q\(6) & (((\stage1_1|PE|output[0]~1_combout\) # (!\stage1_1|PE|output[2]~2_combout\)) # (!\stage1_1|PE|output[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(6),
	datab => \stage1_1|PE|output[1]~4_combout\,
	datac => \stage1_1|PE|output[0]~1_combout\,
	datad => \stage1_1|PE|output[2]~2_combout\,
	combout => \stage1_1|DE|next_t3[6]~2_combout\);

-- Location: LCCOMB_X34_Y14_N24
\pause~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pause~2_combout\ = (\stage1_1|DE|next_t3[7]~3_combout\) # ((\pause~1_combout\) # ((\pause~0_combout\) # (\stage1_1|DE|next_t3[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1_1|DE|next_t3[7]~3_combout\,
	datab => \pause~1_combout\,
	datac => \pause~0_combout\,
	datad => \stage1_1|DE|next_t3[6]~2_combout\,
	combout => \pause~2_combout\);

-- Location: LCCOMB_X34_Y14_N0
\pause~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pause~3_combout\ = (\stage2_2|DH|kill_bit~3_combout\ & (!\PR2_ctrl|Q\(6) & ((!\pause~2_combout\) # (!\ctrl|output[15]~28_combout\)))) # (!\stage2_2|DH|kill_bit~3_combout\ & (((!\pause~2_combout\)) # (!\ctrl|output[15]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|DH|kill_bit~3_combout\,
	datab => \ctrl|output[15]~28_combout\,
	datac => \PR2_ctrl|Q\(6),
	datad => \pause~2_combout\,
	combout => \pause~3_combout\);

-- Location: FF_X36_Y14_N7
\PR0_instr|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(13));

-- Location: LCCOMB_X31_Y14_N0
\ctrl|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~1_combout\ = (!\PR0_instr|Q\(14) & (\PR0_instr|Q\(15) & (!\PR0_instr|Q\(13) & \PR0_instr|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|Equal10~1_combout\);

-- Location: FF_X31_Y14_N1
\PR1_ctrl|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|Equal10~1_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(3));

-- Location: FF_X31_Y16_N7
\PR2_ctrl|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(3),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(3));

-- Location: LCCOMB_X31_Y14_N28
\ctrl|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~2_combout\ = (\PR0_instr|Q\(14) & (\PR0_instr|Q\(15) & (!\PR0_instr|Q\(13) & !\PR0_instr|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|Equal10~2_combout\);

-- Location: FF_X31_Y14_N29
\PR1_ctrl|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|Equal10~2_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(10));

-- Location: FF_X30_Y17_N1
\PR2_ctrl|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(10),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(10));

-- Location: LCCOMB_X31_Y14_N10
\ctrl|output[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[9]~24_combout\ = (!\PR0_instr|Q\(15) & (!\PR0_instr|Q\(13) & ((\PR0_instr|Q\(14)) # (\PR0_instr|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|output[9]~24_combout\);

-- Location: FF_X31_Y14_N11
\PR1_ctrl|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[9]~24_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(9));

-- Location: FF_X31_Y16_N27
\PR2_ctrl|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(9),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(9));

-- Location: LCCOMB_X27_Y17_N4
\PR2_lmloop|Q[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[2]~20_combout\ = (\PR2_lmloop|Q\(2) & (\PR2_lmloop|Q[1]~19\ $ (GND))) # (!\PR2_lmloop|Q\(2) & (!\PR2_lmloop|Q[1]~19\ & VCC))
-- \PR2_lmloop|Q[2]~21\ = CARRY((\PR2_lmloop|Q\(2) & !\PR2_lmloop|Q[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(2),
	datad => VCC,
	cin => \PR2_lmloop|Q[1]~19\,
	combout => \PR2_lmloop|Q[2]~20_combout\,
	cout => \PR2_lmloop|Q[2]~21\);

-- Location: LCCOMB_X27_Y17_N6
\PR2_lmloop|Q[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[3]~22_combout\ = (\PR2_lmloop|Q\(3) & (!\PR2_lmloop|Q[2]~21\)) # (!\PR2_lmloop|Q\(3) & ((\PR2_lmloop|Q[2]~21\) # (GND)))
-- \PR2_lmloop|Q[3]~23\ = CARRY((!\PR2_lmloop|Q[2]~21\) # (!\PR2_lmloop|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(3),
	datad => VCC,
	cin => \PR2_lmloop|Q[2]~21\,
	combout => \PR2_lmloop|Q[3]~22_combout\,
	cout => \PR2_lmloop|Q[3]~23\);

-- Location: FF_X27_Y17_N7
\PR2_lmloop|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[3]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(3));

-- Location: LCCOMB_X27_Y17_N8
\PR2_lmloop|Q[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[4]~24_combout\ = (\PR2_lmloop|Q\(4) & (\PR2_lmloop|Q[3]~23\ $ (GND))) # (!\PR2_lmloop|Q\(4) & (!\PR2_lmloop|Q[3]~23\ & VCC))
-- \PR2_lmloop|Q[4]~25\ = CARRY((\PR2_lmloop|Q\(4) & !\PR2_lmloop|Q[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(4),
	datad => VCC,
	cin => \PR2_lmloop|Q[3]~23\,
	combout => \PR2_lmloop|Q[4]~24_combout\,
	cout => \PR2_lmloop|Q[4]~25\);

-- Location: FF_X27_Y17_N9
\PR2_lmloop|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[4]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(4));

-- Location: LCCOMB_X27_Y17_N10
\PR2_lmloop|Q[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[5]~26_combout\ = (\PR2_lmloop|Q\(5) & (!\PR2_lmloop|Q[4]~25\)) # (!\PR2_lmloop|Q\(5) & ((\PR2_lmloop|Q[4]~25\) # (GND)))
-- \PR2_lmloop|Q[5]~27\ = CARRY((!\PR2_lmloop|Q[4]~25\) # (!\PR2_lmloop|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(5),
	datad => VCC,
	cin => \PR2_lmloop|Q[4]~25\,
	combout => \PR2_lmloop|Q[5]~26_combout\,
	cout => \PR2_lmloop|Q[5]~27\);

-- Location: FF_X27_Y17_N11
\PR2_lmloop|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[5]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(5));

-- Location: LCCOMB_X27_Y17_N12
\PR2_lmloop|Q[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[6]~28_combout\ = (\PR2_lmloop|Q\(6) & (\PR2_lmloop|Q[5]~27\ $ (GND))) # (!\PR2_lmloop|Q\(6) & (!\PR2_lmloop|Q[5]~27\ & VCC))
-- \PR2_lmloop|Q[6]~29\ = CARRY((\PR2_lmloop|Q\(6) & !\PR2_lmloop|Q[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(6),
	datad => VCC,
	cin => \PR2_lmloop|Q[5]~27\,
	combout => \PR2_lmloop|Q[6]~28_combout\,
	cout => \PR2_lmloop|Q[6]~29\);

-- Location: FF_X27_Y17_N13
\PR2_lmloop|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[6]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(6));

-- Location: LCCOMB_X27_Y17_N14
\PR2_lmloop|Q[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[7]~30_combout\ = (\PR2_lmloop|Q\(7) & (!\PR2_lmloop|Q[6]~29\)) # (!\PR2_lmloop|Q\(7) & ((\PR2_lmloop|Q[6]~29\) # (GND)))
-- \PR2_lmloop|Q[7]~31\ = CARRY((!\PR2_lmloop|Q[6]~29\) # (!\PR2_lmloop|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(7),
	datad => VCC,
	cin => \PR2_lmloop|Q[6]~29\,
	combout => \PR2_lmloop|Q[7]~30_combout\,
	cout => \PR2_lmloop|Q[7]~31\);

-- Location: FF_X27_Y17_N15
\PR2_lmloop|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(7));

-- Location: LCCOMB_X27_Y17_N16
\PR2_lmloop|Q[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[8]~32_combout\ = (\PR2_lmloop|Q\(8) & (\PR2_lmloop|Q[7]~31\ $ (GND))) # (!\PR2_lmloop|Q\(8) & (!\PR2_lmloop|Q[7]~31\ & VCC))
-- \PR2_lmloop|Q[8]~33\ = CARRY((\PR2_lmloop|Q\(8) & !\PR2_lmloop|Q[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(8),
	datad => VCC,
	cin => \PR2_lmloop|Q[7]~31\,
	combout => \PR2_lmloop|Q[8]~32_combout\,
	cout => \PR2_lmloop|Q[8]~33\);

-- Location: FF_X27_Y17_N17
\PR2_lmloop|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[8]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(8));

-- Location: LCCOMB_X27_Y17_N18
\PR2_lmloop|Q[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[9]~34_combout\ = (\PR2_lmloop|Q\(9) & (!\PR2_lmloop|Q[8]~33\)) # (!\PR2_lmloop|Q\(9) & ((\PR2_lmloop|Q[8]~33\) # (GND)))
-- \PR2_lmloop|Q[9]~35\ = CARRY((!\PR2_lmloop|Q[8]~33\) # (!\PR2_lmloop|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(9),
	datad => VCC,
	cin => \PR2_lmloop|Q[8]~33\,
	combout => \PR2_lmloop|Q[9]~34_combout\,
	cout => \PR2_lmloop|Q[9]~35\);

-- Location: FF_X27_Y17_N19
\PR2_lmloop|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[9]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(9));

-- Location: LCCOMB_X27_Y17_N20
\PR2_lmloop|Q[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[10]~36_combout\ = (\PR2_lmloop|Q\(10) & (\PR2_lmloop|Q[9]~35\ $ (GND))) # (!\PR2_lmloop|Q\(10) & (!\PR2_lmloop|Q[9]~35\ & VCC))
-- \PR2_lmloop|Q[10]~37\ = CARRY((\PR2_lmloop|Q\(10) & !\PR2_lmloop|Q[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(10),
	datad => VCC,
	cin => \PR2_lmloop|Q[9]~35\,
	combout => \PR2_lmloop|Q[10]~36_combout\,
	cout => \PR2_lmloop|Q[10]~37\);

-- Location: FF_X27_Y17_N21
\PR2_lmloop|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[10]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(10));

-- Location: LCCOMB_X27_Y17_N22
\PR2_lmloop|Q[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[11]~38_combout\ = (\PR2_lmloop|Q\(11) & (!\PR2_lmloop|Q[10]~37\)) # (!\PR2_lmloop|Q\(11) & ((\PR2_lmloop|Q[10]~37\) # (GND)))
-- \PR2_lmloop|Q[11]~39\ = CARRY((!\PR2_lmloop|Q[10]~37\) # (!\PR2_lmloop|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(11),
	datad => VCC,
	cin => \PR2_lmloop|Q[10]~37\,
	combout => \PR2_lmloop|Q[11]~38_combout\,
	cout => \PR2_lmloop|Q[11]~39\);

-- Location: FF_X27_Y17_N23
\PR2_lmloop|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[11]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(11));

-- Location: LCCOMB_X27_Y17_N24
\PR2_lmloop|Q[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[12]~40_combout\ = (\PR2_lmloop|Q\(12) & (\PR2_lmloop|Q[11]~39\ $ (GND))) # (!\PR2_lmloop|Q\(12) & (!\PR2_lmloop|Q[11]~39\ & VCC))
-- \PR2_lmloop|Q[12]~41\ = CARRY((\PR2_lmloop|Q\(12) & !\PR2_lmloop|Q[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(12),
	datad => VCC,
	cin => \PR2_lmloop|Q[11]~39\,
	combout => \PR2_lmloop|Q[12]~40_combout\,
	cout => \PR2_lmloop|Q[12]~41\);

-- Location: FF_X27_Y17_N25
\PR2_lmloop|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[12]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(12));

-- Location: LCCOMB_X27_Y17_N26
\PR2_lmloop|Q[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[13]~42_combout\ = (\PR2_lmloop|Q\(13) & (!\PR2_lmloop|Q[12]~41\)) # (!\PR2_lmloop|Q\(13) & ((\PR2_lmloop|Q[12]~41\) # (GND)))
-- \PR2_lmloop|Q[13]~43\ = CARRY((!\PR2_lmloop|Q[12]~41\) # (!\PR2_lmloop|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(13),
	datad => VCC,
	cin => \PR2_lmloop|Q[12]~41\,
	combout => \PR2_lmloop|Q[13]~42_combout\,
	cout => \PR2_lmloop|Q[13]~43\);

-- Location: FF_X27_Y17_N27
\PR2_lmloop|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[13]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(13));

-- Location: FF_X34_Y16_N21
\PR2_LS7|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_instr|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(12));

-- Location: LCCOMB_X29_Y15_N22
\stage3_1|m_34|o[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[13]~26_combout\ = (\PR2_ctrl|Q\(15) & (\PR2_lmloop|Q\(13))) # (!\PR2_ctrl|Q\(15) & (((\PR2_ctrl|Q\(9) & \PR2_LS7|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(13),
	datab => \PR2_ctrl|Q\(9),
	datac => \PR2_LS7|Q\(12),
	datad => \PR2_ctrl|Q\(15),
	combout => \stage3_1|m_34|o[13]~26_combout\);

-- Location: LCCOMB_X30_Y15_N26
\PR3_rfa3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_rfa3|Q[1]~feeder_combout\ = \PR2_rfa3|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_rfa3|Q\(1),
	combout => \PR3_rfa3|Q[1]~feeder_combout\);

-- Location: FF_X30_Y15_N27
\PR3_rfa3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_rfa3|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_rfa3|Q\(1));

-- Location: FF_X30_Y15_N3
\PR4_rfa3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_rfa3|Q\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_rfa3|Q\(1));

-- Location: FF_X30_Y15_N13
\PR2_rfa2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_22|o[1]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa2|Q\(1));

-- Location: FF_X30_Y15_N19
\PR2_rfa2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_22|o[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa2|Q\(0));

-- Location: LCCOMB_X30_Y15_N12
\stage3_1|forwarding|new_d2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~6_combout\ = (\PR4_rfa3|Q\(0) & (\PR2_rfa2|Q\(0) & (\PR4_rfa3|Q\(1) $ (!\PR2_rfa2|Q\(1))))) # (!\PR4_rfa3|Q\(0) & (!\PR2_rfa2|Q\(0) & (\PR4_rfa3|Q\(1) $ (!\PR2_rfa2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(0),
	datab => \PR4_rfa3|Q\(1),
	datac => \PR2_rfa2|Q\(1),
	datad => \PR2_rfa2|Q\(0),
	combout => \stage3_1|forwarding|new_d2~6_combout\);

-- Location: LCCOMB_X30_Y15_N16
\stage3_1|forwarding|new_d2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~8_combout\ = (\PR3_rfa3|Q\(1) & (\PR2_rfa2|Q\(1) & (\PR3_rfa3|Q\(0) $ (!\PR2_rfa2|Q\(0))))) # (!\PR3_rfa3|Q\(1) & (!\PR2_rfa2|Q\(1) & (\PR3_rfa3|Q\(0) $ (!\PR2_rfa2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_rfa3|Q\(1),
	datab => \PR2_rfa2|Q\(1),
	datac => \PR3_rfa3|Q\(0),
	datad => \PR2_rfa2|Q\(0),
	combout => \stage3_1|forwarding|new_d2~8_combout\);

-- Location: FF_X32_Y16_N19
\PR2_ctrl|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(7),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(7));

-- Location: LCCOMB_X30_Y15_N4
\zero_flag|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero_flag|Q~0_combout\ = ((!\ctrl_edit|x~0_combout\ & !\PR2_ctrl|Q\(9))) # (!\PR2_ctrl|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(7),
	datab => \ctrl_edit|x~0_combout\,
	datad => \PR2_ctrl|Q\(9),
	combout => \zero_flag|Q~0_combout\);

-- Location: LCCOMB_X29_Y16_N14
\zero_flag|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero_flag|Q~1_combout\ = (\zero_flag|Q~0_combout\ & ((\zero_flag|Q~q\))) # (!\zero_flag|Q~0_combout\ & (!\stage3_1|alu_1|zero~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|zero~4_combout\,
	datab => \zero_flag|Q~0_combout\,
	datac => \zero_flag|Q~q\,
	combout => \zero_flag|Q~1_combout\);

-- Location: FF_X29_Y16_N15
\zero_flag|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zero_flag|Q~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zero_flag|Q~q\);

-- Location: LCCOMB_X32_Y14_N14
\temp_instr[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[1]~9_combout\ = (\stage0_0|InstrMem|RAM~27_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~27_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[1]~9_combout\);

-- Location: FF_X32_Y14_N15
\PR0_instr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[1]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(1));

-- Location: FF_X35_Y14_N21
\PR1_LS7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_LS7|Q\(8));

-- Location: FF_X31_Y16_N5
\PR2_LS7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_LS7|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(8));

-- Location: FF_X30_Y15_N7
\PR2_rfa2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_22|o[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa2|Q\(2));

-- Location: LCCOMB_X30_Y15_N6
\stage3_1|forwarding|new_d2~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~51_combout\ = (\stage3_1|forwarding|new_d2~8_combout\ & (\PR3_ctrl|Q\(2) & (\PR3_rfa3|Q\(2) $ (!\PR2_rfa2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \PR3_rfa3|Q\(2),
	datac => \PR2_rfa2|Q\(2),
	datad => \PR3_ctrl|Q\(2),
	combout => \stage3_1|forwarding|new_d2~51_combout\);

-- Location: FF_X34_Y16_N29
\PR2_LS7|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_instr|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(15));

-- Location: LCCOMB_X34_Y16_N26
\PR3_LS7|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_LS7|Q[15]~feeder_combout\ = \PR2_LS7|Q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_LS7|Q\(15),
	combout => \PR3_LS7|Q[15]~feeder_combout\);

-- Location: FF_X34_Y16_N27
\PR3_LS7|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_LS7|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(15));

-- Location: FF_X30_Y15_N25
\PR2_rfa1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_20|o[2]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa1|Q\(2));

-- Location: FF_X30_Y15_N1
\PR2_rfa1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_20|o[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa1|Q\(0));

-- Location: FF_X30_Y15_N23
\PR2_rfa1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_20|o[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa1|Q\(1));

-- Location: LCCOMB_X30_Y15_N22
\stage3_1|forwarding|new_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~0_combout\ = (\PR2_rfa1|Q\(0) & (\PR3_rfa3|Q\(0) & (\PR2_rfa1|Q\(1) $ (!\PR3_rfa3|Q\(1))))) # (!\PR2_rfa1|Q\(0) & (!\PR3_rfa3|Q\(0) & (\PR2_rfa1|Q\(1) $ (!\PR3_rfa3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_rfa1|Q\(0),
	datab => \PR3_rfa3|Q\(0),
	datac => \PR2_rfa1|Q\(1),
	datad => \PR3_rfa3|Q\(1),
	combout => \stage3_1|forwarding|new_d1~0_combout\);

-- Location: LCCOMB_X30_Y15_N8
\stage3_1|forwarding|new_d1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~1_combout\ = (\PR3_ctrl|Q\(2) & (\stage3_1|forwarding|new_d1~0_combout\ & (\PR2_rfa1|Q\(2) $ (!\PR3_rfa3|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_rfa1|Q\(2),
	datab => \PR3_ctrl|Q\(2),
	datac => \PR3_rfa3|Q\(2),
	datad => \stage3_1|forwarding|new_d1~0_combout\,
	combout => \stage3_1|forwarding|new_d1~1_combout\);

-- Location: FF_X30_Y15_N15
\PR4_ctrl|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_ctrl|Q\(2),
	clrn => \ALT_INV_create_bubble5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_ctrl|Q\(2));

-- Location: LCCOMB_X30_Y15_N0
\stage3_1|forwarding|new_d1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~2_combout\ = (\PR4_rfa3|Q\(0) & (\PR2_rfa1|Q\(0) & (\PR4_rfa3|Q\(1) $ (!\PR2_rfa1|Q\(1))))) # (!\PR4_rfa3|Q\(0) & (!\PR2_rfa1|Q\(0) & (\PR4_rfa3|Q\(1) $ (!\PR2_rfa1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(0),
	datab => \PR4_rfa3|Q\(1),
	datac => \PR2_rfa1|Q\(0),
	datad => \PR2_rfa1|Q\(1),
	combout => \stage3_1|forwarding|new_d1~2_combout\);

-- Location: LCCOMB_X30_Y15_N10
\stage3_1|forwarding|new_d1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~3_combout\ = (\PR4_ctrl|Q\(2) & (\stage3_1|forwarding|new_d1~2_combout\ & (\PR2_rfa1|Q\(2) $ (!\PR4_rfa3|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_rfa1|Q\(2),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \stage3_1|forwarding|new_d1~2_combout\,
	combout => \stage3_1|forwarding|new_d1~3_combout\);

-- Location: FF_X34_Y16_N15
\PR3_newd2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[15]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(15));

-- Location: LCCOMB_X29_Y19_N22
\stage4_1|data_mem|RAM_rtl_0_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[39]~feeder_combout\ = \PR3_newd2|Q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR3_newd2|Q\(15),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[39]~feeder_combout\);

-- Location: FF_X29_Y19_N23
\stage4_1|data_mem|RAM_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(39));

-- Location: LCCOMB_X29_Y19_N20
\stage4_1|data_mem|RAM_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X29_Y19_N21
\stage4_1|data_mem|RAM_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(40));

-- Location: FF_X30_Y17_N9
\stage4_1|data_mem|RAM_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[2]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(6));

-- Location: LCCOMB_X31_Y14_N12
\ctrl|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~0_combout\ = (!\PR0_instr|Q\(14) & (!\PR0_instr|Q\(15) & (\PR0_instr|Q\(13) & !\PR0_instr|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|Equal10~0_combout\);

-- Location: FF_X31_Y14_N13
\PR1_ctrl|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|Equal10~0_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(11));

-- Location: FF_X31_Y16_N3
\PR2_ctrl|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(11),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(11));

-- Location: FF_X31_Y16_N13
\PR2_LS7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_instr|Q\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(10));

-- Location: LCCOMB_X31_Y16_N12
\stage3_1|m_34|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[3]~37_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(3))))) # (!\PR2_ctrl|Q\(15) & (\PR2_ctrl|Q\(9) & ((\PR2_LS7|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_lmloop|Q\(3),
	datac => \PR2_LS7|Q\(10),
	datad => \PR2_ctrl|Q\(15),
	combout => \stage3_1|m_34|o[3]~37_combout\);

-- Location: FF_X36_Y15_N7
\PR0_pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(3));

-- Location: FF_X37_Y15_N13
\PR1_pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(3));

-- Location: LCCOMB_X29_Y19_N16
\PR2_pc|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[3]~feeder_combout\ = \PR1_pc|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR1_pc|Q\(3),
	combout => \PR2_pc|Q[3]~feeder_combout\);

-- Location: FF_X29_Y19_N17
\PR2_pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(3));

-- Location: FF_X30_Y19_N7
\PR3_pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(3));

-- Location: FF_X30_Y19_N31
\PR3_aluout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage3_1|alu_1|M|o[3]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(3));

-- Location: LCCOMB_X30_Y19_N30
\stage3_1|forwarding|new_d2[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[3]~35_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(3)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_pc|Q\(3),
	datab => \PR3_ctrl|Q\(0),
	datac => \PR3_aluout|Q\(3),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|new_d2[3]~35_combout\);

-- Location: LCCOMB_X34_Y15_N0
\stage2_2|rf_1|wr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr3~0_combout\ = (\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (!\PR4_rfa3|Q\(2) & \PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|wr3~0_combout\);

-- Location: FF_X34_Y18_N1
\stage2_2|rf_1|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(3));

-- Location: LCCOMB_X34_Y15_N2
\stage2_2|rf_1|wr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr2~0_combout\ = (\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (!\PR4_rfa3|Q\(2) & !\PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|wr2~0_combout\);

-- Location: FF_X35_Y18_N19
\stage2_2|rf_1|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(3));

-- Location: LCCOMB_X34_Y15_N10
\stage2_2|rf_1|wr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr0~0_combout\ = (!\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (!\PR4_rfa3|Q\(2) & !\PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|wr0~0_combout\);

-- Location: FF_X36_Y18_N31
\stage2_2|rf_1|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(3));

-- Location: LCCOMB_X34_Y15_N24
\stage2_2|rf_1|wr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr1~0_combout\ = (!\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (!\PR4_rfa3|Q\(2) & \PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|wr1~0_combout\);

-- Location: FF_X36_Y18_N1
\stage2_2|rf_1|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(3));

-- Location: LCCOMB_X36_Y18_N30
\stage2_2|rf_1|M1|output[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[3]~52_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|m_20|o[0]~2_combout\)) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(3)))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r0|Q\(3),
	datad => \stage2_2|rf_1|r1|Q\(3),
	combout => \stage2_2|rf_1|M1|output[3]~52_combout\);

-- Location: LCCOMB_X35_Y18_N18
\stage2_2|rf_1|M1|output[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[3]~53_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[3]~52_combout\ & (\stage2_2|rf_1|r3|Q\(3))) # (!\stage2_2|rf_1|M1|output[3]~52_combout\ & ((\stage2_2|rf_1|r2|Q\(3)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[3]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r3|Q\(3),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r2|Q\(3),
	datad => \stage2_2|rf_1|M1|output[3]~52_combout\,
	combout => \stage2_2|rf_1|M1|output[3]~53_combout\);

-- Location: LCCOMB_X34_Y15_N20
\stage2_2|rf_1|wr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr4~0_combout\ = (!\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (\PR4_rfa3|Q\(2) & !\PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|wr4~0_combout\);

-- Location: FF_X34_Y19_N11
\stage2_2|rf_1|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(3));

-- Location: LCCOMB_X34_Y15_N18
\stage2_2|rf_1|wr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr6~0_combout\ = (\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (\PR4_rfa3|Q\(2) & !\PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|wr6~0_combout\);

-- Location: FF_X34_Y19_N1
\stage2_2|rf_1|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(3));

-- Location: LCCOMB_X34_Y19_N10
\stage2_2|rf_1|M1|output[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[3]~50_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\) # ((\stage2_2|rf_1|r6|Q\(3))))) # (!\stage2_2|m_20|o[1]~1_combout\ & (!\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r4|Q\(3),
	datad => \stage2_2|rf_1|r6|Q\(3),
	combout => \stage2_2|rf_1|M1|output[3]~50_combout\);

-- Location: LCCOMB_X34_Y15_N8
\stage2_2|rf_1|wr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr5~0_combout\ = (!\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (\PR4_rfa3|Q\(2) & \PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|wr5~0_combout\);

-- Location: FF_X35_Y19_N17
\stage2_2|rf_1|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(3));

-- Location: LCCOMB_X34_Y15_N26
\stage2_2|rf_1|r7_write\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r7_write~combout\ = (\PR4_rfa3|Q\(1) & (\PR4_ctrl|Q\(2) & (\PR4_rfa3|Q\(2) & \PR4_rfa3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR4_rfa3|Q\(2),
	datad => \PR4_rfa3|Q\(0),
	combout => \stage2_2|rf_1|r7_write~combout\);

-- Location: LCCOMB_X35_Y19_N10
\stage2_2|rf_1|M1_2|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[3]~10_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[3]~21_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[3]~21_combout\,
	datad => \PR1_pc|Q\(3),
	combout => \stage2_2|rf_1|M1_2|o[3]~10_combout\);

-- Location: LCCOMB_X32_Y16_N16
\stage2_2|rf_1|wr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr7~combout\ = (\PR1_ctrl|Q\(0)) # (\stage2_2|rf_1|r7_write~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_ctrl|Q\(0),
	datac => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|wr7~combout\);

-- Location: FF_X35_Y19_N11
\stage2_2|rf_1|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[3]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(3));

-- Location: LCCOMB_X35_Y19_N16
\stage2_2|rf_1|M1|output[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[3]~51_combout\ = (\stage2_2|rf_1|M1|output[3]~50_combout\ & (((\stage2_2|rf_1|r7|Q\(3))) # (!\stage2_2|m_20|o[0]~2_combout\))) # (!\stage2_2|rf_1|M1|output[3]~50_combout\ & (\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r5|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[3]~50_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r5|Q\(3),
	datad => \stage2_2|rf_1|r7|Q\(3),
	combout => \stage2_2|rf_1|M1|output[3]~51_combout\);

-- Location: LCCOMB_X35_Y18_N20
\stage2_2|rf_1|M1|output[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[3]~54_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[3]~51_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[3]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|M1|output[3]~53_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[3]~51_combout\,
	combout => \stage2_2|rf_1|M1|output[3]~54_combout\);

-- Location: FF_X35_Y18_N21
\PR2_d1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[3]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(3));

-- Location: LCCOMB_X30_Y15_N24
\stage3_1|forwarding|new_d2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~7_combout\ = (\PR4_ctrl|Q\(2) & (\PR2_rfa2|Q\(2) $ (!\PR4_rfa3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(2),
	datab => \PR2_rfa2|Q\(2),
	datad => \PR4_rfa3|Q\(2),
	combout => \stage3_1|forwarding|new_d2~7_combout\);

-- Location: LCCOMB_X30_Y15_N28
\stage3_1|forwarding|new_d2[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[0]~10_combout\ = (\stage3_1|forwarding|new_d2~6_combout\ & (\stage3_1|forwarding|new_d2~7_combout\ & ((!\stage3_1|forwarding|new_d2~9_combout\) # (!\stage3_1|forwarding|new_d2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~6_combout\,
	datab => \stage3_1|forwarding|new_d2~8_combout\,
	datac => \stage3_1|forwarding|new_d2~9_combout\,
	datad => \stage3_1|forwarding|new_d2~7_combout\,
	combout => \stage3_1|forwarding|new_d2[0]~10_combout\);

-- Location: LCCOMB_X30_Y18_N20
\stage3_1|forwarding|new_d2[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[3]~36_combout\ = (\stage5_1|m_50|o[3]~21_combout\ & ((\stage3_1|forwarding|new_d2[0]~10_combout\) # ((\PR2_d1|Q\(3) & \stage3_1|forwarding|new_d2[0]~11_combout\)))) # (!\stage5_1|m_50|o[3]~21_combout\ & (\PR2_d1|Q\(3) & 
-- ((\stage3_1|forwarding|new_d2[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[3]~21_combout\,
	datab => \PR2_d1|Q\(3),
	datac => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~11_combout\,
	combout => \stage3_1|forwarding|new_d2[3]~36_combout\);

-- Location: LCCOMB_X30_Y18_N2
\stage3_1|forwarding|new_d2[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[3]~37_combout\ = (\stage3_1|forwarding|new_d2[3]~36_combout\) # ((\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|new_d2~9_combout\ & \stage3_1|forwarding|new_d2[3]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \stage3_1|forwarding|new_d2~9_combout\,
	datac => \stage3_1|forwarding|new_d2[3]~35_combout\,
	datad => \stage3_1|forwarding|new_d2[3]~36_combout\,
	combout => \stage3_1|forwarding|new_d2[3]~37_combout\);

-- Location: LCCOMB_X31_Y16_N26
\stage3_1|m_34|o[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[3]~57_combout\ = (\stage3_1|m_34|o[3]~37_combout\) # ((!\PR2_ctrl|Q\(15) & (!\PR2_ctrl|Q\(9) & \stage3_1|forwarding|new_d2[3]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[3]~37_combout\,
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_ctrl|Q\(9),
	datad => \stage3_1|forwarding|new_d2[3]~37_combout\,
	combout => \stage3_1|m_34|o[3]~57_combout\);

-- Location: LCCOMB_X30_Y18_N24
\stage3_1|forwarding|new_d1[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[3]~14_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & (\stage5_1|m_50|o[3]~21_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\PR2_d1|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[3]~21_combout\,
	datab => \PR2_d1|Q\(3),
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1~3_combout\,
	combout => \stage3_1|forwarding|new_d1[3]~14_combout\);

-- Location: LCCOMB_X30_Y18_N18
\stage3_1|m_32|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[3]~10_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[3]~14_combout\) # ((\stage3_1|forwarding|new_d2[3]~35_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[3]~35_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[3]~14_combout\,
	combout => \stage3_1|m_32|o[3]~10_combout\);

-- Location: FF_X36_Y15_N25
\PR0_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(2));

-- Location: FF_X37_Y15_N5
\PR1_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(2));

-- Location: LCCOMB_X35_Y17_N14
\PR2_pc|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[2]~feeder_combout\ = \PR1_pc|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(2),
	combout => \PR2_pc|Q[2]~feeder_combout\);

-- Location: FF_X35_Y17_N15
\PR2_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(2));

-- Location: FF_X31_Y17_N5
\PR3_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(2));

-- Location: LCCOMB_X31_Y17_N4
\stage3_1|forwarding|new_d2[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[2]~38_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(2))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_aluout|Q\(2),
	datac => \PR3_pc|Q\(2),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|new_d2[2]~38_combout\);

-- Location: LCCOMB_X34_Y18_N14
\stage2_2|rf_1|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r3|Q[2]~feeder_combout\ = \stage5_1|m_50|o[2]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[2]~23_combout\,
	combout => \stage2_2|rf_1|r3|Q[2]~feeder_combout\);

-- Location: FF_X34_Y18_N15
\stage2_2|rf_1|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r3|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(2));

-- Location: FF_X35_Y18_N25
\stage2_2|rf_1|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(2));

-- Location: FF_X36_Y18_N23
\stage2_2|rf_1|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(2));

-- Location: FF_X36_Y18_N17
\stage2_2|rf_1|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(2));

-- Location: LCCOMB_X36_Y18_N22
\stage2_2|rf_1|M1|output[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[2]~57_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|m_20|o[0]~2_combout\)) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(2)))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r0|Q\(2),
	datad => \stage2_2|rf_1|r1|Q\(2),
	combout => \stage2_2|rf_1|M1|output[2]~57_combout\);

-- Location: LCCOMB_X35_Y18_N24
\stage2_2|rf_1|M1|output[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[2]~58_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[2]~57_combout\ & (\stage2_2|rf_1|r3|Q\(2))) # (!\stage2_2|rf_1|M1|output[2]~57_combout\ & ((\stage2_2|rf_1|r2|Q\(2)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[2]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r3|Q\(2),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r2|Q\(2),
	datad => \stage2_2|rf_1|M1|output[2]~57_combout\,
	combout => \stage2_2|rf_1|M1|output[2]~58_combout\);

-- Location: LCCOMB_X35_Y19_N30
\stage2_2|rf_1|M1_2|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[2]~11_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[2]~23_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[2]~23_combout\,
	datad => \PR1_pc|Q\(2),
	combout => \stage2_2|rf_1|M1_2|o[2]~11_combout\);

-- Location: FF_X35_Y19_N31
\stage2_2|rf_1|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[2]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(2));

-- Location: FF_X34_Y19_N7
\stage2_2|rf_1|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(2));

-- Location: FF_X34_Y19_N17
\stage2_2|rf_1|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(2));

-- Location: LCCOMB_X34_Y19_N6
\stage2_2|rf_1|M1|output[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[2]~55_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\) # ((\stage2_2|rf_1|r6|Q\(2))))) # (!\stage2_2|m_20|o[1]~1_combout\ & (!\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r4|Q\(2),
	datad => \stage2_2|rf_1|r6|Q\(2),
	combout => \stage2_2|rf_1|M1|output[2]~55_combout\);

-- Location: FF_X35_Y19_N9
\stage2_2|rf_1|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(2));

-- Location: LCCOMB_X35_Y19_N8
\stage2_2|rf_1|M1|output[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[2]~56_combout\ = (\stage2_2|rf_1|M1|output[2]~55_combout\ & ((\stage2_2|rf_1|r7|Q\(2)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[2]~55_combout\ & (((\stage2_2|rf_1|r5|Q\(2) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(2),
	datab => \stage2_2|rf_1|M1|output[2]~55_combout\,
	datac => \stage2_2|rf_1|r5|Q\(2),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[2]~56_combout\);

-- Location: LCCOMB_X32_Y17_N6
\stage2_2|rf_1|M1|output[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[2]~59_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[2]~56_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[2]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|M1|output[2]~58_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[2]~56_combout\,
	combout => \stage2_2|rf_1|M1|output[2]~59_combout\);

-- Location: FF_X32_Y17_N7
\PR2_d1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[2]~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(2));

-- Location: LCCOMB_X31_Y17_N8
\stage3_1|forwarding|new_d1[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[2]~15_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[2]~23_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(2),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage5_1|m_50|o[2]~23_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|forwarding|new_d1[2]~15_combout\);

-- Location: LCCOMB_X31_Y17_N24
\stage3_1|m_32|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[2]~11_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[2]~15_combout\) # ((\stage3_1|forwarding|new_d2[2]~38_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d2[2]~38_combout\,
	datac => \stage3_1|forwarding|new_d1[2]~15_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|m_32|o[2]~11_combout\);

-- Location: LCCOMB_X31_Y16_N20
\stage3_1|m_34|o[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~27_combout\ = (!\PR2_ctrl|Q\(9) & !\PR2_ctrl|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datad => \PR2_ctrl|Q\(15),
	combout => \stage3_1|m_34|o[0]~27_combout\);

-- Location: LCCOMB_X31_Y14_N6
\temp_instr[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[0]~8_combout\ = (\stage0_0|InstrMem|RAM~32_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|InstrMem|RAM~32_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[0]~8_combout\);

-- Location: FF_X31_Y14_N7
\PR0_instr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[0]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(0));

-- Location: LCCOMB_X30_Y14_N18
\PR1_LS7|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_LS7|Q[7]~feeder_combout\ = \PR0_instr|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(0),
	combout => \PR1_LS7|Q[7]~feeder_combout\);

-- Location: FF_X30_Y14_N19
\PR1_LS7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_LS7|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_LS7|Q\(7));

-- Location: FF_X31_Y16_N19
\PR2_LS7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_LS7|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(7));

-- Location: LCCOMB_X31_Y16_N18
\stage3_1|m_34|o[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~41_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(0))))) # (!\PR2_ctrl|Q\(15) & (\PR2_ctrl|Q\(9) & (\PR2_LS7|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_LS7|Q\(7),
	datad => \PR2_lmloop|Q\(0),
	combout => \stage3_1|m_34|o[0]~41_combout\);

-- Location: LCCOMB_X34_Y18_N10
\stage2_2|rf_1|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r3|Q[0]~feeder_combout\ = \stage5_1|m_50|o[0]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[0]~27_combout\,
	combout => \stage2_2|rf_1|r3|Q[0]~feeder_combout\);

-- Location: FF_X34_Y18_N11
\stage2_2|rf_1|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r3|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(0));

-- Location: FF_X35_Y18_N13
\stage2_2|rf_1|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[0]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(0));

-- Location: FF_X36_Y18_N19
\stage2_2|rf_1|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[0]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(0));

-- Location: FF_X36_Y18_N13
\stage2_2|rf_1|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[0]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(0));

-- Location: LCCOMB_X36_Y18_N18
\stage2_2|rf_1|M1|output[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[0]~67_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|m_20|o[0]~2_combout\)) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(0)))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r0|Q\(0),
	datad => \stage2_2|rf_1|r1|Q\(0),
	combout => \stage2_2|rf_1|M1|output[0]~67_combout\);

-- Location: LCCOMB_X35_Y18_N12
\stage2_2|rf_1|M1|output[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[0]~68_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[0]~67_combout\ & (\stage2_2|rf_1|r3|Q\(0))) # (!\stage2_2|rf_1|M1|output[0]~67_combout\ & ((\stage2_2|rf_1|r2|Q\(0)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[0]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r3|Q\(0),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r2|Q\(0),
	datad => \stage2_2|rf_1|M1|output[0]~67_combout\,
	combout => \stage2_2|rf_1|M1|output[0]~68_combout\);

-- Location: FF_X34_Y19_N13
\stage2_2|rf_1|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[0]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(0));

-- Location: FF_X34_Y19_N3
\stage2_2|rf_1|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[0]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(0));

-- Location: LCCOMB_X34_Y19_N2
\stage2_2|rf_1|M1|output[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[0]~65_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|rf_1|r6|Q\(0))) # (!\stage2_2|m_20|o[1]~1_combout\ & 
-- ((\stage2_2|rf_1|r4|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r6|Q\(0),
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r4|Q\(0),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[0]~65_combout\);

-- Location: FF_X35_Y19_N29
\stage2_2|rf_1|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[0]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(0));

-- Location: FF_X36_Y15_N17
\PR0_pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(0));

-- Location: LCCOMB_X35_Y15_N0
\PR1_pc|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[0]~feeder_combout\ = \PR0_pc|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(0),
	combout => \PR1_pc|Q[0]~feeder_combout\);

-- Location: FF_X35_Y15_N1
\PR1_pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(0));

-- Location: LCCOMB_X35_Y19_N2
\stage2_2|rf_1|M1_2|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[0]~13_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[0]~27_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage5_1|m_50|o[0]~27_combout\,
	datac => \PR1_pc|Q\(0),
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[0]~13_combout\);

-- Location: FF_X35_Y19_N3
\stage2_2|rf_1|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[0]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(0));

-- Location: LCCOMB_X35_Y19_N28
\stage2_2|rf_1|M1|output[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[0]~66_combout\ = (\stage2_2|rf_1|M1|output[0]~65_combout\ & (((\stage2_2|rf_1|r7|Q\(0))) # (!\stage2_2|m_20|o[0]~2_combout\))) # (!\stage2_2|rf_1|M1|output[0]~65_combout\ & (\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[0]~65_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r5|Q\(0),
	datad => \stage2_2|rf_1|r7|Q\(0),
	combout => \stage2_2|rf_1|M1|output[0]~66_combout\);

-- Location: LCCOMB_X35_Y18_N6
\stage2_2|rf_1|M1|output[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[0]~69_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[0]~66_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[0]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[0]~68_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[0]~66_combout\,
	combout => \stage2_2|rf_1|M1|output[0]~69_combout\);

-- Location: FF_X35_Y18_N7
\PR2_d1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[0]~69_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(0));

-- Location: LCCOMB_X30_Y17_N14
\stage3_1|forwarding|new_d2[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[0]~43_combout\ = (\stage3_1|forwarding|new_d2[0]~10_combout\ & ((\stage5_1|m_50|o[0]~27_combout\) # ((\PR2_d1|Q\(0) & \stage3_1|forwarding|new_d2[0]~11_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~10_combout\ & 
-- (\PR2_d1|Q\(0) & (\stage3_1|forwarding|new_d2[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datab => \PR2_d1|Q\(0),
	datac => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datad => \stage5_1|m_50|o[0]~27_combout\,
	combout => \stage3_1|forwarding|new_d2[0]~43_combout\);

-- Location: LCCOMB_X30_Y18_N16
\stage3_1|forwarding|new_d1[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[0]~17_combout\ = (\stage3_1|forwarding|new_d1~3_combout\ & (\stage5_1|m_50|o[0]~27_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\PR2_d1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[0]~27_combout\,
	datab => \PR2_d1|Q\(0),
	datad => \stage3_1|forwarding|new_d1~3_combout\,
	combout => \stage3_1|forwarding|new_d1[0]~17_combout\);

-- Location: LCCOMB_X30_Y17_N0
\stage3_1|forwarding|new_d1[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[0]~18_combout\ = (\stage3_1|forwarding|new_d1~1_combout\ & (\stage3_1|forwarding|new_d2[0]~41_combout\)) # (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d2[0]~41_combout\,
	datad => \stage3_1|forwarding|new_d1[0]~17_combout\,
	combout => \stage3_1|forwarding|new_d1[0]~18_combout\);

-- Location: LCCOMB_X29_Y18_N20
\stage3_1|alu_1|M|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[0]~9_combout\ = (\PR2_ctrl|Q\(11) & ((\PR2_ctrl|Q\(10) $ (!\stage3_1|forwarding|new_d1[0]~18_combout\)) # (!\stage3_1|m_34|o[0]~42_combout\))) # (!\PR2_ctrl|Q\(11) & ((\stage3_1|m_34|o[0]~42_combout\ $ 
-- (\stage3_1|forwarding|new_d1[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|m_34|o[0]~42_combout\,
	datad => \stage3_1|forwarding|new_d1[0]~18_combout\,
	combout => \stage3_1|alu_1|M|o[0]~9_combout\);

-- Location: FF_X31_Y17_N29
\PR3_aluout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage3_1|alu_1|M|o[0]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(0));

-- Location: FF_X35_Y17_N7
\PR2_pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(0));

-- Location: FF_X31_Y17_N23
\PR3_pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(0));

-- Location: LCCOMB_X31_Y17_N22
\stage3_1|forwarding|new_d2[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[0]~41_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(0))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_aluout|Q\(0),
	datac => \PR3_pc|Q\(0),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|new_d2[0]~41_combout\);

-- Location: LCCOMB_X31_Y17_N28
\stage3_1|forwarding|new_d2[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[0]~42_combout\ = (\stage3_1|forwarding|new_d2[0]~41_combout\ & (\stage3_1|forwarding|new_d2~9_combout\ & \stage3_1|forwarding|new_d2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~41_combout\,
	datab => \stage3_1|forwarding|new_d2~9_combout\,
	datad => \stage3_1|forwarding|new_d2~8_combout\,
	combout => \stage3_1|forwarding|new_d2[0]~42_combout\);

-- Location: LCCOMB_X30_Y17_N4
\stage3_1|m_34|o[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~42_combout\ = (\stage3_1|m_34|o[0]~41_combout\) # ((\stage3_1|m_34|o[0]~27_combout\ & ((\stage3_1|forwarding|new_d2[0]~43_combout\) # (\stage3_1|forwarding|new_d2[0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[0]~27_combout\,
	datab => \stage3_1|m_34|o[0]~41_combout\,
	datac => \stage3_1|forwarding|new_d2[0]~43_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~42_combout\,
	combout => \stage3_1|m_34|o[0]~42_combout\);

-- Location: LCCOMB_X30_Y17_N12
\stage3_1|alu_1|A|a0|fa0|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa0|c~0_combout\ = (\stage3_1|forwarding|new_d1[0]~18_combout\ & ((\stage3_1|m_34|o[0]~42_combout\))) # (!\stage3_1|forwarding|new_d1[0]~18_combout\ & (\PR2_ctrl|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|m_34|o[0]~42_combout\,
	datad => \stage3_1|forwarding|new_d1[0]~18_combout\,
	combout => \stage3_1|alu_1|A|a0|fa0|c~0_combout\);

-- Location: FF_X36_Y15_N15
\PR0_pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(1));

-- Location: LCCOMB_X37_Y15_N14
\PR1_pc|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[1]~feeder_combout\ = \PR0_pc|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(1),
	combout => \PR1_pc|Q[1]~feeder_combout\);

-- Location: FF_X37_Y15_N15
\PR1_pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(1));

-- Location: LCCOMB_X35_Y17_N12
\PR2_pc|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[1]~feeder_combout\ = \PR1_pc|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(1),
	combout => \PR2_pc|Q[1]~feeder_combout\);

-- Location: FF_X35_Y17_N13
\PR2_pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(1));

-- Location: FF_X32_Y17_N31
\PR3_pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(1));

-- Location: LCCOMB_X32_Y17_N0
\stage3_1|forwarding|new_d2[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[1]~44_combout\ = (\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|new_d2~9_combout\ & \stage3_1|forwarding|new_d2[1]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3_1|forwarding|new_d2~8_combout\,
	datac => \stage3_1|forwarding|new_d2~9_combout\,
	datad => \stage3_1|forwarding|new_d2[1]~40_combout\,
	combout => \stage3_1|forwarding|new_d2[1]~44_combout\);

-- Location: LCCOMB_X31_Y16_N4
\stage3_1|m_34|o[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[1]~43_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(1))))) # (!\PR2_ctrl|Q\(15) & (\PR2_ctrl|Q\(9) & ((\PR2_LS7|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_lmloop|Q\(1),
	datac => \PR2_LS7|Q\(8),
	datad => \PR2_ctrl|Q\(15),
	combout => \stage3_1|m_34|o[1]~43_combout\);

-- Location: FF_X31_Y17_N7
\PR4_aluout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(1));

-- Location: LCCOMB_X32_Y17_N4
\stage3_1|forwarding|new_d2[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[1]~52_combout\ = (\stage3_1|forwarding|new_d2[1]~45_combout\) # ((\stage3_1|forwarding|new_d2~9_combout\ & (\stage3_1|forwarding|new_d2[1]~40_combout\ & \stage3_1|forwarding|new_d2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~9_combout\,
	datab => \stage3_1|forwarding|new_d2[1]~40_combout\,
	datac => \stage3_1|forwarding|new_d2~8_combout\,
	datad => \stage3_1|forwarding|new_d2[1]~45_combout\,
	combout => \stage3_1|forwarding|new_d2[1]~52_combout\);

-- Location: FF_X32_Y17_N5
\PR3_newd2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[1]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(1));

-- Location: FF_X32_Y17_N29
\stage4_1|data_mem|RAM_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(11));

-- Location: LCCOMB_X28_Y17_N14
\stage4_1|data_mem|RAM_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X28_Y17_N15
\stage4_1|data_mem|RAM_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(12));

-- Location: LCCOMB_X32_Y15_N12
\stage4_1|data_mem|RAM~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~21feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM~21feeder_combout\);

-- Location: FF_X32_Y15_N13
\stage4_1|data_mem|RAM~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~21feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~21_q\);

-- Location: LCCOMB_X31_Y16_N10
\PR2_ctrl|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_ctrl|Q[5]~feeder_combout\ = \PR1_ctrl|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_ctrl|Q\(5),
	combout => \PR2_ctrl|Q[5]~feeder_combout\);

-- Location: FF_X31_Y16_N11
\PR2_ctrl|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_ctrl|Q[5]~feeder_combout\,
	clrn => \ALT_INV_create_bubble3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(5));

-- Location: FF_X30_Y18_N17
\PR3_ctrl|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_ctrl|Q\(5),
	clrn => \ALT_INV_create_bubble5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(5));

-- Location: LCCOMB_X28_Y18_N14
\PR3_ctrl|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_ctrl|Q[6]~feeder_combout\ = \PR2_ctrl|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR2_ctrl|Q\(6),
	combout => \PR3_ctrl|Q[6]~feeder_combout\);

-- Location: FF_X28_Y18_N15
\PR3_ctrl|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_ctrl|Q[6]~feeder_combout\,
	clrn => \ALT_INV_create_bubble5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(6));

-- Location: LCCOMB_X29_Y18_N14
\stage4_1|data_mem|RAM~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~74_combout\ = (!\PR3_aluout|Q\(2) & (\PR3_ctrl|Q\(5) & (!\PR3_aluout|Q\(3) & !\PR3_ctrl|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(2),
	datab => \PR3_ctrl|Q\(5),
	datac => \PR3_aluout|Q\(3),
	datad => \PR3_ctrl|Q\(6),
	combout => \stage4_1|data_mem|RAM~74_combout\);

-- Location: LCCOMB_X29_Y18_N6
\stage4_1|data_mem|RAM~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~75_combout\ = (!\PR3_aluout|Q\(0) & (\stage4_1|data_mem|RAM~74_combout\ & !\PR3_aluout|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(0),
	datab => \stage4_1|data_mem|RAM~74_combout\,
	datad => \PR3_aluout|Q\(1),
	combout => \stage4_1|data_mem|RAM~75_combout\);

-- Location: FF_X32_Y17_N19
\stage4_1|data_mem|RAM~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(1),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~23_q\);

-- Location: LCCOMB_X29_Y18_N8
\stage4_1|data_mem|RAM~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~73_combout\ = (!\PR3_ctrl|Q\(6) & \PR3_ctrl|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(6),
	datac => \PR3_ctrl|Q\(5),
	combout => \stage4_1|data_mem|RAM~73_combout\);

-- Location: LCCOMB_X31_Y15_N30
\stage3_1|forwarding|new_d2[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[0]~53_combout\ = (\stage3_1|forwarding|new_d2[0]~43_combout\) # ((\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|new_d2[0]~41_combout\ & \stage3_1|forwarding|new_d2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \stage3_1|forwarding|new_d2[0]~41_combout\,
	datac => \stage3_1|forwarding|new_d2[0]~43_combout\,
	datad => \stage3_1|forwarding|new_d2~9_combout\,
	combout => \stage3_1|forwarding|new_d2[0]~53_combout\);

-- Location: FF_X31_Y15_N31
\PR3_newd2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[0]~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(0));

-- Location: LCCOMB_X31_Y17_N16
\stage3_1|forwarding|new_d2[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[2]~39_combout\ = (\PR2_d1|Q\(2) & ((\stage3_1|forwarding|new_d2[0]~11_combout\) # ((\stage5_1|m_50|o[2]~23_combout\ & \stage3_1|forwarding|new_d2[0]~10_combout\)))) # (!\PR2_d1|Q\(2) & (((\stage5_1|m_50|o[2]~23_combout\ & 
-- \stage3_1|forwarding|new_d2[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(2),
	datab => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datac => \stage5_1|m_50|o[2]~23_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~10_combout\,
	combout => \stage3_1|forwarding|new_d2[2]~39_combout\);

-- Location: LCCOMB_X32_Y17_N14
\stage3_1|forwarding|new_d2[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[2]~50_combout\ = (\stage3_1|forwarding|new_d2[2]~39_combout\) # ((\stage3_1|forwarding|new_d2~9_combout\ & (\stage3_1|forwarding|new_d2~8_combout\ & \stage3_1|forwarding|new_d2[2]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~9_combout\,
	datab => \stage3_1|forwarding|new_d2~8_combout\,
	datac => \stage3_1|forwarding|new_d2[2]~38_combout\,
	datad => \stage3_1|forwarding|new_d2[2]~39_combout\,
	combout => \stage3_1|forwarding|new_d2[2]~50_combout\);

-- Location: FF_X32_Y17_N15
\PR3_newd2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[2]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(2));

-- Location: FF_X30_Y18_N3
\PR3_newd2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[3]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(3));

-- Location: LCCOMB_X28_Y17_N24
\stage4_1|data_mem|RAM_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[17]~feeder_combout\ = \PR3_newd2|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_newd2|Q\(4),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X28_Y17_N25
\stage4_1|data_mem|RAM_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(17));

-- Location: LCCOMB_X28_Y17_N18
\stage4_1|data_mem|RAM_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X28_Y17_N19
\stage4_1|data_mem|RAM_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(18));

-- Location: FF_X32_Y15_N23
\stage4_1|data_mem|RAM~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(4),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~26_q\);

-- Location: LCCOMB_X36_Y14_N20
\stage0_0|InstrMem|RAM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~31_combout\ = (\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(3) & ((!\stage0_0|PC|Q\(2)))) # (!\stage0_0|PC|Q\(3) & (\stage0_0|PC|Q\(0))))) # (!\stage0_0|PC|Q\(1) & (!\stage0_0|PC|Q\(0) & (!\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~31_combout\);

-- Location: LCCOMB_X32_Y14_N16
\temp_instr[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[2]~7_combout\ = (\stage0_0|InstrMem|RAM~31_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|InstrMem|RAM~31_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[2]~7_combout\);

-- Location: FF_X32_Y14_N17
\PR0_instr|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[2]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(2));

-- Location: LCCOMB_X35_Y15_N26
\PR1_LS7|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_LS7|Q[9]~feeder_combout\ = \PR0_instr|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(2),
	combout => \PR1_LS7|Q[9]~feeder_combout\);

-- Location: FF_X35_Y15_N27
\PR1_LS7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_LS7|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_LS7|Q\(9));

-- Location: LCCOMB_X35_Y16_N26
\adder16_1|a0|fa0|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa0|c~0_combout\ = (\PR1_LS7|Q\(7) & \PR1_pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR1_LS7|Q\(7),
	datad => \PR1_pc|Q\(0),
	combout => \adder16_1|a0|fa0|c~0_combout\);

-- Location: LCCOMB_X38_Y16_N0
\adder16_1|a0|fa1|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~1_cout\ = CARRY(\PR1_pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(1),
	datad => VCC,
	cout => \adder16_1|a0|fa1|s~1_cout\);

-- Location: LCCOMB_X38_Y16_N2
\adder16_1|a0|fa1|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~2_combout\ = (\PR1_LS7|Q\(8) & ((\adder16_1|a0|fa0|c~0_combout\ & (\adder16_1|a0|fa1|s~1_cout\ & VCC)) # (!\adder16_1|a0|fa0|c~0_combout\ & (!\adder16_1|a0|fa1|s~1_cout\)))) # (!\PR1_LS7|Q\(8) & ((\adder16_1|a0|fa0|c~0_combout\ & 
-- (!\adder16_1|a0|fa1|s~1_cout\)) # (!\adder16_1|a0|fa0|c~0_combout\ & ((\adder16_1|a0|fa1|s~1_cout\) # (GND)))))
-- \adder16_1|a0|fa1|s~3\ = CARRY((\PR1_LS7|Q\(8) & (!\adder16_1|a0|fa0|c~0_combout\ & !\adder16_1|a0|fa1|s~1_cout\)) # (!\PR1_LS7|Q\(8) & ((!\adder16_1|a0|fa1|s~1_cout\) # (!\adder16_1|a0|fa0|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_LS7|Q\(8),
	datab => \adder16_1|a0|fa0|c~0_combout\,
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~1_cout\,
	combout => \adder16_1|a0|fa1|s~2_combout\,
	cout => \adder16_1|a0|fa1|s~3\);

-- Location: LCCOMB_X38_Y16_N4
\adder16_1|a0|fa1|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~4_combout\ = ((\PR1_pc|Q\(2) $ (\PR1_LS7|Q\(9) $ (!\adder16_1|a0|fa1|s~3\)))) # (GND)
-- \adder16_1|a0|fa1|s~5\ = CARRY((\PR1_pc|Q\(2) & ((\PR1_LS7|Q\(9)) # (!\adder16_1|a0|fa1|s~3\))) # (!\PR1_pc|Q\(2) & (\PR1_LS7|Q\(9) & !\adder16_1|a0|fa1|s~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(2),
	datab => \PR1_LS7|Q\(9),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~3\,
	combout => \adder16_1|a0|fa1|s~4_combout\,
	cout => \adder16_1|a0|fa1|s~5\);

-- Location: LCCOMB_X38_Y16_N6
\adder16_1|a0|fa1|s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~6_combout\ = (\PR1_pc|Q\(3) & ((\PR1_instr|Q\(3) & (\adder16_1|a0|fa1|s~5\ & VCC)) # (!\PR1_instr|Q\(3) & (!\adder16_1|a0|fa1|s~5\)))) # (!\PR1_pc|Q\(3) & ((\PR1_instr|Q\(3) & (!\adder16_1|a0|fa1|s~5\)) # (!\PR1_instr|Q\(3) & 
-- ((\adder16_1|a0|fa1|s~5\) # (GND)))))
-- \adder16_1|a0|fa1|s~7\ = CARRY((\PR1_pc|Q\(3) & (!\PR1_instr|Q\(3) & !\adder16_1|a0|fa1|s~5\)) # (!\PR1_pc|Q\(3) & ((!\adder16_1|a0|fa1|s~5\) # (!\PR1_instr|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(3),
	datab => \PR1_instr|Q\(3),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~5\,
	combout => \adder16_1|a0|fa1|s~6_combout\,
	cout => \adder16_1|a0|fa1|s~7\);

-- Location: LCCOMB_X38_Y16_N8
\adder16_1|a0|fa1|s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~8_combout\ = ((\PR1_pc|Q\(4) $ (\PR1_instr|Q\(4) $ (!\adder16_1|a0|fa1|s~7\)))) # (GND)
-- \adder16_1|a0|fa1|s~9\ = CARRY((\PR1_pc|Q\(4) & ((\PR1_instr|Q\(4)) # (!\adder16_1|a0|fa1|s~7\))) # (!\PR1_pc|Q\(4) & (\PR1_instr|Q\(4) & !\adder16_1|a0|fa1|s~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(4),
	datab => \PR1_instr|Q\(4),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~7\,
	combout => \adder16_1|a0|fa1|s~8_combout\,
	cout => \adder16_1|a0|fa1|s~9\);

-- Location: LCCOMB_X38_Y16_N10
\adder16_1|a0|fa1|s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~10_combout\ = (\PR1_instr|Q\(5) & ((\PR1_pc|Q\(5) & (\adder16_1|a0|fa1|s~9\ & VCC)) # (!\PR1_pc|Q\(5) & (!\adder16_1|a0|fa1|s~9\)))) # (!\PR1_instr|Q\(5) & ((\PR1_pc|Q\(5) & (!\adder16_1|a0|fa1|s~9\)) # (!\PR1_pc|Q\(5) & 
-- ((\adder16_1|a0|fa1|s~9\) # (GND)))))
-- \adder16_1|a0|fa1|s~11\ = CARRY((\PR1_instr|Q\(5) & (!\PR1_pc|Q\(5) & !\adder16_1|a0|fa1|s~9\)) # (!\PR1_instr|Q\(5) & ((!\adder16_1|a0|fa1|s~9\) # (!\PR1_pc|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(5),
	datab => \PR1_pc|Q\(5),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~9\,
	combout => \adder16_1|a0|fa1|s~10_combout\,
	cout => \adder16_1|a0|fa1|s~11\);

-- Location: FF_X38_Y16_N11
\PR2_adderout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(5));

-- Location: LCCOMB_X31_Y14_N22
\ctrl|output~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output~23_combout\ = (\PR0_instr|Q\(15) & (!\PR0_instr|Q\(13) & !\PR0_instr|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(14),
	combout => \ctrl|output~23_combout\);

-- Location: FF_X31_Y14_N23
\PR1_ctrl|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output~23_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(4));

-- Location: LCCOMB_X31_Y16_N28
\stage0_0|PC|Q[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[4]~2_combout\ = (!\PR1_ctrl|Q\(3) & \PR1_ctrl|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_ctrl|Q\(3),
	datad => \PR1_ctrl|Q\(4),
	combout => \stage0_0|PC|Q[4]~2_combout\);

-- Location: LCCOMB_X31_Y16_N16
\PR2_ctrl|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_ctrl|Q[4]~feeder_combout\ = \PR1_ctrl|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_ctrl|Q\(4),
	combout => \PR2_ctrl|Q[4]~feeder_combout\);

-- Location: FF_X31_Y16_N17
\PR2_ctrl|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_ctrl|Q[4]~feeder_combout\,
	clrn => \ALT_INV_create_bubble3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(4));

-- Location: LCCOMB_X35_Y16_N30
\stage0_0|PC|Q[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[4]~3_combout\ = (!\PR2_ctrl|Q\(3)) # (!\PR2_ctrl|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR2_ctrl|Q\(4),
	datad => \PR2_ctrl|Q\(3),
	combout => \stage0_0|PC|Q[4]~3_combout\);

-- Location: LCCOMB_X35_Y16_N8
\stage0_0|PC|Q[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[4]~4_combout\ = (\PR2_ctrl|Q\(10) & (((\stage0_0|PC|Q[4]~2_combout\ & \stage0_0|PC|Q[4]~3_combout\)) # (!\stage3_1|alu_1|zero~4_combout\))) # (!\PR2_ctrl|Q\(10) & (\stage0_0|PC|Q[4]~2_combout\ & (\stage0_0|PC|Q[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage0_0|PC|Q[4]~2_combout\,
	datac => \stage0_0|PC|Q[4]~3_combout\,
	datad => \stage3_1|alu_1|zero~4_combout\,
	combout => \stage0_0|PC|Q[4]~4_combout\);

-- Location: LCCOMB_X36_Y15_N0
\incPC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[0]~0_combout\ = \stage0_0|PC|Q\(0) $ (VCC)
-- \incPC[0]~1\ = CARRY(\stage0_0|PC|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(0),
	datad => VCC,
	combout => \incPC[0]~0_combout\,
	cout => \incPC[0]~1\);

-- Location: LCCOMB_X36_Y15_N2
\incPC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[1]~2_combout\ = (\stage0_0|PC|Q\(1) & (!\incPC[0]~1\)) # (!\stage0_0|PC|Q\(1) & ((\incPC[0]~1\) # (GND)))
-- \incPC[1]~3\ = CARRY((!\incPC[0]~1\) # (!\stage0_0|PC|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(1),
	datad => VCC,
	cin => \incPC[0]~1\,
	combout => \incPC[1]~2_combout\,
	cout => \incPC[1]~3\);

-- Location: LCCOMB_X36_Y15_N4
\incPC[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[2]~4_combout\ = (\stage0_0|PC|Q\(2) & (\incPC[1]~3\ $ (GND))) # (!\stage0_0|PC|Q\(2) & (!\incPC[1]~3\ & VCC))
-- \incPC[2]~5\ = CARRY((\stage0_0|PC|Q\(2) & !\incPC[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(2),
	datad => VCC,
	cin => \incPC[1]~3\,
	combout => \incPC[2]~4_combout\,
	cout => \incPC[2]~5\);

-- Location: LCCOMB_X36_Y15_N6
\incPC[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[3]~6_combout\ = (\stage0_0|PC|Q\(3) & (!\incPC[2]~5\)) # (!\stage0_0|PC|Q\(3) & ((\incPC[2]~5\) # (GND)))
-- \incPC[3]~7\ = CARRY((!\incPC[2]~5\) # (!\stage0_0|PC|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datad => VCC,
	cin => \incPC[2]~5\,
	combout => \incPC[3]~6_combout\,
	cout => \incPC[3]~7\);

-- Location: LCCOMB_X36_Y15_N8
\incPC[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[4]~8_combout\ = (\stage0_0|PC|Q\(4) & (\incPC[3]~7\ $ (GND))) # (!\stage0_0|PC|Q\(4) & (!\incPC[3]~7\ & VCC))
-- \incPC[4]~9\ = CARRY((\stage0_0|PC|Q\(4) & !\incPC[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(4),
	datad => VCC,
	cin => \incPC[3]~7\,
	combout => \incPC[4]~8_combout\,
	cout => \incPC[4]~9\);

-- Location: LCCOMB_X36_Y15_N10
\incPC[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[5]~10_combout\ = (\stage0_0|PC|Q\(5) & (!\incPC[4]~9\)) # (!\stage0_0|PC|Q\(5) & ((\incPC[4]~9\) # (GND)))
-- \incPC[5]~11\ = CARRY((!\incPC[4]~9\) # (!\stage0_0|PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(5),
	datad => VCC,
	cin => \incPC[4]~9\,
	combout => \incPC[5]~10_combout\,
	cout => \incPC[5]~11\);

-- Location: LCCOMB_X29_Y18_N18
\stage3_1|forwarding|new_d1[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[5]~12_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[5]~17_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(5),
	datab => \stage5_1|m_50|o[5]~17_combout\,
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|forwarding|new_d1[5]~12_combout\);

-- Location: LCCOMB_X30_Y18_N12
\stage3_1|forwarding|new_d1[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[5]~32_combout\ = (\stage3_1|forwarding|new_d1[5]~12_combout\) # ((\stage3_1|forwarding|new_d2[5]~29_combout\ & \stage3_1|forwarding|new_d1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[5]~29_combout\,
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[5]~12_combout\,
	combout => \stage3_1|forwarding|new_d1[5]~32_combout\);

-- Location: LCCOMB_X35_Y16_N2
\stage0_0|PC|Q[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[4]~5_combout\ = (\PR2_ctrl|Q\(10) & (\stage3_1|alu_1|zero~4_combout\ & ((!\PR2_ctrl|Q\(4)) # (!\PR2_ctrl|Q\(3))))) # (!\PR2_ctrl|Q\(10) & (((!\PR2_ctrl|Q\(4))) # (!\PR2_ctrl|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \PR2_ctrl|Q\(3),
	datac => \PR2_ctrl|Q\(4),
	datad => \stage3_1|alu_1|zero~4_combout\,
	combout => \stage0_0|PC|Q[4]~5_combout\);

-- Location: LCCOMB_X37_Y16_N10
\m_51|o[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[5]~36_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\incPC[5]~10_combout\) # ((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\stage3_1|forwarding|new_d1[5]~32_combout\ & !\stage0_0|PC|Q[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[5]~10_combout\,
	datab => \stage3_1|forwarding|new_d1[5]~32_combout\,
	datac => \stage0_0|PC|Q[4]~5_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[5]~36_combout\);

-- Location: LCCOMB_X37_Y16_N28
\m_51|o[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[5]~37_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\m_51|o[5]~36_combout\ & ((\adder16_1|a0|fa1|s~10_combout\))) # (!\m_51|o[5]~36_combout\ & (\PR2_adderout|Q\(5))))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\m_51|o[5]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(5),
	datab => \adder16_1|a0|fa1|s~10_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \m_51|o[5]~36_combout\,
	combout => \m_51|o[5]~37_combout\);

-- Location: LCCOMB_X37_Y16_N14
\m_51|o[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[5]~38_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[5]~17_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[5]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[5]~17_combout\,
	datab => \m51_select~0_combout\,
	datad => \m_51|o[5]~37_combout\,
	combout => \m_51|o[5]~38_combout\);

-- Location: LCCOMB_X35_Y14_N22
\stage0_0|PC_WR\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC_WR~combout\ = (\stage2_2|rf_1|r7_write~combout\) # ((\stage2_2|DH|kill_bit~4_combout\ & ((!\ctrl|output[15]~28_combout\) # (!\pause~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7_write~combout\,
	datab => \pause~2_combout\,
	datac => \ctrl|output[15]~28_combout\,
	datad => \stage2_2|DH|kill_bit~4_combout\,
	combout => \stage0_0|PC_WR~combout\);

-- Location: FF_X37_Y16_N15
\stage0_0|PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[5]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(5));

-- Location: FF_X36_Y15_N29
\PR0_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(5));

-- Location: FF_X37_Y15_N3
\PR1_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(5));

-- Location: FF_X29_Y18_N27
\PR2_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(5));

-- Location: FF_X29_Y18_N7
\PR3_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(5));

-- Location: LCCOMB_X29_Y18_N12
\stage3_1|forwarding|new_d2[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[5]~29_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(5)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_pc|Q\(5),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_aluout|Q\(5),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|new_d2[5]~29_combout\);

-- Location: LCCOMB_X29_Y18_N30
\stage3_1|m_32|o[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[5]~8_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[5]~12_combout\) # ((\stage3_1|forwarding|new_d2[5]~29_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[5]~29_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[5]~12_combout\,
	combout => \stage3_1|m_32|o[5]~8_combout\);

-- Location: LCCOMB_X34_Y16_N6
\stage3_1|m_34|o[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[5]~35_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(5))))) # (!\PR2_ctrl|Q\(15) & (\PR2_LS7|Q\(12) & ((\PR2_ctrl|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_LS7|Q\(12),
	datac => \PR2_lmloop|Q\(5),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[5]~35_combout\);

-- Location: LCCOMB_X30_Y18_N30
\stage3_1|m_34|o[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[5]~55_combout\ = (\stage3_1|m_34|o[5]~35_combout\) # ((!\PR2_ctrl|Q\(9) & (!\PR2_ctrl|Q\(15) & \stage3_1|forwarding|new_d2[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \stage3_1|forwarding|new_d2[5]~31_combout\,
	datad => \stage3_1|m_34|o[5]~35_combout\,
	combout => \stage3_1|m_34|o[5]~55_combout\);

-- Location: FF_X29_Y17_N15
\PR2_LS7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_instr|Q\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(11));

-- Location: LCCOMB_X29_Y17_N14
\stage3_1|m_34|o[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[4]~36_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(4))))) # (!\PR2_ctrl|Q\(15) & (\PR2_ctrl|Q\(9) & (\PR2_LS7|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_ctrl|Q\(9),
	datac => \PR2_LS7|Q\(11),
	datad => \PR2_lmloop|Q\(4),
	combout => \stage3_1|m_34|o[4]~36_combout\);

-- Location: LCCOMB_X29_Y17_N16
\stage3_1|m_34|o[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[4]~56_combout\ = (\stage3_1|m_34|o[4]~36_combout\) # ((!\PR2_ctrl|Q\(15) & (!\PR2_ctrl|Q\(9) & \stage3_1|forwarding|new_d2[4]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_ctrl|Q\(9),
	datac => \stage3_1|forwarding|new_d2[4]~34_combout\,
	datad => \stage3_1|m_34|o[4]~36_combout\,
	combout => \stage3_1|m_34|o[4]~56_combout\);

-- Location: LCCOMB_X30_Y17_N22
\stage3_1|alu_1|A|a0|fa1|s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~6_combout\ = (\stage3_1|m_32|o[3]~10_combout\ & ((\stage3_1|m_34|o[3]~57_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~5\ & VCC)) # (!\stage3_1|m_34|o[3]~57_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~5\)))) # 
-- (!\stage3_1|m_32|o[3]~10_combout\ & ((\stage3_1|m_34|o[3]~57_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~5\)) # (!\stage3_1|m_34|o[3]~57_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~5\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~7\ = CARRY((\stage3_1|m_32|o[3]~10_combout\ & (!\stage3_1|m_34|o[3]~57_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~5\)) # (!\stage3_1|m_32|o[3]~10_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~5\) # (!\stage3_1|m_34|o[3]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[3]~10_combout\,
	datab => \stage3_1|m_34|o[3]~57_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~5\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~6_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~7\);

-- Location: LCCOMB_X30_Y17_N24
\stage3_1|alu_1|A|a0|fa1|s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~8_combout\ = ((\stage3_1|m_34|o[4]~56_combout\ $ (\stage3_1|m_32|o[4]~9_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~7\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~9\ = CARRY((\stage3_1|m_34|o[4]~56_combout\ & ((\stage3_1|m_32|o[4]~9_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~7\))) # (!\stage3_1|m_34|o[4]~56_combout\ & (\stage3_1|m_32|o[4]~9_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[4]~56_combout\,
	datab => \stage3_1|m_32|o[4]~9_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~7\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~8_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~9\);

-- Location: LCCOMB_X30_Y17_N26
\stage3_1|alu_1|A|a0|fa1|s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~10_combout\ = (\stage3_1|m_34|o[5]~55_combout\ & ((\stage3_1|m_32|o[5]~8_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~9\ & VCC)) # (!\stage3_1|m_32|o[5]~8_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~9\)))) # 
-- (!\stage3_1|m_34|o[5]~55_combout\ & ((\stage3_1|m_32|o[5]~8_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~9\)) # (!\stage3_1|m_32|o[5]~8_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~9\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~11\ = CARRY((\stage3_1|m_34|o[5]~55_combout\ & (!\stage3_1|m_32|o[5]~8_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~9\)) # (!\stage3_1|m_34|o[5]~55_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~9\) # (!\stage3_1|m_32|o[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[5]~55_combout\,
	datab => \stage3_1|m_32|o[5]~8_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~9\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~10_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~11\);

-- Location: LCCOMB_X29_Y18_N4
\stage3_1|alu_1|M|o[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[5]~14_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[5]~55_combout\)) # (!\stage3_1|m_32|o[5]~8_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_32|o[5]~8_combout\,
	datac => \stage3_1|m_34|o[5]~55_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~10_combout\,
	combout => \stage3_1|alu_1|M|o[5]~14_combout\);

-- Location: FF_X29_Y18_N5
\PR3_aluout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[5]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(5));

-- Location: FF_X30_Y18_N11
\PR4_aluout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(5));

-- Location: FF_X30_Y18_N5
\PR4_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(5),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(5));

-- Location: LCCOMB_X28_Y17_N6
\stage4_1|data_mem|RAM_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[19]~feeder_combout\ = \PR3_newd2|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR3_newd2|Q\(5),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X28_Y17_N7
\stage4_1|data_mem|RAM_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(19));

-- Location: LCCOMB_X29_Y18_N22
\stage4_1|data_mem|RAM_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X29_Y18_N23
\stage4_1|data_mem|RAM_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(20));

-- Location: FF_X34_Y18_N27
\stage2_2|rf_1|r3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(6));

-- Location: FF_X32_Y18_N9
\stage2_2|rf_1|r1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(6));

-- Location: FF_X32_Y18_N11
\stage2_2|rf_1|r0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(6));

-- Location: LCCOMB_X32_Y18_N10
\stage2_2|rf_1|M1|output[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[6]~37_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r1|Q\(6))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- ((\stage2_2|rf_1|r0|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r1|Q\(6),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r0|Q\(6),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[6]~37_combout\);

-- Location: FF_X34_Y18_N29
\stage2_2|rf_1|r2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(6));

-- Location: LCCOMB_X34_Y18_N28
\stage2_2|rf_1|M1|output[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[6]~38_combout\ = (\stage2_2|rf_1|M1|output[6]~37_combout\ & ((\stage2_2|rf_1|r3|Q\(6)) # ((!\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|rf_1|M1|output[6]~37_combout\ & (((\stage2_2|rf_1|r2|Q\(6) & 
-- \stage2_2|m_20|o[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r3|Q\(6),
	datab => \stage2_2|rf_1|M1|output[6]~37_combout\,
	datac => \stage2_2|rf_1|r2|Q\(6),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[6]~38_combout\);

-- Location: FF_X32_Y19_N1
\stage2_2|rf_1|r6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(6));

-- Location: FF_X32_Y19_N11
\stage2_2|rf_1|r4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(6));

-- Location: LCCOMB_X32_Y19_N10
\stage2_2|rf_1|M1|output[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[6]~35_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(6)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(6) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(6),
	datac => \stage2_2|rf_1|r4|Q\(6),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[6]~35_combout\);

-- Location: LCCOMB_X31_Y19_N28
\stage2_2|rf_1|M1_2|o[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[6]~7_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[6]~15_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[6]~15_combout\,
	datad => \PR1_pc|Q\(6),
	combout => \stage2_2|rf_1|M1_2|o[6]~7_combout\);

-- Location: FF_X31_Y19_N29
\stage2_2|rf_1|r7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[6]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(6));

-- Location: FF_X31_Y19_N27
\stage2_2|rf_1|r5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(6));

-- Location: LCCOMB_X31_Y19_N26
\stage2_2|rf_1|M1|output[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[6]~36_combout\ = (\stage2_2|rf_1|M1|output[6]~35_combout\ & ((\stage2_2|rf_1|r7|Q\(6)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[6]~35_combout\ & (((\stage2_2|rf_1|r5|Q\(6) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[6]~35_combout\,
	datab => \stage2_2|rf_1|r7|Q\(6),
	datac => \stage2_2|rf_1|r5|Q\(6),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[6]~36_combout\);

-- Location: LCCOMB_X29_Y15_N30
\stage2_2|rf_1|M1|output[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[6]~39_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[6]~36_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[6]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[2]~0_combout\,
	datac => \stage2_2|rf_1|M1|output[6]~38_combout\,
	datad => \stage2_2|rf_1|M1|output[6]~36_combout\,
	combout => \stage2_2|rf_1|M1|output[6]~39_combout\);

-- Location: FF_X29_Y15_N31
\PR2_d1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[6]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(6));

-- Location: LCCOMB_X29_Y15_N2
\stage3_1|forwarding|new_d1[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[6]~11_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[6]~15_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(6),
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage5_1|m_50|o[6]~15_combout\,
	combout => \stage3_1|forwarding|new_d1[6]~11_combout\);

-- Location: LCCOMB_X29_Y15_N28
\stage3_1|m_32|o[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[6]~7_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[6]~11_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|new_d2[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datac => \stage3_1|forwarding|new_d2[6]~26_combout\,
	datad => \stage3_1|forwarding|new_d1[6]~11_combout\,
	combout => \stage3_1|m_32|o[6]~7_combout\);

-- Location: LCCOMB_X29_Y15_N8
\stage3_1|m_34|o[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[6]~34_combout\ = (\PR2_ctrl|Q\(15) & (\PR2_lmloop|Q\(6))) # (!\PR2_ctrl|Q\(15) & (((\PR2_LS7|Q\(12) & \PR2_ctrl|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_lmloop|Q\(6),
	datac => \PR2_LS7|Q\(12),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[6]~34_combout\);

-- Location: LCCOMB_X29_Y15_N6
\stage3_1|m_34|o[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[6]~54_combout\ = (\stage3_1|m_34|o[6]~34_combout\) # ((!\PR2_ctrl|Q\(9) & (!\PR2_ctrl|Q\(15) & \stage3_1|forwarding|new_d2[6]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \stage3_1|m_34|o[6]~34_combout\,
	datad => \stage3_1|forwarding|new_d2[6]~28_combout\,
	combout => \stage3_1|m_34|o[6]~54_combout\);

-- Location: LCCOMB_X30_Y17_N28
\stage3_1|alu_1|A|a0|fa1|s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~12_combout\ = ((\stage3_1|m_32|o[6]~7_combout\ $ (\stage3_1|m_34|o[6]~54_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~11\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~13\ = CARRY((\stage3_1|m_32|o[6]~7_combout\ & ((\stage3_1|m_34|o[6]~54_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~11\))) # (!\stage3_1|m_32|o[6]~7_combout\ & (\stage3_1|m_34|o[6]~54_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[6]~7_combout\,
	datab => \stage3_1|m_34|o[6]~54_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~11\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~12_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~13\);

-- Location: LCCOMB_X30_Y17_N6
\stage3_1|alu_1|M|o[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[6]~15_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[6]~54_combout\)) # (!\stage3_1|m_32|o[6]~7_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[6]~7_combout\,
	datab => \stage3_1|m_34|o[6]~54_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~12_combout\,
	combout => \stage3_1|alu_1|M|o[6]~15_combout\);

-- Location: FF_X30_Y17_N7
\PR3_aluout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[6]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(6));

-- Location: FF_X29_Y15_N19
\PR4_aluout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(6));

-- Location: LCCOMB_X28_Y15_N8
\stage4_1|data_mem|RAM_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X28_Y15_N9
\stage4_1|data_mem|RAM_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(22));

-- Location: FF_X29_Y15_N13
\stage4_1|data_mem|RAM_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(21));

-- Location: FF_X32_Y15_N15
\stage4_1|data_mem|RAM~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(6),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~28_q\);

-- Location: LCCOMB_X31_Y18_N22
\PR3_LS7|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_LS7|Q[7]~feeder_combout\ = \PR2_LS7|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_LS7|Q\(7),
	combout => \PR3_LS7|Q[7]~feeder_combout\);

-- Location: FF_X31_Y18_N23
\PR3_LS7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_LS7|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(7));

-- Location: LCCOMB_X31_Y18_N14
\stage3_1|m_34|o[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[7]~33_combout\ = (\PR2_ctrl|Q\(15) & (\PR2_lmloop|Q\(7))) # (!\PR2_ctrl|Q\(15) & (((\PR2_ctrl|Q\(9) & \PR2_LS7|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_lmloop|Q\(7),
	datac => \PR2_ctrl|Q\(9),
	datad => \PR2_LS7|Q\(12),
	combout => \stage3_1|m_34|o[7]~33_combout\);

-- Location: LCCOMB_X31_Y18_N12
\stage3_1|m_34|o[7]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[7]~53_combout\ = (\stage3_1|m_34|o[7]~33_combout\) # ((!\PR2_ctrl|Q\(15) & (!\PR2_ctrl|Q\(9) & \stage3_1|forwarding|new_d2[7]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_ctrl|Q\(9),
	datac => \stage3_1|m_34|o[7]~33_combout\,
	datad => \stage3_1|forwarding|new_d2[7]~25_combout\,
	combout => \stage3_1|m_34|o[7]~53_combout\);

-- Location: FF_X32_Y15_N3
\stage4_1|data_mem|RAM_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(23));

-- Location: LCCOMB_X28_Y15_N24
\stage4_1|data_mem|RAM_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X28_Y15_N25
\stage4_1|data_mem|RAM_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(24));

-- Location: FF_X32_Y15_N9
\stage4_1|data_mem|RAM~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(7),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~29_q\);

-- Location: LCCOMB_X27_Y16_N6
\stage3_1|m_34|o[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[8]~32_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(8))))) # (!\PR2_ctrl|Q\(15) & (\PR2_LS7|Q\(12) & ((\PR2_ctrl|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_LS7|Q\(12),
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_lmloop|Q\(8),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[8]~32_combout\);

-- Location: LCCOMB_X27_Y16_N4
\stage3_1|m_34|o[8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[8]~52_combout\ = (\stage3_1|m_34|o[8]~32_combout\) # ((!\PR2_ctrl|Q\(15) & (!\PR2_ctrl|Q\(9) & \stage3_1|forwarding|new_d2[8]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[8]~32_combout\,
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_ctrl|Q\(9),
	datad => \stage3_1|forwarding|new_d2[8]~23_combout\,
	combout => \stage3_1|m_34|o[8]~52_combout\);

-- Location: LCCOMB_X27_Y16_N30
\PR3_LS7|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_LS7|Q[8]~feeder_combout\ = \PR2_LS7|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_LS7|Q\(8),
	combout => \PR3_LS7|Q[8]~feeder_combout\);

-- Location: FF_X27_Y16_N31
\PR3_LS7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_LS7|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(8));

-- Location: LCCOMB_X34_Y16_N16
\m_2x|o[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2x|o[8]~0_combout\ = (\PR1_ctrl|Q\(10) & ((\PR1_instr|Q\(5)))) # (!\PR1_ctrl|Q\(10) & (\PR1_instr|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(8),
	datab => \PR1_instr|Q\(5),
	datad => \PR1_ctrl|Q\(10),
	combout => \m_2x|o[8]~0_combout\);

-- Location: LCCOMB_X32_Y16_N14
\m_2x|o[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2x|o[7]~1_combout\ = (\PR1_ctrl|Q\(10) & (\PR1_instr|Q\(5))) # (!\PR1_ctrl|Q\(10) & ((\PR1_instr|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(5),
	datab => \PR1_instr|Q\(7),
	datad => \PR1_ctrl|Q\(10),
	combout => \m_2x|o[7]~1_combout\);

-- Location: LCCOMB_X30_Y14_N24
\m_2x|o[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2x|o[6]~2_combout\ = (\PR1_ctrl|Q\(10) & (\PR1_instr|Q\(5))) # (!\PR1_ctrl|Q\(10) & ((\PR1_instr|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(5),
	datab => \PR1_ctrl|Q\(10),
	datad => \PR1_instr|Q\(6),
	combout => \m_2x|o[6]~2_combout\);

-- Location: LCCOMB_X38_Y16_N12
\adder16_1|a0|fa1|s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~12_combout\ = ((\PR1_pc|Q\(6) $ (\m_2x|o[6]~2_combout\ $ (!\adder16_1|a0|fa1|s~11\)))) # (GND)
-- \adder16_1|a0|fa1|s~13\ = CARRY((\PR1_pc|Q\(6) & ((\m_2x|o[6]~2_combout\) # (!\adder16_1|a0|fa1|s~11\))) # (!\PR1_pc|Q\(6) & (\m_2x|o[6]~2_combout\ & !\adder16_1|a0|fa1|s~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(6),
	datab => \m_2x|o[6]~2_combout\,
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~11\,
	combout => \adder16_1|a0|fa1|s~12_combout\,
	cout => \adder16_1|a0|fa1|s~13\);

-- Location: LCCOMB_X38_Y16_N14
\adder16_1|a0|fa1|s~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~14_combout\ = (\m_2x|o[7]~1_combout\ & ((\PR1_pc|Q\(7) & (\adder16_1|a0|fa1|s~13\ & VCC)) # (!\PR1_pc|Q\(7) & (!\adder16_1|a0|fa1|s~13\)))) # (!\m_2x|o[7]~1_combout\ & ((\PR1_pc|Q\(7) & (!\adder16_1|a0|fa1|s~13\)) # (!\PR1_pc|Q\(7) & 
-- ((\adder16_1|a0|fa1|s~13\) # (GND)))))
-- \adder16_1|a0|fa1|s~15\ = CARRY((\m_2x|o[7]~1_combout\ & (!\PR1_pc|Q\(7) & !\adder16_1|a0|fa1|s~13\)) # (!\m_2x|o[7]~1_combout\ & ((!\adder16_1|a0|fa1|s~13\) # (!\PR1_pc|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[7]~1_combout\,
	datab => \PR1_pc|Q\(7),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~13\,
	combout => \adder16_1|a0|fa1|s~14_combout\,
	cout => \adder16_1|a0|fa1|s~15\);

-- Location: FF_X38_Y16_N15
\PR2_adderout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(7));

-- Location: LCCOMB_X36_Y15_N12
\incPC[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[6]~12_combout\ = (\stage0_0|PC|Q\(6) & (\incPC[5]~11\ $ (GND))) # (!\stage0_0|PC|Q\(6) & (!\incPC[5]~11\ & VCC))
-- \incPC[6]~13\ = CARRY((\stage0_0|PC|Q\(6) & !\incPC[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(6),
	datad => VCC,
	cin => \incPC[5]~11\,
	combout => \incPC[6]~12_combout\,
	cout => \incPC[6]~13\);

-- Location: LCCOMB_X36_Y15_N14
\incPC[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[7]~14_combout\ = (\stage0_0|PC|Q\(7) & (!\incPC[6]~13\)) # (!\stage0_0|PC|Q\(7) & ((\incPC[6]~13\) # (GND)))
-- \incPC[7]~15\ = CARRY((!\incPC[6]~13\) # (!\stage0_0|PC|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(7),
	datad => VCC,
	cin => \incPC[6]~13\,
	combout => \incPC[7]~14_combout\,
	cout => \incPC[7]~15\);

-- Location: LCCOMB_X31_Y18_N8
\stage3_1|forwarding|new_d1[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[7]~30_combout\ = (\stage3_1|forwarding|new_d1[7]~10_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|stage4_d3[7]~13_combout\,
	datad => \stage3_1|forwarding|new_d1[7]~10_combout\,
	combout => \stage3_1|forwarding|new_d1[7]~30_combout\);

-- Location: LCCOMB_X37_Y16_N2
\m_51|o[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[7]~30_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\incPC[7]~14_combout\) # ((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\stage3_1|forwarding|new_d1[7]~30_combout\ & !\stage0_0|PC|Q[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[7]~14_combout\,
	datab => \stage3_1|forwarding|new_d1[7]~30_combout\,
	datac => \stage0_0|PC|Q[4]~5_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[7]~30_combout\);

-- Location: LCCOMB_X37_Y16_N0
\m_51|o[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[7]~31_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\m_51|o[7]~30_combout\ & ((\adder16_1|a0|fa1|s~14_combout\))) # (!\m_51|o[7]~30_combout\ & (\PR2_adderout|Q\(7))))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\m_51|o[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(7),
	datab => \adder16_1|a0|fa1|s~14_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \m_51|o[7]~30_combout\,
	combout => \m_51|o[7]~31_combout\);

-- Location: LCCOMB_X37_Y16_N26
\m_51|o[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[7]~32_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[7]~13_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[7]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[7]~13_combout\,
	datad => \m_51|o[7]~31_combout\,
	combout => \m_51|o[7]~32_combout\);

-- Location: FF_X37_Y16_N27
\stage0_0|PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[7]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(7));

-- Location: FF_X36_Y15_N5
\PR0_pc|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(7));

-- Location: FF_X35_Y15_N5
\PR1_pc|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(7));

-- Location: LCCOMB_X38_Y16_N16
\adder16_1|a0|fa1|s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~16_combout\ = ((\PR1_pc|Q\(8) $ (\m_2x|o[8]~0_combout\ $ (!\adder16_1|a0|fa1|s~15\)))) # (GND)
-- \adder16_1|a0|fa1|s~17\ = CARRY((\PR1_pc|Q\(8) & ((\m_2x|o[8]~0_combout\) # (!\adder16_1|a0|fa1|s~15\))) # (!\PR1_pc|Q\(8) & (\m_2x|o[8]~0_combout\ & !\adder16_1|a0|fa1|s~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(8),
	datab => \m_2x|o[8]~0_combout\,
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~15\,
	combout => \adder16_1|a0|fa1|s~16_combout\,
	cout => \adder16_1|a0|fa1|s~17\);

-- Location: LCCOMB_X36_Y15_N16
\incPC[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[8]~16_combout\ = (\stage0_0|PC|Q\(8) & (\incPC[7]~15\ $ (GND))) # (!\stage0_0|PC|Q\(8) & (!\incPC[7]~15\ & VCC))
-- \incPC[8]~17\ = CARRY((\stage0_0|PC|Q\(8) & !\incPC[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(8),
	datad => VCC,
	cin => \incPC[7]~15\,
	combout => \incPC[8]~16_combout\,
	cout => \incPC[8]~17\);

-- Location: FF_X38_Y16_N17
\PR2_adderout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(8));

-- Location: LCCOMB_X27_Y16_N2
\stage3_1|forwarding|new_d1[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[8]~9_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[8]~11_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(8),
	datab => \stage5_1|m_50|o[8]~11_combout\,
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1~3_combout\,
	combout => \stage3_1|forwarding|new_d1[8]~9_combout\);

-- Location: LCCOMB_X27_Y16_N20
\stage3_1|forwarding|new_d1[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[8]~29_combout\ = (\stage3_1|forwarding|new_d1[8]~9_combout\) # ((\stage3_1|forwarding|stage4_d3[8]~11_combout\ & \stage3_1|forwarding|new_d1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3_1|forwarding|stage4_d3[8]~11_combout\,
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[8]~9_combout\,
	combout => \stage3_1|forwarding|new_d1[8]~29_combout\);

-- Location: LCCOMB_X35_Y16_N18
\m_51|o[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[8]~27_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\PR2_adderout|Q\(8)) # ((\stage0_0|PC|Q[4]~5_combout\)))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\stage3_1|forwarding|new_d1[8]~29_combout\ & !\stage0_0|PC|Q[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(8),
	datab => \stage3_1|forwarding|new_d1[8]~29_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[8]~27_combout\);

-- Location: LCCOMB_X35_Y16_N0
\m_51|o[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[8]~28_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\m_51|o[8]~27_combout\ & (\adder16_1|a0|fa1|s~16_combout\)) # (!\m_51|o[8]~27_combout\ & ((\incPC[8]~16_combout\))))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\m_51|o[8]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16_1|a0|fa1|s~16_combout\,
	datab => \stage0_0|PC|Q[4]~5_combout\,
	datac => \incPC[8]~16_combout\,
	datad => \m_51|o[8]~27_combout\,
	combout => \m_51|o[8]~28_combout\);

-- Location: LCCOMB_X35_Y16_N16
\m_51|o[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[8]~29_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[8]~11_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[8]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[8]~11_combout\,
	datad => \m_51|o[8]~28_combout\,
	combout => \m_51|o[8]~29_combout\);

-- Location: FF_X35_Y16_N17
\stage0_0|PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[8]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(8));

-- Location: FF_X36_Y15_N31
\PR0_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(8));

-- Location: LCCOMB_X37_Y15_N10
\PR1_pc|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[8]~feeder_combout\ = \PR0_pc|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(8),
	combout => \PR1_pc|Q[8]~feeder_combout\);

-- Location: FF_X37_Y15_N11
\PR1_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(8));

-- Location: FF_X27_Y16_N1
\PR2_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(8));

-- Location: FF_X27_Y16_N23
\PR3_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(8));

-- Location: LCCOMB_X27_Y16_N8
\stage3_1|forwarding|stage4_d3[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[8]~10_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(8)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_pc|Q\(8),
	datab => \PR3_aluout|Q\(8),
	datac => \PR3_ctrl|Q\(0),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|stage4_d3[8]~10_combout\);

-- Location: LCCOMB_X27_Y16_N0
\stage3_1|forwarding|stage4_d3[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[8]~11_combout\ = (\stage3_1|forwarding|stage4_d3[8]~10_combout\) # ((\PR3_LS7|Q\(8) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(8),
	datab => \stage3_1|forwarding|stage4_d3[8]~10_combout\,
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[8]~11_combout\);

-- Location: LCCOMB_X27_Y16_N28
\stage3_1|m_32|o[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[8]~5_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[8]~9_combout\) # ((\stage3_1|forwarding|stage4_d3[8]~11_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|stage4_d3[8]~11_combout\,
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[8]~9_combout\,
	combout => \stage3_1|m_32|o[8]~5_combout\);

-- Location: LCCOMB_X30_Y17_N30
\stage3_1|alu_1|A|a0|fa1|s~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~14_combout\ = (\stage3_1|m_32|o[7]~6_combout\ & ((\stage3_1|m_34|o[7]~53_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~13\ & VCC)) # (!\stage3_1|m_34|o[7]~53_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~13\)))) # 
-- (!\stage3_1|m_32|o[7]~6_combout\ & ((\stage3_1|m_34|o[7]~53_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~13\)) # (!\stage3_1|m_34|o[7]~53_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~13\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~15\ = CARRY((\stage3_1|m_32|o[7]~6_combout\ & (!\stage3_1|m_34|o[7]~53_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~13\)) # (!\stage3_1|m_32|o[7]~6_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~13\) # (!\stage3_1|m_34|o[7]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[7]~6_combout\,
	datab => \stage3_1|m_34|o[7]~53_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~13\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~14_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~15\);

-- Location: LCCOMB_X30_Y16_N0
\stage3_1|alu_1|A|a0|fa1|s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~16_combout\ = ((\stage3_1|m_32|o[8]~5_combout\ $ (\stage3_1|m_34|o[8]~52_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~15\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~17\ = CARRY((\stage3_1|m_32|o[8]~5_combout\ & ((\stage3_1|m_34|o[8]~52_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~15\))) # (!\stage3_1|m_32|o[8]~5_combout\ & (\stage3_1|m_34|o[8]~52_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[8]~5_combout\,
	datab => \stage3_1|m_34|o[8]~52_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~15\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~16_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~17\);

-- Location: LCCOMB_X29_Y16_N10
\stage3_1|alu_1|M|o[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[8]~7_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[8]~5_combout\)) # (!\stage3_1|m_34|o[8]~52_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[8]~52_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|alu_1|A|a0|fa1|s~16_combout\,
	datad => \stage3_1|m_32|o[8]~5_combout\,
	combout => \stage3_1|alu_1|M|o[8]~7_combout\);

-- Location: LCCOMB_X27_Y16_N26
\PR3_aluout|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_aluout|Q[8]~feeder_combout\ = \stage3_1|alu_1|M|o[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3_1|alu_1|M|o[8]~7_combout\,
	combout => \PR3_aluout|Q[8]~feeder_combout\);

-- Location: FF_X27_Y16_N27
\PR3_aluout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_aluout|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(8));

-- Location: LCCOMB_X27_Y16_N10
\PR4_aluout|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[8]~feeder_combout\ = \PR3_aluout|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(8),
	combout => \PR4_aluout|Q[8]~feeder_combout\);

-- Location: FF_X27_Y16_N11
\PR4_aluout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(8));

-- Location: FF_X27_Y16_N25
\PR4_LS7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(8));

-- Location: FF_X27_Y16_N19
\PR4_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(8));

-- Location: LCCOMB_X28_Y17_N10
\stage4_1|data_mem|RAM_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[25]~feeder_combout\ = \PR3_newd2|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_newd2|Q\(8),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X28_Y17_N11
\stage4_1|data_mem|RAM_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(25));

-- Location: LCCOMB_X28_Y17_N0
\stage4_1|data_mem|RAM_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X28_Y17_N1
\stage4_1|data_mem|RAM_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(26));

-- Location: FF_X31_Y15_N13
\stage4_1|data_mem|RAM_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(27));

-- Location: LCCOMB_X28_Y15_N14
\stage4_1|data_mem|RAM_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X28_Y15_N15
\stage4_1|data_mem|RAM_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(28));

-- Location: FF_X32_Y15_N5
\stage4_1|data_mem|RAM~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(9),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~31_q\);

-- Location: LCCOMB_X28_Y16_N30
\stage3_1|m_34|o[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[10]~30_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(10))))) # (!\PR2_ctrl|Q\(15) & (\PR2_ctrl|Q\(9) & ((\PR2_LS7|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_lmloop|Q\(10),
	datad => \PR2_LS7|Q\(12),
	combout => \stage3_1|m_34|o[10]~30_combout\);

-- Location: LCCOMB_X28_Y16_N20
\stage3_1|m_34|o[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[10]~50_combout\ = (\stage3_1|m_34|o[10]~30_combout\) # ((!\PR2_ctrl|Q\(9) & (!\PR2_ctrl|Q\(15) & \stage3_1|forwarding|new_d2[10]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \stage3_1|m_34|o[10]~30_combout\,
	datad => \stage3_1|forwarding|new_d2[10]~19_combout\,
	combout => \stage3_1|m_34|o[10]~50_combout\);

-- Location: LCCOMB_X31_Y19_N12
\stage2_2|rf_1|M1_2|o[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[10]~3_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[10]~7_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(10),
	datac => \stage5_1|m_50|o[10]~7_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[10]~3_combout\);

-- Location: FF_X31_Y19_N13
\stage2_2|rf_1|r7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[10]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(10));

-- Location: LCCOMB_X32_Y19_N24
\stage2_2|rf_1|r6|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r6|Q[10]~feeder_combout\ = \stage5_1|m_50|o[10]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[10]~7_combout\,
	combout => \stage2_2|rf_1|r6|Q[10]~feeder_combout\);

-- Location: FF_X32_Y19_N25
\stage2_2|rf_1|r6|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r6|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(10));

-- Location: FF_X32_Y19_N23
\stage2_2|rf_1|r4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[10]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(10));

-- Location: LCCOMB_X32_Y19_N22
\stage2_2|rf_1|M1|output[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[10]~15_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(10)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(10) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(10),
	datac => \stage2_2|rf_1|r4|Q\(10),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[10]~15_combout\);

-- Location: FF_X31_Y19_N11
\stage2_2|rf_1|r5|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[10]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(10));

-- Location: LCCOMB_X31_Y19_N10
\stage2_2|rf_1|M1|output[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[10]~16_combout\ = (\stage2_2|rf_1|M1|output[10]~15_combout\ & ((\stage2_2|rf_1|r7|Q\(10)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[10]~15_combout\ & (((\stage2_2|rf_1|r5|Q\(10) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(10),
	datab => \stage2_2|rf_1|M1|output[10]~15_combout\,
	datac => \stage2_2|rf_1|r5|Q\(10),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[10]~16_combout\);

-- Location: LCCOMB_X32_Y20_N22
\stage2_2|rf_1|r3|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r3|Q[10]~feeder_combout\ = \stage5_1|m_50|o[10]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[10]~7_combout\,
	combout => \stage2_2|rf_1|r3|Q[10]~feeder_combout\);

-- Location: FF_X32_Y20_N23
\stage2_2|rf_1|r3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r3|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(10));

-- Location: LCCOMB_X32_Y18_N16
\stage2_2|rf_1|r1|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[10]~feeder_combout\ = \stage5_1|m_50|o[10]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[10]~7_combout\,
	combout => \stage2_2|rf_1|r1|Q[10]~feeder_combout\);

-- Location: FF_X32_Y18_N17
\stage2_2|rf_1|r1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r1|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(10));

-- Location: FF_X32_Y18_N31
\stage2_2|rf_1|r0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[10]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(10));

-- Location: LCCOMB_X32_Y18_N30
\stage2_2|rf_1|M1|output[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[10]~17_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(10)) # ((\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|r0|Q\(10) & !\stage2_2|m_20|o[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r1|Q\(10),
	datac => \stage2_2|rf_1|r0|Q\(10),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[10]~17_combout\);

-- Location: FF_X32_Y20_N13
\stage2_2|rf_1|r2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[10]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(10));

-- Location: LCCOMB_X32_Y20_N12
\stage2_2|rf_1|M1|output[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[10]~18_combout\ = (\stage2_2|rf_1|M1|output[10]~17_combout\ & ((\stage2_2|rf_1|r3|Q\(10)) # ((!\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|rf_1|M1|output[10]~17_combout\ & (((\stage2_2|rf_1|r2|Q\(10) & 
-- \stage2_2|m_20|o[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r3|Q\(10),
	datab => \stage2_2|rf_1|M1|output[10]~17_combout\,
	datac => \stage2_2|rf_1|r2|Q\(10),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[10]~18_combout\);

-- Location: LCCOMB_X28_Y16_N6
\stage2_2|rf_1|M1|output[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[10]~19_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[10]~16_combout\)) # (!\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[10]~16_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[10]~18_combout\,
	combout => \stage2_2|rf_1|M1|output[10]~19_combout\);

-- Location: FF_X28_Y16_N7
\PR2_d1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[10]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(10));

-- Location: LCCOMB_X29_Y16_N2
\stage3_1|forwarding|new_d1[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[10]~7_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[10]~7_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datac => \PR2_d1|Q\(10),
	datad => \stage5_1|m_50|o[10]~7_combout\,
	combout => \stage3_1|forwarding|new_d1[10]~7_combout\);

-- Location: LCCOMB_X29_Y16_N8
\stage3_1|m_32|o[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[10]~3_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[10]~7_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|stage4_d3[10]~7_combout\,
	datad => \stage3_1|forwarding|new_d1[10]~7_combout\,
	combout => \stage3_1|m_32|o[10]~3_combout\);

-- Location: LCCOMB_X31_Y15_N6
\stage3_1|m_34|o[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[9]~31_combout\ = (\PR2_ctrl|Q\(15) & (\PR2_lmloop|Q\(9))) # (!\PR2_ctrl|Q\(15) & (((\PR2_LS7|Q\(12) & \PR2_ctrl|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_LS7|Q\(12),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[9]~31_combout\);

-- Location: LCCOMB_X31_Y15_N0
\stage3_1|m_34|o[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[9]~51_combout\ = (\stage3_1|m_34|o[9]~31_combout\) # ((!\PR2_ctrl|Q\(9) & (!\PR2_ctrl|Q\(15) & \stage3_1|forwarding|new_d2[9]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[9]~31_combout\,
	datab => \PR2_ctrl|Q\(9),
	datac => \PR2_ctrl|Q\(15),
	datad => \stage3_1|forwarding|new_d2[9]~21_combout\,
	combout => \stage3_1|m_34|o[9]~51_combout\);

-- Location: FF_X32_Y17_N3
\PR2_LS7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_LS7|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(9));

-- Location: LCCOMB_X31_Y15_N24
\PR3_LS7|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_LS7|Q[9]~feeder_combout\ = \PR2_LS7|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_LS7|Q\(9),
	combout => \PR3_LS7|Q[9]~feeder_combout\);

-- Location: FF_X31_Y15_N25
\PR3_LS7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_LS7|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(9));

-- Location: LCCOMB_X38_Y16_N18
\adder16_1|a0|fa1|s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~18_combout\ = (\PR1_pc|Q\(9) & ((\m_2x|o[8]~0_combout\ & (\adder16_1|a0|fa1|s~17\ & VCC)) # (!\m_2x|o[8]~0_combout\ & (!\adder16_1|a0|fa1|s~17\)))) # (!\PR1_pc|Q\(9) & ((\m_2x|o[8]~0_combout\ & (!\adder16_1|a0|fa1|s~17\)) # 
-- (!\m_2x|o[8]~0_combout\ & ((\adder16_1|a0|fa1|s~17\) # (GND)))))
-- \adder16_1|a0|fa1|s~19\ = CARRY((\PR1_pc|Q\(9) & (!\m_2x|o[8]~0_combout\ & !\adder16_1|a0|fa1|s~17\)) # (!\PR1_pc|Q\(9) & ((!\adder16_1|a0|fa1|s~17\) # (!\m_2x|o[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(9),
	datab => \m_2x|o[8]~0_combout\,
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~17\,
	combout => \adder16_1|a0|fa1|s~18_combout\,
	cout => \adder16_1|a0|fa1|s~19\);

-- Location: FF_X38_Y16_N19
\PR2_adderout|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(9));

-- Location: LCCOMB_X31_Y15_N4
\stage3_1|forwarding|new_d1[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[9]~8_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[9]~9_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(9),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage5_1|m_50|o[9]~9_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|forwarding|new_d1[9]~8_combout\);

-- Location: LCCOMB_X31_Y15_N16
\stage3_1|forwarding|new_d1[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[9]~28_combout\ = (\stage3_1|forwarding|new_d1[9]~8_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d1[9]~8_combout\,
	datad => \stage3_1|forwarding|stage4_d3[9]~9_combout\,
	combout => \stage3_1|forwarding|new_d1[9]~28_combout\);

-- Location: LCCOMB_X36_Y15_N18
\incPC[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[9]~18_combout\ = (\stage0_0|PC|Q\(9) & (!\incPC[8]~17\)) # (!\stage0_0|PC|Q\(9) & ((\incPC[8]~17\) # (GND)))
-- \incPC[9]~19\ = CARRY((!\incPC[8]~17\) # (!\stage0_0|PC|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(9),
	datad => VCC,
	cin => \incPC[8]~17\,
	combout => \incPC[9]~18_combout\,
	cout => \incPC[9]~19\);

-- Location: LCCOMB_X37_Y16_N18
\m_51|o[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[9]~24_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & (((\incPC[9]~18_combout\) # (\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & (\stage3_1|forwarding|new_d1[9]~28_combout\ & ((!\stage0_0|PC|Q[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1[9]~28_combout\,
	datab => \incPC[9]~18_combout\,
	datac => \stage0_0|PC|Q[4]~5_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[9]~24_combout\);

-- Location: LCCOMB_X37_Y16_N24
\m_51|o[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[9]~25_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\m_51|o[9]~24_combout\ & (\adder16_1|a0|fa1|s~18_combout\)) # (!\m_51|o[9]~24_combout\ & ((\PR2_adderout|Q\(9)))))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\m_51|o[9]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16_1|a0|fa1|s~18_combout\,
	datab => \PR2_adderout|Q\(9),
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \m_51|o[9]~24_combout\,
	combout => \m_51|o[9]~25_combout\);

-- Location: LCCOMB_X37_Y16_N4
\m_51|o[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[9]~26_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[9]~9_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[9]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[9]~9_combout\,
	datad => \m_51|o[9]~25_combout\,
	combout => \m_51|o[9]~26_combout\);

-- Location: FF_X37_Y16_N5
\stage0_0|PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[9]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(9));

-- Location: FF_X36_Y15_N27
\PR0_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(9));

-- Location: FF_X37_Y15_N29
\PR1_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(9));

-- Location: FF_X32_Y15_N11
\PR2_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(9));

-- Location: FF_X31_Y15_N17
\PR3_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(9));

-- Location: LCCOMB_X30_Y16_N2
\stage3_1|alu_1|A|a0|fa1|s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~18_combout\ = (\stage3_1|m_34|o[9]~51_combout\ & ((\stage3_1|m_32|o[9]~4_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~17\ & VCC)) # (!\stage3_1|m_32|o[9]~4_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~17\)))) # 
-- (!\stage3_1|m_34|o[9]~51_combout\ & ((\stage3_1|m_32|o[9]~4_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~17\)) # (!\stage3_1|m_32|o[9]~4_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~17\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~19\ = CARRY((\stage3_1|m_34|o[9]~51_combout\ & (!\stage3_1|m_32|o[9]~4_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~17\)) # (!\stage3_1|m_34|o[9]~51_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~17\) # (!\stage3_1|m_32|o[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[9]~51_combout\,
	datab => \stage3_1|m_32|o[9]~4_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~17\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~18_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~19\);

-- Location: LCCOMB_X31_Y16_N22
\stage3_1|alu_1|M|o[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[9]~8_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[9]~4_combout\)) # (!\stage3_1|m_34|o[9]~51_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[9]~51_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_32|o[9]~4_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~18_combout\,
	combout => \stage3_1|alu_1|M|o[9]~8_combout\);

-- Location: FF_X31_Y16_N23
\PR3_aluout|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[9]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(9));

-- Location: LCCOMB_X31_Y15_N28
\stage3_1|forwarding|stage4_d3[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[9]~8_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(9)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_pc|Q\(9),
	datac => \PR3_ctrl|Q\(1),
	datad => \PR3_aluout|Q\(9),
	combout => \stage3_1|forwarding|stage4_d3[9]~8_combout\);

-- Location: LCCOMB_X31_Y15_N12
\stage3_1|forwarding|stage4_d3[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[9]~9_combout\ = (\stage3_1|forwarding|stage4_d3[9]~8_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_LS7|Q\(9),
	datad => \stage3_1|forwarding|stage4_d3[9]~8_combout\,
	combout => \stage3_1|forwarding|stage4_d3[9]~9_combout\);

-- Location: LCCOMB_X31_Y15_N2
\stage3_1|m_32|o[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[9]~4_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[9]~8_combout\) # ((\stage3_1|forwarding|stage4_d3[9]~9_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|stage4_d3[9]~9_combout\,
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datac => \stage3_1|forwarding|new_d1[9]~8_combout\,
	datad => \PR2_ctrl|Q\(10),
	combout => \stage3_1|m_32|o[9]~4_combout\);

-- Location: LCCOMB_X30_Y16_N4
\stage3_1|alu_1|A|a0|fa1|s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~20_combout\ = ((\stage3_1|m_32|o[10]~3_combout\ $ (\stage3_1|m_34|o[10]~50_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~19\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~21\ = CARRY((\stage3_1|m_32|o[10]~3_combout\ & ((\stage3_1|m_34|o[10]~50_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~19\))) # (!\stage3_1|m_32|o[10]~3_combout\ & (\stage3_1|m_34|o[10]~50_combout\ & 
-- !\stage3_1|alu_1|A|a0|fa1|s~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[10]~3_combout\,
	datab => \stage3_1|m_34|o[10]~50_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~19\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~20_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~21\);

-- Location: LCCOMB_X29_Y16_N6
\stage3_1|alu_1|M|o[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[10]~3_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[10]~3_combout\)) # (!\stage3_1|m_34|o[10]~50_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[10]~50_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_32|o[10]~3_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~20_combout\,
	combout => \stage3_1|alu_1|M|o[10]~3_combout\);

-- Location: LCCOMB_X28_Y16_N10
\PR3_aluout|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_aluout|Q[10]~feeder_combout\ = \stage3_1|alu_1|M|o[10]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3_1|alu_1|M|o[10]~3_combout\,
	combout => \PR3_aluout|Q[10]~feeder_combout\);

-- Location: FF_X28_Y16_N11
\PR3_aluout|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_aluout|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(10));

-- Location: LCCOMB_X28_Y16_N0
\PR4_aluout|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[10]~feeder_combout\ = \PR3_aluout|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(10),
	combout => \PR4_aluout|Q[10]~feeder_combout\);

-- Location: FF_X28_Y16_N1
\PR4_aluout|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(10));

-- Location: FF_X28_Y16_N5
\PR3_LS7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_LS7|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(10));

-- Location: FF_X28_Y16_N29
\PR4_LS7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(10));

-- Location: LCCOMB_X28_Y15_N12
\stage4_1|data_mem|RAM_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X28_Y15_N13
\stage4_1|data_mem|RAM_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(30));

-- Location: FF_X32_Y15_N17
\stage4_1|data_mem|RAM_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(31));

-- Location: LCCOMB_X28_Y17_N12
\stage4_1|data_mem|RAM_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X28_Y17_N13
\stage4_1|data_mem|RAM_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(32));

-- Location: FF_X32_Y15_N7
\stage4_1|data_mem|RAM~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(11),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~33_q\);

-- Location: FF_X30_Y19_N23
\PR3_LS7|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_LS7|Q\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(12));

-- Location: LCCOMB_X38_Y16_N20
\adder16_1|a0|fa1|s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~20_combout\ = ((\m_2x|o[8]~0_combout\ $ (\PR1_pc|Q\(10) $ (!\adder16_1|a0|fa1|s~19\)))) # (GND)
-- \adder16_1|a0|fa1|s~21\ = CARRY((\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(10)) # (!\adder16_1|a0|fa1|s~19\))) # (!\m_2x|o[8]~0_combout\ & (\PR1_pc|Q\(10) & !\adder16_1|a0|fa1|s~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(10),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~19\,
	combout => \adder16_1|a0|fa1|s~20_combout\,
	cout => \adder16_1|a0|fa1|s~21\);

-- Location: LCCOMB_X38_Y16_N22
\adder16_1|a0|fa1|s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~22_combout\ = (\PR1_pc|Q\(11) & ((\m_2x|o[8]~0_combout\ & (\adder16_1|a0|fa1|s~21\ & VCC)) # (!\m_2x|o[8]~0_combout\ & (!\adder16_1|a0|fa1|s~21\)))) # (!\PR1_pc|Q\(11) & ((\m_2x|o[8]~0_combout\ & (!\adder16_1|a0|fa1|s~21\)) # 
-- (!\m_2x|o[8]~0_combout\ & ((\adder16_1|a0|fa1|s~21\) # (GND)))))
-- \adder16_1|a0|fa1|s~23\ = CARRY((\PR1_pc|Q\(11) & (!\m_2x|o[8]~0_combout\ & !\adder16_1|a0|fa1|s~21\)) # (!\PR1_pc|Q\(11) & ((!\adder16_1|a0|fa1|s~21\) # (!\m_2x|o[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(11),
	datab => \m_2x|o[8]~0_combout\,
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~21\,
	combout => \adder16_1|a0|fa1|s~22_combout\,
	cout => \adder16_1|a0|fa1|s~23\);

-- Location: LCCOMB_X38_Y16_N24
\adder16_1|a0|fa1|s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~24_combout\ = ((\m_2x|o[8]~0_combout\ $ (\PR1_pc|Q\(12) $ (!\adder16_1|a0|fa1|s~23\)))) # (GND)
-- \adder16_1|a0|fa1|s~25\ = CARRY((\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(12)) # (!\adder16_1|a0|fa1|s~23\))) # (!\m_2x|o[8]~0_combout\ & (\PR1_pc|Q\(12) & !\adder16_1|a0|fa1|s~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(12),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~23\,
	combout => \adder16_1|a0|fa1|s~24_combout\,
	cout => \adder16_1|a0|fa1|s~25\);

-- Location: LCCOMB_X36_Y15_N20
\incPC[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[10]~20_combout\ = (\stage0_0|PC|Q\(10) & (\incPC[9]~19\ $ (GND))) # (!\stage0_0|PC|Q\(10) & (!\incPC[9]~19\ & VCC))
-- \incPC[10]~21\ = CARRY((\stage0_0|PC|Q\(10) & !\incPC[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(10),
	datad => VCC,
	cin => \incPC[9]~19\,
	combout => \incPC[10]~20_combout\,
	cout => \incPC[10]~21\);

-- Location: LCCOMB_X36_Y15_N22
\incPC[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[11]~22_combout\ = (\stage0_0|PC|Q\(11) & (!\incPC[10]~21\)) # (!\stage0_0|PC|Q\(11) & ((\incPC[10]~21\) # (GND)))
-- \incPC[11]~23\ = CARRY((!\incPC[10]~21\) # (!\stage0_0|PC|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(11),
	datad => VCC,
	cin => \incPC[10]~21\,
	combout => \incPC[11]~22_combout\,
	cout => \incPC[11]~23\);

-- Location: LCCOMB_X36_Y15_N24
\incPC[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[12]~24_combout\ = (\stage0_0|PC|Q\(12) & (\incPC[11]~23\ $ (GND))) # (!\stage0_0|PC|Q\(12) & (!\incPC[11]~23\ & VCC))
-- \incPC[12]~25\ = CARRY((\stage0_0|PC|Q\(12) & !\incPC[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(12),
	datad => VCC,
	cin => \incPC[11]~23\,
	combout => \incPC[12]~24_combout\,
	cout => \incPC[12]~25\);

-- Location: FF_X32_Y18_N5
\stage2_2|rf_1|r1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(12));

-- Location: FF_X32_Y18_N3
\stage2_2|rf_1|r0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(12));

-- Location: LCCOMB_X32_Y18_N2
\stage2_2|rf_1|M1|output[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[12]~7_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r1|Q\(12))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- ((\stage2_2|rf_1|r0|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r1|Q\(12),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r0|Q\(12),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[12]~7_combout\);

-- Location: FF_X32_Y20_N21
\stage2_2|rf_1|r2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(12));

-- Location: FF_X32_Y20_N7
\stage2_2|rf_1|r3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(12));

-- Location: LCCOMB_X32_Y20_N20
\stage2_2|rf_1|M1|output[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[12]~8_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[12]~7_combout\ & ((\stage2_2|rf_1|r3|Q\(12)))) # (!\stage2_2|rf_1|M1|output[12]~7_combout\ & (\stage2_2|rf_1|r2|Q\(12))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|rf_1|M1|output[12]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|M1|output[12]~7_combout\,
	datac => \stage2_2|rf_1|r2|Q\(12),
	datad => \stage2_2|rf_1|r3|Q\(12),
	combout => \stage2_2|rf_1|M1|output[12]~8_combout\);

-- Location: LCCOMB_X35_Y19_N18
\stage2_2|rf_1|M1_2|o[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[12]~1_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[12]~3_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(12),
	datab => \stage2_2|rf_1|r7_write~combout\,
	datad => \stage5_1|m_50|o[12]~3_combout\,
	combout => \stage2_2|rf_1|M1_2|o[12]~1_combout\);

-- Location: FF_X35_Y19_N19
\stage2_2|rf_1|r7|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[12]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(12));

-- Location: FF_X32_Y19_N13
\stage2_2|rf_1|r6|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(12));

-- Location: FF_X32_Y19_N15
\stage2_2|rf_1|r4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(12));

-- Location: LCCOMB_X32_Y19_N14
\stage2_2|rf_1|M1|output[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[12]~5_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(12)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(12) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(12),
	datac => \stage2_2|rf_1|r4|Q\(12),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[12]~5_combout\);

-- Location: FF_X31_Y19_N5
\stage2_2|rf_1|r5|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(12));

-- Location: LCCOMB_X31_Y19_N4
\stage2_2|rf_1|M1|output[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[12]~6_combout\ = (\stage2_2|rf_1|M1|output[12]~5_combout\ & ((\stage2_2|rf_1|r7|Q\(12)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[12]~5_combout\ & (((\stage2_2|rf_1|r5|Q\(12) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(12),
	datab => \stage2_2|rf_1|M1|output[12]~5_combout\,
	datac => \stage2_2|rf_1|r5|Q\(12),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[12]~6_combout\);

-- Location: LCCOMB_X30_Y19_N0
\stage2_2|rf_1|M1|output[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[12]~9_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[12]~6_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[12]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|m_20|o[2]~0_combout\,
	datac => \stage2_2|rf_1|M1|output[12]~8_combout\,
	datad => \stage2_2|rf_1|M1|output[12]~6_combout\,
	combout => \stage2_2|rf_1|M1|output[12]~9_combout\);

-- Location: FF_X30_Y19_N1
\PR2_d1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[12]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(12));

-- Location: LCCOMB_X30_Y19_N20
\stage3_1|forwarding|new_d1[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[12]~5_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[12]~3_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \PR2_d1|Q\(12),
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage5_1|m_50|o[12]~3_combout\,
	combout => \stage3_1|forwarding|new_d1[12]~5_combout\);

-- Location: LCCOMB_X30_Y19_N22
\stage3_1|forwarding|new_d1[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[12]~25_combout\ = (\stage3_1|forwarding|new_d1[12]~5_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[12]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d1[12]~5_combout\,
	datad => \stage3_1|forwarding|stage4_d3[12]~3_combout\,
	combout => \stage3_1|forwarding|new_d1[12]~25_combout\);

-- Location: FF_X38_Y16_N25
\PR2_adderout|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(12));

-- Location: LCCOMB_X36_Y16_N24
\m_51|o[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[12]~15_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & (((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & ((\stage0_0|PC|Q[4]~4_combout\ & ((\PR2_adderout|Q\(12)))) # (!\stage0_0|PC|Q[4]~4_combout\ & 
-- (\stage3_1|forwarding|new_d1[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \stage3_1|forwarding|new_d1[12]~25_combout\,
	datac => \PR2_adderout|Q\(12),
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[12]~15_combout\);

-- Location: LCCOMB_X36_Y16_N6
\m_51|o[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[12]~16_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\m_51|o[12]~15_combout\ & (\adder16_1|a0|fa1|s~24_combout\)) # (!\m_51|o[12]~15_combout\ & ((\incPC[12]~24_combout\))))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\m_51|o[12]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \adder16_1|a0|fa1|s~24_combout\,
	datac => \incPC[12]~24_combout\,
	datad => \m_51|o[12]~15_combout\,
	combout => \m_51|o[12]~16_combout\);

-- Location: LCCOMB_X36_Y16_N16
\m_51|o[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[12]~17_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[12]~3_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[12]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[12]~3_combout\,
	datad => \m_51|o[12]~16_combout\,
	combout => \m_51|o[12]~17_combout\);

-- Location: FF_X36_Y16_N17
\stage0_0|PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[12]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(12));

-- Location: FF_X36_Y15_N19
\PR0_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(12));

-- Location: LCCOMB_X35_Y15_N2
\PR1_pc|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[12]~feeder_combout\ = \PR0_pc|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(12),
	combout => \PR1_pc|Q[12]~feeder_combout\);

-- Location: FF_X35_Y15_N3
\PR1_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(12));

-- Location: LCCOMB_X35_Y15_N8
\PR2_pc|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[12]~feeder_combout\ = \PR1_pc|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(12),
	combout => \PR2_pc|Q[12]~feeder_combout\);

-- Location: FF_X35_Y15_N9
\PR2_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(12));

-- Location: LCCOMB_X30_Y19_N8
\PR3_pc|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[12]~feeder_combout\ = \PR2_pc|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(12),
	combout => \PR3_pc|Q[12]~feeder_combout\);

-- Location: FF_X30_Y19_N9
\PR3_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(12));

-- Location: LCCOMB_X30_Y19_N16
\stage3_1|forwarding|stage4_d3[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[12]~2_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(12))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(12),
	datab => \PR3_ctrl|Q\(0),
	datac => \PR3_pc|Q\(12),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|stage4_d3[12]~2_combout\);

-- Location: LCCOMB_X30_Y19_N28
\stage3_1|forwarding|stage4_d3[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[12]~3_combout\ = (\stage3_1|forwarding|stage4_d3[12]~2_combout\) # ((\PR3_LS7|Q\(12) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(12),
	datab => \PR3_ctrl|Q\(0),
	datad => \stage3_1|forwarding|stage4_d3[12]~2_combout\,
	combout => \stage3_1|forwarding|stage4_d3[12]~3_combout\);

-- Location: LCCOMB_X30_Y19_N2
\stage3_1|m_32|o[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[12]~1_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[12]~5_combout\) # ((\stage3_1|forwarding|stage4_d3[12]~3_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|stage4_d3[12]~3_combout\,
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[12]~5_combout\,
	combout => \stage3_1|m_32|o[12]~1_combout\);

-- Location: LCCOMB_X31_Y19_N20
\stage3_1|m_34|o[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[12]~28_combout\ = (\PR2_ctrl|Q\(15) & (\PR2_lmloop|Q\(12))) # (!\PR2_ctrl|Q\(15) & (((\PR2_ctrl|Q\(9) & \PR2_LS7|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(12),
	datab => \PR2_ctrl|Q\(9),
	datac => \PR2_ctrl|Q\(15),
	datad => \PR2_LS7|Q\(12),
	combout => \stage3_1|m_34|o[12]~28_combout\);

-- Location: LCCOMB_X30_Y19_N10
\stage3_1|m_34|o[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[12]~48_combout\ = (\stage3_1|m_34|o[12]~28_combout\) # ((\stage3_1|forwarding|new_d2[12]~15_combout\ & (!\PR2_ctrl|Q\(9) & !\PR2_ctrl|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[12]~15_combout\,
	datab => \PR2_ctrl|Q\(9),
	datac => \stage3_1|m_34|o[12]~28_combout\,
	datad => \PR2_ctrl|Q\(15),
	combout => \stage3_1|m_34|o[12]~48_combout\);

-- Location: LCCOMB_X29_Y17_N18
\stage3_1|m_34|o[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[11]~29_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(11))))) # (!\PR2_ctrl|Q\(15) & (\PR2_ctrl|Q\(9) & ((\PR2_LS7|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_ctrl|Q\(9),
	datac => \PR2_lmloop|Q\(11),
	datad => \PR2_LS7|Q\(12),
	combout => \stage3_1|m_34|o[11]~29_combout\);

-- Location: LCCOMB_X29_Y17_N20
\stage3_1|m_34|o[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[11]~49_combout\ = (\stage3_1|m_34|o[11]~29_combout\) # ((!\PR2_ctrl|Q\(15) & (!\PR2_ctrl|Q\(9) & \stage3_1|forwarding|new_d2[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_ctrl|Q\(9),
	datac => \stage3_1|forwarding|new_d2[11]~17_combout\,
	datad => \stage3_1|m_34|o[11]~29_combout\,
	combout => \stage3_1|m_34|o[11]~49_combout\);

-- Location: LCCOMB_X30_Y16_N6
\stage3_1|alu_1|A|a0|fa1|s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~22_combout\ = (\stage3_1|m_32|o[11]~2_combout\ & ((\stage3_1|m_34|o[11]~49_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~21\ & VCC)) # (!\stage3_1|m_34|o[11]~49_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~21\)))) # 
-- (!\stage3_1|m_32|o[11]~2_combout\ & ((\stage3_1|m_34|o[11]~49_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~21\)) # (!\stage3_1|m_34|o[11]~49_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~21\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~23\ = CARRY((\stage3_1|m_32|o[11]~2_combout\ & (!\stage3_1|m_34|o[11]~49_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~21\)) # (!\stage3_1|m_32|o[11]~2_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~21\) # 
-- (!\stage3_1|m_34|o[11]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[11]~2_combout\,
	datab => \stage3_1|m_34|o[11]~49_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~21\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~22_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~23\);

-- Location: LCCOMB_X30_Y16_N8
\stage3_1|alu_1|A|a0|fa1|s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~24_combout\ = ((\stage3_1|m_34|o[12]~48_combout\ $ (\stage3_1|m_32|o[12]~1_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~23\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~25\ = CARRY((\stage3_1|m_34|o[12]~48_combout\ & ((\stage3_1|m_32|o[12]~1_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~23\))) # (!\stage3_1|m_34|o[12]~48_combout\ & (\stage3_1|m_32|o[12]~1_combout\ & 
-- !\stage3_1|alu_1|A|a0|fa1|s~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[12]~48_combout\,
	datab => \stage3_1|m_32|o[12]~1_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~23\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~24_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~25\);

-- Location: LCCOMB_X30_Y16_N26
\stage3_1|alu_1|M|o[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[12]~5_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[12]~48_combout\)) # (!\stage3_1|m_32|o[12]~1_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_32|o[12]~1_combout\,
	datac => \stage3_1|alu_1|A|a0|fa1|s~24_combout\,
	datad => \stage3_1|m_34|o[12]~48_combout\,
	combout => \stage3_1|alu_1|M|o[12]~5_combout\);

-- Location: FF_X30_Y16_N27
\PR3_aluout|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[12]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(12));

-- Location: FF_X30_Y19_N15
\PR4_aluout|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(12));

-- Location: FF_X30_Y19_N13
\PR4_LS7|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(12));

-- Location: LCCOMB_X29_Y19_N26
\stage4_1|data_mem|RAM_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X29_Y19_N27
\stage4_1|data_mem|RAM_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(34));

-- Location: FF_X30_Y19_N29
\stage4_1|data_mem|RAM_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(33));

-- Location: FF_X29_Y15_N25
\PR3_newd2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(13));

-- Location: FF_X32_Y16_N13
\PR2_LS7|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_instr|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(14));

-- Location: LCCOMB_X32_Y16_N22
\PR3_LS7|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_LS7|Q[14]~feeder_combout\ = \PR2_LS7|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_LS7|Q\(14),
	combout => \PR3_LS7|Q[14]~feeder_combout\);

-- Location: FF_X32_Y16_N23
\PR3_LS7|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_LS7|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(14));

-- Location: FF_X32_Y20_N19
\stage2_2|rf_1|r3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[14]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(14));

-- Location: FF_X32_Y20_N1
\stage2_2|rf_1|r2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[14]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(14));

-- Location: FF_X36_Y18_N27
\stage2_2|rf_1|r0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[14]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(14));

-- Location: LCCOMB_X36_Y18_N24
\stage2_2|rf_1|r1|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[14]~feeder_combout\ = \stage5_1|m_50|o[14]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[14]~29_combout\,
	combout => \stage2_2|rf_1|r1|Q[14]~feeder_combout\);

-- Location: FF_X36_Y18_N25
\stage2_2|rf_1|r1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r1|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(14));

-- Location: LCCOMB_X36_Y18_N26
\stage2_2|rf_1|M1|output[14]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[14]~72_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|m_20|o[0]~2_combout\)) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(14)))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r0|Q\(14),
	datad => \stage2_2|rf_1|r1|Q\(14),
	combout => \stage2_2|rf_1|M1|output[14]~72_combout\);

-- Location: LCCOMB_X32_Y20_N0
\stage2_2|rf_1|M1|output[14]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[14]~73_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[14]~72_combout\ & (\stage2_2|rf_1|r3|Q\(14))) # (!\stage2_2|rf_1|M1|output[14]~72_combout\ & ((\stage2_2|rf_1|r2|Q\(14)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[14]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r3|Q\(14),
	datac => \stage2_2|rf_1|r2|Q\(14),
	datad => \stage2_2|rf_1|M1|output[14]~72_combout\,
	combout => \stage2_2|rf_1|M1|output[14]~73_combout\);

-- Location: LCCOMB_X35_Y19_N6
\stage2_2|rf_1|M1_2|o[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[14]~14_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[14]~29_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[14]~29_combout\,
	datad => \PR1_pc|Q\(14),
	combout => \stage2_2|rf_1|M1_2|o[14]~14_combout\);

-- Location: FF_X35_Y19_N7
\stage2_2|rf_1|r7|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(14));

-- Location: FF_X34_Y19_N19
\stage2_2|rf_1|r4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[14]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(14));

-- Location: LCCOMB_X34_Y19_N24
\stage2_2|rf_1|r6|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r6|Q[14]~feeder_combout\ = \stage5_1|m_50|o[14]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[14]~29_combout\,
	combout => \stage2_2|rf_1|r6|Q[14]~feeder_combout\);

-- Location: FF_X34_Y19_N25
\stage2_2|rf_1|r6|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r6|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(14));

-- Location: LCCOMB_X34_Y19_N18
\stage2_2|rf_1|M1|output[14]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[14]~70_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\) # ((\stage2_2|rf_1|r6|Q\(14))))) # (!\stage2_2|m_20|o[1]~1_combout\ & (!\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r4|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r4|Q\(14),
	datad => \stage2_2|rf_1|r6|Q\(14),
	combout => \stage2_2|rf_1|M1|output[14]~70_combout\);

-- Location: FF_X35_Y19_N21
\stage2_2|rf_1|r5|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[14]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(14));

-- Location: LCCOMB_X35_Y19_N20
\stage2_2|rf_1|M1|output[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[14]~71_combout\ = (\stage2_2|rf_1|M1|output[14]~70_combout\ & ((\stage2_2|rf_1|r7|Q\(14)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[14]~70_combout\ & (((\stage2_2|rf_1|r5|Q\(14) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(14),
	datab => \stage2_2|rf_1|M1|output[14]~70_combout\,
	datac => \stage2_2|rf_1|r5|Q\(14),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[14]~71_combout\);

-- Location: LCCOMB_X32_Y16_N30
\stage2_2|rf_1|M1|output[14]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[14]~74_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[14]~71_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[14]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|M1|output[14]~73_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[14]~71_combout\,
	combout => \stage2_2|rf_1|M1|output[14]~74_combout\);

-- Location: FF_X32_Y16_N31
\PR2_d1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[14]~74_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(14));

-- Location: LCCOMB_X32_Y16_N8
\stage3_1|forwarding|new_d1[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[14]~19_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & (\stage5_1|m_50|o[14]~29_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\PR2_d1|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \stage5_1|m_50|o[14]~29_combout\,
	datac => \PR2_d1|Q\(14),
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|forwarding|new_d1[14]~19_combout\);

-- Location: LCCOMB_X32_Y16_N24
\stage3_1|m_32|o[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[14]~13_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[14]~19_combout\) # ((\stage3_1|forwarding|stage4_d3[14]~15_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|stage4_d3[14]~15_combout\,
	datac => \stage3_1|forwarding|new_d1[14]~19_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|m_32|o[14]~13_combout\);

-- Location: LCCOMB_X27_Y17_N28
\PR2_lmloop|Q[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[14]~44_combout\ = (\PR2_lmloop|Q\(14) & (\PR2_lmloop|Q[13]~43\ $ (GND))) # (!\PR2_lmloop|Q\(14) & (!\PR2_lmloop|Q[13]~43\ & VCC))
-- \PR2_lmloop|Q[14]~45\ = CARRY((\PR2_lmloop|Q\(14) & !\PR2_lmloop|Q[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(14),
	datad => VCC,
	cin => \PR2_lmloop|Q[13]~43\,
	combout => \PR2_lmloop|Q[14]~44_combout\,
	cout => \PR2_lmloop|Q[14]~45\);

-- Location: FF_X27_Y17_N29
\PR2_lmloop|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[14]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(14));

-- Location: LCCOMB_X34_Y16_N8
\stage3_1|m_34|o[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[14]~45_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(14))))) # (!\PR2_ctrl|Q\(15) & (\PR2_LS7|Q\(12) & (\PR2_ctrl|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_LS7|Q\(12),
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_ctrl|Q\(9),
	datad => \PR2_lmloop|Q\(14),
	combout => \stage3_1|m_34|o[14]~45_combout\);

-- Location: LCCOMB_X34_Y16_N30
\stage3_1|m_34|o[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[14]~58_combout\ = (\stage3_1|m_34|o[14]~45_combout\) # ((!\PR2_ctrl|Q\(9) & (!\PR2_ctrl|Q\(15) & \stage3_1|forwarding|new_d2[14]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \stage3_1|m_34|o[14]~45_combout\,
	datad => \stage3_1|forwarding|new_d2[14]~47_combout\,
	combout => \stage3_1|m_34|o[14]~58_combout\);

-- Location: LCCOMB_X29_Y14_N10
\PR2_LS7|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_LS7|Q[13]~feeder_combout\ = \PR1_instr|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_instr|Q\(6),
	combout => \PR2_LS7|Q[13]~feeder_combout\);

-- Location: FF_X29_Y14_N11
\PR2_LS7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_LS7|Q[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(13));

-- Location: FF_X29_Y15_N15
\PR3_LS7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_LS7|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(13));

-- Location: LCCOMB_X28_Y15_N10
\stage4_1|data_mem|RAM_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X28_Y15_N11
\stage4_1|data_mem|RAM_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(36));

-- Location: LCCOMB_X28_Y15_N28
\stage4_1|data_mem|RAM_rtl_0_bypass[35]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[35]~0_combout\ = !\PR3_newd2|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_newd2|Q\(13),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[35]~0_combout\);

-- Location: FF_X28_Y15_N29
\stage4_1|data_mem|RAM_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[35]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(35));

-- Location: LCCOMB_X32_Y15_N18
\stage4_1|data_mem|RAM~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~76_combout\ = !\PR3_newd2|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_newd2|Q\(13),
	combout => \stage4_1|data_mem|RAM~76_combout\);

-- Location: FF_X32_Y15_N19
\stage4_1|data_mem|RAM~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~76_combout\,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~35_q\);

-- Location: M9K_X33_Y15_N0
\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000600000000000000000AAAA0000000000000060FF00000665600000607A000006EE1000001FFE0000011430000000610000060FF000006056000006002000006001000006000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/pipeline_risc.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "stage4:stage4_1|memory:data_mem|altsyncram:RAM_rtl_0|altsyncram_2ih1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \stage4_1|data_mem|RAM~73_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y15_N16
\stage4_1|data_mem|RAM~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~38_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a13\))) # (!\stage4_1|data_mem|RAM~21_q\ & (!\stage4_1|data_mem|RAM~35_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datab => \stage4_1|data_mem|RAM~35_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a13\,
	combout => \stage4_1|data_mem|RAM~38_combout\);

-- Location: LCCOMB_X28_Y15_N0
\stage4_1|data_mem|RAM~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~42_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(36) & ((\stage4_1|data_mem|RAM~41_combout\ & (!\stage4_1|data_mem|RAM_rtl_0_bypass\(35))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~38_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(36) & (!\stage4_1|data_mem|RAM_rtl_0_bypass\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(36),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(35),
	datac => \stage4_1|data_mem|RAM~38_combout\,
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~42_combout\);

-- Location: FF_X28_Y15_N1
\PR4_memdout|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(13));

-- Location: FF_X29_Y16_N31
\PR4_LS7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(13));

-- Location: FF_X29_Y16_N29
\PR4_pc|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(13));

-- Location: FF_X29_Y16_N5
\PR3_aluout|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage3_1|alu_1|M|o[13]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(13));

-- Location: FF_X29_Y16_N13
\PR4_aluout|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(13));

-- Location: LCCOMB_X29_Y16_N28
\stage5_1|m_50|o[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[13]~0_combout\ = (\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0)) # ((\PR4_aluout|Q\(13))))) # (!\PR4_ctrl|Q\(1) & (!\PR4_ctrl|Q\(0) & (\PR4_pc|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_pc|Q\(13),
	datad => \PR4_aluout|Q\(13),
	combout => \stage5_1|m_50|o[13]~0_combout\);

-- Location: LCCOMB_X29_Y16_N30
\stage5_1|m_50|o[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[13]~1_combout\ = (\PR4_ctrl|Q\(0) & ((\stage5_1|m_50|o[13]~0_combout\ & ((\PR4_LS7|Q\(13)))) # (!\stage5_1|m_50|o[13]~0_combout\ & (\PR4_memdout|Q\(13))))) # (!\PR4_ctrl|Q\(0) & (((\stage5_1|m_50|o[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_memdout|Q\(13),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_LS7|Q\(13),
	datad => \stage5_1|m_50|o[13]~0_combout\,
	combout => \stage5_1|m_50|o[13]~1_combout\);

-- Location: LCCOMB_X38_Y16_N26
\adder16_1|a0|fa1|s~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~26_combout\ = (\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(13) & (\adder16_1|a0|fa1|s~25\ & VCC)) # (!\PR1_pc|Q\(13) & (!\adder16_1|a0|fa1|s~25\)))) # (!\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(13) & (!\adder16_1|a0|fa1|s~25\)) # (!\PR1_pc|Q\(13) 
-- & ((\adder16_1|a0|fa1|s~25\) # (GND)))))
-- \adder16_1|a0|fa1|s~27\ = CARRY((\m_2x|o[8]~0_combout\ & (!\PR1_pc|Q\(13) & !\adder16_1|a0|fa1|s~25\)) # (!\m_2x|o[8]~0_combout\ & ((!\adder16_1|a0|fa1|s~25\) # (!\PR1_pc|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(13),
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~25\,
	combout => \adder16_1|a0|fa1|s~26_combout\,
	cout => \adder16_1|a0|fa1|s~27\);

-- Location: FF_X38_Y16_N27
\PR2_adderout|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(13));

-- Location: FF_X34_Y18_N19
\stage2_2|rf_1|r3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(13));

-- Location: FF_X34_Y18_N5
\stage2_2|rf_1|r2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(13));

-- Location: FF_X32_Y18_N13
\stage2_2|rf_1|r1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(13));

-- Location: FF_X32_Y18_N23
\stage2_2|rf_1|r0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(13));

-- Location: LCCOMB_X32_Y18_N22
\stage2_2|rf_1|M1|output[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[13]~2_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r1|Q\(13))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- ((\stage2_2|rf_1|r0|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r1|Q\(13),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r0|Q\(13),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[13]~2_combout\);

-- Location: LCCOMB_X34_Y18_N4
\stage2_2|rf_1|M1|output[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[13]~3_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[13]~2_combout\ & (\stage2_2|rf_1|r3|Q\(13))) # (!\stage2_2|rf_1|M1|output[13]~2_combout\ & ((\stage2_2|rf_1|r2|Q\(13)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r3|Q\(13),
	datac => \stage2_2|rf_1|r2|Q\(13),
	datad => \stage2_2|rf_1|M1|output[13]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[13]~3_combout\);

-- Location: LCCOMB_X35_Y19_N12
\stage2_2|rf_1|M1_2|o[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[13]~0_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[13]~1_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \PR1_pc|Q\(13),
	datad => \stage5_1|m_50|o[13]~1_combout\,
	combout => \stage2_2|rf_1|M1_2|o[13]~0_combout\);

-- Location: FF_X35_Y19_N13
\stage2_2|rf_1|r7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[13]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(13));

-- Location: FF_X32_Y19_N29
\stage2_2|rf_1|r6|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(13));

-- Location: FF_X32_Y19_N31
\stage2_2|rf_1|r4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(13));

-- Location: LCCOMB_X32_Y19_N30
\stage2_2|rf_1|M1|output[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[13]~0_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(13)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(13) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(13),
	datac => \stage2_2|rf_1|r4|Q\(13),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[13]~0_combout\);

-- Location: FF_X31_Y19_N7
\stage2_2|rf_1|r5|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(13));

-- Location: LCCOMB_X31_Y19_N6
\stage2_2|rf_1|M1|output[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[13]~1_combout\ = (\stage2_2|rf_1|M1|output[13]~0_combout\ & ((\stage2_2|rf_1|r7|Q\(13)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[13]~0_combout\ & (((\stage2_2|rf_1|r5|Q\(13) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(13),
	datab => \stage2_2|rf_1|M1|output[13]~0_combout\,
	datac => \stage2_2|rf_1|r5|Q\(13),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[13]~1_combout\);

-- Location: LCCOMB_X31_Y18_N30
\stage2_2|rf_1|M1|output[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[13]~4_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[13]~1_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[13]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[13]~3_combout\,
	datac => \stage2_2|rf_1|M1|output[13]~1_combout\,
	datad => \stage2_2|m_20|o[2]~0_combout\,
	combout => \stage2_2|rf_1|M1|output[13]~4_combout\);

-- Location: FF_X31_Y18_N31
\PR2_d1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[13]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(13));

-- Location: LCCOMB_X29_Y16_N16
\stage3_1|forwarding|new_d1[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[13]~4_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[13]~1_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(13),
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datac => \stage5_1|m_50|o[13]~1_combout\,
	datad => \stage3_1|forwarding|new_d1~3_combout\,
	combout => \stage3_1|forwarding|new_d1[13]~4_combout\);

-- Location: LCCOMB_X29_Y16_N12
\stage3_1|forwarding|new_d1[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[13]~24_combout\ = (\stage3_1|forwarding|new_d1[13]~4_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[13]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d1[13]~4_combout\,
	datad => \stage3_1|forwarding|stage4_d3[13]~1_combout\,
	combout => \stage3_1|forwarding|new_d1[13]~24_combout\);

-- Location: LCCOMB_X36_Y15_N26
\incPC[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[13]~26_combout\ = (\stage0_0|PC|Q\(13) & (!\incPC[12]~25\)) # (!\stage0_0|PC|Q\(13) & ((\incPC[12]~25\) # (GND)))
-- \incPC[13]~27\ = CARRY((!\incPC[12]~25\) # (!\stage0_0|PC|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(13),
	datad => VCC,
	cin => \incPC[12]~25\,
	combout => \incPC[13]~26_combout\,
	cout => \incPC[13]~27\);

-- Location: LCCOMB_X35_Y16_N14
\m_51|o[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[13]~12_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & (((\stage0_0|PC|Q[4]~5_combout\)))) # (!\stage0_0|PC|Q[4]~4_combout\ & ((\stage0_0|PC|Q[4]~5_combout\ & ((\incPC[13]~26_combout\))) # (!\stage0_0|PC|Q[4]~5_combout\ & 
-- (\stage3_1|forwarding|new_d1[13]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1[13]~24_combout\,
	datab => \incPC[13]~26_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[13]~12_combout\);

-- Location: LCCOMB_X35_Y16_N20
\m_51|o[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[13]~13_combout\ = (\m_51|o[13]~12_combout\ & (((\adder16_1|a0|fa1|s~26_combout\) # (!\stage0_0|PC|Q[4]~4_combout\)))) # (!\m_51|o[13]~12_combout\ & (\PR2_adderout|Q\(13) & ((\stage0_0|PC|Q[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(13),
	datab => \adder16_1|a0|fa1|s~26_combout\,
	datac => \m_51|o[13]~12_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[13]~13_combout\);

-- Location: LCCOMB_X35_Y16_N28
\m_51|o[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[13]~14_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[13]~1_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[13]~1_combout\,
	datad => \m_51|o[13]~13_combout\,
	combout => \m_51|o[13]~14_combout\);

-- Location: FF_X35_Y16_N29
\stage0_0|PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[13]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(13));

-- Location: FF_X36_Y15_N1
\PR0_pc|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(13));

-- Location: FF_X37_Y15_N23
\PR1_pc|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(13));

-- Location: LCCOMB_X35_Y17_N24
\PR2_pc|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[13]~feeder_combout\ = \PR1_pc|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(13),
	combout => \PR2_pc|Q[13]~feeder_combout\);

-- Location: FF_X35_Y17_N25
\PR2_pc|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(13));

-- Location: FF_X28_Y16_N13
\PR3_pc|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(13));

-- Location: LCCOMB_X28_Y16_N12
\stage3_1|forwarding|stage4_d3[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[13]~0_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(13)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(13),
	datad => \PR3_aluout|Q\(13),
	combout => \stage3_1|forwarding|stage4_d3[13]~0_combout\);

-- Location: LCCOMB_X29_Y15_N12
\stage3_1|forwarding|stage4_d3[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[13]~1_combout\ = (\stage3_1|forwarding|stage4_d3[13]~0_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_LS7|Q\(13),
	datad => \stage3_1|forwarding|stage4_d3[13]~0_combout\,
	combout => \stage3_1|forwarding|stage4_d3[13]~1_combout\);

-- Location: LCCOMB_X29_Y16_N24
\stage3_1|m_32|o[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[13]~0_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[13]~4_combout\) # ((\stage3_1|forwarding|stage4_d3[13]~1_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|stage4_d3[13]~1_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[13]~4_combout\,
	combout => \stage3_1|m_32|o[13]~0_combout\);

-- Location: LCCOMB_X30_Y16_N10
\stage3_1|alu_1|A|a0|fa1|s~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~26_combout\ = (\stage3_1|m_32|o[13]~0_combout\ & ((\stage3_1|m_34|o[13]~47_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~25\ & VCC)) # (!\stage3_1|m_34|o[13]~47_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~25\)))) # 
-- (!\stage3_1|m_32|o[13]~0_combout\ & ((\stage3_1|m_34|o[13]~47_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~25\)) # (!\stage3_1|m_34|o[13]~47_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~25\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~27\ = CARRY((\stage3_1|m_32|o[13]~0_combout\ & (!\stage3_1|m_34|o[13]~47_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~25\)) # (!\stage3_1|m_32|o[13]~0_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~25\) # 
-- (!\stage3_1|m_34|o[13]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[13]~0_combout\,
	datab => \stage3_1|m_34|o[13]~47_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~25\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~26_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~27\);

-- Location: LCCOMB_X30_Y16_N12
\stage3_1|alu_1|A|a0|fa1|s~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~28_combout\ = ((\stage3_1|m_32|o[14]~13_combout\ $ (\stage3_1|m_34|o[14]~58_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~27\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~29\ = CARRY((\stage3_1|m_32|o[14]~13_combout\ & ((\stage3_1|m_34|o[14]~58_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~27\))) # (!\stage3_1|m_32|o[14]~13_combout\ & (\stage3_1|m_34|o[14]~58_combout\ & 
-- !\stage3_1|alu_1|A|a0|fa1|s~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[14]~13_combout\,
	datab => \stage3_1|m_34|o[14]~58_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~27\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~28_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~29\);

-- Location: LCCOMB_X31_Y16_N24
\stage3_1|alu_1|M|o[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[14]~1_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[14]~58_combout\) # (!\stage3_1|m_32|o[14]~13_combout\)))) # (!\PR2_ctrl|Q\(11) & (\stage3_1|alu_1|A|a0|fa1|s~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|A|a0|fa1|s~28_combout\,
	datab => \stage3_1|m_32|o[14]~13_combout\,
	datac => \stage3_1|m_34|o[14]~58_combout\,
	datad => \PR2_ctrl|Q\(11),
	combout => \stage3_1|alu_1|M|o[14]~1_combout\);

-- Location: FF_X31_Y16_N25
\PR3_aluout|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[14]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(14));

-- Location: FF_X32_Y16_N3
\PR4_aluout|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(14));

-- Location: FF_X32_Y16_N29
\PR4_LS7|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(14));

-- Location: LCCOMB_X29_Y19_N6
\stage4_1|data_mem|RAM_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X29_Y19_N7
\stage4_1|data_mem|RAM_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(38));

-- Location: LCCOMB_X29_Y19_N4
\stage4_1|data_mem|RAM_rtl_0_bypass[37]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[37]~1_combout\ = !\PR3_newd2|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR3_newd2|Q\(14),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[37]~1_combout\);

-- Location: FF_X29_Y19_N5
\stage4_1|data_mem|RAM_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[37]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(37));

-- Location: LCCOMB_X29_Y19_N10
\stage4_1|data_mem|RAM~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~77_combout\ = !\PR3_newd2|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR3_newd2|Q\(14),
	combout => \stage4_1|data_mem|RAM~77_combout\);

-- Location: FF_X29_Y19_N11
\stage4_1|data_mem|RAM~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~77_combout\,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~36_q\);

-- Location: LCCOMB_X29_Y19_N24
\stage4_1|data_mem|RAM~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~69_combout\ = (\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a14\)) # (!\stage4_1|data_mem|RAM~21_q\ & ((!\stage4_1|data_mem|RAM~36_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a14\,
	datac => \stage4_1|data_mem|RAM~21_q\,
	datad => \stage4_1|data_mem|RAM~36_q\,
	combout => \stage4_1|data_mem|RAM~69_combout\);

-- Location: LCCOMB_X29_Y19_N14
\stage4_1|data_mem|RAM~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~70_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(38) & ((\stage4_1|data_mem|RAM~41_combout\ & (!\stage4_1|data_mem|RAM_rtl_0_bypass\(37))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~69_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(38) & (!\stage4_1|data_mem|RAM_rtl_0_bypass\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(38),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(37),
	datac => \stage4_1|data_mem|RAM~41_combout\,
	datad => \stage4_1|data_mem|RAM~69_combout\,
	combout => \stage4_1|data_mem|RAM~70_combout\);

-- Location: FF_X29_Y19_N15
\PR4_memdout|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~70_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(14));

-- Location: FF_X32_Y16_N1
\PR4_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(14));

-- Location: LCCOMB_X32_Y16_N0
\stage5_1|m_50|o[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[14]~28_combout\ = (\PR4_ctrl|Q\(0) & ((\PR4_memdout|Q\(14)) # ((\PR4_ctrl|Q\(1))))) # (!\PR4_ctrl|Q\(0) & (((\PR4_pc|Q\(14) & !\PR4_ctrl|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_memdout|Q\(14),
	datac => \PR4_pc|Q\(14),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[14]~28_combout\);

-- Location: LCCOMB_X32_Y16_N28
\stage5_1|m_50|o[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[14]~29_combout\ = (\PR4_ctrl|Q\(1) & ((\stage5_1|m_50|o[14]~28_combout\ & ((\PR4_LS7|Q\(14)))) # (!\stage5_1|m_50|o[14]~28_combout\ & (\PR4_aluout|Q\(14))))) # (!\PR4_ctrl|Q\(1) & (((\stage5_1|m_50|o[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_aluout|Q\(14),
	datac => \PR4_LS7|Q\(14),
	datad => \stage5_1|m_50|o[14]~28_combout\,
	combout => \stage5_1|m_50|o[14]~29_combout\);

-- Location: LCCOMB_X36_Y15_N28
\incPC[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[14]~28_combout\ = (\stage0_0|PC|Q\(14) & (\incPC[13]~27\ $ (GND))) # (!\stage0_0|PC|Q\(14) & (!\incPC[13]~27\ & VCC))
-- \incPC[14]~29\ = CARRY((\stage0_0|PC|Q\(14) & !\incPC[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(14),
	datad => VCC,
	cin => \incPC[13]~27\,
	combout => \incPC[14]~28_combout\,
	cout => \incPC[14]~29\);

-- Location: LCCOMB_X38_Y16_N28
\adder16_1|a0|fa1|s~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~28_combout\ = ((\PR1_pc|Q\(14) $ (\m_2x|o[8]~0_combout\ $ (!\adder16_1|a0|fa1|s~27\)))) # (GND)
-- \adder16_1|a0|fa1|s~29\ = CARRY((\PR1_pc|Q\(14) & ((\m_2x|o[8]~0_combout\) # (!\adder16_1|a0|fa1|s~27\))) # (!\PR1_pc|Q\(14) & (\m_2x|o[8]~0_combout\ & !\adder16_1|a0|fa1|s~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(14),
	datab => \m_2x|o[8]~0_combout\,
	datad => VCC,
	cin => \adder16_1|a0|fa1|s~27\,
	combout => \adder16_1|a0|fa1|s~28_combout\,
	cout => \adder16_1|a0|fa1|s~29\);

-- Location: FF_X38_Y16_N29
\PR2_adderout|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(14));

-- Location: LCCOMB_X32_Y16_N2
\stage3_1|forwarding|new_d1[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[14]~34_combout\ = (\stage3_1|forwarding|new_d1[14]~19_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[14]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d1[14]~19_combout\,
	datad => \stage3_1|forwarding|stage4_d3[14]~15_combout\,
	combout => \stage3_1|forwarding|new_d1[14]~34_combout\);

-- Location: LCCOMB_X34_Y17_N6
\m_51|o[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[14]~42_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\PR2_adderout|Q\(14)) # ((\stage0_0|PC|Q[4]~5_combout\)))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\stage3_1|forwarding|new_d1[14]~34_combout\ & !\stage0_0|PC|Q[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(14),
	datab => \stage3_1|forwarding|new_d1[14]~34_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[14]~42_combout\);

-- Location: LCCOMB_X34_Y17_N12
\m_51|o[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[14]~43_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\m_51|o[14]~42_combout\ & ((\adder16_1|a0|fa1|s~28_combout\))) # (!\m_51|o[14]~42_combout\ & (\incPC[14]~28_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\m_51|o[14]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \incPC[14]~28_combout\,
	datac => \adder16_1|a0|fa1|s~28_combout\,
	datad => \m_51|o[14]~42_combout\,
	combout => \m_51|o[14]~43_combout\);

-- Location: LCCOMB_X34_Y17_N28
\m_51|o[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[14]~44_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[14]~29_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[14]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[14]~29_combout\,
	datad => \m_51|o[14]~43_combout\,
	combout => \m_51|o[14]~44_combout\);

-- Location: FF_X34_Y17_N29
\stage0_0|PC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[14]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(14));

-- Location: FF_X36_Y15_N11
\PR0_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(14));

-- Location: LCCOMB_X37_Y15_N6
\PR1_pc|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[14]~feeder_combout\ = \PR0_pc|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(14),
	combout => \PR1_pc|Q[14]~feeder_combout\);

-- Location: FF_X37_Y15_N7
\PR1_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(14));

-- Location: LCCOMB_X32_Y16_N26
\PR2_pc|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[14]~feeder_combout\ = \PR1_pc|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(14),
	combout => \PR2_pc|Q[14]~feeder_combout\);

-- Location: FF_X32_Y16_N27
\PR2_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(14));

-- Location: FF_X32_Y16_N15
\PR3_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(14));

-- Location: LCCOMB_X32_Y16_N6
\stage3_1|forwarding|stage4_d3[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[14]~14_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(14)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(1),
	datab => \PR3_pc|Q\(14),
	datac => \PR3_ctrl|Q\(0),
	datad => \PR3_aluout|Q\(14),
	combout => \stage3_1|forwarding|stage4_d3[14]~14_combout\);

-- Location: LCCOMB_X32_Y16_N18
\stage3_1|forwarding|stage4_d3[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[14]~15_combout\ = (\stage3_1|forwarding|stage4_d3[14]~14_combout\) # ((\PR3_LS7|Q\(14) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(14),
	datab => \PR3_ctrl|Q\(0),
	datad => \stage3_1|forwarding|stage4_d3[14]~14_combout\,
	combout => \stage3_1|forwarding|stage4_d3[14]~15_combout\);

-- Location: LCCOMB_X34_Y16_N24
\stage3_1|forwarding|new_d2[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[14]~46_combout\ = (\stage3_1|forwarding|new_d2[0]~10_combout\ & ((\stage5_1|m_50|o[14]~29_combout\) # ((\PR2_d1|Q\(14) & \stage3_1|forwarding|new_d2[0]~11_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~10_combout\ & 
-- (\PR2_d1|Q\(14) & ((\stage3_1|forwarding|new_d2[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datab => \PR2_d1|Q\(14),
	datac => \stage5_1|m_50|o[14]~29_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~11_combout\,
	combout => \stage3_1|forwarding|new_d2[14]~46_combout\);

-- Location: LCCOMB_X34_Y16_N0
\stage3_1|forwarding|new_d2[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[14]~47_combout\ = (\stage3_1|forwarding|new_d2[14]~46_combout\) # ((\stage3_1|forwarding|new_d2~51_combout\ & \stage3_1|forwarding|stage4_d3[14]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~51_combout\,
	datac => \stage3_1|forwarding|stage4_d3[14]~15_combout\,
	datad => \stage3_1|forwarding|new_d2[14]~46_combout\,
	combout => \stage3_1|forwarding|new_d2[14]~47_combout\);

-- Location: FF_X34_Y16_N1
\PR3_newd2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[14]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(14));

-- Location: FF_X32_Y17_N13
\stage4_1|data_mem|RAM~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(12),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~34_q\);

-- Location: LCCOMB_X32_Y17_N12
\stage4_1|data_mem|RAM~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~43_combout\ = (\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a12\)) # (!\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM~34_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a12\,
	datac => \stage4_1|data_mem|RAM~34_q\,
	datad => \stage4_1|data_mem|RAM~21_q\,
	combout => \stage4_1|data_mem|RAM~43_combout\);

-- Location: LCCOMB_X29_Y19_N8
\stage4_1|data_mem|RAM~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~44_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(34) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(33))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~43_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(34) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(34),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(33),
	datac => \stage4_1|data_mem|RAM~41_combout\,
	datad => \stage4_1|data_mem|RAM~43_combout\,
	combout => \stage4_1|data_mem|RAM~44_combout\);

-- Location: FF_X29_Y19_N9
\PR4_memdout|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(12));

-- Location: FF_X30_Y19_N25
\PR4_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(12));

-- Location: LCCOMB_X30_Y19_N24
\stage5_1|m_50|o[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[12]~2_combout\ = (\PR4_ctrl|Q\(1) & (((\PR4_ctrl|Q\(0))))) # (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & (\PR4_memdout|Q\(12))) # (!\PR4_ctrl|Q\(0) & ((\PR4_pc|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_memdout|Q\(12),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(12),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[12]~2_combout\);

-- Location: LCCOMB_X30_Y19_N12
\stage5_1|m_50|o[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[12]~3_combout\ = (\PR4_ctrl|Q\(1) & ((\stage5_1|m_50|o[12]~2_combout\ & ((\PR4_LS7|Q\(12)))) # (!\stage5_1|m_50|o[12]~2_combout\ & (\PR4_aluout|Q\(12))))) # (!\PR4_ctrl|Q\(1) & (((\stage5_1|m_50|o[12]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(12),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_LS7|Q\(12),
	datad => \stage5_1|m_50|o[12]~2_combout\,
	combout => \stage5_1|m_50|o[12]~3_combout\);

-- Location: LCCOMB_X30_Y19_N4
\stage3_1|forwarding|new_d2[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[12]~14_combout\ = (\stage5_1|m_50|o[12]~3_combout\ & ((\stage3_1|forwarding|new_d2[0]~10_combout\) # ((\stage3_1|forwarding|new_d2[0]~11_combout\ & \PR2_d1|Q\(12))))) # (!\stage5_1|m_50|o[12]~3_combout\ & 
-- (\stage3_1|forwarding|new_d2[0]~11_combout\ & ((\PR2_d1|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[12]~3_combout\,
	datab => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datac => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datad => \PR2_d1|Q\(12),
	combout => \stage3_1|forwarding|new_d2[12]~14_combout\);

-- Location: LCCOMB_X30_Y19_N26
\stage3_1|forwarding|new_d2[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[12]~15_combout\ = (\stage3_1|forwarding|new_d2[12]~14_combout\) # ((\stage3_1|forwarding|new_d2~51_combout\ & \stage3_1|forwarding|stage4_d3[12]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~51_combout\,
	datac => \stage3_1|forwarding|new_d2[12]~14_combout\,
	datad => \stage3_1|forwarding|stage4_d3[12]~3_combout\,
	combout => \stage3_1|forwarding|new_d2[12]~15_combout\);

-- Location: FF_X30_Y19_N27
\PR3_newd2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[12]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(12));

-- Location: LCCOMB_X32_Y15_N6
\stage4_1|data_mem|RAM~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~45_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a11\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~33_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~33_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a11\,
	combout => \stage4_1|data_mem|RAM~45_combout\);

-- Location: LCCOMB_X28_Y18_N20
\stage4_1|data_mem|RAM~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~46_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(32) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(31))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~45_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(32) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(31),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(32),
	datac => \stage4_1|data_mem|RAM~45_combout\,
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~46_combout\);

-- Location: FF_X28_Y18_N21
\PR4_memdout|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(11));

-- Location: FF_X29_Y16_N19
\PR4_aluout|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(11));

-- Location: FF_X30_Y17_N17
\PR2_pc|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(11));

-- Location: FF_X29_Y17_N9
\PR3_pc|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(11));

-- Location: FF_X29_Y16_N1
\PR4_pc|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(11));

-- Location: LCCOMB_X29_Y16_N0
\stage5_1|m_50|o[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[11]~4_combout\ = (\PR4_ctrl|Q\(1) & ((\PR4_aluout|Q\(11)) # ((\PR4_ctrl|Q\(0))))) # (!\PR4_ctrl|Q\(1) & (((\PR4_pc|Q\(11) & !\PR4_ctrl|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_aluout|Q\(11),
	datac => \PR4_pc|Q\(11),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[11]~4_combout\);

-- Location: FF_X29_Y17_N1
\PR3_LS7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_LS7|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(11));

-- Location: FF_X29_Y16_N21
\PR4_LS7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(11));

-- Location: LCCOMB_X29_Y16_N20
\stage5_1|m_50|o[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[11]~5_combout\ = (\stage5_1|m_50|o[11]~4_combout\ & (((\PR4_LS7|Q\(11)) # (!\PR4_ctrl|Q\(0))))) # (!\stage5_1|m_50|o[11]~4_combout\ & (\PR4_memdout|Q\(11) & ((\PR4_ctrl|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_memdout|Q\(11),
	datab => \stage5_1|m_50|o[11]~4_combout\,
	datac => \PR4_LS7|Q\(11),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[11]~5_combout\);

-- Location: FF_X38_Y16_N23
\PR2_adderout|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(11));

-- Location: LCCOMB_X29_Y16_N18
\stage3_1|forwarding|new_d1[11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[11]~26_combout\ = (\stage3_1|forwarding|new_d1[11]~6_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[11]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d1[11]~6_combout\,
	datad => \stage3_1|forwarding|stage4_d3[11]~5_combout\,
	combout => \stage3_1|forwarding|new_d1[11]~26_combout\);

-- Location: LCCOMB_X35_Y16_N6
\m_51|o[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[11]~18_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & (((\stage0_0|PC|Q[4]~5_combout\)))) # (!\stage0_0|PC|Q[4]~4_combout\ & ((\stage0_0|PC|Q[4]~5_combout\ & ((\incPC[11]~22_combout\))) # (!\stage0_0|PC|Q[4]~5_combout\ & 
-- (\stage3_1|forwarding|new_d1[11]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1[11]~26_combout\,
	datab => \incPC[11]~22_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[11]~18_combout\);

-- Location: LCCOMB_X35_Y16_N4
\m_51|o[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[11]~19_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\m_51|o[11]~18_combout\ & ((\adder16_1|a0|fa1|s~22_combout\))) # (!\m_51|o[11]~18_combout\ & (\PR2_adderout|Q\(11))))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\m_51|o[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(11),
	datab => \adder16_1|a0|fa1|s~22_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \m_51|o[11]~18_combout\,
	combout => \m_51|o[11]~19_combout\);

-- Location: LCCOMB_X35_Y16_N22
\m_51|o[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[11]~20_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[11]~5_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[11]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[11]~5_combout\,
	datab => \m51_select~0_combout\,
	datac => \m_51|o[11]~19_combout\,
	combout => \m_51|o[11]~20_combout\);

-- Location: FF_X35_Y16_N23
\stage0_0|PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[11]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(11));

-- Location: FF_X36_Y15_N21
\PR0_pc|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(11));

-- Location: FF_X36_Y15_N9
\PR1_pc|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(11));

-- Location: LCCOMB_X32_Y16_N20
\stage2_2|rf_1|M1_2|o[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[11]~2_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[11]~5_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \PR1_pc|Q\(11),
	datad => \stage5_1|m_50|o[11]~5_combout\,
	combout => \stage2_2|rf_1|M1_2|o[11]~2_combout\);

-- Location: FF_X32_Y16_N21
\stage2_2|rf_1|r7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[11]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(11));

-- Location: FF_X31_Y16_N15
\stage2_2|rf_1|r5|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(11));

-- Location: FF_X32_Y19_N17
\stage2_2|rf_1|r6|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(11));

-- Location: FF_X32_Y19_N3
\stage2_2|rf_1|r4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(11));

-- Location: LCCOMB_X32_Y19_N2
\stage2_2|rf_1|M1|output[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[11]~10_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(11)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(11) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(11),
	datac => \stage2_2|rf_1|r4|Q\(11),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[11]~10_combout\);

-- Location: LCCOMB_X31_Y16_N14
\stage2_2|rf_1|M1|output[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[11]~11_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|M1|output[11]~10_combout\ & (\stage2_2|rf_1|r7|Q\(11))) # (!\stage2_2|rf_1|M1|output[11]~10_combout\ & ((\stage2_2|rf_1|r5|Q\(11)))))) # 
-- (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|M1|output[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(11),
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r5|Q\(11),
	datad => \stage2_2|rf_1|M1|output[11]~10_combout\,
	combout => \stage2_2|rf_1|M1|output[11]~11_combout\);

-- Location: FF_X32_Y20_N15
\stage2_2|rf_1|r3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(11));

-- Location: FF_X32_Y20_N29
\stage2_2|rf_1|r2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(11));

-- Location: FF_X32_Y18_N1
\stage2_2|rf_1|r1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(11));

-- Location: FF_X32_Y18_N27
\stage2_2|rf_1|r0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(11));

-- Location: LCCOMB_X32_Y18_N26
\stage2_2|rf_1|M1|output[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[11]~12_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(11)) # ((\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|r0|Q\(11) & !\stage2_2|m_20|o[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r1|Q\(11),
	datac => \stage2_2|rf_1|r0|Q\(11),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[11]~12_combout\);

-- Location: LCCOMB_X32_Y20_N28
\stage2_2|rf_1|M1|output[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[11]~13_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[11]~12_combout\ & (\stage2_2|rf_1|r3|Q\(11))) # (!\stage2_2|rf_1|M1|output[11]~12_combout\ & ((\stage2_2|rf_1|r2|Q\(11)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r3|Q\(11),
	datac => \stage2_2|rf_1|r2|Q\(11),
	datad => \stage2_2|rf_1|M1|output[11]~12_combout\,
	combout => \stage2_2|rf_1|M1|output[11]~13_combout\);

-- Location: LCCOMB_X28_Y16_N26
\stage2_2|rf_1|M1|output[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[11]~14_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[11]~11_combout\)) # (!\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[11]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[11]~11_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[11]~13_combout\,
	combout => \stage2_2|rf_1|M1|output[11]~14_combout\);

-- Location: FF_X28_Y16_N27
\PR2_d1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[11]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(11));

-- Location: LCCOMB_X28_Y16_N24
\stage3_1|forwarding|new_d1[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[11]~6_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[11]~5_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(11),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage5_1|m_50|o[11]~5_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|forwarding|new_d1[11]~6_combout\);

-- Location: LCCOMB_X28_Y16_N14
\stage3_1|m_32|o[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[11]~2_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[11]~6_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d1[11]~6_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|forwarding|stage4_d3[11]~5_combout\,
	combout => \stage3_1|m_32|o[11]~2_combout\);

-- Location: LCCOMB_X29_Y16_N22
\stage3_1|alu_1|M|o[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[11]~4_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[11]~49_combout\)) # (!\stage3_1|m_32|o[11]~2_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[11]~2_combout\,
	datab => \stage3_1|m_34|o[11]~49_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~22_combout\,
	combout => \stage3_1|alu_1|M|o[11]~4_combout\);

-- Location: FF_X29_Y16_N23
\PR3_aluout|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[11]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(11));

-- Location: LCCOMB_X29_Y17_N8
\stage3_1|forwarding|stage4_d3[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[11]~4_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(11))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_aluout|Q\(11),
	datac => \PR3_pc|Q\(11),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|stage4_d3[11]~4_combout\);

-- Location: LCCOMB_X29_Y17_N0
\stage3_1|forwarding|stage4_d3[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[11]~5_combout\ = (\stage3_1|forwarding|stage4_d3[11]~4_combout\) # ((\PR3_LS7|Q\(11) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3_1|forwarding|stage4_d3[11]~4_combout\,
	datac => \PR3_LS7|Q\(11),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[11]~5_combout\);

-- Location: LCCOMB_X29_Y17_N12
\stage3_1|forwarding|new_d2[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[11]~16_combout\ = (\stage3_1|forwarding|new_d2[0]~11_combout\ & ((\PR2_d1|Q\(11)) # ((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[11]~5_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~11_combout\ & 
-- (((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datab => \PR2_d1|Q\(11),
	datac => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datad => \stage5_1|m_50|o[11]~5_combout\,
	combout => \stage3_1|forwarding|new_d2[11]~16_combout\);

-- Location: LCCOMB_X29_Y17_N30
\stage3_1|forwarding|new_d2[11]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[11]~17_combout\ = (\stage3_1|forwarding|new_d2[11]~16_combout\) # ((\stage3_1|forwarding|stage4_d3[11]~5_combout\ & \stage3_1|forwarding|new_d2~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3_1|forwarding|stage4_d3[11]~5_combout\,
	datac => \stage3_1|forwarding|new_d2~51_combout\,
	datad => \stage3_1|forwarding|new_d2[11]~16_combout\,
	combout => \stage3_1|forwarding|new_d2[11]~17_combout\);

-- Location: FF_X29_Y17_N31
\PR3_newd2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[11]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(11));

-- Location: FF_X32_Y15_N29
\stage4_1|data_mem|RAM~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(10),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~32_q\);

-- Location: LCCOMB_X32_Y15_N28
\stage4_1|data_mem|RAM~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~47_combout\ = (\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a10\)) # (!\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM~32_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a10\,
	datac => \stage4_1|data_mem|RAM~32_q\,
	datad => \stage4_1|data_mem|RAM~21_q\,
	combout => \stage4_1|data_mem|RAM~47_combout\);

-- Location: LCCOMB_X28_Y15_N22
\stage4_1|data_mem|RAM_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[29]~feeder_combout\ = \PR3_newd2|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR3_newd2|Q\(10),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X28_Y15_N23
\stage4_1|data_mem|RAM_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(29));

-- Location: LCCOMB_X28_Y15_N2
\stage4_1|data_mem|RAM~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~48_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(30) & ((\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM_rtl_0_bypass\(29)))) # (!\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM~47_combout\)))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(30) & (((\stage4_1|data_mem|RAM_rtl_0_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(30),
	datab => \stage4_1|data_mem|RAM~47_combout\,
	datac => \stage4_1|data_mem|RAM_rtl_0_bypass\(29),
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~48_combout\);

-- Location: FF_X28_Y15_N3
\PR4_memdout|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(10));

-- Location: FF_X28_Y16_N3
\PR4_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(10));

-- Location: LCCOMB_X28_Y16_N2
\stage5_1|m_50|o[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[10]~6_combout\ = (\PR4_ctrl|Q\(1) & (((\PR4_ctrl|Q\(0))))) # (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & (\PR4_memdout|Q\(10))) # (!\PR4_ctrl|Q\(0) & ((\PR4_pc|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_memdout|Q\(10),
	datac => \PR4_pc|Q\(10),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[10]~6_combout\);

-- Location: LCCOMB_X28_Y16_N28
\stage5_1|m_50|o[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[10]~7_combout\ = (\PR4_ctrl|Q\(1) & ((\stage5_1|m_50|o[10]~6_combout\ & ((\PR4_LS7|Q\(10)))) # (!\stage5_1|m_50|o[10]~6_combout\ & (\PR4_aluout|Q\(10))))) # (!\PR4_ctrl|Q\(1) & (((\stage5_1|m_50|o[10]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_aluout|Q\(10),
	datac => \PR4_LS7|Q\(10),
	datad => \stage5_1|m_50|o[10]~6_combout\,
	combout => \stage5_1|m_50|o[10]~7_combout\);

-- Location: FF_X38_Y16_N21
\PR2_adderout|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(10));

-- Location: LCCOMB_X29_Y16_N4
\stage3_1|forwarding|new_d1[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[10]~27_combout\ = (\stage3_1|forwarding|new_d1[10]~7_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|stage4_d3[10]~7_combout\,
	datad => \stage3_1|forwarding|new_d1[10]~7_combout\,
	combout => \stage3_1|forwarding|new_d1[10]~27_combout\);

-- Location: LCCOMB_X36_Y16_N4
\m_51|o[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[10]~21_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & (((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & ((\stage0_0|PC|Q[4]~4_combout\ & (\PR2_adderout|Q\(10))) # (!\stage0_0|PC|Q[4]~4_combout\ & 
-- ((\stage3_1|forwarding|new_d1[10]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \PR2_adderout|Q\(10),
	datac => \stage3_1|forwarding|new_d1[10]~27_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[10]~21_combout\);

-- Location: LCCOMB_X36_Y16_N10
\m_51|o[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[10]~22_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\m_51|o[10]~21_combout\ & (\adder16_1|a0|fa1|s~20_combout\)) # (!\m_51|o[10]~21_combout\ & ((\incPC[10]~20_combout\))))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\m_51|o[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \adder16_1|a0|fa1|s~20_combout\,
	datac => \m_51|o[10]~21_combout\,
	datad => \incPC[10]~20_combout\,
	combout => \m_51|o[10]~22_combout\);

-- Location: LCCOMB_X36_Y16_N26
\m_51|o[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[10]~23_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[10]~7_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[10]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[10]~7_combout\,
	datad => \m_51|o[10]~22_combout\,
	combout => \m_51|o[10]~23_combout\);

-- Location: FF_X36_Y16_N27
\stage0_0|PC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[10]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(10));

-- Location: FF_X36_Y15_N23
\PR0_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(10));

-- Location: FF_X36_Y15_N13
\PR1_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(10));

-- Location: FF_X28_Y16_N23
\PR2_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(10));

-- Location: FF_X28_Y16_N9
\PR3_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(10));

-- Location: LCCOMB_X28_Y16_N8
\stage3_1|forwarding|stage4_d3[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[10]~6_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(10)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(10),
	datad => \PR3_aluout|Q\(10),
	combout => \stage3_1|forwarding|stage4_d3[10]~6_combout\);

-- Location: LCCOMB_X28_Y16_N22
\stage3_1|forwarding|stage4_d3[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[10]~7_combout\ = (\stage3_1|forwarding|stage4_d3[10]~6_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \stage3_1|forwarding|stage4_d3[10]~6_combout\,
	datad => \PR3_LS7|Q\(10),
	combout => \stage3_1|forwarding|stage4_d3[10]~7_combout\);

-- Location: LCCOMB_X28_Y16_N18
\stage3_1|forwarding|new_d2[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[10]~18_combout\ = (\PR2_d1|Q\(10) & ((\stage3_1|forwarding|new_d2[0]~11_combout\) # ((\stage5_1|m_50|o[10]~7_combout\ & \stage3_1|forwarding|new_d2[0]~10_combout\)))) # (!\PR2_d1|Q\(10) & (\stage5_1|m_50|o[10]~7_combout\ & 
-- ((\stage3_1|forwarding|new_d2[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(10),
	datab => \stage5_1|m_50|o[10]~7_combout\,
	datac => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~10_combout\,
	combout => \stage3_1|forwarding|new_d2[10]~18_combout\);

-- Location: LCCOMB_X28_Y16_N16
\stage3_1|forwarding|new_d2[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[10]~19_combout\ = (\stage3_1|forwarding|new_d2[10]~18_combout\) # ((\stage3_1|forwarding|new_d2~51_combout\ & \stage3_1|forwarding|stage4_d3[10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~51_combout\,
	datac => \stage3_1|forwarding|stage4_d3[10]~7_combout\,
	datad => \stage3_1|forwarding|new_d2[10]~18_combout\,
	combout => \stage3_1|forwarding|new_d2[10]~19_combout\);

-- Location: FF_X28_Y16_N17
\PR3_newd2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[10]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(10));

-- Location: LCCOMB_X32_Y15_N4
\stage4_1|data_mem|RAM~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~49_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a9\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~31_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~31_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a9\,
	combout => \stage4_1|data_mem|RAM~49_combout\);

-- Location: LCCOMB_X28_Y15_N20
\stage4_1|data_mem|RAM~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~50_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(28) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(27))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~49_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(28) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(27),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(28),
	datac => \stage4_1|data_mem|RAM~49_combout\,
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~50_combout\);

-- Location: FF_X28_Y15_N21
\PR4_memdout|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(9));

-- Location: FF_X31_Y15_N27
\PR4_LS7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(9));

-- Location: LCCOMB_X31_Y15_N20
\PR4_aluout|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[9]~feeder_combout\ = \PR3_aluout|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(9),
	combout => \PR4_aluout|Q[9]~feeder_combout\);

-- Location: FF_X31_Y15_N21
\PR4_aluout|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(9));

-- Location: FF_X31_Y15_N23
\PR4_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(9));

-- Location: LCCOMB_X31_Y15_N22
\stage5_1|m_50|o[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[9]~8_combout\ = (\PR4_ctrl|Q\(0) & (((\PR4_ctrl|Q\(1))))) # (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(9))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_aluout|Q\(9),
	datac => \PR4_pc|Q\(9),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[9]~8_combout\);

-- Location: LCCOMB_X31_Y15_N26
\stage5_1|m_50|o[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[9]~9_combout\ = (\PR4_ctrl|Q\(0) & ((\stage5_1|m_50|o[9]~8_combout\ & ((\PR4_LS7|Q\(9)))) # (!\stage5_1|m_50|o[9]~8_combout\ & (\PR4_memdout|Q\(9))))) # (!\PR4_ctrl|Q\(0) & (((\stage5_1|m_50|o[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_memdout|Q\(9),
	datac => \PR4_LS7|Q\(9),
	datad => \stage5_1|m_50|o[9]~8_combout\,
	combout => \stage5_1|m_50|o[9]~9_combout\);

-- Location: FF_X34_Y18_N31
\stage2_2|rf_1|r3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(9));

-- Location: FF_X34_Y18_N21
\stage2_2|rf_1|r2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(9));

-- Location: FF_X32_Y18_N29
\stage2_2|rf_1|r1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(9));

-- Location: FF_X32_Y18_N15
\stage2_2|rf_1|r0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(9));

-- Location: LCCOMB_X32_Y18_N14
\stage2_2|rf_1|M1|output[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[9]~22_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(9)) # ((\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|r0|Q\(9) & !\stage2_2|m_20|o[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r1|Q\(9),
	datac => \stage2_2|rf_1|r0|Q\(9),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[9]~22_combout\);

-- Location: LCCOMB_X34_Y18_N20
\stage2_2|rf_1|M1|output[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[9]~23_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[9]~22_combout\ & (\stage2_2|rf_1|r3|Q\(9))) # (!\stage2_2|rf_1|M1|output[9]~22_combout\ & ((\stage2_2|rf_1|r2|Q\(9)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[9]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r3|Q\(9),
	datac => \stage2_2|rf_1|r2|Q\(9),
	datad => \stage2_2|rf_1|M1|output[9]~22_combout\,
	combout => \stage2_2|rf_1|M1|output[9]~23_combout\);

-- Location: FF_X32_Y19_N21
\stage2_2|rf_1|r6|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(9));

-- Location: FF_X32_Y19_N7
\stage2_2|rf_1|r4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(9));

-- Location: LCCOMB_X32_Y19_N6
\stage2_2|rf_1|M1|output[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[9]~20_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(9)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(9) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(9),
	datac => \stage2_2|rf_1|r4|Q\(9),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[9]~20_combout\);

-- Location: LCCOMB_X31_Y19_N24
\stage2_2|rf_1|M1_2|o[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[9]~4_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[9]~9_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[9]~9_combout\,
	datad => \PR1_pc|Q\(9),
	combout => \stage2_2|rf_1|M1_2|o[9]~4_combout\);

-- Location: FF_X31_Y19_N25
\stage2_2|rf_1|r7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[9]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(9));

-- Location: FF_X31_Y19_N3
\stage2_2|rf_1|r5|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(9));

-- Location: LCCOMB_X31_Y19_N2
\stage2_2|rf_1|M1|output[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[9]~21_combout\ = (\stage2_2|rf_1|M1|output[9]~20_combout\ & ((\stage2_2|rf_1|r7|Q\(9)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[9]~20_combout\ & (((\stage2_2|rf_1|r5|Q\(9) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[9]~20_combout\,
	datab => \stage2_2|rf_1|r7|Q\(9),
	datac => \stage2_2|rf_1|r5|Q\(9),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[9]~21_combout\);

-- Location: LCCOMB_X31_Y15_N10
\stage2_2|rf_1|M1|output[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[9]~24_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[9]~21_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[9]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|M1|output[9]~23_combout\,
	datac => \stage2_2|rf_1|M1|output[9]~21_combout\,
	datad => \stage2_2|m_20|o[2]~0_combout\,
	combout => \stage2_2|rf_1|M1|output[9]~24_combout\);

-- Location: FF_X31_Y15_N11
\PR2_d1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[9]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(9));

-- Location: LCCOMB_X31_Y15_N8
\stage3_1|forwarding|new_d2[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[9]~20_combout\ = (\PR2_d1|Q\(9) & ((\stage3_1|forwarding|new_d2[0]~11_combout\) # ((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[9]~9_combout\)))) # (!\PR2_d1|Q\(9) & (\stage3_1|forwarding|new_d2[0]~10_combout\ 
-- & (\stage5_1|m_50|o[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(9),
	datab => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datac => \stage5_1|m_50|o[9]~9_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~11_combout\,
	combout => \stage3_1|forwarding|new_d2[9]~20_combout\);

-- Location: LCCOMB_X31_Y15_N18
\stage3_1|forwarding|new_d2[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[9]~21_combout\ = (\stage3_1|forwarding|new_d2[9]~20_combout\) # ((\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|new_d2~9_combout\ & \stage3_1|forwarding|stage4_d3[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \stage3_1|forwarding|new_d2~9_combout\,
	datac => \stage3_1|forwarding|new_d2[9]~20_combout\,
	datad => \stage3_1|forwarding|stage4_d3[9]~9_combout\,
	combout => \stage3_1|forwarding|new_d2[9]~21_combout\);

-- Location: FF_X31_Y15_N19
\PR3_newd2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[9]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(9));

-- Location: FF_X32_Y17_N9
\stage4_1|data_mem|RAM~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(8),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~30_q\);

-- Location: LCCOMB_X32_Y17_N8
\stage4_1|data_mem|RAM~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~51_combout\ = (\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a8\)) # (!\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM~30_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a8\,
	datac => \stage4_1|data_mem|RAM~30_q\,
	datad => \stage4_1|data_mem|RAM~21_q\,
	combout => \stage4_1|data_mem|RAM~51_combout\);

-- Location: LCCOMB_X28_Y17_N28
\stage4_1|data_mem|RAM~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~52_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(26) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(25))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~51_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(26) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(25),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(26),
	datac => \stage4_1|data_mem|RAM~51_combout\,
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~52_combout\);

-- Location: FF_X28_Y17_N29
\PR4_memdout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(8));

-- Location: LCCOMB_X27_Y16_N18
\stage5_1|m_50|o[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[8]~10_combout\ = (\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1)) # ((\PR4_memdout|Q\(8))))) # (!\PR4_ctrl|Q\(0) & (!\PR4_ctrl|Q\(1) & (\PR4_pc|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(8),
	datad => \PR4_memdout|Q\(8),
	combout => \stage5_1|m_50|o[8]~10_combout\);

-- Location: LCCOMB_X27_Y16_N24
\stage5_1|m_50|o[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[8]~11_combout\ = (\PR4_ctrl|Q\(1) & ((\stage5_1|m_50|o[8]~10_combout\ & ((\PR4_LS7|Q\(8)))) # (!\stage5_1|m_50|o[8]~10_combout\ & (\PR4_aluout|Q\(8))))) # (!\PR4_ctrl|Q\(1) & (((\stage5_1|m_50|o[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(8),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_LS7|Q\(8),
	datad => \stage5_1|m_50|o[8]~10_combout\,
	combout => \stage5_1|m_50|o[8]~11_combout\);

-- Location: LCCOMB_X32_Y18_N20
\stage2_2|rf_1|r1|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[8]~feeder_combout\ = \stage5_1|m_50|o[8]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[8]~11_combout\,
	combout => \stage2_2|rf_1|r1|Q[8]~feeder_combout\);

-- Location: FF_X32_Y18_N21
\stage2_2|rf_1|r1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r1|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(8));

-- Location: FF_X32_Y18_N19
\stage2_2|rf_1|r0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[8]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(8));

-- Location: LCCOMB_X32_Y18_N18
\stage2_2|rf_1|M1|output[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[8]~27_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(8)) # ((\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|r0|Q\(8) & !\stage2_2|m_20|o[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r1|Q\(8),
	datac => \stage2_2|rf_1|r0|Q\(8),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[8]~27_combout\);

-- Location: FF_X34_Y18_N13
\stage2_2|rf_1|r2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[8]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(8));

-- Location: LCCOMB_X34_Y18_N6
\stage2_2|rf_1|r3|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r3|Q[8]~feeder_combout\ = \stage5_1|m_50|o[8]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[8]~11_combout\,
	combout => \stage2_2|rf_1|r3|Q[8]~feeder_combout\);

-- Location: FF_X34_Y18_N7
\stage2_2|rf_1|r3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r3|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(8));

-- Location: LCCOMB_X34_Y18_N12
\stage2_2|rf_1|M1|output[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[8]~28_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[8]~27_combout\ & ((\stage2_2|rf_1|r3|Q\(8)))) # (!\stage2_2|rf_1|M1|output[8]~27_combout\ & (\stage2_2|rf_1|r2|Q\(8))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|rf_1|M1|output[8]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|M1|output[8]~27_combout\,
	datac => \stage2_2|rf_1|r2|Q\(8),
	datad => \stage2_2|rf_1|r3|Q\(8),
	combout => \stage2_2|rf_1|M1|output[8]~28_combout\);

-- Location: LCCOMB_X31_Y19_N0
\stage2_2|rf_1|M1_2|o[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[8]~5_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[8]~11_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[8]~11_combout\,
	datad => \PR1_pc|Q\(8),
	combout => \stage2_2|rf_1|M1_2|o[8]~5_combout\);

-- Location: FF_X31_Y19_N1
\stage2_2|rf_1|r7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[8]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(8));

-- Location: FF_X31_Y19_N19
\stage2_2|rf_1|r5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[8]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(8));

-- Location: LCCOMB_X32_Y19_N8
\stage2_2|rf_1|r6|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r6|Q[8]~feeder_combout\ = \stage5_1|m_50|o[8]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[8]~11_combout\,
	combout => \stage2_2|rf_1|r6|Q[8]~feeder_combout\);

-- Location: FF_X32_Y19_N9
\stage2_2|rf_1|r6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r6|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(8));

-- Location: FF_X32_Y19_N19
\stage2_2|rf_1|r4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[8]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(8));

-- Location: LCCOMB_X32_Y19_N18
\stage2_2|rf_1|M1|output[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[8]~25_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(8)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(8) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(8),
	datac => \stage2_2|rf_1|r4|Q\(8),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[8]~25_combout\);

-- Location: LCCOMB_X31_Y19_N18
\stage2_2|rf_1|M1|output[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[8]~26_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|M1|output[8]~25_combout\ & (\stage2_2|rf_1|r7|Q\(8))) # (!\stage2_2|rf_1|M1|output[8]~25_combout\ & ((\stage2_2|rf_1|r5|Q\(8)))))) # 
-- (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|M1|output[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r7|Q\(8),
	datac => \stage2_2|rf_1|r5|Q\(8),
	datad => \stage2_2|rf_1|M1|output[8]~25_combout\,
	combout => \stage2_2|rf_1|M1|output[8]~26_combout\);

-- Location: LCCOMB_X27_Y16_N12
\stage2_2|rf_1|M1|output[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[8]~29_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[8]~26_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[8]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[8]~28_combout\,
	datab => \stage2_2|rf_1|M1|output[8]~26_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	combout => \stage2_2|rf_1|M1|output[8]~29_combout\);

-- Location: FF_X27_Y16_N13
\PR2_d1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[8]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(8));

-- Location: LCCOMB_X27_Y16_N14
\stage3_1|forwarding|new_d2[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[8]~22_combout\ = (\PR2_d1|Q\(8) & ((\stage3_1|forwarding|new_d2[0]~11_combout\) # ((\stage5_1|m_50|o[8]~11_combout\ & \stage3_1|forwarding|new_d2[0]~10_combout\)))) # (!\PR2_d1|Q\(8) & (\stage5_1|m_50|o[8]~11_combout\ & 
-- ((\stage3_1|forwarding|new_d2[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(8),
	datab => \stage5_1|m_50|o[8]~11_combout\,
	datac => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~10_combout\,
	combout => \stage3_1|forwarding|new_d2[8]~22_combout\);

-- Location: LCCOMB_X27_Y16_N16
\stage3_1|forwarding|new_d2[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[8]~23_combout\ = (\stage3_1|forwarding|new_d2[8]~22_combout\) # ((\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|new_d2~9_combout\ & \stage3_1|forwarding|stage4_d3[8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \stage3_1|forwarding|new_d2~9_combout\,
	datac => \stage3_1|forwarding|new_d2[8]~22_combout\,
	datad => \stage3_1|forwarding|stage4_d3[8]~11_combout\,
	combout => \stage3_1|forwarding|new_d2[8]~23_combout\);

-- Location: FF_X27_Y16_N17
\PR3_newd2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[8]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(8));

-- Location: LCCOMB_X32_Y15_N8
\stage4_1|data_mem|RAM~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~53_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a7\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~29_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~29_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a7\,
	combout => \stage4_1|data_mem|RAM~53_combout\);

-- Location: LCCOMB_X28_Y15_N18
\stage4_1|data_mem|RAM~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~54_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(24) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(23))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~53_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(24) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(23),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(24),
	datac => \stage4_1|data_mem|RAM~53_combout\,
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~54_combout\);

-- Location: FF_X28_Y15_N19
\PR4_memdout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(7));

-- Location: FF_X31_Y18_N25
\PR4_LS7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(7));

-- Location: LCCOMB_X31_Y18_N26
\PR4_aluout|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[7]~feeder_combout\ = \PR3_aluout|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(7),
	combout => \PR4_aluout|Q[7]~feeder_combout\);

-- Location: FF_X31_Y18_N27
\PR4_aluout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(7));

-- Location: FF_X31_Y18_N5
\PR2_pc|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(7));

-- Location: FF_X31_Y18_N9
\PR3_pc|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(7));

-- Location: FF_X31_Y18_N29
\PR4_pc|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(7),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(7));

-- Location: LCCOMB_X31_Y18_N28
\stage5_1|m_50|o[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[7]~12_combout\ = (\PR4_ctrl|Q\(0) & (((\PR4_ctrl|Q\(1))))) # (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(7))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(7),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_pc|Q\(7),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[7]~12_combout\);

-- Location: LCCOMB_X31_Y18_N24
\stage5_1|m_50|o[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[7]~13_combout\ = (\PR4_ctrl|Q\(0) & ((\stage5_1|m_50|o[7]~12_combout\ & ((\PR4_LS7|Q\(7)))) # (!\stage5_1|m_50|o[7]~12_combout\ & (\PR4_memdout|Q\(7))))) # (!\PR4_ctrl|Q\(0) & (((\stage5_1|m_50|o[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_memdout|Q\(7),
	datac => \PR4_LS7|Q\(7),
	datad => \stage5_1|m_50|o[7]~12_combout\,
	combout => \stage5_1|m_50|o[7]~13_combout\);

-- Location: FF_X32_Y18_N25
\stage2_2|rf_1|r1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(7));

-- Location: FF_X32_Y18_N7
\stage2_2|rf_1|r0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(7));

-- Location: LCCOMB_X32_Y18_N6
\stage2_2|rf_1|M1|output[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[7]~32_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(7)) # ((\stage2_2|m_20|o[1]~1_combout\)))) # (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|r0|Q\(7) & !\stage2_2|m_20|o[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r1|Q\(7),
	datac => \stage2_2|rf_1|r0|Q\(7),
	datad => \stage2_2|m_20|o[1]~1_combout\,
	combout => \stage2_2|rf_1|M1|output[7]~32_combout\);

-- Location: FF_X32_Y20_N25
\stage2_2|rf_1|r2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(7));

-- Location: FF_X32_Y20_N11
\stage2_2|rf_1|r3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(7));

-- Location: LCCOMB_X32_Y20_N24
\stage2_2|rf_1|M1|output[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[7]~33_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[7]~32_combout\ & ((\stage2_2|rf_1|r3|Q\(7)))) # (!\stage2_2|rf_1|M1|output[7]~32_combout\ & (\stage2_2|rf_1|r2|Q\(7))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|rf_1|M1|output[7]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|M1|output[7]~32_combout\,
	datac => \stage2_2|rf_1|r2|Q\(7),
	datad => \stage2_2|rf_1|r3|Q\(7),
	combout => \stage2_2|rf_1|M1|output[7]~33_combout\);

-- Location: LCCOMB_X31_Y19_N16
\stage2_2|rf_1|M1_2|o[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[7]~6_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[7]~13_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(7),
	datac => \stage5_1|m_50|o[7]~13_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[7]~6_combout\);

-- Location: FF_X31_Y19_N17
\stage2_2|rf_1|r7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[7]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(7));

-- Location: FF_X31_Y19_N31
\stage2_2|rf_1|r5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(7));

-- Location: FF_X32_Y19_N5
\stage2_2|rf_1|r6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(7));

-- Location: FF_X32_Y19_N27
\stage2_2|rf_1|r4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(7));

-- Location: LCCOMB_X32_Y19_N26
\stage2_2|rf_1|M1|output[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[7]~30_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(7)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(7) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(7),
	datac => \stage2_2|rf_1|r4|Q\(7),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[7]~30_combout\);

-- Location: LCCOMB_X31_Y19_N30
\stage2_2|rf_1|M1|output[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[7]~31_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|M1|output[7]~30_combout\ & (\stage2_2|rf_1|r7|Q\(7))) # (!\stage2_2|rf_1|M1|output[7]~30_combout\ & ((\stage2_2|rf_1|r5|Q\(7)))))) # 
-- (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|M1|output[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r7|Q\(7),
	datac => \stage2_2|rf_1|r5|Q\(7),
	datad => \stage2_2|rf_1|M1|output[7]~30_combout\,
	combout => \stage2_2|rf_1|M1|output[7]~31_combout\);

-- Location: LCCOMB_X31_Y18_N16
\stage2_2|rf_1|M1|output[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[7]~34_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[7]~31_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[7]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|M1|output[7]~33_combout\,
	datac => \stage2_2|rf_1|M1|output[7]~31_combout\,
	datad => \stage2_2|m_20|o[2]~0_combout\,
	combout => \stage2_2|rf_1|M1|output[7]~34_combout\);

-- Location: FF_X31_Y18_N17
\PR2_d1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[7]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(7));

-- Location: LCCOMB_X31_Y18_N10
\stage3_1|forwarding|new_d1[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[7]~10_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & (\stage5_1|m_50|o[7]~13_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\PR2_d1|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \stage5_1|m_50|o[7]~13_combout\,
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \PR2_d1|Q\(7),
	combout => \stage3_1|forwarding|new_d1[7]~10_combout\);

-- Location: LCCOMB_X31_Y18_N2
\stage3_1|m_32|o[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[7]~6_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[7]~10_combout\) # ((\stage3_1|forwarding|stage4_d3[7]~13_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|stage4_d3[7]~13_combout\,
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[7]~10_combout\,
	combout => \stage3_1|m_32|o[7]~6_combout\);

-- Location: LCCOMB_X31_Y18_N6
\stage3_1|alu_1|M|o[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[7]~6_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[7]~6_combout\)) # (!\stage3_1|m_34|o[7]~53_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[7]~53_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_32|o[7]~6_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~14_combout\,
	combout => \stage3_1|alu_1|M|o[7]~6_combout\);

-- Location: FF_X31_Y18_N7
\PR3_aluout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[7]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(7));

-- Location: LCCOMB_X31_Y18_N0
\stage3_1|forwarding|stage4_d3[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[7]~12_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(7))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(7),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(7),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[7]~12_combout\);

-- Location: LCCOMB_X31_Y18_N4
\stage3_1|forwarding|stage4_d3[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[7]~13_combout\ = (\stage3_1|forwarding|stage4_d3[7]~12_combout\) # ((\PR3_LS7|Q\(7) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(7),
	datab => \stage3_1|forwarding|stage4_d3[7]~12_combout\,
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[7]~13_combout\);

-- Location: LCCOMB_X31_Y18_N18
\stage3_1|forwarding|new_d2[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[7]~24_combout\ = (\stage3_1|forwarding|new_d2[0]~11_combout\ & ((\PR2_d1|Q\(7)) # ((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[7]~13_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~11_combout\ & 
-- (((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datab => \PR2_d1|Q\(7),
	datac => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datad => \stage5_1|m_50|o[7]~13_combout\,
	combout => \stage3_1|forwarding|new_d2[7]~24_combout\);

-- Location: LCCOMB_X31_Y18_N20
\stage3_1|forwarding|new_d2[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[7]~25_combout\ = (\stage3_1|forwarding|new_d2[7]~24_combout\) # ((\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|stage4_d3[7]~13_combout\ & \stage3_1|forwarding|new_d2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \stage3_1|forwarding|stage4_d3[7]~13_combout\,
	datac => \stage3_1|forwarding|new_d2~9_combout\,
	datad => \stage3_1|forwarding|new_d2[7]~24_combout\,
	combout => \stage3_1|forwarding|new_d2[7]~25_combout\);

-- Location: FF_X31_Y18_N21
\PR3_newd2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[7]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(7));

-- Location: LCCOMB_X32_Y15_N14
\stage4_1|data_mem|RAM~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~55_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a6\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~28_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~28_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a6\,
	combout => \stage4_1|data_mem|RAM~55_combout\);

-- Location: LCCOMB_X28_Y15_N16
\stage4_1|data_mem|RAM~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~56_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(22) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(21))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~55_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(22) & (((\stage4_1|data_mem|RAM_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(22),
	datab => \stage4_1|data_mem|RAM~41_combout\,
	datac => \stage4_1|data_mem|RAM_rtl_0_bypass\(21),
	datad => \stage4_1|data_mem|RAM~55_combout\,
	combout => \stage4_1|data_mem|RAM~56_combout\);

-- Location: FF_X28_Y15_N17
\PR4_memdout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(6));

-- Location: FF_X29_Y15_N17
\PR4_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(6));

-- Location: LCCOMB_X29_Y15_N16
\stage5_1|m_50|o[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[6]~14_combout\ = (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & (\PR4_memdout|Q\(6))) # (!\PR4_ctrl|Q\(0) & ((\PR4_pc|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_memdout|Q\(6),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_pc|Q\(6),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[6]~14_combout\);

-- Location: LCCOMB_X29_Y15_N18
\stage5_1|m_50|o[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[6]~15_combout\ = (\stage5_1|m_50|o[6]~14_combout\) # ((\PR4_ctrl|Q\(1) & (!\PR4_ctrl|Q\(0) & \PR4_aluout|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_aluout|Q\(6),
	datad => \stage5_1|m_50|o[6]~14_combout\,
	combout => \stage5_1|m_50|o[6]~15_combout\);

-- Location: FF_X38_Y16_N13
\PR2_adderout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(6));

-- Location: LCCOMB_X29_Y15_N14
\stage3_1|forwarding|new_d1[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[6]~31_combout\ = (\stage3_1|forwarding|new_d1[6]~11_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|new_d2[6]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d2[6]~26_combout\,
	datad => \stage3_1|forwarding|new_d1[6]~11_combout\,
	combout => \stage3_1|forwarding|new_d1[6]~31_combout\);

-- Location: LCCOMB_X37_Y16_N6
\m_51|o[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[6]~33_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & (((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & ((\stage0_0|PC|Q[4]~4_combout\ & (\PR2_adderout|Q\(6))) # (!\stage0_0|PC|Q[4]~4_combout\ & 
-- ((\stage3_1|forwarding|new_d1[6]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(6),
	datab => \stage3_1|forwarding|new_d1[6]~31_combout\,
	datac => \stage0_0|PC|Q[4]~5_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[6]~33_combout\);

-- Location: LCCOMB_X37_Y16_N12
\m_51|o[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[6]~34_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\m_51|o[6]~33_combout\ & ((\adder16_1|a0|fa1|s~12_combout\))) # (!\m_51|o[6]~33_combout\ & (\incPC[6]~12_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\m_51|o[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[6]~12_combout\,
	datab => \adder16_1|a0|fa1|s~12_combout\,
	datac => \stage0_0|PC|Q[4]~5_combout\,
	datad => \m_51|o[6]~33_combout\,
	combout => \m_51|o[6]~34_combout\);

-- Location: LCCOMB_X37_Y16_N8
\m_51|o[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[6]~35_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[6]~15_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[6]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[6]~15_combout\,
	datad => \m_51|o[6]~34_combout\,
	combout => \m_51|o[6]~35_combout\);

-- Location: FF_X37_Y16_N9
\stage0_0|PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[6]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(6));

-- Location: LCCOMB_X37_Y15_N18
\PR0_pc|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[6]~feeder_combout\ = \stage0_0|PC|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(6),
	combout => \PR0_pc|Q[6]~feeder_combout\);

-- Location: FF_X37_Y15_N19
\PR0_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(6));

-- Location: LCCOMB_X37_Y15_N16
\PR1_pc|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[6]~feeder_combout\ = \PR0_pc|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(6),
	combout => \PR1_pc|Q[6]~feeder_combout\);

-- Location: FF_X37_Y15_N17
\PR1_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(6));

-- Location: LCCOMB_X28_Y15_N26
\PR2_pc|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[6]~feeder_combout\ = \PR1_pc|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR1_pc|Q\(6),
	combout => \PR2_pc|Q[6]~feeder_combout\);

-- Location: FF_X28_Y15_N27
\PR2_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(6));

-- Location: FF_X29_Y15_N5
\PR3_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(6));

-- Location: LCCOMB_X29_Y15_N4
\stage3_1|forwarding|new_d2[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[6]~26_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(6)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(6),
	datad => \PR3_aluout|Q\(6),
	combout => \stage3_1|forwarding|new_d2[6]~26_combout\);

-- Location: LCCOMB_X29_Y15_N20
\stage3_1|forwarding|new_d2[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[6]~27_combout\ = (\PR2_d1|Q\(6) & ((\stage3_1|forwarding|new_d2[0]~11_combout\) # ((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[6]~15_combout\)))) # (!\PR2_d1|Q\(6) & 
-- (\stage3_1|forwarding|new_d2[0]~10_combout\ & ((\stage5_1|m_50|o[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(6),
	datab => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datac => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datad => \stage5_1|m_50|o[6]~15_combout\,
	combout => \stage3_1|forwarding|new_d2[6]~27_combout\);

-- Location: LCCOMB_X29_Y15_N26
\stage3_1|forwarding|new_d2[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[6]~28_combout\ = (\stage3_1|forwarding|new_d2[6]~27_combout\) # ((\stage3_1|forwarding|new_d2~9_combout\ & (\stage3_1|forwarding|new_d2~8_combout\ & \stage3_1|forwarding|new_d2[6]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~9_combout\,
	datab => \stage3_1|forwarding|new_d2~8_combout\,
	datac => \stage3_1|forwarding|new_d2[6]~26_combout\,
	datad => \stage3_1|forwarding|new_d2[6]~27_combout\,
	combout => \stage3_1|forwarding|new_d2[6]~28_combout\);

-- Location: FF_X29_Y15_N27
\PR3_newd2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[6]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(6));

-- Location: FF_X32_Y15_N1
\stage4_1|data_mem|RAM~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(5),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~27_q\);

-- Location: LCCOMB_X32_Y15_N0
\stage4_1|data_mem|RAM~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~57_combout\ = (\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a5\)) # (!\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a5\,
	datac => \stage4_1|data_mem|RAM~27_q\,
	datad => \stage4_1|data_mem|RAM~21_q\,
	combout => \stage4_1|data_mem|RAM~57_combout\);

-- Location: LCCOMB_X28_Y18_N6
\stage4_1|data_mem|RAM~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~58_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(20) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(19))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~57_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(20) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(19),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(20),
	datac => \stage4_1|data_mem|RAM~57_combout\,
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~58_combout\);

-- Location: FF_X28_Y18_N7
\PR4_memdout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(5));

-- Location: LCCOMB_X30_Y18_N4
\stage5_1|m_50|o[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[5]~16_combout\ = (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & ((\PR4_memdout|Q\(5)))) # (!\PR4_ctrl|Q\(0) & (\PR4_pc|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(5),
	datad => \PR4_memdout|Q\(5),
	combout => \stage5_1|m_50|o[5]~16_combout\);

-- Location: LCCOMB_X30_Y18_N10
\stage5_1|m_50|o[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[5]~17_combout\ = (\stage5_1|m_50|o[5]~16_combout\) # ((!\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_aluout|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_aluout|Q\(5),
	datad => \stage5_1|m_50|o[5]~16_combout\,
	combout => \stage5_1|m_50|o[5]~17_combout\);

-- Location: FF_X34_Y19_N9
\stage2_2|rf_1|r6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(5));

-- Location: FF_X34_Y19_N23
\stage2_2|rf_1|r4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(5));

-- Location: LCCOMB_X34_Y19_N22
\stage2_2|rf_1|M1|output[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[5]~40_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(5)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(5) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(5),
	datac => \stage2_2|rf_1|r4|Q\(5),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[5]~40_combout\);

-- Location: LCCOMB_X31_Y19_N8
\stage2_2|rf_1|M1_2|o[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[5]~8_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[5]~17_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(5),
	datac => \stage5_1|m_50|o[5]~17_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[5]~8_combout\);

-- Location: FF_X31_Y19_N9
\stage2_2|rf_1|r7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[5]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(5));

-- Location: FF_X31_Y19_N23
\stage2_2|rf_1|r5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(5));

-- Location: LCCOMB_X31_Y19_N22
\stage2_2|rf_1|M1|output[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[5]~41_combout\ = (\stage2_2|rf_1|M1|output[5]~40_combout\ & ((\stage2_2|rf_1|r7|Q\(5)) # ((!\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|rf_1|M1|output[5]~40_combout\ & (((\stage2_2|rf_1|r5|Q\(5) & 
-- \stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[5]~40_combout\,
	datab => \stage2_2|rf_1|r7|Q\(5),
	datac => \stage2_2|rf_1|r5|Q\(5),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[5]~41_combout\);

-- Location: FF_X34_Y18_N3
\stage2_2|rf_1|r3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(5));

-- Location: FF_X34_Y18_N25
\stage2_2|rf_1|r2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(5));

-- Location: FF_X36_Y18_N5
\stage2_2|rf_1|r1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(5));

-- Location: FF_X36_Y18_N11
\stage2_2|rf_1|r0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(5));

-- Location: LCCOMB_X36_Y18_N10
\stage2_2|rf_1|M1|output[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[5]~42_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r1|Q\(5))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- ((\stage2_2|rf_1|r0|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r1|Q\(5),
	datac => \stage2_2|rf_1|r0|Q\(5),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[5]~42_combout\);

-- Location: LCCOMB_X34_Y18_N24
\stage2_2|rf_1|M1|output[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[5]~43_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[5]~42_combout\ & (\stage2_2|rf_1|r3|Q\(5))) # (!\stage2_2|rf_1|M1|output[5]~42_combout\ & ((\stage2_2|rf_1|r2|Q\(5)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[5]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r3|Q\(5),
	datac => \stage2_2|rf_1|r2|Q\(5),
	datad => \stage2_2|rf_1|M1|output[5]~42_combout\,
	combout => \stage2_2|rf_1|M1|output[5]~43_combout\);

-- Location: LCCOMB_X29_Y18_N16
\stage2_2|rf_1|M1|output[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[5]~44_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[5]~41_combout\)) # (!\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[5]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[5]~41_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[5]~43_combout\,
	combout => \stage2_2|rf_1|M1|output[5]~44_combout\);

-- Location: FF_X29_Y18_N17
\PR2_d1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[5]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(5));

-- Location: LCCOMB_X30_Y18_N8
\stage3_1|forwarding|new_d2[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[5]~30_combout\ = (\stage3_1|forwarding|new_d2[0]~10_combout\ & ((\stage5_1|m_50|o[5]~17_combout\) # ((\PR2_d1|Q\(5) & \stage3_1|forwarding|new_d2[0]~11_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~10_combout\ & 
-- (\PR2_d1|Q\(5) & (\stage3_1|forwarding|new_d2[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datab => \PR2_d1|Q\(5),
	datac => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datad => \stage5_1|m_50|o[5]~17_combout\,
	combout => \stage3_1|forwarding|new_d2[5]~30_combout\);

-- Location: LCCOMB_X30_Y18_N14
\stage3_1|forwarding|new_d2[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[5]~31_combout\ = (\stage3_1|forwarding|new_d2[5]~30_combout\) # ((\stage3_1|forwarding|new_d2~9_combout\ & (\stage3_1|forwarding|new_d2~8_combout\ & \stage3_1|forwarding|new_d2[5]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~9_combout\,
	datab => \stage3_1|forwarding|new_d2~8_combout\,
	datac => \stage3_1|forwarding|new_d2[5]~30_combout\,
	datad => \stage3_1|forwarding|new_d2[5]~29_combout\,
	combout => \stage3_1|forwarding|new_d2[5]~31_combout\);

-- Location: FF_X30_Y18_N15
\PR3_newd2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[5]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(5));

-- Location: LCCOMB_X32_Y15_N22
\stage4_1|data_mem|RAM~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~59_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a4\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~26_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~26_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a4\,
	combout => \stage4_1|data_mem|RAM~59_combout\);

-- Location: LCCOMB_X28_Y17_N22
\stage4_1|data_mem|RAM~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~60_combout\ = (\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(17))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM_rtl_0_bypass\(18) & ((\stage4_1|data_mem|RAM~59_combout\))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(18) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~41_combout\,
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(17),
	datac => \stage4_1|data_mem|RAM_rtl_0_bypass\(18),
	datad => \stage4_1|data_mem|RAM~59_combout\,
	combout => \stage4_1|data_mem|RAM~60_combout\);

-- Location: FF_X28_Y17_N23
\PR4_memdout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(4));

-- Location: LCCOMB_X32_Y16_N4
\PR2_pc|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[4]~feeder_combout\ = \PR1_pc|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(4),
	combout => \PR2_pc|Q[4]~feeder_combout\);

-- Location: FF_X32_Y16_N5
\PR2_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(4));

-- Location: FF_X29_Y17_N5
\PR3_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(4));

-- Location: FF_X29_Y17_N25
\PR4_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(4));

-- Location: LCCOMB_X29_Y17_N24
\stage5_1|m_50|o[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[4]~18_combout\ = (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & (\PR4_memdout|Q\(4))) # (!\PR4_ctrl|Q\(0) & ((\PR4_pc|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_memdout|Q\(4),
	datac => \PR4_pc|Q\(4),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[4]~18_combout\);

-- Location: FF_X29_Y17_N29
\PR4_aluout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(4));

-- Location: LCCOMB_X29_Y17_N28
\stage5_1|m_50|o[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[4]~19_combout\ = (\stage5_1|m_50|o[4]~18_combout\) # ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(4) & !\PR4_ctrl|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \stage5_1|m_50|o[4]~18_combout\,
	datac => \PR4_aluout|Q\(4),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[4]~19_combout\);

-- Location: LCCOMB_X32_Y17_N30
\stage3_1|forwarding|new_d1[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[4]~33_combout\ = (\stage3_1|forwarding|new_d1[4]~13_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|new_d2[4]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d2[4]~32_combout\,
	datad => \stage3_1|forwarding|new_d1[4]~13_combout\,
	combout => \stage3_1|forwarding|new_d1[4]~33_combout\);

-- Location: FF_X38_Y16_N9
\PR2_adderout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(4));

-- Location: LCCOMB_X37_Y16_N30
\m_51|o[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[4]~39_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & (((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & ((\stage0_0|PC|Q[4]~4_combout\ & ((\PR2_adderout|Q\(4)))) # (!\stage0_0|PC|Q[4]~4_combout\ & 
-- (\stage3_1|forwarding|new_d1[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1[4]~33_combout\,
	datab => \PR2_adderout|Q\(4),
	datac => \stage0_0|PC|Q[4]~5_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[4]~39_combout\);

-- Location: LCCOMB_X37_Y16_N16
\m_51|o[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[4]~40_combout\ = (\m_51|o[4]~39_combout\ & (((\adder16_1|a0|fa1|s~8_combout\) # (!\stage0_0|PC|Q[4]~5_combout\)))) # (!\m_51|o[4]~39_combout\ & (\incPC[4]~8_combout\ & ((\stage0_0|PC|Q[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[4]~8_combout\,
	datab => \adder16_1|a0|fa1|s~8_combout\,
	datac => \m_51|o[4]~39_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[4]~40_combout\);

-- Location: LCCOMB_X37_Y16_N20
\m_51|o[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[4]~41_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[4]~19_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[4]~19_combout\,
	datad => \m_51|o[4]~40_combout\,
	combout => \m_51|o[4]~41_combout\);

-- Location: FF_X37_Y16_N21
\stage0_0|PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[4]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(4));

-- Location: LCCOMB_X37_Y15_N8
\PR0_pc|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[4]~feeder_combout\ = \stage0_0|PC|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(4),
	combout => \PR0_pc|Q[4]~feeder_combout\);

-- Location: FF_X37_Y15_N9
\PR0_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(4));

-- Location: FF_X37_Y15_N25
\PR1_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(4));

-- Location: LCCOMB_X32_Y16_N10
\stage2_2|rf_1|M1_2|o[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[4]~9_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[4]~19_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(4),
	datac => \stage2_2|rf_1|r7_write~combout\,
	datad => \stage5_1|m_50|o[4]~19_combout\,
	combout => \stage2_2|rf_1|M1_2|o[4]~9_combout\);

-- Location: FF_X32_Y16_N11
\stage2_2|rf_1|r7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[4]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(4));

-- Location: FF_X31_Y19_N15
\stage2_2|rf_1|r5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(4));

-- Location: FF_X34_Y19_N27
\stage2_2|rf_1|r4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(4));

-- Location: FF_X34_Y19_N21
\stage2_2|rf_1|r6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(4));

-- Location: LCCOMB_X34_Y19_N26
\stage2_2|rf_1|M1|output[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[4]~45_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\) # ((\stage2_2|rf_1|r6|Q\(4))))) # (!\stage2_2|m_20|o[1]~1_combout\ & (!\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r4|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r4|Q\(4),
	datad => \stage2_2|rf_1|r6|Q\(4),
	combout => \stage2_2|rf_1|M1|output[4]~45_combout\);

-- Location: LCCOMB_X31_Y19_N14
\stage2_2|rf_1|M1|output[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[4]~46_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|M1|output[4]~45_combout\ & (\stage2_2|rf_1|r7|Q\(4))) # (!\stage2_2|rf_1|M1|output[4]~45_combout\ & ((\stage2_2|rf_1|r5|Q\(4)))))) # 
-- (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|M1|output[4]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r7|Q\(4),
	datac => \stage2_2|rf_1|r5|Q\(4),
	datad => \stage2_2|rf_1|M1|output[4]~45_combout\,
	combout => \stage2_2|rf_1|M1|output[4]~46_combout\);

-- Location: FF_X32_Y20_N3
\stage2_2|rf_1|r3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(4));

-- Location: FF_X32_Y20_N5
\stage2_2|rf_1|r2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(4));

-- Location: FF_X36_Y18_N15
\stage2_2|rf_1|r0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(4));

-- Location: FF_X36_Y18_N21
\stage2_2|rf_1|r1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(4));

-- Location: LCCOMB_X36_Y18_N14
\stage2_2|rf_1|M1|output[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[4]~47_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|m_20|o[0]~2_combout\)) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(4)))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r0|Q\(4),
	datad => \stage2_2|rf_1|r1|Q\(4),
	combout => \stage2_2|rf_1|M1|output[4]~47_combout\);

-- Location: LCCOMB_X32_Y20_N4
\stage2_2|rf_1|M1|output[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[4]~48_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[4]~47_combout\ & (\stage2_2|rf_1|r3|Q\(4))) # (!\stage2_2|rf_1|M1|output[4]~47_combout\ & ((\stage2_2|rf_1|r2|Q\(4)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[4]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r3|Q\(4),
	datac => \stage2_2|rf_1|r2|Q\(4),
	datad => \stage2_2|rf_1|M1|output[4]~47_combout\,
	combout => \stage2_2|rf_1|M1|output[4]~48_combout\);

-- Location: LCCOMB_X30_Y19_N18
\stage2_2|rf_1|M1|output[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[4]~49_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[4]~46_combout\)) # (!\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[4]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|m_20|o[2]~0_combout\,
	datac => \stage2_2|rf_1|M1|output[4]~46_combout\,
	datad => \stage2_2|rf_1|M1|output[4]~48_combout\,
	combout => \stage2_2|rf_1|M1|output[4]~49_combout\);

-- Location: FF_X30_Y19_N19
\PR2_d1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[4]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(4));

-- Location: LCCOMB_X29_Y17_N2
\stage3_1|forwarding|new_d1[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[4]~13_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[4]~19_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(4),
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage5_1|m_50|o[4]~19_combout\,
	combout => \stage3_1|forwarding|new_d1[4]~13_combout\);

-- Location: LCCOMB_X29_Y17_N6
\stage3_1|m_32|o[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[4]~9_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[4]~13_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|new_d2[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|new_d2[4]~32_combout\,
	datad => \stage3_1|forwarding|new_d1[4]~13_combout\,
	combout => \stage3_1|m_32|o[4]~9_combout\);

-- Location: LCCOMB_X29_Y17_N26
\stage3_1|alu_1|M|o[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[4]~13_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[4]~56_combout\)) # (!\stage3_1|m_32|o[4]~9_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[4]~9_combout\,
	datab => \stage3_1|m_34|o[4]~56_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~8_combout\,
	combout => \stage3_1|alu_1|M|o[4]~13_combout\);

-- Location: FF_X29_Y17_N27
\PR3_aluout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[4]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(4));

-- Location: LCCOMB_X29_Y17_N4
\stage3_1|forwarding|new_d2[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[4]~32_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(4))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(4),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(4),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|new_d2[4]~32_combout\);

-- Location: LCCOMB_X29_Y17_N10
\stage3_1|forwarding|new_d2[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[4]~33_combout\ = (\PR2_d1|Q\(4) & ((\stage3_1|forwarding|new_d2[0]~11_combout\) # ((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[4]~19_combout\)))) # (!\PR2_d1|Q\(4) & 
-- (\stage3_1|forwarding|new_d2[0]~10_combout\ & ((\stage5_1|m_50|o[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(4),
	datab => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datac => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datad => \stage5_1|m_50|o[4]~19_combout\,
	combout => \stage3_1|forwarding|new_d2[4]~33_combout\);

-- Location: LCCOMB_X29_Y17_N22
\stage3_1|forwarding|new_d2[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[4]~34_combout\ = (\stage3_1|forwarding|new_d2[4]~33_combout\) # ((\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|new_d2~9_combout\ & \stage3_1|forwarding|new_d2[4]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \stage3_1|forwarding|new_d2~9_combout\,
	datac => \stage3_1|forwarding|new_d2[4]~32_combout\,
	datad => \stage3_1|forwarding|new_d2[4]~33_combout\,
	combout => \stage3_1|forwarding|new_d2[4]~34_combout\);

-- Location: FF_X29_Y17_N23
\PR3_newd2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|forwarding|new_d2[4]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_newd2|Q\(4));

-- Location: LCCOMB_X32_Y17_N18
\stage4_1|data_mem|RAM~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~65_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a1\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~23_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~23_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a1\,
	combout => \stage4_1|data_mem|RAM~65_combout\);

-- Location: LCCOMB_X28_Y17_N26
\stage4_1|data_mem|RAM~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~66_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(12) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(11))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~65_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(12) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(11),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(12),
	datac => \stage4_1|data_mem|RAM~65_combout\,
	datad => \stage4_1|data_mem|RAM~41_combout\,
	combout => \stage4_1|data_mem|RAM~66_combout\);

-- Location: FF_X28_Y17_N27
\PR4_memdout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~66_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(1));

-- Location: FF_X31_Y17_N13
\PR4_pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(1));

-- Location: LCCOMB_X31_Y17_N12
\stage5_1|m_50|o[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[1]~24_combout\ = (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & (\PR4_memdout|Q\(1))) # (!\PR4_ctrl|Q\(0) & ((\PR4_pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_memdout|Q\(1),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(1),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[1]~24_combout\);

-- Location: LCCOMB_X31_Y17_N6
\stage5_1|m_50|o[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[1]~25_combout\ = (\stage5_1|m_50|o[1]~24_combout\) # ((!\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_aluout|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_aluout|Q\(1),
	datad => \stage5_1|m_50|o[1]~24_combout\,
	combout => \stage5_1|m_50|o[1]~25_combout\);

-- Location: LCCOMB_X34_Y18_N8
\stage2_2|rf_1|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r3|Q[1]~feeder_combout\ = \stage5_1|m_50|o[1]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[1]~25_combout\,
	combout => \stage2_2|rf_1|r3|Q[1]~feeder_combout\);

-- Location: FF_X34_Y18_N9
\stage2_2|rf_1|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r3|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(1));

-- Location: FF_X35_Y18_N3
\stage2_2|rf_1|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(1));

-- Location: FF_X36_Y18_N9
\stage2_2|rf_1|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(1));

-- Location: FF_X36_Y18_N3
\stage2_2|rf_1|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(1));

-- Location: LCCOMB_X36_Y18_N2
\stage2_2|rf_1|M1|output[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[1]~62_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r1|Q\(1))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- ((\stage2_2|rf_1|r0|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r1|Q\(1),
	datac => \stage2_2|rf_1|r0|Q\(1),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[1]~62_combout\);

-- Location: LCCOMB_X35_Y18_N2
\stage2_2|rf_1|M1|output[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[1]~63_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[1]~62_combout\ & (\stage2_2|rf_1|r3|Q\(1))) # (!\stage2_2|rf_1|M1|output[1]~62_combout\ & ((\stage2_2|rf_1|r2|Q\(1)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[1]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r3|Q\(1),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r2|Q\(1),
	datad => \stage2_2|rf_1|M1|output[1]~62_combout\,
	combout => \stage2_2|rf_1|M1|output[1]~63_combout\);

-- Location: LCCOMB_X35_Y19_N26
\stage2_2|rf_1|M1_2|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[1]~12_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[1]~25_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[1]~25_combout\,
	datad => \PR1_pc|Q\(1),
	combout => \stage2_2|rf_1|M1_2|o[1]~12_combout\);

-- Location: FF_X35_Y19_N27
\stage2_2|rf_1|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[1]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(1));

-- Location: FF_X35_Y19_N5
\stage2_2|rf_1|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(1));

-- Location: FF_X34_Y19_N5
\stage2_2|rf_1|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(1));

-- Location: FF_X34_Y19_N15
\stage2_2|rf_1|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(1));

-- Location: LCCOMB_X34_Y19_N14
\stage2_2|rf_1|M1|output[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[1]~60_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|r6|Q\(1)) # ((\stage2_2|m_20|o[0]~2_combout\)))) # (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|r4|Q\(1) & !\stage2_2|m_20|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|rf_1|r6|Q\(1),
	datac => \stage2_2|rf_1|r4|Q\(1),
	datad => \stage2_2|m_20|o[0]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[1]~60_combout\);

-- Location: LCCOMB_X35_Y19_N4
\stage2_2|rf_1|M1|output[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[1]~61_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|M1|output[1]~60_combout\ & (\stage2_2|rf_1|r7|Q\(1))) # (!\stage2_2|rf_1|M1|output[1]~60_combout\ & ((\stage2_2|rf_1|r5|Q\(1)))))) # 
-- (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|M1|output[1]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(1),
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r5|Q\(1),
	datad => \stage2_2|rf_1|M1|output[1]~60_combout\,
	combout => \stage2_2|rf_1|M1|output[1]~61_combout\);

-- Location: LCCOMB_X32_Y17_N24
\stage2_2|rf_1|M1|output[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[1]~64_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[1]~61_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[1]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[1]~63_combout\,
	datab => \stage2_2|rf_1|M1|output[1]~61_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	combout => \stage2_2|rf_1|M1|output[1]~64_combout\);

-- Location: FF_X32_Y17_N25
\PR2_d1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[1]~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(1));

-- Location: LCCOMB_X32_Y17_N20
\stage3_1|forwarding|new_d2[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[1]~45_combout\ = (\stage3_1|forwarding|new_d2[0]~10_combout\ & ((\stage5_1|m_50|o[1]~25_combout\) # ((\PR2_d1|Q\(1) & \stage3_1|forwarding|new_d2[0]~11_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~10_combout\ & 
-- (\PR2_d1|Q\(1) & ((\stage3_1|forwarding|new_d2[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datab => \PR2_d1|Q\(1),
	datac => \stage5_1|m_50|o[1]~25_combout\,
	datad => \stage3_1|forwarding|new_d2[0]~11_combout\,
	combout => \stage3_1|forwarding|new_d2[1]~45_combout\);

-- Location: LCCOMB_X32_Y17_N26
\stage3_1|m_34|o[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[1]~44_combout\ = (\stage3_1|m_34|o[1]~43_combout\) # ((\stage3_1|m_34|o[0]~27_combout\ & ((\stage3_1|forwarding|new_d2[1]~44_combout\) # (\stage3_1|forwarding|new_d2[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[0]~27_combout\,
	datab => \stage3_1|forwarding|new_d2[1]~44_combout\,
	datac => \stage3_1|m_34|o[1]~43_combout\,
	datad => \stage3_1|forwarding|new_d2[1]~45_combout\,
	combout => \stage3_1|m_34|o[1]~44_combout\);

-- Location: LCCOMB_X30_Y17_N16
\stage3_1|alu_1|A|a0|fa1|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~1_cout\ = CARRY(\stage3_1|m_34|o[1]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[1]~44_combout\,
	datad => VCC,
	cout => \stage3_1|alu_1|A|a0|fa1|s~1_cout\);

-- Location: LCCOMB_X30_Y17_N18
\stage3_1|alu_1|A|a0|fa1|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~2_combout\ = (\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & ((\stage3_1|m_32|o[1]~12_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~1_cout\ & VCC)) # (!\stage3_1|m_32|o[1]~12_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~1_cout\)))) # 
-- (!\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & ((\stage3_1|m_32|o[1]~12_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~1_cout\)) # (!\stage3_1|m_32|o[1]~12_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~1_cout\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~3\ = CARRY((\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & (!\stage3_1|m_32|o[1]~12_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~1_cout\)) # (!\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~1_cout\) # 
-- (!\stage3_1|m_32|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|A|a0|fa0|c~0_combout\,
	datab => \stage3_1|m_32|o[1]~12_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~1_cout\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~2_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~3\);

-- Location: LCCOMB_X30_Y17_N2
\stage3_1|alu_1|M|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[1]~10_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[1]~44_combout\)) # (!\stage3_1|m_32|o[1]~12_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_32|o[1]~12_combout\,
	datac => \stage3_1|m_34|o[1]~44_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~2_combout\,
	combout => \stage3_1|alu_1|M|o[1]~10_combout\);

-- Location: FF_X30_Y17_N13
\PR3_aluout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage3_1|alu_1|M|o[1]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(1));

-- Location: LCCOMB_X31_Y17_N18
\stage3_1|forwarding|new_d2[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[1]~40_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(1)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_pc|Q\(1),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_ctrl|Q\(0),
	datad => \PR3_aluout|Q\(1),
	combout => \stage3_1|forwarding|new_d2[1]~40_combout\);

-- Location: LCCOMB_X31_Y17_N14
\stage3_1|forwarding|new_d1[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[1]~16_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & (\stage5_1|m_50|o[1]~25_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\PR2_d1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[1]~25_combout\,
	datab => \PR2_d1|Q\(1),
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|forwarding|new_d1[1]~16_combout\);

-- Location: LCCOMB_X31_Y17_N10
\stage3_1|m_32|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[1]~12_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[1]~16_combout\) # ((\stage3_1|forwarding|new_d2[1]~40_combout\ & \stage3_1|forwarding|new_d1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d2[1]~40_combout\,
	datac => \stage3_1|forwarding|new_d1[1]~16_combout\,
	datad => \stage3_1|forwarding|new_d1~1_combout\,
	combout => \stage3_1|m_32|o[1]~12_combout\);

-- Location: LCCOMB_X30_Y17_N20
\stage3_1|alu_1|A|a0|fa1|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~4_combout\ = ((\stage3_1|m_34|o[2]~40_combout\ $ (\stage3_1|m_32|o[2]~11_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~3\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~5\ = CARRY((\stage3_1|m_34|o[2]~40_combout\ & ((\stage3_1|m_32|o[2]~11_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~3\))) # (!\stage3_1|m_34|o[2]~40_combout\ & (\stage3_1|m_32|o[2]~11_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[2]~40_combout\,
	datab => \stage3_1|m_32|o[2]~11_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~3\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~4_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~5\);

-- Location: LCCOMB_X30_Y17_N10
\stage3_1|alu_1|M|o[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[3]~12_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[3]~10_combout\)) # (!\stage3_1|m_34|o[3]~57_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_34|o[3]~57_combout\,
	datac => \stage3_1|alu_1|A|a0|fa1|s~6_combout\,
	datad => \stage3_1|m_32|o[3]~10_combout\,
	combout => \stage3_1|alu_1|M|o[3]~12_combout\);

-- Location: FF_X30_Y17_N11
\stage4_1|data_mem|RAM_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[3]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(8));

-- Location: FF_X29_Y18_N11
\stage4_1|data_mem|RAM_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(5));

-- Location: FF_X29_Y18_N3
\stage4_1|data_mem|RAM_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(7));

-- Location: LCCOMB_X29_Y18_N10
\stage4_1|data_mem|RAM~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~40_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(6) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(5) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(8) $ (!\stage4_1|data_mem|RAM_rtl_0_bypass\(7))))) # (!\stage4_1|data_mem|RAM_rtl_0_bypass\(6) 
-- & (!\stage4_1|data_mem|RAM_rtl_0_bypass\(5) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(8) $ (!\stage4_1|data_mem|RAM_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(6),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(8),
	datac => \stage4_1|data_mem|RAM_rtl_0_bypass\(5),
	datad => \stage4_1|data_mem|RAM_rtl_0_bypass\(7),
	combout => \stage4_1|data_mem|RAM~40_combout\);

-- Location: FF_X29_Y18_N9
\stage4_1|data_mem|RAM_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(0));

-- Location: FF_X30_Y17_N3
\stage4_1|data_mem|RAM_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[1]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(4));

-- Location: LCCOMB_X29_Y18_N28
\stage4_1|data_mem|RAM_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[3]~feeder_combout\ = \PR3_aluout|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(1),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X29_Y18_N29
\stage4_1|data_mem|RAM_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(3));

-- Location: FF_X29_Y18_N1
\stage4_1|data_mem|RAM_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(1));

-- Location: FF_X29_Y18_N25
\stage4_1|data_mem|RAM_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage3_1|alu_1|M|o[0]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(2));

-- Location: LCCOMB_X29_Y18_N0
\stage4_1|data_mem|RAM~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~39_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(4) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(3) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(1) $ (!\stage4_1|data_mem|RAM_rtl_0_bypass\(2))))) # (!\stage4_1|data_mem|RAM_rtl_0_bypass\(4) 
-- & (!\stage4_1|data_mem|RAM_rtl_0_bypass\(3) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(1) $ (!\stage4_1|data_mem|RAM_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(4),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(3),
	datac => \stage4_1|data_mem|RAM_rtl_0_bypass\(1),
	datad => \stage4_1|data_mem|RAM_rtl_0_bypass\(2),
	combout => \stage4_1|data_mem|RAM~39_combout\);

-- Location: LCCOMB_X29_Y18_N24
\stage4_1|data_mem|RAM~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~41_combout\ = (\stage4_1|data_mem|RAM~40_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(0) & \stage4_1|data_mem|RAM~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~40_combout\,
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(0),
	datad => \stage4_1|data_mem|RAM~39_combout\,
	combout => \stage4_1|data_mem|RAM~41_combout\);

-- Location: FF_X32_Y15_N21
\stage4_1|data_mem|RAM~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(15),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~37_q\);

-- Location: LCCOMB_X32_Y15_N20
\stage4_1|data_mem|RAM~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~71_combout\ = (\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a15\)) # (!\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM~37_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a15\,
	datac => \stage4_1|data_mem|RAM~37_q\,
	datad => \stage4_1|data_mem|RAM~21_q\,
	combout => \stage4_1|data_mem|RAM~71_combout\);

-- Location: LCCOMB_X29_Y19_N28
\stage4_1|data_mem|RAM~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~72_combout\ = (\stage4_1|data_mem|RAM_rtl_0_bypass\(40) & ((\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(39))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM~71_combout\))))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(40) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(39),
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(40),
	datac => \stage4_1|data_mem|RAM~41_combout\,
	datad => \stage4_1|data_mem|RAM~71_combout\,
	combout => \stage4_1|data_mem|RAM~72_combout\);

-- Location: FF_X29_Y19_N29
\PR4_memdout|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~72_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(15));

-- Location: FF_X34_Y16_N3
\PR4_LS7|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_LS7|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_LS7|Q\(15));

-- Location: FF_X34_Y16_N17
\PR4_aluout|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(15));

-- Location: LCCOMB_X38_Y16_N30
\adder16_1|a0|fa1|s~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa1|s~30_combout\ = \PR1_pc|Q\(15) $ (\adder16_1|a0|fa1|s~29\ $ (\m_2x|o[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(15),
	datad => \m_2x|o[8]~0_combout\,
	cin => \adder16_1|a0|fa1|s~29\,
	combout => \adder16_1|a0|fa1|s~30_combout\);

-- Location: FF_X38_Y16_N31
\PR2_adderout|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(15));

-- Location: LCCOMB_X34_Y17_N14
\stage3_1|forwarding|new_d1[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[15]~35_combout\ = (\stage3_1|forwarding|new_d1[15]~20_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[15]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datac => \stage3_1|forwarding|stage4_d3[15]~17_combout\,
	datad => \stage3_1|forwarding|new_d1[15]~20_combout\,
	combout => \stage3_1|forwarding|new_d1[15]~35_combout\);

-- Location: LCCOMB_X36_Y15_N30
\incPC[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[15]~30_combout\ = \incPC[14]~29\ $ (\stage0_0|PC|Q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(15),
	cin => \incPC[14]~29\,
	combout => \incPC[15]~30_combout\);

-- Location: LCCOMB_X35_Y17_N18
\m_51|o[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[15]~45_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & (((\stage0_0|PC|Q[4]~5_combout\)))) # (!\stage0_0|PC|Q[4]~4_combout\ & ((\stage0_0|PC|Q[4]~5_combout\ & ((\incPC[15]~30_combout\))) # (!\stage0_0|PC|Q[4]~5_combout\ & 
-- (\stage3_1|forwarding|new_d1[15]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1[15]~35_combout\,
	datab => \incPC[15]~30_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[15]~45_combout\);

-- Location: LCCOMB_X35_Y17_N28
\m_51|o[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[15]~46_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\m_51|o[15]~45_combout\ & (\adder16_1|a0|fa1|s~30_combout\)) # (!\m_51|o[15]~45_combout\ & ((\PR2_adderout|Q\(15)))))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\m_51|o[15]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder16_1|a0|fa1|s~30_combout\,
	datab => \PR2_adderout|Q\(15),
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \m_51|o[15]~45_combout\,
	combout => \m_51|o[15]~46_combout\);

-- Location: LCCOMB_X35_Y17_N8
\m_51|o[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[15]~47_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[15]~31_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[15]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[15]~31_combout\,
	datac => \m51_select~0_combout\,
	datad => \m_51|o[15]~46_combout\,
	combout => \m_51|o[15]~47_combout\);

-- Location: FF_X35_Y17_N9
\stage0_0|PC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[15]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(15));

-- Location: FF_X36_Y15_N3
\PR0_pc|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(15));

-- Location: LCCOMB_X37_Y15_N0
\PR1_pc|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[15]~feeder_combout\ = \PR0_pc|Q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(15),
	combout => \PR1_pc|Q[15]~feeder_combout\);

-- Location: FF_X37_Y15_N1
\PR1_pc|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(15));

-- Location: FF_X38_Y16_N1
\PR2_pc|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(15));

-- Location: FF_X34_Y16_N23
\PR3_pc|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(15));

-- Location: FF_X34_Y16_N13
\PR4_pc|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(15));

-- Location: LCCOMB_X34_Y16_N12
\stage5_1|m_50|o[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[15]~30_combout\ = (\PR4_ctrl|Q\(0) & (((\PR4_ctrl|Q\(1))))) # (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(15))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_aluout|Q\(15),
	datac => \PR4_pc|Q\(15),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[15]~30_combout\);

-- Location: LCCOMB_X34_Y16_N2
\stage5_1|m_50|o[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[15]~31_combout\ = (\PR4_ctrl|Q\(0) & ((\stage5_1|m_50|o[15]~30_combout\ & ((\PR4_LS7|Q\(15)))) # (!\stage5_1|m_50|o[15]~30_combout\ & (\PR4_memdout|Q\(15))))) # (!\PR4_ctrl|Q\(0) & (((\stage5_1|m_50|o[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_memdout|Q\(15),
	datac => \PR4_LS7|Q\(15),
	datad => \stage5_1|m_50|o[15]~30_combout\,
	combout => \stage5_1|m_50|o[15]~31_combout\);

-- Location: LCCOMB_X34_Y18_N16
\stage2_2|rf_1|r3|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r3|Q[15]~feeder_combout\ = \stage5_1|m_50|o[15]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[15]~31_combout\,
	combout => \stage2_2|rf_1|r3|Q[15]~feeder_combout\);

-- Location: FF_X34_Y18_N17
\stage2_2|rf_1|r3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r3|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r3|Q\(15));

-- Location: FF_X35_Y18_N23
\stage2_2|rf_1|r2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[15]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r2|Q\(15));

-- Location: FF_X36_Y18_N7
\stage2_2|rf_1|r0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[15]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(15));

-- Location: LCCOMB_X36_Y18_N28
\stage2_2|rf_1|r1|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[15]~feeder_combout\ = \stage5_1|m_50|o[15]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[15]~31_combout\,
	combout => \stage2_2|rf_1|r1|Q[15]~feeder_combout\);

-- Location: FF_X36_Y18_N29
\stage2_2|rf_1|r1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r1|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(15));

-- Location: LCCOMB_X36_Y18_N6
\stage2_2|rf_1|M1|output[15]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[15]~77_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & (\stage2_2|m_20|o[0]~2_combout\)) # (!\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(15)))) # (!\stage2_2|m_20|o[0]~2_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r0|Q\(15),
	datad => \stage2_2|rf_1|r1|Q\(15),
	combout => \stage2_2|rf_1|M1|output[15]~77_combout\);

-- Location: LCCOMB_X35_Y18_N22
\stage2_2|rf_1|M1|output[15]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[15]~78_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|rf_1|M1|output[15]~77_combout\ & (\stage2_2|rf_1|r3|Q\(15))) # (!\stage2_2|rf_1|M1|output[15]~77_combout\ & ((\stage2_2|rf_1|r2|Q\(15)))))) # 
-- (!\stage2_2|m_20|o[1]~1_combout\ & (((\stage2_2|rf_1|M1|output[15]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r3|Q\(15),
	datab => \stage2_2|m_20|o[1]~1_combout\,
	datac => \stage2_2|rf_1|r2|Q\(15),
	datad => \stage2_2|rf_1|M1|output[15]~77_combout\,
	combout => \stage2_2|rf_1|M1|output[15]~78_combout\);

-- Location: LCCOMB_X35_Y19_N14
\stage2_2|rf_1|M1_2|o[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[15]~15_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[15]~31_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(15),
	datac => \stage5_1|m_50|o[15]~31_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[15]~15_combout\);

-- Location: FF_X35_Y19_N15
\stage2_2|rf_1|r7|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[15]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(15));

-- Location: FF_X35_Y19_N1
\stage2_2|rf_1|r5|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[15]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r5|Q\(15));

-- Location: FF_X34_Y19_N31
\stage2_2|rf_1|r4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[15]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r4|Q\(15));

-- Location: FF_X34_Y19_N29
\stage2_2|rf_1|r6|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[15]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(15));

-- Location: LCCOMB_X34_Y19_N30
\stage2_2|rf_1|M1|output[15]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[15]~75_combout\ = (\stage2_2|m_20|o[1]~1_combout\ & ((\stage2_2|m_20|o[0]~2_combout\) # ((\stage2_2|rf_1|r6|Q\(15))))) # (!\stage2_2|m_20|o[1]~1_combout\ & (!\stage2_2|m_20|o[0]~2_combout\ & (\stage2_2|rf_1|r4|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[1]~1_combout\,
	datab => \stage2_2|m_20|o[0]~2_combout\,
	datac => \stage2_2|rf_1|r4|Q\(15),
	datad => \stage2_2|rf_1|r6|Q\(15),
	combout => \stage2_2|rf_1|M1|output[15]~75_combout\);

-- Location: LCCOMB_X35_Y19_N0
\stage2_2|rf_1|M1|output[15]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[15]~76_combout\ = (\stage2_2|m_20|o[0]~2_combout\ & ((\stage2_2|rf_1|M1|output[15]~75_combout\ & (\stage2_2|rf_1|r7|Q\(15))) # (!\stage2_2|rf_1|M1|output[15]~75_combout\ & ((\stage2_2|rf_1|r5|Q\(15)))))) # 
-- (!\stage2_2|m_20|o[0]~2_combout\ & (((\stage2_2|rf_1|M1|output[15]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|m_20|o[0]~2_combout\,
	datab => \stage2_2|rf_1|r7|Q\(15),
	datac => \stage2_2|rf_1|r5|Q\(15),
	datad => \stage2_2|rf_1|M1|output[15]~75_combout\,
	combout => \stage2_2|rf_1|M1|output[15]~76_combout\);

-- Location: LCCOMB_X35_Y18_N28
\stage2_2|rf_1|M1|output[15]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[15]~79_combout\ = (\stage2_2|m_20|o[2]~0_combout\ & ((\stage2_2|rf_1|M1|output[15]~76_combout\))) # (!\stage2_2|m_20|o[2]~0_combout\ & (\stage2_2|rf_1|M1|output[15]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[15]~78_combout\,
	datac => \stage2_2|m_20|o[2]~0_combout\,
	datad => \stage2_2|rf_1|M1|output[15]~76_combout\,
	combout => \stage2_2|rf_1|M1|output[15]~79_combout\);

-- Location: FF_X35_Y18_N29
\PR2_d1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[15]~79_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(15));

-- Location: LCCOMB_X34_Y17_N16
\stage3_1|forwarding|new_d1[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[15]~20_combout\ = (!\stage3_1|forwarding|new_d1~1_combout\ & ((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage5_1|m_50|o[15]~31_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\PR2_d1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \PR2_d1|Q\(15),
	datac => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage5_1|m_50|o[15]~31_combout\,
	combout => \stage3_1|forwarding|new_d1[15]~20_combout\);

-- Location: LCCOMB_X34_Y17_N18
\stage3_1|m_32|o[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[15]~14_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[15]~20_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|stage4_d3[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|stage4_d3[15]~17_combout\,
	datad => \stage3_1|forwarding|new_d1[15]~20_combout\,
	combout => \stage3_1|m_32|o[15]~14_combout\);

-- Location: LCCOMB_X30_Y16_N14
\stage3_1|alu_1|A|a0|fa1|s~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~30_combout\ = (\stage3_1|m_34|o[15]~59_combout\ & ((\stage3_1|m_32|o[15]~14_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~29\ & VCC)) # (!\stage3_1|m_32|o[15]~14_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~29\)))) # 
-- (!\stage3_1|m_34|o[15]~59_combout\ & ((\stage3_1|m_32|o[15]~14_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~29\)) # (!\stage3_1|m_32|o[15]~14_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~29\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~31\ = CARRY((\stage3_1|m_34|o[15]~59_combout\ & (!\stage3_1|m_32|o[15]~14_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~29\)) # (!\stage3_1|m_34|o[15]~59_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~29\) # 
-- (!\stage3_1|m_32|o[15]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[15]~59_combout\,
	datab => \stage3_1|m_32|o[15]~14_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~29\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~30_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~31\);

-- Location: LCCOMB_X31_Y16_N2
\stage3_1|alu_1|M|o[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[15]~2_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[15]~14_combout\)) # (!\stage3_1|m_34|o[15]~59_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[15]~59_combout\,
	datab => \stage3_1|m_32|o[15]~14_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~30_combout\,
	combout => \stage3_1|alu_1|M|o[15]~2_combout\);

-- Location: LCCOMB_X34_Y16_N4
\PR3_aluout|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_aluout|Q[15]~feeder_combout\ = \stage3_1|alu_1|M|o[15]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage3_1|alu_1|M|o[15]~2_combout\,
	combout => \PR3_aluout|Q[15]~feeder_combout\);

-- Location: FF_X34_Y16_N5
\PR3_aluout|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_aluout|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(15));

-- Location: LCCOMB_X34_Y16_N22
\stage3_1|forwarding|stage4_d3[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[15]~16_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(15))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(1),
	datab => \PR3_aluout|Q\(15),
	datac => \PR3_pc|Q\(15),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[15]~16_combout\);

-- Location: LCCOMB_X34_Y16_N28
\stage3_1|forwarding|stage4_d3[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[15]~17_combout\ = (\stage3_1|forwarding|stage4_d3[15]~16_combout\) # ((\PR3_LS7|Q\(15) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(15),
	datab => \PR3_ctrl|Q\(0),
	datad => \stage3_1|forwarding|stage4_d3[15]~16_combout\,
	combout => \stage3_1|forwarding|stage4_d3[15]~17_combout\);

-- Location: LCCOMB_X34_Y16_N18
\stage3_1|forwarding|new_d2[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[15]~48_combout\ = (\stage3_1|forwarding|new_d2[0]~11_combout\ & ((\PR2_d1|Q\(15)) # ((\stage5_1|m_50|o[15]~31_combout\ & \stage3_1|forwarding|new_d2[0]~10_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~11_combout\ & 
-- (\stage5_1|m_50|o[15]~31_combout\ & ((\stage3_1|forwarding|new_d2[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datab => \stage5_1|m_50|o[15]~31_combout\,
	datac => \PR2_d1|Q\(15),
	datad => \stage3_1|forwarding|new_d2[0]~10_combout\,
	combout => \stage3_1|forwarding|new_d2[15]~48_combout\);

-- Location: LCCOMB_X34_Y16_N14
\stage3_1|forwarding|new_d2[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[15]~49_combout\ = (\stage3_1|forwarding|new_d2[15]~48_combout\) # ((\stage3_1|forwarding|new_d2~51_combout\ & \stage3_1|forwarding|stage4_d3[15]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~51_combout\,
	datab => \stage3_1|forwarding|stage4_d3[15]~17_combout\,
	datad => \stage3_1|forwarding|new_d2[15]~48_combout\,
	combout => \stage3_1|forwarding|new_d2[15]~49_combout\);

-- Location: LCCOMB_X27_Y17_N30
\PR2_lmloop|Q[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[15]~46_combout\ = \PR2_lmloop|Q\(15) $ (\PR2_lmloop|Q[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(15),
	cin => \PR2_lmloop|Q[14]~45\,
	combout => \PR2_lmloop|Q[15]~46_combout\);

-- Location: FF_X27_Y17_N31
\PR2_lmloop|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[15]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(15));

-- Location: LCCOMB_X34_Y16_N20
\stage3_1|m_34|o[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[15]~46_combout\ = (\PR2_ctrl|Q\(15) & (((\PR2_lmloop|Q\(15))))) # (!\PR2_ctrl|Q\(15) & (\PR2_ctrl|Q\(9) & (\PR2_LS7|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \PR2_LS7|Q\(12),
	datad => \PR2_lmloop|Q\(15),
	combout => \stage3_1|m_34|o[15]~46_combout\);

-- Location: LCCOMB_X34_Y16_N10
\stage3_1|m_34|o[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[15]~59_combout\ = (\stage3_1|m_34|o[15]~46_combout\) # ((!\PR2_ctrl|Q\(9) & (!\PR2_ctrl|Q\(15) & \stage3_1|forwarding|new_d2[15]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datab => \PR2_ctrl|Q\(15),
	datac => \stage3_1|forwarding|new_d2[15]~49_combout\,
	datad => \stage3_1|m_34|o[15]~46_combout\,
	combout => \stage3_1|m_34|o[15]~59_combout\);

-- Location: LCCOMB_X30_Y16_N16
\stage3_1|alu_1|A|a0|fa1|s~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~32_combout\ = !\stage3_1|alu_1|A|a0|fa1|s~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \stage3_1|alu_1|A|a0|fa1|s~31\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~32_combout\);

-- Location: FF_X30_Y14_N29
\PR2_ctrl|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(8),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(8));

-- Location: LCCOMB_X30_Y14_N28
\ctrl_edit|new_ctrl[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_edit|new_ctrl[8]~1_combout\ = (\PR2_ctrl|Q\(8) & ((\ctrl_edit|x~0_combout\) # ((\PR2_ctrl|Q\(9)) # (!\PR2_ctrl|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_edit|x~0_combout\,
	datab => \PR2_ctrl|Q\(7),
	datac => \PR2_ctrl|Q\(8),
	datad => \PR2_ctrl|Q\(9),
	combout => \ctrl_edit|new_ctrl[8]~1_combout\);

-- Location: LCCOMB_X30_Y14_N14
\carry_flag|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry_flag|Q~0_combout\ = (\ctrl_edit|new_ctrl[8]~1_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~32_combout\)) # (!\ctrl_edit|new_ctrl[8]~1_combout\ & ((\carry_flag|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3_1|alu_1|A|a0|fa1|s~32_combout\,
	datac => \carry_flag|Q~q\,
	datad => \ctrl_edit|new_ctrl[8]~1_combout\,
	combout => \carry_flag|Q~0_combout\);

-- Location: FF_X30_Y14_N15
\carry_flag|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \carry_flag|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \carry_flag|Q~q\);

-- Location: LCCOMB_X30_Y14_N0
\ctrl_edit|x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_edit|x~0_combout\ = (\PR2_LS7|Q\(8) & (((\carry_flag|Q~q\ & !\PR2_LS7|Q\(7))))) # (!\PR2_LS7|Q\(8) & ((\zero_flag|Q~q\) # ((!\PR2_LS7|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero_flag|Q~q\,
	datab => \PR2_LS7|Q\(8),
	datac => \carry_flag|Q~q\,
	datad => \PR2_LS7|Q\(7),
	combout => \ctrl_edit|x~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\ctrl|output[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[2]~26_combout\ = (\PR0_instr|Q\(14) & (!\PR0_instr|Q\(15) & ((!\PR0_instr|Q\(12))))) # (!\PR0_instr|Q\(14) & (((!\PR0_instr|Q\(13))) # (!\PR0_instr|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|output[2]~26_combout\);

-- Location: FF_X31_Y14_N17
\PR1_ctrl|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[2]~26_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(2));

-- Location: FF_X31_Y16_N21
\PR2_ctrl|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(2),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(2));

-- Location: LCCOMB_X30_Y15_N30
\ctrl_edit|new_ctrl[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_edit|new_ctrl[2]~0_combout\ = (\PR2_ctrl|Q\(7) & ((\PR2_ctrl|Q\(9) & ((\PR2_ctrl|Q\(2)))) # (!\PR2_ctrl|Q\(9) & (\ctrl_edit|x~0_combout\)))) # (!\PR2_ctrl|Q\(7) & (((\PR2_ctrl|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(7),
	datab => \ctrl_edit|x~0_combout\,
	datac => \PR2_ctrl|Q\(2),
	datad => \PR2_ctrl|Q\(9),
	combout => \ctrl_edit|new_ctrl[2]~0_combout\);

-- Location: FF_X30_Y15_N31
\PR3_ctrl|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_edit|new_ctrl[2]~0_combout\,
	clrn => \ALT_INV_create_bubble5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(2));

-- Location: LCCOMB_X30_Y15_N14
\stage3_1|forwarding|new_d2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~9_combout\ = (\PR3_ctrl|Q\(2) & (\PR3_rfa3|Q\(2) $ (!\PR2_rfa2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(2),
	datab => \PR3_rfa3|Q\(2),
	datad => \PR2_rfa2|Q\(2),
	combout => \stage3_1|forwarding|new_d2~9_combout\);

-- Location: LCCOMB_X30_Y15_N20
\stage3_1|forwarding|new_d2[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[0]~11_combout\ = (\stage3_1|forwarding|new_d2~6_combout\ & (!\stage3_1|forwarding|new_d2~7_combout\ & ((!\stage3_1|forwarding|new_d2~9_combout\) # (!\stage3_1|forwarding|new_d2~8_combout\)))) # 
-- (!\stage3_1|forwarding|new_d2~6_combout\ & (((!\stage3_1|forwarding|new_d2~9_combout\)) # (!\stage3_1|forwarding|new_d2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~6_combout\,
	datab => \stage3_1|forwarding|new_d2~8_combout\,
	datac => \stage3_1|forwarding|new_d2~9_combout\,
	datad => \stage3_1|forwarding|new_d2~7_combout\,
	combout => \stage3_1|forwarding|new_d2[0]~11_combout\);

-- Location: LCCOMB_X29_Y15_N10
\stage3_1|forwarding|new_d2[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[13]~12_combout\ = (\stage3_1|forwarding|new_d2[0]~11_combout\ & ((\PR2_d1|Q\(13)) # ((\stage3_1|forwarding|new_d2[0]~10_combout\ & \stage5_1|m_50|o[13]~1_combout\)))) # (!\stage3_1|forwarding|new_d2[0]~11_combout\ & 
-- (\stage3_1|forwarding|new_d2[0]~10_combout\ & (\stage5_1|m_50|o[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[0]~11_combout\,
	datab => \stage3_1|forwarding|new_d2[0]~10_combout\,
	datac => \stage5_1|m_50|o[13]~1_combout\,
	datad => \PR2_d1|Q\(13),
	combout => \stage3_1|forwarding|new_d2[13]~12_combout\);

-- Location: LCCOMB_X29_Y15_N24
\stage3_1|forwarding|new_d2[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2[13]~13_combout\ = (\stage3_1|forwarding|new_d2[13]~12_combout\) # ((\stage3_1|forwarding|new_d2~51_combout\ & \stage3_1|forwarding|stage4_d3[13]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[13]~12_combout\,
	datac => \stage3_1|forwarding|new_d2~51_combout\,
	datad => \stage3_1|forwarding|stage4_d3[13]~1_combout\,
	combout => \stage3_1|forwarding|new_d2[13]~13_combout\);

-- Location: LCCOMB_X29_Y15_N0
\stage3_1|m_34|o[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[13]~47_combout\ = (\stage3_1|m_34|o[13]~26_combout\) # ((!\PR2_ctrl|Q\(15) & (!\PR2_ctrl|Q\(9) & \stage3_1|forwarding|new_d2[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(15),
	datab => \PR2_ctrl|Q\(9),
	datac => \stage3_1|m_34|o[13]~26_combout\,
	datad => \stage3_1|forwarding|new_d2[13]~13_combout\,
	combout => \stage3_1|m_34|o[13]~47_combout\);

-- Location: LCCOMB_X29_Y16_N26
\stage3_1|alu_1|M|o[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[13]~0_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[13]~0_combout\)) # (!\stage3_1|m_34|o[13]~47_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[13]~47_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_32|o[13]~0_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~26_combout\,
	combout => \stage3_1|alu_1|M|o[13]~0_combout\);

-- Location: LCCOMB_X30_Y16_N28
\stage3_1|alu_1|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~0_combout\ = (\stage3_1|alu_1|M|o[0]~9_combout\) # ((\stage3_1|alu_1|M|o[1]~10_combout\) # ((\stage3_1|alu_1|M|o[2]~11_combout\) # (\stage3_1|alu_1|M|o[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[0]~9_combout\,
	datab => \stage3_1|alu_1|M|o[1]~10_combout\,
	datac => \stage3_1|alu_1|M|o[2]~11_combout\,
	datad => \stage3_1|alu_1|M|o[3]~12_combout\,
	combout => \stage3_1|alu_1|zero~0_combout\);

-- Location: LCCOMB_X30_Y16_N18
\stage3_1|alu_1|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~1_combout\ = (\stage3_1|alu_1|M|o[6]~15_combout\) # ((\stage3_1|alu_1|zero~0_combout\) # ((\stage3_1|alu_1|M|o[4]~13_combout\) # (\stage3_1|alu_1|M|o[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[6]~15_combout\,
	datab => \stage3_1|alu_1|zero~0_combout\,
	datac => \stage3_1|alu_1|M|o[4]~13_combout\,
	datad => \stage3_1|alu_1|M|o[5]~14_combout\,
	combout => \stage3_1|alu_1|zero~1_combout\);

-- Location: LCCOMB_X30_Y16_N24
\stage3_1|alu_1|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~2_combout\ = (\stage3_1|alu_1|M|o[8]~7_combout\) # ((\stage3_1|alu_1|M|o[9]~8_combout\) # ((\stage3_1|alu_1|M|o[7]~6_combout\) # (\stage3_1|alu_1|zero~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[8]~7_combout\,
	datab => \stage3_1|alu_1|M|o[9]~8_combout\,
	datac => \stage3_1|alu_1|M|o[7]~6_combout\,
	datad => \stage3_1|alu_1|zero~1_combout\,
	combout => \stage3_1|alu_1|zero~2_combout\);

-- Location: LCCOMB_X30_Y16_N22
\stage3_1|alu_1|zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~3_combout\ = (\stage3_1|alu_1|M|o[12]~5_combout\) # ((\stage3_1|alu_1|M|o[11]~4_combout\) # ((\stage3_1|alu_1|M|o[10]~3_combout\) # (\stage3_1|alu_1|zero~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[12]~5_combout\,
	datab => \stage3_1|alu_1|M|o[11]~4_combout\,
	datac => \stage3_1|alu_1|M|o[10]~3_combout\,
	datad => \stage3_1|alu_1|zero~2_combout\,
	combout => \stage3_1|alu_1|zero~3_combout\);

-- Location: LCCOMB_X30_Y16_N20
\stage3_1|alu_1|zero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~4_combout\ = (\stage3_1|alu_1|M|o[13]~0_combout\) # ((\stage3_1|alu_1|M|o[15]~2_combout\) # ((\stage3_1|alu_1|zero~3_combout\) # (\stage3_1|alu_1|M|o[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[13]~0_combout\,
	datab => \stage3_1|alu_1|M|o[15]~2_combout\,
	datac => \stage3_1|alu_1|zero~3_combout\,
	datad => \stage3_1|alu_1|M|o[14]~1_combout\,
	combout => \stage3_1|alu_1|zero~4_combout\);

-- Location: LCCOMB_X30_Y16_N30
\branch_taken~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_taken~0_combout\ = (!\m51_select~0_combout\ & (\PR2_ctrl|Q\(10) & !\stage3_1|alu_1|zero~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|alu_1|zero~4_combout\,
	combout => \branch_taken~0_combout\);

-- Location: LCCOMB_X31_Y16_N6
create_bubble3 : cycloneive_lcell_comb
-- Equation(s):
-- \create_bubble3~combout\ = (\create_bubble5~0_combout\) # (((\PR2_ctrl|Q\(3)) # (\branch_taken~0_combout\)) # (!\stage2_2|DH|kill_bit~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \create_bubble5~0_combout\,
	datab => \stage2_2|DH|kill_bit~4_combout\,
	datac => \PR2_ctrl|Q\(3),
	datad => \branch_taken~0_combout\,
	combout => \create_bubble3~combout\);

-- Location: FF_X31_Y16_N29
\PR2_ctrl|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(15),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(15));

-- Location: FF_X27_Y17_N1
\PR2_lmloop|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[0]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(0));

-- Location: LCCOMB_X27_Y17_N2
\PR2_lmloop|Q[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_lmloop|Q[1]~18_combout\ = (\PR2_lmloop|Q\(1) & (!\PR2_lmloop|Q[0]~17\)) # (!\PR2_lmloop|Q\(1) & ((\PR2_lmloop|Q[0]~17\) # (GND)))
-- \PR2_lmloop|Q[1]~19\ = CARRY((!\PR2_lmloop|Q[0]~17\) # (!\PR2_lmloop|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PR2_lmloop|Q\(1),
	datad => VCC,
	cin => \PR2_lmloop|Q[0]~17\,
	combout => \PR2_lmloop|Q[1]~18_combout\,
	cout => \PR2_lmloop|Q[1]~19\);

-- Location: FF_X27_Y17_N3
\PR2_lmloop|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[1]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(1));

-- Location: FF_X27_Y17_N5
\PR2_lmloop|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_lmloop|Q[2]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR2_ctrl|ALT_INV_Q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_lmloop|Q\(2));

-- Location: LCCOMB_X32_Y17_N22
\stage3_1|m_34|o[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[2]~38_combout\ = (\PR2_ctrl|Q\(15) & (\PR2_lmloop|Q\(2))) # (!\PR2_ctrl|Q\(15) & (((\PR2_LS7|Q\(9) & \PR2_ctrl|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_lmloop|Q\(2),
	datab => \PR2_LS7|Q\(9),
	datac => \PR2_ctrl|Q\(9),
	datad => \PR2_ctrl|Q\(15),
	combout => \stage3_1|m_34|o[2]~38_combout\);

-- Location: LCCOMB_X31_Y17_N30
\stage3_1|m_34|o[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[2]~39_combout\ = (\stage3_1|forwarding|new_d2~8_combout\ & (\stage3_1|forwarding|new_d2~9_combout\ & \stage3_1|forwarding|new_d2[2]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~8_combout\,
	datab => \stage3_1|forwarding|new_d2~9_combout\,
	datad => \stage3_1|forwarding|new_d2[2]~38_combout\,
	combout => \stage3_1|m_34|o[2]~39_combout\);

-- Location: LCCOMB_X31_Y17_N2
\stage3_1|m_34|o[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[2]~40_combout\ = (\stage3_1|m_34|o[2]~38_combout\) # ((\stage3_1|m_34|o[0]~27_combout\ & ((\stage3_1|m_34|o[2]~39_combout\) # (\stage3_1|forwarding|new_d2[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[2]~38_combout\,
	datab => \stage3_1|m_34|o[0]~27_combout\,
	datac => \stage3_1|m_34|o[2]~39_combout\,
	datad => \stage3_1|forwarding|new_d2[2]~39_combout\,
	combout => \stage3_1|m_34|o[2]~40_combout\);

-- Location: LCCOMB_X30_Y17_N8
\stage3_1|alu_1|M|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[2]~11_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[2]~11_combout\)) # (!\stage3_1|m_34|o[2]~40_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[2]~40_combout\,
	datab => \stage3_1|m_32|o[2]~11_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~4_combout\,
	combout => \stage3_1|alu_1|M|o[2]~11_combout\);

-- Location: FF_X31_Y17_N31
\PR3_aluout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage3_1|alu_1|M|o[2]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(2));

-- Location: FF_X31_Y17_N27
\PR4_aluout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(2));

-- Location: LCCOMB_X28_Y17_N20
\stage4_1|data_mem|RAM_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X28_Y17_N21
\stage4_1|data_mem|RAM_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(14));

-- Location: FF_X32_Y17_N17
\stage4_1|data_mem|RAM~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(2),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~24_q\);

-- Location: LCCOMB_X32_Y17_N16
\stage4_1|data_mem|RAM~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~63_combout\ = (\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a2\)) # (!\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM~24_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a2\,
	datac => \stage4_1|data_mem|RAM~24_q\,
	datad => \stage4_1|data_mem|RAM~21_q\,
	combout => \stage4_1|data_mem|RAM~63_combout\);

-- Location: FF_X32_Y17_N11
\stage4_1|data_mem|RAM_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(13));

-- Location: LCCOMB_X28_Y17_N16
\stage4_1|data_mem|RAM~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~64_combout\ = (\stage4_1|data_mem|RAM~41_combout\ & (((\stage4_1|data_mem|RAM_rtl_0_bypass\(13))))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM_rtl_0_bypass\(14) & (\stage4_1|data_mem|RAM~63_combout\)) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(14) & ((\stage4_1|data_mem|RAM_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~41_combout\,
	datab => \stage4_1|data_mem|RAM_rtl_0_bypass\(14),
	datac => \stage4_1|data_mem|RAM~63_combout\,
	datad => \stage4_1|data_mem|RAM_rtl_0_bypass\(13),
	combout => \stage4_1|data_mem|RAM~64_combout\);

-- Location: FF_X28_Y17_N17
\PR4_memdout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(2));

-- Location: FF_X31_Y17_N21
\PR4_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(2));

-- Location: LCCOMB_X31_Y17_N20
\stage5_1|m_50|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[2]~22_combout\ = (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & (\PR4_memdout|Q\(2))) # (!\PR4_ctrl|Q\(0) & ((\PR4_pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_memdout|Q\(2),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(2),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[2]~22_combout\);

-- Location: LCCOMB_X31_Y17_N26
\stage5_1|m_50|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[2]~23_combout\ = (\stage5_1|m_50|o[2]~22_combout\) # ((!\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_aluout|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_aluout|Q\(2),
	datad => \stage5_1|m_50|o[2]~22_combout\,
	combout => \stage5_1|m_50|o[2]~23_combout\);

-- Location: FF_X38_Y16_N5
\PR2_adderout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(2));

-- Location: LCCOMB_X32_Y17_N28
\stage3_1|forwarding|new_d1[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[2]~21_combout\ = (\stage3_1|forwarding|new_d1[2]~15_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|new_d2[2]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d2[2]~38_combout\,
	datad => \stage3_1|forwarding|new_d1[2]~15_combout\,
	combout => \stage3_1|forwarding|new_d1[2]~21_combout\);

-- Location: LCCOMB_X36_Y16_N14
\m_51|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[2]~0_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & (((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & ((\stage0_0|PC|Q[4]~4_combout\ & (\PR2_adderout|Q\(2))) # (!\stage0_0|PC|Q[4]~4_combout\ & 
-- ((\stage3_1|forwarding|new_d1[2]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \PR2_adderout|Q\(2),
	datac => \stage3_1|forwarding|new_d1[2]~21_combout\,
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[2]~0_combout\);

-- Location: LCCOMB_X36_Y16_N28
\m_51|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[2]~1_combout\ = (\m_51|o[2]~0_combout\ & (((\adder16_1|a0|fa1|s~4_combout\) # (!\stage0_0|PC|Q[4]~5_combout\)))) # (!\m_51|o[2]~0_combout\ & (\incPC[2]~4_combout\ & ((\stage0_0|PC|Q[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[2]~4_combout\,
	datab => \adder16_1|a0|fa1|s~4_combout\,
	datac => \m_51|o[2]~0_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[2]~1_combout\);

-- Location: LCCOMB_X36_Y16_N8
\m_51|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[2]~2_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[2]~23_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[2]~23_combout\,
	datad => \m_51|o[2]~1_combout\,
	combout => \m_51|o[2]~2_combout\);

-- Location: FF_X36_Y16_N9
\stage0_0|PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(2));

-- Location: LCCOMB_X36_Y14_N12
\temp_instr[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[12]~0_combout\ = (\create_bubble2~combout\) # ((\stage0_0|PC|Q\(1) & (\stage0_0|PC|Q\(2) & !\stage0_0|PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(2),
	datac => \stage0_0|PC|Q\(3),
	datad => \create_bubble2~combout\,
	combout => \temp_instr[12]~0_combout\);

-- Location: FF_X36_Y14_N13
\PR0_instr|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[12]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(12));

-- Location: LCCOMB_X31_Y14_N2
\ctrl|output~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output~22_combout\ = (\PR0_instr|Q\(14) & (!\PR0_instr|Q\(15) & !\PR0_instr|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datac => \PR0_instr|Q\(15),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|output~22_combout\);

-- Location: FF_X31_Y14_N3
\PR1_ctrl|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output~22_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(6));

-- Location: FF_X31_Y16_N1
\PR2_ctrl|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(6),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(6));

-- Location: LCCOMB_X31_Y16_N0
\stage2_2|DH|kill_bit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|DH|kill_bit~4_combout\ = (!\stage2_2|DH|kill_bit~3_combout\) # (!\PR2_ctrl|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR2_ctrl|Q\(6),
	datad => \stage2_2|DH|kill_bit~3_combout\,
	combout => \stage2_2|DH|kill_bit~4_combout\);

-- Location: FF_X31_Y14_N19
\PR1_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[1]~31_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(1));

-- Location: FF_X31_Y16_N31
\PR2_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(1),
	clrn => \ALT_INV_create_bubble3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(1));

-- Location: LCCOMB_X31_Y17_N0
\PR3_ctrl|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_ctrl|Q[1]~feeder_combout\ = \PR2_ctrl|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_ctrl|Q\(1),
	combout => \PR3_ctrl|Q[1]~feeder_combout\);

-- Location: FF_X31_Y17_N1
\PR3_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_ctrl|Q[1]~feeder_combout\,
	clrn => \ALT_INV_create_bubble5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(1));

-- Location: FF_X30_Y18_N27
\PR4_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_ctrl|Q\(1),
	clrn => \ALT_INV_create_bubble5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_ctrl|Q\(1));

-- Location: FF_X30_Y18_N7
\PR4_aluout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(3));

-- Location: FF_X30_Y18_N1
\PR4_pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(3),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(3));

-- Location: LCCOMB_X28_Y17_N4
\stage4_1|data_mem|RAM_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[15]~feeder_combout\ = \PR3_newd2|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_newd2|Q\(3),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X28_Y17_N5
\stage4_1|data_mem|RAM_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(15));

-- Location: LCCOMB_X28_Y17_N30
\stage4_1|data_mem|RAM_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X28_Y17_N31
\stage4_1|data_mem|RAM_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(16));

-- Location: FF_X32_Y15_N25
\stage4_1|data_mem|RAM~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(3),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~25_q\);

-- Location: LCCOMB_X32_Y15_N24
\stage4_1|data_mem|RAM~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~61_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a3\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~25_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~25_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a3\,
	combout => \stage4_1|data_mem|RAM~61_combout\);

-- Location: LCCOMB_X28_Y18_N28
\stage4_1|data_mem|RAM~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~62_combout\ = (\stage4_1|data_mem|RAM~41_combout\ & (\stage4_1|data_mem|RAM_rtl_0_bypass\(15))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM_rtl_0_bypass\(16) & ((\stage4_1|data_mem|RAM~61_combout\))) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(16) & (\stage4_1|data_mem|RAM_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM_rtl_0_bypass\(15),
	datab => \stage4_1|data_mem|RAM~41_combout\,
	datac => \stage4_1|data_mem|RAM_rtl_0_bypass\(16),
	datad => \stage4_1|data_mem|RAM~61_combout\,
	combout => \stage4_1|data_mem|RAM~62_combout\);

-- Location: FF_X28_Y18_N29
\PR4_memdout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(3));

-- Location: LCCOMB_X30_Y18_N0
\stage5_1|m_50|o[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[3]~20_combout\ = (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & ((\PR4_memdout|Q\(3)))) # (!\PR4_ctrl|Q\(0) & (\PR4_pc|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_pc|Q\(3),
	datad => \PR4_memdout|Q\(3),
	combout => \stage5_1|m_50|o[3]~20_combout\);

-- Location: LCCOMB_X30_Y18_N6
\stage5_1|m_50|o[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[3]~21_combout\ = (\stage5_1|m_50|o[3]~20_combout\) # ((!\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_aluout|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_aluout|Q\(3),
	datad => \stage5_1|m_50|o[3]~20_combout\,
	combout => \stage5_1|m_50|o[3]~21_combout\);

-- Location: FF_X38_Y16_N7
\PR2_adderout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(3));

-- Location: LCCOMB_X30_Y18_N26
\stage3_1|forwarding|new_d1[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[3]~23_combout\ = (\stage3_1|forwarding|new_d1[3]~14_combout\) # ((\stage3_1|forwarding|new_d2[3]~35_combout\ & \stage3_1|forwarding|new_d1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2[3]~35_combout\,
	datab => \stage3_1|forwarding|new_d1~1_combout\,
	datad => \stage3_1|forwarding|new_d1[3]~14_combout\,
	combout => \stage3_1|forwarding|new_d1[3]~23_combout\);

-- Location: LCCOMB_X36_Y16_N2
\m_51|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[3]~6_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & (((\stage0_0|PC|Q[4]~5_combout\)))) # (!\stage0_0|PC|Q[4]~4_combout\ & ((\stage0_0|PC|Q[4]~5_combout\ & (\incPC[3]~6_combout\)) # (!\stage0_0|PC|Q[4]~5_combout\ & 
-- ((\stage3_1|forwarding|new_d1[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~4_combout\,
	datab => \incPC[3]~6_combout\,
	datac => \stage3_1|forwarding|new_d1[3]~23_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[3]~6_combout\);

-- Location: LCCOMB_X36_Y16_N12
\m_51|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[3]~7_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\m_51|o[3]~6_combout\ & ((\adder16_1|a0|fa1|s~6_combout\))) # (!\m_51|o[3]~6_combout\ & (\PR2_adderout|Q\(3))))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\m_51|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~4_combout\,
	datab => \PR2_adderout|Q\(3),
	datac => \adder16_1|a0|fa1|s~6_combout\,
	datad => \m_51|o[3]~6_combout\,
	combout => \m_51|o[3]~7_combout\);

-- Location: LCCOMB_X36_Y16_N30
\m_51|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[3]~8_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[3]~21_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[3]~21_combout\,
	datad => \m_51|o[3]~7_combout\,
	combout => \m_51|o[3]~8_combout\);

-- Location: FF_X36_Y16_N31
\stage0_0|PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[3]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(3));

-- Location: LCCOMB_X36_Y14_N8
\stage0_0|InstrMem|RAM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~25_combout\ = (!\stage0_0|PC|Q\(1) & (\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~25_combout\);

-- Location: LCCOMB_X31_Y14_N8
\temp_instr[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[15]~1_combout\ = (\stage0_0|InstrMem|RAM~25_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~25_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[15]~1_combout\);

-- Location: FF_X31_Y14_N9
\PR0_instr|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[15]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(15));

-- Location: LCCOMB_X31_Y14_N4
\ctrl|output[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[15]~28_combout\ = (!\PR0_instr|Q\(15) & (\PR0_instr|Q\(13) & \PR0_instr|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(14),
	combout => \ctrl|output[15]~28_combout\);

-- Location: LCCOMB_X35_Y14_N20
\stage1_1|PE|output[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[1]~5_combout\ = (!\PR0_mux|Q\(1) & !\PR0_mux|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(1),
	datad => \PR0_mux|Q\(0),
	combout => \stage1_1|PE|output[1]~5_combout\);

-- Location: LCCOMB_X35_Y14_N6
\stage0_0|M10|o[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|M10|o[2]~5_combout\ = (\ctrl|output[15]~28_combout\ & (!\stage1_1|PE|output[1]~5_combout\ & (\PR0_mux|Q\(2)))) # (!\ctrl|output[15]~28_combout\ & (((\stage0_0|InstrMem|RAM~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|output[15]~28_combout\,
	datab => \stage1_1|PE|output[1]~5_combout\,
	datac => \PR0_mux|Q\(2),
	datad => \stage0_0|InstrMem|RAM~31_combout\,
	combout => \stage0_0|M10|o[2]~5_combout\);

-- Location: FF_X35_Y14_N7
\PR0_mux|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|M10|o[2]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(2));

-- Location: LCCOMB_X35_Y14_N8
\stage1_1|PE|output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[0]~0_combout\ = (\PR0_mux|Q\(3)) # ((!\PR0_mux|Q\(4) & ((\PR0_mux|Q\(5)) # (!\PR0_mux|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(6),
	datab => \PR0_mux|Q\(3),
	datac => \PR0_mux|Q\(5),
	datad => \PR0_mux|Q\(4),
	combout => \stage1_1|PE|output[0]~0_combout\);

-- Location: LCCOMB_X35_Y14_N10
\stage1_1|PE|output[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[0]~1_combout\ = (!\PR0_mux|Q\(0) & ((\PR0_mux|Q\(1)) # ((!\PR0_mux|Q\(2) & \stage1_1|PE|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(2),
	datab => \stage1_1|PE|output[0]~0_combout\,
	datac => \PR0_mux|Q\(1),
	datad => \PR0_mux|Q\(0),
	combout => \stage1_1|PE|output[0]~1_combout\);

-- Location: FF_X35_Y14_N15
\PR1_pe|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage1_1|PE|output[0]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pe|Q\(0));

-- Location: LCCOMB_X34_Y14_N2
\stage2_2|m_23|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_23|o[0]~2_combout\ = (\PR1_ctrl|Q\(8) & ((\PR1_instr|Q\(9)))) # (!\PR1_ctrl|Q\(8) & (\PR1_pe|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pe|Q\(0),
	datac => \PR1_instr|Q\(9),
	datad => \PR1_ctrl|Q\(8),
	combout => \stage2_2|m_23|o[0]~2_combout\);

-- Location: FF_X34_Y14_N3
\PR2_rfa3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|m_23|o[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa3|Q\(0));

-- Location: FF_X30_Y15_N5
\PR3_rfa3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_rfa3|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_rfa3|Q\(0));

-- Location: FF_X30_Y15_N17
\PR4_rfa3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_rfa3|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_rfa3|Q\(0));

-- Location: LCCOMB_X30_Y15_N2
\create_bubble5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \create_bubble5~0_combout\ = (\rst~input_o\) # ((\PR4_rfa3|Q\(0) & (\PR4_rfa3|Q\(1) & \PR4_rfa3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(0),
	datab => \rst~input_o\,
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_rfa3|Q\(2),
	combout => \create_bubble5~0_combout\);

-- Location: LCCOMB_X31_Y14_N14
create_bubble2 : cycloneive_lcell_comb
-- Equation(s):
-- \create_bubble2~combout\ = (\create_bubble5~0_combout\) # ((\stage0_0|PC|Q[4]~2_combout\) # ((\PR2_ctrl|Q\(3)) # (\branch_taken~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \create_bubble5~0_combout\,
	datab => \stage0_0|PC|Q[4]~2_combout\,
	datac => \PR2_ctrl|Q\(3),
	datad => \branch_taken~0_combout\,
	combout => \create_bubble2~combout\);

-- Location: FF_X31_Y14_N25
\PR1_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[0]~30_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(0));

-- Location: LCCOMB_X31_Y16_N8
\PR2_ctrl|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_ctrl|Q[0]~feeder_combout\ = \PR1_ctrl|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_ctrl|Q\(0),
	combout => \PR2_ctrl|Q[0]~feeder_combout\);

-- Location: FF_X31_Y16_N9
\PR2_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_ctrl|Q[0]~feeder_combout\,
	clrn => \ALT_INV_create_bubble3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(0));

-- Location: FF_X31_Y17_N19
\PR3_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_ctrl|Q\(0),
	clrn => \ALT_INV_create_bubble5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(0));

-- Location: FF_X30_Y18_N13
\PR4_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_ctrl|Q\(0),
	clrn => \ALT_INV_create_bubble5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_ctrl|Q\(0));

-- Location: FF_X30_Y18_N23
\PR4_aluout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(0));

-- Location: FF_X30_Y18_N29
\PR4_pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_pc|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_pc|Q\(0));

-- Location: FF_X32_Y15_N31
\stage4_1|data_mem|RAM~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_newd2|Q\(0),
	sload => VCC,
	ena => \stage4_1|data_mem|RAM~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM~22_q\);

-- Location: LCCOMB_X32_Y15_N30
\stage4_1|data_mem|RAM~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~67_combout\ = (\stage4_1|data_mem|RAM~21_q\ & ((\stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\stage4_1|data_mem|RAM~21_q\ & (\stage4_1|data_mem|RAM~22_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~21_q\,
	datac => \stage4_1|data_mem|RAM~22_q\,
	datad => \stage4_1|data_mem|RAM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \stage4_1|data_mem|RAM~67_combout\);

-- Location: LCCOMB_X29_Y14_N26
\stage4_1|data_mem|RAM_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X29_Y14_N27
\stage4_1|data_mem|RAM_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(10));

-- Location: LCCOMB_X29_Y14_N16
\stage4_1|data_mem|RAM_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM_rtl_0_bypass[9]~feeder_combout\ = \PR3_newd2|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_newd2|Q\(0),
	combout => \stage4_1|data_mem|RAM_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X29_Y14_N17
\stage4_1|data_mem|RAM_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage4_1|data_mem|RAM_rtl_0_bypass\(9));

-- Location: LCCOMB_X29_Y14_N28
\stage4_1|data_mem|RAM~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage4_1|data_mem|RAM~68_combout\ = (\stage4_1|data_mem|RAM~41_combout\ & (((\stage4_1|data_mem|RAM_rtl_0_bypass\(9))))) # (!\stage4_1|data_mem|RAM~41_combout\ & ((\stage4_1|data_mem|RAM_rtl_0_bypass\(10) & (\stage4_1|data_mem|RAM~67_combout\)) # 
-- (!\stage4_1|data_mem|RAM_rtl_0_bypass\(10) & ((\stage4_1|data_mem|RAM_rtl_0_bypass\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage4_1|data_mem|RAM~41_combout\,
	datab => \stage4_1|data_mem|RAM~67_combout\,
	datac => \stage4_1|data_mem|RAM_rtl_0_bypass\(10),
	datad => \stage4_1|data_mem|RAM_rtl_0_bypass\(9),
	combout => \stage4_1|data_mem|RAM~68_combout\);

-- Location: FF_X29_Y14_N29
\PR4_memdout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage4_1|data_mem|RAM~68_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \PR3_ctrl|ALT_INV_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_memdout|Q\(0));

-- Location: LCCOMB_X30_Y18_N28
\stage5_1|m_50|o[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[0]~26_combout\ = (!\PR4_ctrl|Q\(1) & ((\PR4_ctrl|Q\(0) & ((\PR4_memdout|Q\(0)))) # (!\PR4_ctrl|Q\(0) & (\PR4_pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(0),
	datad => \PR4_memdout|Q\(0),
	combout => \stage5_1|m_50|o[0]~26_combout\);

-- Location: LCCOMB_X30_Y18_N22
\stage5_1|m_50|o[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[0]~27_combout\ = (\stage5_1|m_50|o[0]~26_combout\) # ((!\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_aluout|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_aluout|Q\(0),
	datad => \stage5_1|m_50|o[0]~26_combout\,
	combout => \stage5_1|m_50|o[0]~27_combout\);

-- Location: LCCOMB_X36_Y16_N22
\adder16_1|a0|fa0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa0|s~0_combout\ = \PR1_pc|Q\(0) $ (\PR1_LS7|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(0),
	datad => \PR1_LS7|Q\(7),
	combout => \adder16_1|a0|fa0|s~0_combout\);

-- Location: FF_X36_Y16_N23
\PR2_adderout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa0|s~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(0));

-- Location: LCCOMB_X36_Y16_N0
\m_51|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[0]~9_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & (((\stage0_0|PC|Q[4]~4_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & ((\stage0_0|PC|Q[4]~4_combout\ & ((\PR2_adderout|Q\(0)))) # (!\stage0_0|PC|Q[4]~4_combout\ & 
-- (\stage3_1|forwarding|new_d1[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \stage3_1|forwarding|new_d1[0]~18_combout\,
	datac => \PR2_adderout|Q\(0),
	datad => \stage0_0|PC|Q[4]~4_combout\,
	combout => \m_51|o[0]~9_combout\);

-- Location: LCCOMB_X36_Y16_N18
\m_51|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[0]~10_combout\ = (\stage0_0|PC|Q[4]~5_combout\ & ((\m_51|o[0]~9_combout\ & ((\adder16_1|a0|fa0|s~0_combout\))) # (!\m_51|o[0]~9_combout\ & (\incPC[0]~0_combout\)))) # (!\stage0_0|PC|Q[4]~5_combout\ & (((\m_51|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q[4]~5_combout\,
	datab => \incPC[0]~0_combout\,
	datac => \adder16_1|a0|fa0|s~0_combout\,
	datad => \m_51|o[0]~9_combout\,
	combout => \m_51|o[0]~10_combout\);

-- Location: LCCOMB_X36_Y16_N20
\m_51|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[0]~11_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[0]~27_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[0]~27_combout\,
	datab => \m51_select~0_combout\,
	datad => \m_51|o[0]~10_combout\,
	combout => \m_51|o[0]~11_combout\);

-- Location: FF_X36_Y16_N21
\stage0_0|PC|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[0]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(0));

-- Location: LCCOMB_X36_Y14_N18
\stage0_0|InstrMem|RAM~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~34_combout\ = (\stage0_0|PC|Q\(1) & (\stage0_0|PC|Q\(0) & (!\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(2)))) # (!\stage0_0|PC|Q\(1) & (\stage0_0|PC|Q\(3) & (\stage0_0|PC|Q\(0) $ (!\stage0_0|PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~34_combout\);

-- Location: LCCOMB_X32_Y14_N4
\stage0_0|InstrMem|RAM~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~35_combout\ = (\stage0_0|InstrMem|RAM~34_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~34_combout\,
	datad => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~35_combout\);

-- Location: FF_X32_Y14_N5
\PR0_instr|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(11));

-- Location: FF_X32_Y14_N25
\PR1_instr|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(11),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|DH|kill_bit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(11));

-- Location: LCCOMB_X30_Y14_N22
\stage2_2|m_23|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_23|o[2]~1_combout\ = (\PR1_ctrl|Q\(8) & (\PR1_instr|Q\(11))) # (!\PR1_ctrl|Q\(8) & ((\PR1_pe|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(11),
	datab => \PR1_ctrl|Q\(8),
	datac => \PR1_pe|Q\(2),
	combout => \stage2_2|m_23|o[2]~1_combout\);

-- Location: FF_X30_Y14_N23
\PR2_rfa3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|m_23|o[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa3|Q\(2));

-- Location: FF_X30_Y15_N9
\PR3_rfa3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_rfa3|Q\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_rfa3|Q\(2));

-- Location: FF_X30_Y15_N11
\PR4_rfa3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_rfa3|Q\(2),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_rfa3|Q\(2));

-- Location: LCCOMB_X34_Y15_N16
\m51_select~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m51_select~0_combout\ = (\PR4_rfa3|Q\(2) & (\PR4_rfa3|Q\(1) & \PR4_rfa3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR4_rfa3|Q\(2),
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_rfa3|Q\(0),
	combout => \m51_select~0_combout\);

-- Location: FF_X38_Y16_N3
\PR2_adderout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adder16_1|a0|fa1|s~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(1));

-- Location: LCCOMB_X32_Y17_N2
\stage3_1|forwarding|new_d1[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[1]~22_combout\ = (\stage3_1|forwarding|new_d1[1]~16_combout\) # ((\stage3_1|forwarding|new_d1~1_combout\ & \stage3_1|forwarding|new_d2[1]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~1_combout\,
	datab => \stage3_1|forwarding|new_d1[1]~16_combout\,
	datad => \stage3_1|forwarding|new_d2[1]~40_combout\,
	combout => \stage3_1|forwarding|new_d1[1]~22_combout\);

-- Location: LCCOMB_X35_Y16_N24
\m_51|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[1]~3_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & (((\stage0_0|PC|Q[4]~5_combout\)))) # (!\stage0_0|PC|Q[4]~4_combout\ & ((\stage0_0|PC|Q[4]~5_combout\ & ((\incPC[1]~2_combout\))) # (!\stage0_0|PC|Q[4]~5_combout\ & 
-- (\stage3_1|forwarding|new_d1[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1[1]~22_combout\,
	datab => \incPC[1]~2_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \stage0_0|PC|Q[4]~5_combout\,
	combout => \m_51|o[1]~3_combout\);

-- Location: LCCOMB_X35_Y16_N10
\m_51|o[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[1]~4_combout\ = (\stage0_0|PC|Q[4]~4_combout\ & ((\m_51|o[1]~3_combout\ & ((\adder16_1|a0|fa1|s~2_combout\))) # (!\m_51|o[1]~3_combout\ & (\PR2_adderout|Q\(1))))) # (!\stage0_0|PC|Q[4]~4_combout\ & (((\m_51|o[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(1),
	datab => \adder16_1|a0|fa1|s~2_combout\,
	datac => \stage0_0|PC|Q[4]~4_combout\,
	datad => \m_51|o[1]~3_combout\,
	combout => \m_51|o[1]~4_combout\);

-- Location: LCCOMB_X35_Y16_N12
\m_51|o[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_51|o[1]~5_combout\ = (\m51_select~0_combout\ & (\stage5_1|m_50|o[1]~25_combout\)) # (!\m51_select~0_combout\ & ((\m_51|o[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m51_select~0_combout\,
	datac => \stage5_1|m_50|o[1]~25_combout\,
	datad => \m_51|o[1]~4_combout\,
	combout => \m_51|o[1]~5_combout\);

-- Location: FF_X35_Y16_N13
\stage0_0|PC|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_51|o[1]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage0_0|PC_WR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(1));

-- Location: LCCOMB_X36_Y14_N10
\stage0_0|InstrMem|RAM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~23_combout\ = (\stage0_0|PC|Q\(2) & ((\stage0_0|PC|Q\(1) & ((!\stage0_0|PC|Q\(3)) # (!\stage0_0|PC|Q\(0)))) # (!\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(0)) # (\stage0_0|PC|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~23_combout\);

-- Location: LCCOMB_X34_Y14_N4
\stage0_0|InstrMem|RAM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~24_combout\ = (\create_bubble2~combout\) # (!\stage0_0|InstrMem|RAM~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~23_combout\,
	datad => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~24_combout\);

-- Location: FF_X34_Y14_N5
\PR0_instr|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \pause~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(14));

-- Location: LCCOMB_X31_Y14_N24
\ctrl|output[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[0]~30_combout\ = (!\PR0_instr|Q\(15) & ((\PR0_instr|Q\(14) & ((!\PR0_instr|Q\(12)))) # (!\PR0_instr|Q\(14) & (\PR0_instr|Q\(13) & \PR0_instr|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(14),
	datab => \PR0_instr|Q\(15),
	datac => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|output[0]~30_combout\);

ww_output <= \output~output_o\;
END structure;


