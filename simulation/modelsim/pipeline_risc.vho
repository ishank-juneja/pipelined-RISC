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

-- DATE "11/29/2018 16:25:39"

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
	output : BUFFER std_logic
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
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \incPC[0]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \PR1_pc|Q[0]~feeder_combout\ : std_logic;
SIGNAL \incPC[0]~1\ : std_logic;
SIGNAL \incPC[1]~2_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa0|c~0_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~31_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~25_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~26_combout\ : std_logic;
SIGNAL \PR1_instr|Q[9]~feeder_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~29_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~32_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~28_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~27_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[0]~2_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[0]~3_combout\ : std_logic;
SIGNAL \ctrl|Equal10~4_combout\ : std_logic;
SIGNAL \stage2_2|m_23|o[0]~1_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[1]~0_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[1]~1_combout\ : std_logic;
SIGNAL \PR1_instr|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|m_23|o[1]~0_combout\ : std_logic;
SIGNAL \stage1_1|PE|output[2]~4_combout\ : std_logic;
SIGNAL \stage2_2|m_23|o[2]~2_combout\ : std_logic;
SIGNAL \PR4_rfa3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \m51_select~0_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~21_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~22_combout\ : std_logic;
SIGNAL \ctrl|Equal10~1_combout\ : std_logic;
SIGNAL \ctrl|output[7]~0_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[1]~0_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[0]~1_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~2_combout\ : std_logic;
SIGNAL \PR3_ctrl|Q[0]~feeder_combout\ : std_logic;
SIGNAL \create_bubble2~0_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~33_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~34_combout\ : std_logic;
SIGNAL \temp_instr[5]~2_combout\ : std_logic;
SIGNAL \m_2x|o[8]~0_combout\ : std_logic;
SIGNAL \PR0_pc|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PR0_pc|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[8]~feeder_combout\ : std_logic;
SIGNAL \m_2x|o[7]~1_combout\ : std_logic;
SIGNAL \PR0_pc|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[5]~feeder_combout\ : std_logic;
SIGNAL \temp_instr[4]~3_combout\ : std_logic;
SIGNAL \PR1_instr|Q[4]~feeder_combout\ : std_logic;
SIGNAL \incPC[3]~7\ : std_logic;
SIGNAL \incPC[4]~8_combout\ : std_logic;
SIGNAL \temp_instr[3]~4_combout\ : std_logic;
SIGNAL \PR1_instr|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PR0_pc|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[1]~16_cout\ : std_logic;
SIGNAL \PR2_adderout|Q[1]~18\ : std_logic;
SIGNAL \PR2_adderout|Q[2]~20\ : std_logic;
SIGNAL \PR2_adderout|Q[3]~22\ : std_logic;
SIGNAL \PR2_adderout|Q[4]~23_combout\ : std_logic;
SIGNAL \m3b_select~combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[4]~15_combout\ : std_logic;
SIGNAL \PR1_ctrl|Q[1]~1_combout\ : std_logic;
SIGNAL \PR2_ctrl|Q[1]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[4]~27_combout\ : std_logic;
SIGNAL \PR2_LS7|Q[11]~feeder_combout\ : std_logic;
SIGNAL \ctrl|Equal10~2_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[4]~29_combout\ : std_logic;
SIGNAL \stage2_2|m_22|o[2]~2_combout\ : std_logic;
SIGNAL \ctrl_edit|new_ctrl[8]~1_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~2_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~3_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[15]~23_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[15]~24_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr0~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[15]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr1~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r7_write~combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[15]~15_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr7~combout\ : std_logic;
SIGNAL \stage2_2|rf_1|wr6~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[15]~30_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[15]~31_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~23_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[15]~22_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[15]~14_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[11]~2_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[14]~feeder_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[14]~feeder_combout\ : std_logic;
SIGNAL \PR0_pc|Q[14]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[14]~0_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[14]~1_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[14]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[14]~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[14]~0_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[14]~1_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[14]~6_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[14]~0_combout\ : std_logic;
SIGNAL \ctrl|Equal10~3_combout\ : std_logic;
SIGNAL \temp_instr[6]~7_combout\ : std_logic;
SIGNAL \PR1_instr|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PR2_LS7|Q[13]~feeder_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[13]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[13]~2_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[13]~3_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[13]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[13]~1_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[13]~2_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[13]~3_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[11]~3_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~6_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[13]~7_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[13]~8_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[12]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[12]~4_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[12]~5_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[12]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[12]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[12]~2_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[12]~4_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[12]~5_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[12]~9_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[12]~10_combout\ : std_logic;
SIGNAL \PR3_pc|Q[11]~feeder_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[11]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[11]~6_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[11]~7_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[11]~3_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[11]~6_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[11]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[11]~7_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[11]~9_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[11]~3_combout\ : std_logic;
SIGNAL \PR2_LS7|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PR3_pc|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[10]~8_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[10]~9_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[10]~13_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[10]~14_combout\ : std_logic;
SIGNAL \PR2_LS7|Q[9]~feeder_combout\ : std_logic;
SIGNAL \PR0_pc|Q[9]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[9]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[9]~feeder_combout\ : std_logic;
SIGNAL \PR3_pc|Q[9]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[9]~10_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[9]~11_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[9]~15_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[9]~16_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PR3_pc|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[8]~12_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[8]~13_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r6|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[8]~6_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[8]~12_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[8]~13_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[8]~17_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[8]~18_combout\ : std_logic;
SIGNAL \PR3_LS7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PR3_pc|Q[7]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[7]~14_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[7]~15_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[7]~7_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[7]~14_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[7]~15_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[7]~19_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[7]~20_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[6]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[6]~16_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[6]~8_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[6]~16_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[6]~17_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1~5_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[6]~14_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[6]~8_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PR2_pc|Q[5]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[5]~17_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[5]~9_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[5]~18_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[5]~19_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[5]~15_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[5]~9_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[4]~10_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[4]~20_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[4]~21_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[4]~16_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[4]~10_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[3]~33_combout\ : std_logic;
SIGNAL \PR2_pc|Q[3]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[3]~31_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[3]~32_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[3]~34_combout\ : std_logic;
SIGNAL \PR2_pc|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PR3_pc|Q[2]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[2]~37_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[2]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[2]~20_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[2]~12_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[2]~24_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[2]~25_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[2]~36_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[2]~38_combout\ : std_logic;
SIGNAL \PR2_pc|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PR3_pc|Q[1]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[1]~45_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[1]~46_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~5_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[1]~21_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[1]~13_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[1]~26_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[1]~27_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[1]~47_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[1]~48_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~40_combout\ : std_logic;
SIGNAL \PR3_pc|Q[0]~feeder_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[0]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[0]~22_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[0]~14_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[0]~28_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[0]~29_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[0]~20_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[0]~21_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[0]~9_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~41_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~42_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~43_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[0]~44_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa0|c~0_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~1_cout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~2_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[1]~10_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[1]~39_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[1]~19_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[1]~13_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~3\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~4_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[2]~11_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[2]~35_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[2]~18_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[2]~12_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~5\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~6_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[3]~12_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[3]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[3]~19_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[3]~11_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[3]~22_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[3]~23_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[3]~17_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[3]~11_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~7\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~9\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~10_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[5]~14_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[5]~24_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[5]~25_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[5]~26_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~11\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~12_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[6]~13_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[6]~21_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[6]~22_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[6]~23_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~13\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~14_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[7]~6_combout\ : std_logic;
SIGNAL \PR3_aluout|Q[7]~feeder_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[7]~14_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[7]~15_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[7]~13_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[7]~7_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~15\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~16_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[8]~8_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[8]~12_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[8]~13_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[8]~12_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[8]~6_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~17\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~18_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[9]~7_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[9]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[9]~10_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[9]~11_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[9]~5_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[9]~10_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[9]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[9]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[9]~11_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[9]~11_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[9]~5_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~19\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~20_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[10]~4_combout\ : std_logic;
SIGNAL \PR4_aluout|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[10]~8_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[10]~9_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1_2|o[10]~4_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[10]~8_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r1|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|r0|Q[10]~feeder_combout\ : std_logic;
SIGNAL \stage2_2|rf_1|M1|output[10]~9_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[10]~10_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[10]~4_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~21\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~22_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[11]~3_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[11]~6_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[11]~7_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[11]~11_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[11]~12_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~23\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~24_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[12]~5_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[12]~4_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[12]~5_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[12]~8_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[12]~2_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~25\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~26_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[13]~2_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[13]~2_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[13]~3_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d1[13]~7_combout\ : std_logic;
SIGNAL \stage3_1|m_32|o[13]~1_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~27\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~28_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[14]~0_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[14]~0_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[14]~1_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[14]~4_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[14]~6_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~29\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~31\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~32_combout\ : std_logic;
SIGNAL \carry_flag|Q~0_combout\ : std_logic;
SIGNAL \carry_flag|Q~q\ : std_logic;
SIGNAL \zero_flag|Q~0_combout\ : std_logic;
SIGNAL \zero_flag|Q~1_combout\ : std_logic;
SIGNAL \zero_flag|Q~q\ : std_logic;
SIGNAL \ctrl_edit|x~0_combout\ : std_logic;
SIGNAL \ctrl_edit|new_ctrl[2]~0_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|new_d2~3_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[11]~5_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[4]~28_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[4]~30_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~8_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[4]~15_combout\ : std_logic;
SIGNAL \stage5_1|m_50|o[4]~18_combout\ : std_logic;
SIGNAL \PR0_pc|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PR1_pc|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[4]~24\ : std_logic;
SIGNAL \PR2_adderout|Q[5]~25_combout\ : std_logic;
SIGNAL \incPC[4]~9\ : std_logic;
SIGNAL \incPC[5]~10_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[5]~14_combout\ : std_logic;
SIGNAL \incPC[5]~11\ : std_logic;
SIGNAL \incPC[6]~12_combout\ : std_logic;
SIGNAL \m_2x|o[6]~2_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[5]~26\ : std_logic;
SIGNAL \PR2_adderout|Q[6]~27_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[6]~13_combout\ : std_logic;
SIGNAL \PR1_pc|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[6]~28\ : std_logic;
SIGNAL \PR2_adderout|Q[7]~29_combout\ : std_logic;
SIGNAL \incPC[6]~13\ : std_logic;
SIGNAL \incPC[7]~14_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[7]~12_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[7]~30\ : std_logic;
SIGNAL \PR2_adderout|Q[8]~31_combout\ : std_logic;
SIGNAL \incPC[7]~15\ : std_logic;
SIGNAL \incPC[8]~16_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[8]~11_combout\ : std_logic;
SIGNAL \incPC[8]~17\ : std_logic;
SIGNAL \incPC[9]~18_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[8]~32\ : std_logic;
SIGNAL \PR2_adderout|Q[9]~33_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[9]~10_combout\ : std_logic;
SIGNAL \incPC[9]~19\ : std_logic;
SIGNAL \incPC[10]~20_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[9]~34\ : std_logic;
SIGNAL \PR2_adderout|Q[10]~35_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[10]~5_combout\ : std_logic;
SIGNAL \PR1_pc|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[10]~36\ : std_logic;
SIGNAL \PR2_adderout|Q[11]~37_combout\ : std_logic;
SIGNAL \incPC[10]~21\ : std_logic;
SIGNAL \incPC[11]~22_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[11]~4_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[11]~38\ : std_logic;
SIGNAL \PR2_adderout|Q[12]~39_combout\ : std_logic;
SIGNAL \incPC[11]~23\ : std_logic;
SIGNAL \incPC[12]~24_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[12]~6_combout\ : std_logic;
SIGNAL \incPC[12]~25\ : std_logic;
SIGNAL \incPC[13]~26_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[12]~40\ : std_logic;
SIGNAL \PR2_adderout|Q[13]~41_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[13]~7_combout\ : std_logic;
SIGNAL \incPC[13]~27\ : std_logic;
SIGNAL \incPC[14]~28_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[13]~42\ : std_logic;
SIGNAL \PR2_adderout|Q[14]~43_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[14]~8_combout\ : std_logic;
SIGNAL \incPC[14]~29\ : std_logic;
SIGNAL \incPC[15]~30_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[14]~44\ : std_logic;
SIGNAL \PR2_adderout|Q[15]~45_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[15]~9_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[15]~16_combout\ : std_logic;
SIGNAL \stage3_1|forwarding|stage4_d3[15]~17_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[15]~49_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[15]~50_combout\ : std_logic;
SIGNAL \stage3_1|m_34|o[15]~51_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|A|a0|fa1|s~30_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|M|o[15]~1_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~0_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~1_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~2_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~3_combout\ : std_logic;
SIGNAL \stage3_1|alu_1|zero~4_combout\ : std_logic;
SIGNAL \create_bubble2~combout\ : std_logic;
SIGNAL \temp_instr[1]~6_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[1]~17_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[1]~1_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~30_combout\ : std_logic;
SIGNAL \temp_instr[0]~5_combout\ : std_logic;
SIGNAL \adder16_1|a0|fa0|s~0_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[0]~0_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~23_combout\ : std_logic;
SIGNAL \temp_instr[13]~0_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[2]~19_combout\ : std_logic;
SIGNAL \incPC[1]~3\ : std_logic;
SIGNAL \incPC[2]~4_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[2]~2_combout\ : std_logic;
SIGNAL \incPC[2]~5\ : std_logic;
SIGNAL \incPC[3]~6_combout\ : std_logic;
SIGNAL \PR2_adderout|Q[3]~21_combout\ : std_logic;
SIGNAL \stage0_0|PC|Q[3]~3_combout\ : std_logic;
SIGNAL \stage0_0|InstrMem|RAM~24_combout\ : std_logic;
SIGNAL \temp_instr[15]~1_combout\ : std_logic;
SIGNAL \ctrl|Equal10~0_combout\ : std_logic;
SIGNAL \PR1_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR1_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR0_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR1_pe|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r6|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR0_mux|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR4_rfa3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR1_instr|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_rfa3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR0_instr|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_adderout|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage0_0|PC|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR4_aluout|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_rfa1|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR3_aluout|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR3_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR4_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR4_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \stage2_2|rf_1|r0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_d1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_rfa2|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR2_LS7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR1_ctrl|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_rfa3|Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PR4_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PR2_pc|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_create_bubble2~0_combout\ : std_logic;
SIGNAL \ALT_INV_create_bubble2~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_create_bubble2~0_combout\ <= NOT \create_bubble2~0_combout\;
\ALT_INV_create_bubble2~combout\ <= NOT \create_bubble2~combout\;

-- Location: IOOBUF_X38_Y34_N16
\output~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl|Equal10~0_combout\,
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

-- Location: LCCOMB_X37_Y17_N0
\incPC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[0]~0_combout\ = \stage0_0|PC|Q\(0) $ (VCC)
-- \incPC[0]~1\ = CARRY(\stage0_0|PC|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(0),
	datad => VCC,
	combout => \incPC[0]~0_combout\,
	cout => \incPC[0]~1\);

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

-- Location: FF_X32_Y15_N17
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(0));

-- Location: LCCOMB_X32_Y15_N2
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

-- Location: FF_X32_Y15_N3
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(0));

-- Location: LCCOMB_X37_Y17_N2
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

-- Location: LCCOMB_X31_Y15_N30
\adder16_1|a0|fa0|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder16_1|a0|fa0|c~0_combout\ = (\PR1_pc|Q\(0) & \PR1_LS7|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(0),
	datad => \PR1_LS7|Q\(7),
	combout => \adder16_1|a0|fa0|c~0_combout\);

-- Location: LCCOMB_X32_Y16_N28
\stage0_0|InstrMem|RAM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~31_combout\ = (\stage0_0|PC|Q\(3) & (\stage0_0|PC|Q\(0) $ (((!\stage0_0|PC|Q\(1) & !\stage0_0|PC|Q\(2)))))) # (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(0) & ((!\stage0_0|PC|Q\(2)) # (!\stage0_0|PC|Q\(1)))) # (!\stage0_0|PC|Q\(0) & 
-- ((\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(0),
	datab => \stage0_0|PC|Q\(3),
	datac => \stage0_0|PC|Q\(1),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~31_combout\);

-- Location: LCCOMB_X35_Y17_N4
\stage0_0|InstrMem|RAM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~25_combout\ = (\stage0_0|PC|Q\(2) & (((!\stage0_0|PC|Q\(3) & !\stage0_0|PC|Q\(1))))) # (!\stage0_0|PC|Q\(2) & ((\stage0_0|PC|Q\(3) & ((!\stage0_0|PC|Q\(1)))) # (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(0)) # (\stage0_0|PC|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(0),
	datab => \stage0_0|PC|Q\(2),
	datac => \stage0_0|PC|Q\(3),
	datad => \stage0_0|PC|Q\(1),
	combout => \stage0_0|InstrMem|RAM~25_combout\);

-- Location: LCCOMB_X35_Y17_N22
\stage0_0|InstrMem|RAM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~26_combout\ = (\stage0_0|InstrMem|RAM~25_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|InstrMem|RAM~25_combout\,
	datad => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~26_combout\);

-- Location: FF_X35_Y17_N23
\PR0_instr|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(9));

-- Location: LCCOMB_X34_Y17_N4
\PR1_instr|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_instr|Q[9]~feeder_combout\ = \PR0_instr|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR0_instr|Q\(9),
	combout => \PR1_instr|Q[9]~feeder_combout\);

-- Location: FF_X34_Y17_N5
\PR1_instr|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_instr|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(9));

-- Location: LCCOMB_X36_Y17_N26
\stage0_0|InstrMem|RAM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~29_combout\ = (\stage0_0|PC|Q\(1) & (((!\stage0_0|PC|Q\(2))))) # (!\stage0_0|PC|Q\(1) & (!\stage0_0|PC|Q\(3) & (\stage0_0|PC|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(1),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~29_combout\);

-- Location: FF_X36_Y17_N27
\PR0_mux|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(4));

-- Location: LCCOMB_X36_Y17_N2
\stage0_0|InstrMem|RAM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~32_combout\ = (\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(3)) # ((!\stage0_0|PC|Q\(2)) # (!\stage0_0|PC|Q\(0))))) # (!\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(2)) # ((!\stage0_0|PC|Q\(3) & \stage0_0|PC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(1),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~32_combout\);

-- Location: FF_X36_Y17_N3
\PR0_mux|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(6));

-- Location: LCCOMB_X36_Y17_N4
\stage0_0|InstrMem|RAM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~28_combout\ = (\stage0_0|PC|Q\(3) & (\stage0_0|PC|Q\(0) & (\stage0_0|PC|Q\(1) & !\stage0_0|PC|Q\(2)))) # (!\stage0_0|PC|Q\(3) & (\stage0_0|PC|Q\(1) $ (((\stage0_0|PC|Q\(0)) # (\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(1),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~28_combout\);

-- Location: FF_X36_Y17_N5
\PR0_mux|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(3));

-- Location: LCCOMB_X36_Y17_N28
\stage0_0|InstrMem|RAM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~27_combout\ = (\stage0_0|PC|Q\(3) & (!\stage0_0|PC|Q\(0) & ((\stage0_0|PC|Q\(2))))) # (!\stage0_0|PC|Q\(3) & (\stage0_0|PC|Q\(2) $ (((\stage0_0|PC|Q\(0)) # (\stage0_0|PC|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(1),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~27_combout\);

-- Location: FF_X36_Y17_N29
\PR0_mux|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(5));

-- Location: LCCOMB_X36_Y17_N12
\stage1_1|PE|output[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[0]~2_combout\ = (\PR0_mux|Q\(3)) # ((!\PR0_mux|Q\(4) & ((\PR0_mux|Q\(5)) # (!\PR0_mux|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(4),
	datab => \PR0_mux|Q\(6),
	datac => \PR0_mux|Q\(3),
	datad => \PR0_mux|Q\(5),
	combout => \stage1_1|PE|output[0]~2_combout\);

-- Location: FF_X32_Y15_N25
\PR0_mux|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(0));

-- Location: FF_X32_Y16_N29
\PR0_mux|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(1));

-- Location: FF_X32_Y15_N29
\PR0_mux|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_mux|Q\(2));

-- Location: LCCOMB_X32_Y15_N4
\stage1_1|PE|output[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[0]~3_combout\ = (!\PR0_mux|Q\(0) & ((\PR0_mux|Q\(1)) # ((\stage1_1|PE|output[0]~2_combout\ & !\PR0_mux|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1_1|PE|output[0]~2_combout\,
	datab => \PR0_mux|Q\(0),
	datac => \PR0_mux|Q\(1),
	datad => \PR0_mux|Q\(2),
	combout => \stage1_1|PE|output[0]~3_combout\);

-- Location: FF_X32_Y15_N5
\PR1_pe|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage1_1|PE|output[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pe|Q\(0));

-- Location: LCCOMB_X32_Y17_N22
\ctrl|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~4_combout\ = (!\PR0_instr|Q\(10) & !\PR0_instr|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(10),
	datad => \PR0_instr|Q\(13),
	combout => \ctrl|Equal10~4_combout\);

-- Location: FF_X32_Y17_N23
\PR1_ctrl|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|Equal10~4_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(8));

-- Location: LCCOMB_X29_Y19_N14
\stage2_2|m_23|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_23|o[0]~1_combout\ = (\PR1_ctrl|Q\(8) & (\PR1_instr|Q\(9))) # (!\PR1_ctrl|Q\(8) & ((\PR1_pe|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datac => \PR1_pe|Q\(0),
	datad => \PR1_ctrl|Q\(8),
	combout => \stage2_2|m_23|o[0]~1_combout\);

-- Location: FF_X29_Y19_N15
\PR2_rfa3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|m_23|o[0]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa3|Q\(0));

-- Location: FF_X31_Y19_N9
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

-- Location: FF_X31_Y19_N3
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

-- Location: LCCOMB_X35_Y15_N8
\stage1_1|PE|output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[1]~0_combout\ = (\PR0_mux|Q\(2)) # ((\PR0_mux|Q\(3)) # ((!\PR0_mux|Q\(4) & !\PR0_mux|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(4),
	datab => \PR0_mux|Q\(5),
	datac => \PR0_mux|Q\(2),
	datad => \PR0_mux|Q\(3),
	combout => \stage1_1|PE|output[1]~0_combout\);

-- Location: LCCOMB_X32_Y15_N22
\stage1_1|PE|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[1]~1_combout\ = (!\PR0_mux|Q\(0) & (!\PR0_mux|Q\(1) & \stage1_1|PE|output[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR0_mux|Q\(0),
	datac => \PR0_mux|Q\(1),
	datad => \stage1_1|PE|output[1]~0_combout\,
	combout => \stage1_1|PE|output[1]~1_combout\);

-- Location: FF_X32_Y15_N23
\PR1_pe|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage1_1|PE|output[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pe|Q\(1));

-- Location: LCCOMB_X34_Y16_N20
\PR1_instr|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_instr|Q[10]~feeder_combout\ = \PR0_instr|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(10),
	combout => \PR1_instr|Q[10]~feeder_combout\);

-- Location: FF_X34_Y16_N21
\PR1_instr|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_instr|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(10));

-- Location: LCCOMB_X32_Y19_N26
\stage2_2|m_23|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_23|o[1]~0_combout\ = (\PR1_ctrl|Q\(8) & ((\PR1_instr|Q\(10)))) # (!\PR1_ctrl|Q\(8) & (\PR1_pe|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pe|Q\(1),
	datac => \PR1_instr|Q\(10),
	datad => \PR1_ctrl|Q\(8),
	combout => \stage2_2|m_23|o[1]~0_combout\);

-- Location: FF_X32_Y19_N27
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

-- Location: FF_X31_Y19_N27
\PR3_rfa3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_rfa3|Q\(1),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_rfa3|Q\(1));

-- Location: FF_X31_Y19_N13
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

-- Location: LCCOMB_X32_Y15_N10
\stage1_1|PE|output[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|PE|output[2]~4_combout\ = (!\PR0_mux|Q\(2) & (!\PR0_mux|Q\(1) & (!\PR0_mux|Q\(3) & !\PR0_mux|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_mux|Q\(2),
	datab => \PR0_mux|Q\(1),
	datac => \PR0_mux|Q\(3),
	datad => \PR0_mux|Q\(0),
	combout => \stage1_1|PE|output[2]~4_combout\);

-- Location: FF_X32_Y15_N11
\PR1_pe|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage1_1|PE|output[2]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pe|Q\(2));

-- Location: LCCOMB_X32_Y19_N20
\stage2_2|m_23|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_23|o[2]~2_combout\ = (\PR1_ctrl|Q\(8) & ((\PR1_instr|Q\(10)))) # (!\PR1_ctrl|Q\(8) & (\PR1_pe|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_ctrl|Q\(8),
	datac => \PR1_pe|Q\(2),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|m_23|o[2]~2_combout\);

-- Location: FF_X32_Y19_N21
\PR2_rfa3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|m_23|o[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa3|Q\(2));

-- Location: FF_X31_Y19_N25
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

-- Location: LCCOMB_X31_Y19_N4
\PR4_rfa3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_rfa3|Q[2]~feeder_combout\ = \PR3_rfa3|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_rfa3|Q\(2),
	combout => \PR4_rfa3|Q[2]~feeder_combout\);

-- Location: FF_X31_Y19_N5
\PR4_rfa3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_rfa3|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_rfa3|Q\(2));

-- Location: LCCOMB_X34_Y16_N4
\m51_select~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m51_select~0_combout\ = (\PR4_rfa3|Q\(0) & (\PR4_rfa3|Q\(1) & \PR4_rfa3|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR4_rfa3|Q\(0),
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_rfa3|Q\(2),
	combout => \m51_select~0_combout\);

-- Location: LCCOMB_X36_Y16_N24
\stage0_0|InstrMem|RAM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~21_combout\ = (\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(0) & ((!\stage0_0|PC|Q\(2)))) # (!\stage0_0|PC|Q\(0) & ((\stage0_0|PC|Q\(1)) # (\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(3),
	datac => \stage0_0|PC|Q\(0),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~21_combout\);

-- Location: LCCOMB_X32_Y17_N10
\stage0_0|InstrMem|RAM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~22_combout\ = (\create_bubble2~combout\) # (!\stage0_0|InstrMem|RAM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~21_combout\,
	datac => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~22_combout\);

-- Location: FF_X32_Y17_N11
\PR0_instr|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(12));

-- Location: LCCOMB_X32_Y18_N30
\ctrl|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~1_combout\ = (!\PR0_instr|Q\(13) & (\PR0_instr|Q\(10) & !\PR0_instr|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(13),
	datab => \PR0_instr|Q\(10),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|Equal10~1_combout\);

-- Location: FF_X31_Y17_N9
\PR1_ctrl|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctrl|Equal10~1_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(10));

-- Location: FF_X31_Y17_N25
\PR2_ctrl|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(10),
	clrn => \ALT_INV_create_bubble2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(10));

-- Location: LCCOMB_X32_Y17_N18
\ctrl|output[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|output[7]~0_combout\ = (!\PR0_instr|Q\(10) & ((!\PR0_instr|Q\(12)) # (!\PR0_instr|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(10),
	datab => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|output[7]~0_combout\);

-- Location: FF_X32_Y17_N19
\PR1_ctrl|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|output[7]~0_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(7));

-- Location: LCCOMB_X32_Y19_N14
\stage2_2|m_22|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[1]~0_combout\ = (\PR1_ctrl|Q\(7) & (\PR1_instr|Q\(10))) # (!\PR1_ctrl|Q\(7) & ((\PR1_pe|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \PR1_ctrl|Q\(7),
	datad => \PR1_pe|Q\(1),
	combout => \stage2_2|m_22|o[1]~0_combout\);

-- Location: FF_X31_Y19_N29
\PR2_rfa2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_22|o[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa2|Q\(1));

-- Location: LCCOMB_X32_Y19_N12
\stage2_2|m_22|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[0]~1_combout\ = (\PR1_ctrl|Q\(7) & (\PR1_instr|Q\(9))) # (!\PR1_ctrl|Q\(7) & ((\PR1_pe|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datab => \PR1_ctrl|Q\(7),
	datad => \PR1_pe|Q\(0),
	combout => \stage2_2|m_22|o[0]~1_combout\);

-- Location: FF_X31_Y19_N21
\PR2_rfa2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_22|o[0]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa2|Q\(0));

-- Location: LCCOMB_X31_Y19_N8
\stage3_1|forwarding|new_d2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~2_combout\ = (\PR3_rfa3|Q\(1) & (\PR2_rfa2|Q\(1) & (\PR3_rfa3|Q\(0) $ (!\PR2_rfa2|Q\(0))))) # (!\PR3_rfa3|Q\(1) & (!\PR2_rfa2|Q\(1) & (\PR3_rfa3|Q\(0) $ (!\PR2_rfa2|Q\(0)))))

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
	combout => \stage3_1|forwarding|new_d2~2_combout\);

-- Location: FF_X32_Y17_N25
\PR1_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|Equal10~0_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(0));

-- Location: FF_X31_Y17_N17
\PR2_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(0),
	clrn => \ALT_INV_create_bubble2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(0));

-- Location: LCCOMB_X30_Y19_N2
\PR3_ctrl|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_ctrl|Q[0]~feeder_combout\ = \PR2_ctrl|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_ctrl|Q\(0),
	combout => \PR3_ctrl|Q[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y16_N18
\create_bubble2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \create_bubble2~0_combout\ = (\rst~input_o\) # ((\PR4_rfa3|Q\(0) & (\PR4_rfa3|Q\(1) & \PR4_rfa3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \PR4_rfa3|Q\(0),
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_rfa3|Q\(2),
	combout => \create_bubble2~0_combout\);

-- Location: FF_X30_Y19_N3
\PR3_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_ctrl|Q[0]~feeder_combout\,
	clrn => \ALT_INV_create_bubble2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(0));

-- Location: LCCOMB_X36_Y16_N22
\stage0_0|InstrMem|RAM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~33_combout\ = (\stage0_0|PC|Q\(3) & (((\stage0_0|PC|Q\(0) & \stage0_0|PC|Q\(2))))) # (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(1) & ((!\stage0_0|PC|Q\(2)) # (!\stage0_0|PC|Q\(0)))) # (!\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(0)) # 
-- (\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(1),
	datab => \stage0_0|PC|Q\(3),
	datac => \stage0_0|PC|Q\(0),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~33_combout\);

-- Location: LCCOMB_X32_Y16_N16
\stage0_0|InstrMem|RAM~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~34_combout\ = (\stage0_0|InstrMem|RAM~33_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|InstrMem|RAM~33_combout\,
	datad => \create_bubble2~combout\,
	combout => \stage0_0|InstrMem|RAM~34_combout\);

-- Location: FF_X32_Y16_N17
\PR0_instr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|InstrMem|RAM~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(8));

-- Location: FF_X31_Y15_N27
\PR1_instr|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(8));

-- Location: FF_X31_Y15_N15
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

-- Location: FF_X31_Y15_N5
\PR3_LS7|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_LS7|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(15));

-- Location: LCCOMB_X36_Y17_N6
\temp_instr[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[5]~2_combout\ = (\stage0_0|InstrMem|RAM~27_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~27_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[5]~2_combout\);

-- Location: FF_X36_Y17_N7
\PR0_instr|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(5));

-- Location: FF_X37_Y17_N11
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(5));

-- Location: LCCOMB_X31_Y15_N0
\m_2x|o[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2x|o[8]~0_combout\ = (\PR1_ctrl|Q\(10) & ((\PR1_instr|Q\(5)))) # (!\PR1_ctrl|Q\(10) & (\PR1_instr|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(8),
	datab => \PR1_ctrl|Q\(10),
	datad => \PR1_instr|Q\(5),
	combout => \m_2x|o[8]~0_combout\);

-- Location: LCCOMB_X35_Y17_N28
\PR0_pc|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[12]~feeder_combout\ = \stage0_0|PC|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0_0|PC|Q\(12),
	combout => \PR0_pc|Q[12]~feeder_combout\);

-- Location: FF_X35_Y17_N29
\PR0_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(12));

-- Location: LCCOMB_X35_Y17_N6
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

-- Location: FF_X35_Y17_N7
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(12));

-- Location: LCCOMB_X34_Y17_N24
\PR0_pc|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[8]~feeder_combout\ = \stage0_0|PC|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(8),
	combout => \PR0_pc|Q[8]~feeder_combout\);

-- Location: FF_X34_Y17_N25
\PR0_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(8));

-- Location: LCCOMB_X34_Y17_N18
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

-- Location: FF_X34_Y17_N19
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(8));

-- Location: LCCOMB_X31_Y15_N18
\m_2x|o[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2x|o[7]~1_combout\ = (\PR1_ctrl|Q\(10) & ((\PR1_instr|Q\(5)))) # (!\PR1_ctrl|Q\(10) & (\PR1_instr|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \PR1_ctrl|Q\(10),
	datad => \PR1_instr|Q\(5),
	combout => \m_2x|o[7]~1_combout\);

-- Location: LCCOMB_X36_Y17_N22
\PR0_pc|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[5]~feeder_combout\ = \stage0_0|PC|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(5),
	combout => \PR0_pc|Q[5]~feeder_combout\);

-- Location: FF_X36_Y17_N23
\PR0_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(5));

-- Location: LCCOMB_X35_Y17_N30
\PR1_pc|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[5]~feeder_combout\ = \PR0_pc|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(5),
	combout => \PR1_pc|Q[5]~feeder_combout\);

-- Location: FF_X35_Y17_N31
\PR1_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(5));

-- Location: LCCOMB_X36_Y17_N30
\temp_instr[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[4]~3_combout\ = (\stage0_0|InstrMem|RAM~29_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~29_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[4]~3_combout\);

-- Location: FF_X36_Y17_N31
\PR0_instr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(4));

-- Location: LCCOMB_X36_Y18_N4
\PR1_instr|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_instr|Q[4]~feeder_combout\ = \PR0_instr|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(4),
	combout => \PR1_instr|Q[4]~feeder_combout\);

-- Location: FF_X36_Y18_N5
\PR1_instr|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_instr|Q[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(4));

-- Location: LCCOMB_X37_Y17_N6
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

-- Location: LCCOMB_X37_Y17_N8
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

-- Location: FF_X32_Y16_N15
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(3));

-- Location: FF_X31_Y16_N11
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(3));

-- Location: LCCOMB_X32_Y17_N2
\temp_instr[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[3]~4_combout\ = (\stage0_0|InstrMem|RAM~28_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~28_combout\,
	datac => \create_bubble2~combout\,
	combout => \temp_instr[3]~4_combout\);

-- Location: FF_X32_Y17_N3
\PR0_instr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(3));

-- Location: LCCOMB_X34_Y18_N6
\PR1_instr|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_instr|Q[3]~feeder_combout\ = \PR0_instr|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(3),
	combout => \PR1_instr|Q[3]~feeder_combout\);

-- Location: FF_X34_Y18_N7
\PR1_instr|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_instr|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(3));

-- Location: FF_X37_Y17_N23
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(2));

-- Location: LCCOMB_X36_Y17_N0
\PR1_pc|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[2]~feeder_combout\ = \PR0_pc|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(2),
	combout => \PR1_pc|Q[2]~feeder_combout\);

-- Location: FF_X36_Y17_N1
\PR1_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(2));

-- Location: LCCOMB_X34_Y18_N12
\PR0_pc|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[1]~feeder_combout\ = \stage0_0|PC|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(1),
	combout => \PR0_pc|Q[1]~feeder_combout\);

-- Location: FF_X34_Y18_N13
\PR0_pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(1));

-- Location: LCCOMB_X34_Y18_N16
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

-- Location: FF_X34_Y18_N17
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(1));

-- Location: LCCOMB_X35_Y18_N0
\PR2_adderout|Q[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[1]~16_cout\ = CARRY(\PR1_pc|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(1),
	datad => VCC,
	cout => \PR2_adderout|Q[1]~16_cout\);

-- Location: LCCOMB_X35_Y18_N2
\PR2_adderout|Q[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[1]~17_combout\ = (\adder16_1|a0|fa0|c~0_combout\ & ((\PR1_LS7|Q\(8) & (\PR2_adderout|Q[1]~16_cout\ & VCC)) # (!\PR1_LS7|Q\(8) & (!\PR2_adderout|Q[1]~16_cout\)))) # (!\adder16_1|a0|fa0|c~0_combout\ & ((\PR1_LS7|Q\(8) & 
-- (!\PR2_adderout|Q[1]~16_cout\)) # (!\PR1_LS7|Q\(8) & ((\PR2_adderout|Q[1]~16_cout\) # (GND)))))
-- \PR2_adderout|Q[1]~18\ = CARRY((\adder16_1|a0|fa0|c~0_combout\ & (!\PR1_LS7|Q\(8) & !\PR2_adderout|Q[1]~16_cout\)) # (!\adder16_1|a0|fa0|c~0_combout\ & ((!\PR2_adderout|Q[1]~16_cout\) # (!\PR1_LS7|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adder16_1|a0|fa0|c~0_combout\,
	datab => \PR1_LS7|Q\(8),
	datad => VCC,
	cin => \PR2_adderout|Q[1]~16_cout\,
	combout => \PR2_adderout|Q[1]~17_combout\,
	cout => \PR2_adderout|Q[1]~18\);

-- Location: LCCOMB_X35_Y18_N4
\PR2_adderout|Q[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[2]~19_combout\ = ((\PR1_LS7|Q\(9) $ (\PR1_pc|Q\(2) $ (!\PR2_adderout|Q[1]~18\)))) # (GND)
-- \PR2_adderout|Q[2]~20\ = CARRY((\PR1_LS7|Q\(9) & ((\PR1_pc|Q\(2)) # (!\PR2_adderout|Q[1]~18\))) # (!\PR1_LS7|Q\(9) & (\PR1_pc|Q\(2) & !\PR2_adderout|Q[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_LS7|Q\(9),
	datab => \PR1_pc|Q\(2),
	datad => VCC,
	cin => \PR2_adderout|Q[1]~18\,
	combout => \PR2_adderout|Q[2]~19_combout\,
	cout => \PR2_adderout|Q[2]~20\);

-- Location: LCCOMB_X35_Y18_N6
\PR2_adderout|Q[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[3]~21_combout\ = (\PR1_pc|Q\(3) & ((\PR1_instr|Q\(3) & (\PR2_adderout|Q[2]~20\ & VCC)) # (!\PR1_instr|Q\(3) & (!\PR2_adderout|Q[2]~20\)))) # (!\PR1_pc|Q\(3) & ((\PR1_instr|Q\(3) & (!\PR2_adderout|Q[2]~20\)) # (!\PR1_instr|Q\(3) & 
-- ((\PR2_adderout|Q[2]~20\) # (GND)))))
-- \PR2_adderout|Q[3]~22\ = CARRY((\PR1_pc|Q\(3) & (!\PR1_instr|Q\(3) & !\PR2_adderout|Q[2]~20\)) # (!\PR1_pc|Q\(3) & ((!\PR2_adderout|Q[2]~20\) # (!\PR1_instr|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(3),
	datab => \PR1_instr|Q\(3),
	datad => VCC,
	cin => \PR2_adderout|Q[2]~20\,
	combout => \PR2_adderout|Q[3]~21_combout\,
	cout => \PR2_adderout|Q[3]~22\);

-- Location: LCCOMB_X35_Y18_N8
\PR2_adderout|Q[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[4]~23_combout\ = ((\PR1_instr|Q\(4) $ (\PR1_pc|Q\(4) $ (!\PR2_adderout|Q[3]~22\)))) # (GND)
-- \PR2_adderout|Q[4]~24\ = CARRY((\PR1_instr|Q\(4) & ((\PR1_pc|Q\(4)) # (!\PR2_adderout|Q[3]~22\))) # (!\PR1_instr|Q\(4) & (\PR1_pc|Q\(4) & !\PR2_adderout|Q[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(4),
	datab => \PR1_pc|Q\(4),
	datad => VCC,
	cin => \PR2_adderout|Q[3]~22\,
	combout => \PR2_adderout|Q[4]~23_combout\,
	cout => \PR2_adderout|Q[4]~24\);

-- Location: FF_X35_Y18_N9
\PR2_adderout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[4]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(4));

-- Location: LCCOMB_X31_Y17_N22
m3b_select : cycloneive_lcell_comb
-- Equation(s):
-- \m3b_select~combout\ = (\PR2_ctrl|Q\(10) & !\stage3_1|alu_1|zero~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR2_ctrl|Q\(10),
	datad => \stage3_1|alu_1|zero~4_combout\,
	combout => \m3b_select~combout\);

-- Location: LCCOMB_X34_Y17_N2
\stage0_0|PC|Q[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[4]~15_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(4)))) # (!\m3b_select~combout\ & (\incPC[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[4]~8_combout\,
	datab => \PR2_adderout|Q\(4),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[4]~15_combout\);

-- Location: LCCOMB_X32_Y17_N12
\PR1_ctrl|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_ctrl|Q[1]~1_combout\ = !\PR0_instr|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_instr|Q\(10),
	combout => \PR1_ctrl|Q[1]~1_combout\);

-- Location: FF_X32_Y17_N13
\PR1_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_ctrl|Q[1]~1_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(1));

-- Location: LCCOMB_X30_Y19_N4
\PR2_ctrl|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_ctrl|Q[1]~feeder_combout\ = \PR1_ctrl|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_ctrl|Q\(1),
	combout => \PR2_ctrl|Q[1]~feeder_combout\);

-- Location: FF_X30_Y19_N5
\PR2_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_ctrl|Q[1]~feeder_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(1));

-- Location: FF_X30_Y19_N19
\PR3_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_ctrl|Q\(1),
	clrn => \ALT_INV_create_bubble2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(1));

-- Location: FF_X31_Y18_N3
\PR2_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(4),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(4));

-- Location: FF_X30_Y18_N27
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

-- Location: LCCOMB_X30_Y18_N26
\stage3_1|m_34|o[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[4]~27_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(4))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(1),
	datab => \PR3_aluout|Q\(4),
	datac => \PR3_pc|Q\(4),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|m_34|o[4]~27_combout\);

-- Location: LCCOMB_X30_Y18_N2
\PR2_LS7|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_LS7|Q[11]~feeder_combout\ = \PR1_instr|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_instr|Q\(4),
	combout => \PR2_LS7|Q[11]~feeder_combout\);

-- Location: FF_X30_Y18_N3
\PR2_LS7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_LS7|Q[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(11));

-- Location: LCCOMB_X32_Y17_N16
\ctrl|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~2_combout\ = (!\PR0_instr|Q\(10) & (!\PR0_instr|Q\(13) & \PR0_instr|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(10),
	datab => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|Equal10~2_combout\);

-- Location: FF_X32_Y17_N17
\PR1_ctrl|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|Equal10~2_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(9));

-- Location: FF_X31_Y19_N17
\PR2_ctrl|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(9),
	clrn => \ALT_INV_create_bubble2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(9));

-- Location: LCCOMB_X30_Y18_N4
\stage3_1|m_34|o[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[4]~29_combout\ = (\PR2_LS7|Q\(11) & \PR2_ctrl|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR2_LS7|Q\(11),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[4]~29_combout\);

-- Location: LCCOMB_X32_Y19_N10
\stage2_2|m_22|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|m_22|o[2]~2_combout\ = (\PR1_ctrl|Q\(7) & ((\PR1_instr|Q\(10)))) # (!\PR1_ctrl|Q\(7) & (\PR1_pe|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_ctrl|Q\(7),
	datac => \PR1_pe|Q\(2),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|m_22|o[2]~2_combout\);

-- Location: FF_X31_Y19_N23
\PR2_rfa2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage2_2|m_22|o[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa2|Q\(2));

-- Location: FF_X32_Y19_N17
\PR2_ctrl|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(7),
	clrn => \ALT_INV_create_bubble2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(7));

-- Location: FF_X32_Y19_N13
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

-- Location: FF_X30_Y19_N29
\PR2_ctrl|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(8),
	clrn => \ALT_INV_create_bubble2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(8));

-- Location: LCCOMB_X30_Y19_N28
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

-- Location: FF_X31_Y19_N11
\PR2_rfa1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_instr|Q\(10),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa1|Q\(1));

-- Location: FF_X31_Y19_N7
\PR2_rfa1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_instr|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_rfa1|Q\(0));

-- Location: LCCOMB_X31_Y19_N26
\stage3_1|forwarding|new_d1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~2_combout\ = (\PR2_rfa1|Q\(0) & (\PR3_rfa3|Q\(0) & (\PR3_rfa3|Q\(1) $ (!\PR2_rfa1|Q\(1))))) # (!\PR2_rfa1|Q\(0) & (!\PR3_rfa3|Q\(0) & (\PR3_rfa3|Q\(1) $ (!\PR2_rfa1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_rfa1|Q\(0),
	datab => \PR3_rfa3|Q\(0),
	datac => \PR3_rfa3|Q\(1),
	datad => \PR2_rfa1|Q\(1),
	combout => \stage3_1|forwarding|new_d1~2_combout\);

-- Location: LCCOMB_X31_Y19_N24
\stage3_1|forwarding|new_d1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~3_combout\ = (\PR3_ctrl|Q\(2) & (\stage3_1|forwarding|new_d1~2_combout\ & (\PR2_rfa1|Q\(1) $ (!\PR3_rfa3|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(2),
	datab => \PR2_rfa1|Q\(1),
	datac => \PR3_rfa3|Q\(2),
	datad => \stage3_1|forwarding|new_d1~2_combout\,
	combout => \stage3_1|forwarding|new_d1~3_combout\);

-- Location: FF_X30_Y16_N15
\PR4_ctrl|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_ctrl|Q\(0),
	clrn => \ALT_INV_create_bubble2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_ctrl|Q\(0));

-- Location: FF_X32_Y17_N21
\PR3_aluout|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[15]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(15));

-- Location: LCCOMB_X31_Y14_N26
\PR4_aluout|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[15]~feeder_combout\ = \PR3_aluout|Q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(15),
	combout => \PR4_aluout|Q[15]~feeder_combout\);

-- Location: FF_X31_Y14_N27
\PR4_aluout|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(15));

-- Location: FF_X30_Y16_N1
\PR4_ctrl|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_ctrl|Q\(1),
	clrn => \ALT_INV_create_bubble2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_ctrl|Q\(1));

-- Location: FF_X31_Y14_N1
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

-- Location: LCCOMB_X31_Y14_N0
\stage5_1|m_50|o[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[15]~23_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(15))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(15),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(15),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[15]~23_combout\);

-- Location: FF_X31_Y15_N21
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

-- Location: LCCOMB_X31_Y15_N20
\stage5_1|m_50|o[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[15]~24_combout\ = (\stage5_1|m_50|o[15]~23_combout\) # ((\PR4_ctrl|Q\(0) & (\PR4_LS7|Q\(15) & \PR4_ctrl|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \stage5_1|m_50|o[15]~23_combout\,
	datac => \PR4_LS7|Q\(15),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[15]~24_combout\);

-- Location: LCCOMB_X31_Y14_N12
\stage2_2|rf_1|r0|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[15]~feeder_combout\ = \stage5_1|m_50|o[15]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[15]~24_combout\,
	combout => \stage2_2|rf_1|r0|Q[15]~feeder_combout\);

-- Location: FF_X30_Y19_N1
\PR4_ctrl|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_ctrl|Q\(2),
	clrn => \ALT_INV_create_bubble2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_ctrl|Q\(2));

-- Location: LCCOMB_X34_Y16_N22
\stage2_2|rf_1|wr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr0~0_combout\ = (!\PR4_rfa3|Q\(2) & (!\PR4_rfa3|Q\(0) & (!\PR4_rfa3|Q\(1) & \PR4_ctrl|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(2),
	datab => \PR4_rfa3|Q\(0),
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_ctrl|Q\(2),
	combout => \stage2_2|rf_1|wr0~0_combout\);

-- Location: FF_X31_Y14_N13
\stage2_2|rf_1|r0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(15));

-- Location: LCCOMB_X32_Y16_N4
\stage2_2|rf_1|r1|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[15]~feeder_combout\ = \stage5_1|m_50|o[15]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[15]~24_combout\,
	combout => \stage2_2|rf_1|r1|Q[15]~feeder_combout\);

-- Location: LCCOMB_X34_Y16_N12
\stage2_2|rf_1|wr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr1~0_combout\ = (!\PR4_rfa3|Q\(2) & (\PR4_rfa3|Q\(0) & (!\PR4_rfa3|Q\(1) & \PR4_ctrl|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(2),
	datab => \PR4_rfa3|Q\(0),
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_ctrl|Q\(2),
	combout => \stage2_2|rf_1|wr1~0_combout\);

-- Location: FF_X32_Y16_N5
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

-- Location: LCCOMB_X34_Y16_N0
\stage2_2|rf_1|r7_write\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r7_write~combout\ = (\PR4_rfa3|Q\(2) & (\PR4_rfa3|Q\(0) & (\PR4_rfa3|Q\(1) & \PR4_ctrl|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(2),
	datab => \PR4_rfa3|Q\(0),
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_ctrl|Q\(2),
	combout => \stage2_2|rf_1|r7_write~combout\);

-- Location: LCCOMB_X32_Y14_N28
\stage2_2|rf_1|M1_2|o[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[15]~15_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[15]~24_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[15]~24_combout\,
	datad => \PR1_pc|Q\(15),
	combout => \stage2_2|rf_1|M1_2|o[15]~15_combout\);

-- Location: LCCOMB_X34_Y17_N30
\stage2_2|rf_1|wr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr7~combout\ = (\PR1_ctrl|Q\(0)) # (\stage2_2|rf_1|r7_write~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_ctrl|Q\(0),
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|wr7~combout\);

-- Location: FF_X32_Y14_N29
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

-- Location: LCCOMB_X34_Y16_N10
\stage2_2|rf_1|wr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|wr6~0_combout\ = (\PR4_rfa3|Q\(2) & (!\PR4_rfa3|Q\(0) & (\PR4_rfa3|Q\(1) & \PR4_ctrl|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(2),
	datab => \PR4_rfa3|Q\(0),
	datac => \PR4_rfa3|Q\(1),
	datad => \PR4_ctrl|Q\(2),
	combout => \stage2_2|rf_1|wr6~0_combout\);

-- Location: FF_X32_Y14_N31
\stage2_2|rf_1|r6|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[15]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(15));

-- Location: LCCOMB_X32_Y14_N30
\stage2_2|rf_1|M1|output[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[15]~30_combout\ = (\PR1_instr|Q\(10) & ((\PR1_instr|Q\(9) & (\stage2_2|rf_1|r7|Q\(15))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|r6|Q\(15)))))) # (!\PR1_instr|Q\(10) & (((\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \stage2_2|rf_1|r7|Q\(15),
	datac => \stage2_2|rf_1|r6|Q\(15),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[15]~30_combout\);

-- Location: LCCOMB_X31_Y14_N10
\stage2_2|rf_1|M1|output[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[15]~31_combout\ = (\stage2_2|rf_1|M1|output[15]~30_combout\ & (((\stage2_2|rf_1|r1|Q\(15)) # (\PR1_instr|Q\(10))))) # (!\stage2_2|rf_1|M1|output[15]~30_combout\ & (\stage2_2|rf_1|r0|Q\(15) & ((!\PR1_instr|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r0|Q\(15),
	datab => \stage2_2|rf_1|r1|Q\(15),
	datac => \stage2_2|rf_1|M1|output[15]~30_combout\,
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|rf_1|M1|output[15]~31_combout\);

-- Location: FF_X31_Y14_N11
\PR2_d1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[15]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(15));

-- Location: LCCOMB_X31_Y19_N10
\stage3_1|forwarding|new_d1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~4_combout\ = (\PR4_rfa3|Q\(1) & (\PR2_rfa1|Q\(1) & (\PR4_rfa3|Q\(0) $ (!\PR2_rfa1|Q\(0))))) # (!\PR4_rfa3|Q\(1) & (!\PR2_rfa1|Q\(1) & (\PR4_rfa3|Q\(0) $ (!\PR2_rfa1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_rfa3|Q\(0),
	datac => \PR2_rfa1|Q\(1),
	datad => \PR2_rfa1|Q\(0),
	combout => \stage3_1|forwarding|new_d1~4_combout\);

-- Location: LCCOMB_X30_Y17_N22
\stage3_1|forwarding|new_d1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~23_combout\ = (\PR4_ctrl|Q\(2) & (\stage3_1|forwarding|new_d1~4_combout\ & (\PR4_rfa3|Q\(2) $ (!\PR2_rfa1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(2),
	datab => \PR4_ctrl|Q\(2),
	datac => \PR2_rfa1|Q\(1),
	datad => \stage3_1|forwarding|new_d1~4_combout\,
	combout => \stage3_1|forwarding|new_d1~23_combout\);

-- Location: LCCOMB_X31_Y15_N6
\stage3_1|forwarding|new_d1[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[15]~22_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[15]~24_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \PR2_d1|Q\(15),
	datac => \stage3_1|forwarding|new_d1~23_combout\,
	datad => \stage5_1|m_50|o[15]~24_combout\,
	combout => \stage3_1|forwarding|new_d1[15]~22_combout\);

-- Location: LCCOMB_X31_Y15_N16
\stage3_1|m_32|o[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[15]~14_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[15]~22_combout\) # ((\stage3_1|forwarding|new_d1~3_combout\ & \stage3_1|forwarding|stage4_d3[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|stage4_d3[15]~17_combout\,
	datad => \stage3_1|forwarding|new_d1[15]~22_combout\,
	combout => \stage3_1|m_32|o[15]~14_combout\);

-- Location: FF_X31_Y15_N31
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

-- Location: LCCOMB_X31_Y15_N26
\stage3_1|m_34|o[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[11]~2_combout\ = (\PR2_LS7|Q\(12) & \PR2_ctrl|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_LS7|Q\(12),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[11]~2_combout\);

-- Location: LCCOMB_X29_Y17_N22
\PR3_LS7|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_LS7|Q[14]~feeder_combout\ = \PR2_rfa1|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_rfa1|Q\(1),
	combout => \PR3_LS7|Q[14]~feeder_combout\);

-- Location: FF_X29_Y17_N23
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

-- Location: LCCOMB_X29_Y17_N26
\PR4_aluout|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[14]~feeder_combout\ = \PR3_aluout|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(14),
	combout => \PR4_aluout|Q[14]~feeder_combout\);

-- Location: FF_X29_Y17_N27
\PR4_aluout|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(14));

-- Location: LCCOMB_X34_Y18_N26
\PR0_pc|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[14]~feeder_combout\ = \stage0_0|PC|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(14),
	combout => \PR0_pc|Q[14]~feeder_combout\);

-- Location: FF_X34_Y18_N27
\PR0_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(14));

-- Location: FF_X34_Y18_N19
\PR1_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(14));

-- Location: FF_X32_Y18_N31
\PR2_pc|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(14),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(14));

-- Location: FF_X29_Y17_N9
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

-- Location: FF_X29_Y17_N3
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

-- Location: LCCOMB_X29_Y17_N2
\stage5_1|m_50|o[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[14]~0_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(14))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(14),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(14),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[14]~0_combout\);

-- Location: FF_X29_Y17_N5
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

-- Location: LCCOMB_X29_Y17_N4
\stage5_1|m_50|o[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[14]~1_combout\ = (\stage5_1|m_50|o[14]~0_combout\) # ((\PR4_ctrl|Q\(0) & (\PR4_LS7|Q\(14) & \PR4_ctrl|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \stage5_1|m_50|o[14]~0_combout\,
	datac => \PR4_LS7|Q\(14),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[14]~1_combout\);

-- Location: LCCOMB_X28_Y17_N30
\stage2_2|rf_1|r0|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[14]~feeder_combout\ = \stage5_1|m_50|o[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[14]~1_combout\,
	combout => \stage2_2|rf_1|r0|Q[14]~feeder_combout\);

-- Location: FF_X28_Y17_N31
\stage2_2|rf_1|r0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(14));

-- Location: FF_X29_Y17_N29
\stage2_2|rf_1|r1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[14]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(14));

-- Location: LCCOMB_X32_Y18_N4
\stage2_2|rf_1|M1_2|o[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[14]~0_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[14]~1_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7_write~combout\,
	datac => \PR1_pc|Q\(14),
	datad => \stage5_1|m_50|o[14]~1_combout\,
	combout => \stage2_2|rf_1|M1_2|o[14]~0_combout\);

-- Location: FF_X32_Y18_N5
\stage2_2|rf_1|r7|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[14]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(14));

-- Location: FF_X28_Y18_N17
\stage2_2|rf_1|r6|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[14]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(14));

-- Location: LCCOMB_X28_Y18_N16
\stage2_2|rf_1|M1|output[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[14]~0_combout\ = (\PR1_instr|Q\(10) & ((\PR1_instr|Q\(9) & (\stage2_2|rf_1|r7|Q\(14))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|r6|Q\(14)))))) # (!\PR1_instr|Q\(10) & (((\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(14),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r6|Q\(14),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[14]~0_combout\);

-- Location: LCCOMB_X28_Y17_N12
\stage2_2|rf_1|M1|output[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[14]~1_combout\ = (\stage2_2|rf_1|M1|output[14]~0_combout\ & (((\stage2_2|rf_1|r1|Q\(14)) # (\PR1_instr|Q\(10))))) # (!\stage2_2|rf_1|M1|output[14]~0_combout\ & (\stage2_2|rf_1|r0|Q\(14) & ((!\PR1_instr|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r0|Q\(14),
	datab => \stage2_2|rf_1|r1|Q\(14),
	datac => \stage2_2|rf_1|M1|output[14]~0_combout\,
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|rf_1|M1|output[14]~1_combout\);

-- Location: FF_X28_Y17_N13
\PR2_d1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[14]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(14));

-- Location: LCCOMB_X29_Y17_N28
\stage3_1|forwarding|new_d1[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[14]~6_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[14]~1_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(14),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage5_1|m_50|o[14]~1_combout\,
	datad => \stage3_1|forwarding|new_d1~23_combout\,
	combout => \stage3_1|forwarding|new_d1[14]~6_combout\);

-- Location: LCCOMB_X29_Y17_N16
\stage3_1|m_32|o[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[14]~0_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[14]~6_combout\) # ((\stage3_1|forwarding|stage4_d3[14]~1_combout\ & \stage3_1|forwarding|new_d1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|stage4_d3[14]~1_combout\,
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|forwarding|new_d1[14]~6_combout\,
	combout => \stage3_1|m_32|o[14]~0_combout\);

-- Location: LCCOMB_X32_Y17_N4
\ctrl|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~3_combout\ = (!\PR0_instr|Q\(10) & (\PR0_instr|Q\(13) & !\PR0_instr|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(10),
	datab => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|Equal10~3_combout\);

-- Location: FF_X32_Y17_N5
\PR1_ctrl|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|Equal10~3_combout\,
	clrn => \ALT_INV_create_bubble2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_ctrl|Q\(11));

-- Location: FF_X31_Y17_N23
\PR2_ctrl|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_ctrl|Q\(11),
	clrn => \ALT_INV_create_bubble2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_ctrl|Q\(11));

-- Location: LCCOMB_X35_Y17_N26
\temp_instr[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[6]~7_combout\ = (\stage0_0|InstrMem|RAM~32_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~32_combout\,
	datad => \create_bubble2~combout\,
	combout => \temp_instr[6]~7_combout\);

-- Location: FF_X35_Y17_N27
\PR0_instr|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[6]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(6));

-- Location: LCCOMB_X35_Y17_N12
\PR1_instr|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_instr|Q[6]~feeder_combout\ = \PR0_instr|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR0_instr|Q\(6),
	combout => \PR1_instr|Q[6]~feeder_combout\);

-- Location: FF_X35_Y17_N13
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_instr|Q\(6));

-- Location: LCCOMB_X32_Y16_N12
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

-- Location: FF_X32_Y16_N13
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

-- Location: LCCOMB_X32_Y16_N8
\PR3_LS7|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_LS7|Q[13]~feeder_combout\ = \PR2_LS7|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_LS7|Q\(13),
	combout => \PR3_LS7|Q[13]~feeder_combout\);

-- Location: FF_X32_Y16_N9
\PR3_LS7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_LS7|Q[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(13));

-- Location: FF_X32_Y16_N27
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

-- Location: FF_X32_Y16_N3
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

-- Location: FF_X37_Y17_N19
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(13));

-- Location: FF_X37_Y17_N13
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(13));

-- Location: FF_X35_Y16_N13
\PR2_pc|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(13));

-- Location: FF_X32_Y16_N23
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

-- Location: FF_X32_Y16_N21
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

-- Location: LCCOMB_X32_Y16_N20
\stage5_1|m_50|o[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[13]~2_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(13))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_aluout|Q\(13),
	datac => \PR4_pc|Q\(13),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[13]~2_combout\);

-- Location: LCCOMB_X32_Y16_N26
\stage5_1|m_50|o[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[13]~3_combout\ = (\stage5_1|m_50|o[13]~2_combout\) # ((\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_LS7|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_LS7|Q\(13),
	datad => \stage5_1|m_50|o[13]~2_combout\,
	combout => \stage5_1|m_50|o[13]~3_combout\);

-- Location: LCCOMB_X28_Y16_N24
\stage2_2|rf_1|r0|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[13]~feeder_combout\ = \stage5_1|m_50|o[13]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[13]~3_combout\,
	combout => \stage2_2|rf_1|r0|Q[13]~feeder_combout\);

-- Location: FF_X28_Y16_N25
\stage2_2|rf_1|r0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[13]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(13));

-- Location: FF_X32_Y16_N7
\stage2_2|rf_1|r1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(13));

-- Location: LCCOMB_X35_Y16_N6
\stage2_2|rf_1|M1_2|o[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[13]~1_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[13]~3_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7_write~combout\,
	datab => \PR1_pc|Q\(13),
	datad => \stage5_1|m_50|o[13]~3_combout\,
	combout => \stage2_2|rf_1|M1_2|o[13]~1_combout\);

-- Location: FF_X35_Y16_N7
\stage2_2|rf_1|r7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[13]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(13));

-- Location: FF_X31_Y16_N31
\stage2_2|rf_1|r6|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[13]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(13));

-- Location: LCCOMB_X31_Y16_N30
\stage2_2|rf_1|M1|output[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[13]~2_combout\ = (\PR1_instr|Q\(10) & ((\PR1_instr|Q\(9) & (\stage2_2|rf_1|r7|Q\(13))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|r6|Q\(13)))))) # (!\PR1_instr|Q\(10) & (((\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(13),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r6|Q\(13),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[13]~2_combout\);

-- Location: LCCOMB_X32_Y16_N10
\stage2_2|rf_1|M1|output[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[13]~3_combout\ = (\PR1_instr|Q\(10) & (((\stage2_2|rf_1|M1|output[13]~2_combout\)))) # (!\PR1_instr|Q\(10) & ((\stage2_2|rf_1|M1|output[13]~2_combout\ & ((\stage2_2|rf_1|r1|Q\(13)))) # (!\stage2_2|rf_1|M1|output[13]~2_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r0|Q\(13),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r1|Q\(13),
	datad => \stage2_2|rf_1|M1|output[13]~2_combout\,
	combout => \stage2_2|rf_1|M1|output[13]~3_combout\);

-- Location: FF_X32_Y16_N11
\PR2_d1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[13]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(13));

-- Location: LCCOMB_X31_Y19_N16
\stage3_1|m_34|o[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[11]~3_combout\ = (!\PR2_ctrl|Q\(9) & ((!\stage3_1|forwarding|new_d2~3_combout\) # (!\stage3_1|forwarding|new_d2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~2_combout\,
	datac => \PR2_ctrl|Q\(9),
	datad => \stage3_1|forwarding|new_d2~3_combout\,
	combout => \stage3_1|m_34|o[11]~3_combout\);

-- Location: LCCOMB_X31_Y19_N20
\stage3_1|forwarding|new_d2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~4_combout\ = (\PR4_rfa3|Q\(1) & (\PR2_rfa2|Q\(1) & (\PR4_rfa3|Q\(0) $ (!\PR2_rfa2|Q\(0))))) # (!\PR4_rfa3|Q\(1) & (!\PR2_rfa2|Q\(1) & (\PR4_rfa3|Q\(0) $ (!\PR2_rfa2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(1),
	datab => \PR4_rfa3|Q\(0),
	datac => \PR2_rfa2|Q\(0),
	datad => \PR2_rfa2|Q\(1),
	combout => \stage3_1|forwarding|new_d2~4_combout\);

-- Location: LCCOMB_X30_Y19_N10
\stage3_1|forwarding|new_d2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~6_combout\ = (\PR4_ctrl|Q\(2) & (\stage3_1|forwarding|new_d2~4_combout\ & (\PR4_rfa3|Q\(2) $ (!\PR2_rfa2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_rfa3|Q\(2),
	datab => \PR4_ctrl|Q\(2),
	datac => \stage3_1|forwarding|new_d2~4_combout\,
	datad => \PR2_rfa2|Q\(2),
	combout => \stage3_1|forwarding|new_d2~6_combout\);

-- Location: LCCOMB_X32_Y16_N6
\stage3_1|m_34|o[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[13]~7_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[13]~3_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(13),
	datab => \stage3_1|m_34|o[11]~3_combout\,
	datac => \stage5_1|m_50|o[13]~3_combout\,
	datad => \stage3_1|forwarding|new_d2~6_combout\,
	combout => \stage3_1|m_34|o[13]~7_combout\);

-- Location: LCCOMB_X32_Y16_N24
\stage3_1|m_34|o[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[13]~8_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[13]~7_combout\) # ((\stage3_1|m_34|o[11]~5_combout\ & \stage3_1|forwarding|stage4_d3[13]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~5_combout\,
	datab => \stage3_1|m_34|o[11]~2_combout\,
	datac => \stage3_1|forwarding|stage4_d3[13]~3_combout\,
	datad => \stage3_1|m_34|o[13]~7_combout\,
	combout => \stage3_1|m_34|o[13]~8_combout\);

-- Location: FF_X31_Y15_N1
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

-- Location: FF_X34_Y16_N3
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

-- Location: LCCOMB_X34_Y16_N30
\PR4_aluout|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[12]~feeder_combout\ = \PR3_aluout|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(12),
	combout => \PR4_aluout|Q[12]~feeder_combout\);

-- Location: FF_X34_Y16_N31
\PR4_aluout|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(12));

-- Location: LCCOMB_X32_Y15_N8
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

-- Location: FF_X32_Y15_N9
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

-- Location: FF_X31_Y15_N23
\PR3_pc|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_pc|Q\(12),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(12));

-- Location: FF_X34_Y16_N25
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

-- Location: LCCOMB_X34_Y16_N24
\stage5_1|m_50|o[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[12]~4_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(12))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(12),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_pc|Q\(12),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[12]~4_combout\);

-- Location: LCCOMB_X34_Y16_N2
\stage5_1|m_50|o[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[12]~5_combout\ = (\stage5_1|m_50|o[12]~4_combout\) # ((\PR4_ctrl|Q\(1) & (\PR4_ctrl|Q\(0) & \PR4_LS7|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_LS7|Q\(12),
	datad => \stage5_1|m_50|o[12]~4_combout\,
	combout => \stage5_1|m_50|o[12]~5_combout\);

-- Location: LCCOMB_X35_Y17_N10
\stage2_2|rf_1|r0|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[12]~feeder_combout\ = \stage5_1|m_50|o[12]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[12]~5_combout\,
	combout => \stage2_2|rf_1|r0|Q[12]~feeder_combout\);

-- Location: FF_X35_Y17_N11
\stage2_2|rf_1|r0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(12));

-- Location: LCCOMB_X34_Y16_N28
\stage2_2|rf_1|r1|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[12]~feeder_combout\ = \stage5_1|m_50|o[12]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[12]~5_combout\,
	combout => \stage2_2|rf_1|r1|Q[12]~feeder_combout\);

-- Location: FF_X34_Y16_N29
\stage2_2|rf_1|r1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r1|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(12));

-- Location: LCCOMB_X32_Y14_N18
\stage2_2|rf_1|M1_2|o[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[12]~2_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[12]~5_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(12),
	datac => \stage5_1|m_50|o[12]~5_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[12]~2_combout\);

-- Location: FF_X32_Y14_N19
\stage2_2|rf_1|r7|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[12]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(12));

-- Location: FF_X32_Y14_N25
\stage2_2|rf_1|r6|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[12]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(12));

-- Location: LCCOMB_X32_Y14_N24
\stage2_2|rf_1|M1|output[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[12]~4_combout\ = (\PR1_instr|Q\(10) & ((\PR1_instr|Q\(9) & (\stage2_2|rf_1|r7|Q\(12))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|r6|Q\(12)))))) # (!\PR1_instr|Q\(10) & (((\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \stage2_2|rf_1|r7|Q\(12),
	datac => \stage2_2|rf_1|r6|Q\(12),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[12]~4_combout\);

-- Location: LCCOMB_X34_Y17_N16
\stage2_2|rf_1|M1|output[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[12]~5_combout\ = (\PR1_instr|Q\(10) & (((\stage2_2|rf_1|M1|output[12]~4_combout\)))) # (!\PR1_instr|Q\(10) & ((\stage2_2|rf_1|M1|output[12]~4_combout\ & ((\stage2_2|rf_1|r1|Q\(12)))) # (!\stage2_2|rf_1|M1|output[12]~4_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \stage2_2|rf_1|r0|Q\(12),
	datac => \stage2_2|rf_1|r1|Q\(12),
	datad => \stage2_2|rf_1|M1|output[12]~4_combout\,
	combout => \stage2_2|rf_1|M1|output[12]~5_combout\);

-- Location: FF_X34_Y17_N17
\PR2_d1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[12]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(12));

-- Location: LCCOMB_X30_Y17_N12
\stage3_1|m_34|o[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[12]~9_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[12]~5_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~3_combout\,
	datab => \PR2_d1|Q\(12),
	datac => \stage3_1|forwarding|new_d2~6_combout\,
	datad => \stage5_1|m_50|o[12]~5_combout\,
	combout => \stage3_1|m_34|o[12]~9_combout\);

-- Location: LCCOMB_X30_Y17_N18
\stage3_1|m_34|o[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[12]~10_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[12]~9_combout\) # ((\stage3_1|m_34|o[11]~5_combout\ & \stage3_1|forwarding|stage4_d3[12]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~5_combout\,
	datab => \stage3_1|m_34|o[11]~2_combout\,
	datac => \stage3_1|forwarding|stage4_d3[12]~5_combout\,
	datad => \stage3_1|m_34|o[12]~9_combout\,
	combout => \stage3_1|m_34|o[12]~10_combout\);

-- Location: FF_X29_Y18_N9
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

-- Location: FF_X29_Y18_N19
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

-- Location: LCCOMB_X29_Y18_N26
\PR3_pc|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[11]~feeder_combout\ = \PR2_pc|Q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(11),
	combout => \PR3_pc|Q[11]~feeder_combout\);

-- Location: FF_X29_Y18_N27
\PR3_pc|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(11));

-- Location: FF_X29_Y18_N29
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

-- Location: LCCOMB_X29_Y18_N12
\PR4_aluout|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[11]~feeder_combout\ = \PR3_aluout|Q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(11),
	combout => \PR4_aluout|Q[11]~feeder_combout\);

-- Location: FF_X29_Y18_N13
\PR4_aluout|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(11));

-- Location: FF_X29_Y18_N11
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

-- Location: LCCOMB_X29_Y18_N10
\stage5_1|m_50|o[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[11]~6_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(11))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(11),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(11),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[11]~6_combout\);

-- Location: LCCOMB_X29_Y18_N28
\stage5_1|m_50|o[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[11]~7_combout\ = (\stage5_1|m_50|o[11]~6_combout\) # ((\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_LS7|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_LS7|Q\(11),
	datad => \stage5_1|m_50|o[11]~6_combout\,
	combout => \stage5_1|m_50|o[11]~7_combout\);

-- Location: LCCOMB_X32_Y18_N26
\stage2_2|rf_1|M1_2|o[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[11]~3_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[11]~7_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7_write~combout\,
	datac => \PR1_pc|Q\(11),
	datad => \stage5_1|m_50|o[11]~7_combout\,
	combout => \stage2_2|rf_1|M1_2|o[11]~3_combout\);

-- Location: FF_X32_Y18_N27
\stage2_2|rf_1|r7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[11]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(11));

-- Location: FF_X29_Y18_N23
\stage2_2|rf_1|r6|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(11));

-- Location: LCCOMB_X29_Y18_N22
\stage2_2|rf_1|M1|output[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[11]~6_combout\ = (\PR1_instr|Q\(10) & ((\PR1_instr|Q\(9) & (\stage2_2|rf_1|r7|Q\(11))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|r6|Q\(11)))))) # (!\PR1_instr|Q\(10) & (((\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(11),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r6|Q\(11),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[11]~6_combout\);

-- Location: FF_X29_Y17_N31
\stage2_2|rf_1|r1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[11]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(11));

-- Location: LCCOMB_X28_Y17_N8
\stage2_2|rf_1|r0|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[11]~feeder_combout\ = \stage5_1|m_50|o[11]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[11]~7_combout\,
	combout => \stage2_2|rf_1|r0|Q[11]~feeder_combout\);

-- Location: FF_X28_Y17_N9
\stage2_2|rf_1|r0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(11));

-- Location: LCCOMB_X28_Y17_N26
\stage2_2|rf_1|M1|output[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[11]~7_combout\ = (\stage2_2|rf_1|M1|output[11]~6_combout\ & ((\stage2_2|rf_1|r1|Q\(11)) # ((\PR1_instr|Q\(10))))) # (!\stage2_2|rf_1|M1|output[11]~6_combout\ & (((\stage2_2|rf_1|r0|Q\(11) & !\PR1_instr|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[11]~6_combout\,
	datab => \stage2_2|rf_1|r1|Q\(11),
	datac => \stage2_2|rf_1|r0|Q\(11),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|rf_1|M1|output[11]~7_combout\);

-- Location: FF_X28_Y17_N27
\PR2_d1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[11]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(11));

-- Location: LCCOMB_X28_Y17_N24
\stage3_1|forwarding|new_d1[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[11]~9_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[11]~7_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(11),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|new_d1~23_combout\,
	datad => \stage5_1|m_50|o[11]~7_combout\,
	combout => \stage3_1|forwarding|new_d1[11]~9_combout\);

-- Location: LCCOMB_X28_Y17_N6
\stage3_1|m_32|o[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[11]~3_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[11]~9_combout\) # ((\stage3_1|forwarding|new_d1~3_combout\ & \stage3_1|forwarding|stage4_d3[11]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|stage4_d3[11]~7_combout\,
	datad => \stage3_1|forwarding|new_d1[11]~9_combout\,
	combout => \stage3_1|m_32|o[11]~3_combout\);

-- Location: LCCOMB_X32_Y19_N24
\PR2_LS7|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_LS7|Q[10]~feeder_combout\ = \PR1_instr|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_instr|Q\(3),
	combout => \PR2_LS7|Q[10]~feeder_combout\);

-- Location: FF_X32_Y19_N25
\PR2_LS7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_LS7|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(10));

-- Location: FF_X29_Y18_N15
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

-- Location: FF_X29_Y18_N3
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

-- Location: LCCOMB_X34_Y18_N24
\PR2_pc|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[10]~feeder_combout\ = \PR1_pc|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(10),
	combout => \PR2_pc|Q[10]~feeder_combout\);

-- Location: FF_X34_Y18_N25
\PR2_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(10));

-- Location: LCCOMB_X29_Y18_N4
\PR3_pc|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[10]~feeder_combout\ = \PR2_pc|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(10),
	combout => \PR3_pc|Q[10]~feeder_combout\);

-- Location: FF_X29_Y18_N5
\PR3_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(10));

-- Location: FF_X29_Y18_N17
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

-- Location: LCCOMB_X29_Y18_N6
\stage3_1|forwarding|stage4_d3[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[10]~8_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(10)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(1),
	datab => \PR3_pc|Q\(10),
	datac => \PR3_ctrl|Q\(0),
	datad => \PR3_aluout|Q\(10),
	combout => \stage3_1|forwarding|stage4_d3[10]~8_combout\);

-- Location: LCCOMB_X29_Y18_N18
\stage3_1|forwarding|stage4_d3[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[10]~9_combout\ = (\stage3_1|forwarding|stage4_d3[10]~8_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_LS7|Q\(10),
	datad => \stage3_1|forwarding|stage4_d3[10]~8_combout\,
	combout => \stage3_1|forwarding|stage4_d3[10]~9_combout\);

-- Location: LCCOMB_X28_Y17_N2
\stage3_1|m_34|o[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[10]~13_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & (\stage5_1|m_50|o[10]~9_combout\)) # (!\stage3_1|forwarding|new_d2~6_combout\ & ((\PR2_d1|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[10]~9_combout\,
	datab => \PR2_d1|Q\(10),
	datac => \stage3_1|m_34|o[11]~3_combout\,
	datad => \stage3_1|forwarding|new_d2~6_combout\,
	combout => \stage3_1|m_34|o[10]~13_combout\);

-- Location: LCCOMB_X28_Y17_N20
\stage3_1|m_34|o[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[10]~14_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[10]~13_combout\) # ((\stage3_1|forwarding|stage4_d3[10]~9_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~2_combout\,
	datab => \stage3_1|forwarding|stage4_d3[10]~9_combout\,
	datac => \stage3_1|m_34|o[11]~5_combout\,
	datad => \stage3_1|m_34|o[10]~13_combout\,
	combout => \stage3_1|m_34|o[10]~14_combout\);

-- Location: LCCOMB_X29_Y19_N22
\PR2_LS7|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_LS7|Q[9]~feeder_combout\ = \PR1_LS7|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_LS7|Q\(9),
	combout => \PR2_LS7|Q[9]~feeder_combout\);

-- Location: FF_X29_Y19_N23
\PR2_LS7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_LS7|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_LS7|Q\(9));

-- Location: FF_X30_Y16_N27
\PR3_LS7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR2_LS7|Q\(9),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_LS7|Q\(9));

-- Location: LCCOMB_X35_Y17_N14
\PR0_pc|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR0_pc|Q[9]~feeder_combout\ = \stage0_0|PC|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage0_0|PC|Q\(9),
	combout => \PR0_pc|Q[9]~feeder_combout\);

-- Location: FF_X35_Y17_N15
\PR0_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR0_pc|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(9));

-- Location: LCCOMB_X35_Y17_N16
\PR1_pc|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[9]~feeder_combout\ = \PR0_pc|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR0_pc|Q\(9),
	combout => \PR1_pc|Q[9]~feeder_combout\);

-- Location: FF_X35_Y17_N17
\PR1_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(9));

-- Location: LCCOMB_X31_Y16_N28
\PR2_pc|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[9]~feeder_combout\ = \PR1_pc|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(9),
	combout => \PR2_pc|Q[9]~feeder_combout\);

-- Location: FF_X31_Y16_N29
\PR2_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(9));

-- Location: LCCOMB_X30_Y16_N2
\PR3_pc|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[9]~feeder_combout\ = \PR2_pc|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(9),
	combout => \PR3_pc|Q[9]~feeder_combout\);

-- Location: FF_X30_Y16_N3
\PR3_pc|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(9));

-- Location: LCCOMB_X30_Y16_N28
\stage3_1|forwarding|stage4_d3[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[9]~10_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(9))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(9),
	datab => \PR3_ctrl|Q\(0),
	datac => \PR3_ctrl|Q\(1),
	datad => \PR3_pc|Q\(9),
	combout => \stage3_1|forwarding|stage4_d3[9]~10_combout\);

-- Location: LCCOMB_X30_Y16_N12
\stage3_1|forwarding|stage4_d3[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[9]~11_combout\ = (\stage3_1|forwarding|stage4_d3[9]~10_combout\) # ((\PR3_LS7|Q\(9) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(9),
	datab => \PR3_ctrl|Q\(0),
	datad => \stage3_1|forwarding|stage4_d3[9]~10_combout\,
	combout => \stage3_1|forwarding|stage4_d3[9]~11_combout\);

-- Location: LCCOMB_X29_Y17_N12
\stage3_1|m_34|o[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[9]~15_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[9]~11_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~6_combout\,
	datab => \PR2_d1|Q\(9),
	datac => \stage5_1|m_50|o[9]~11_combout\,
	datad => \stage3_1|m_34|o[11]~3_combout\,
	combout => \stage3_1|m_34|o[9]~15_combout\);

-- Location: LCCOMB_X29_Y17_N14
\stage3_1|m_34|o[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[9]~16_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[9]~15_combout\) # ((\stage3_1|m_34|o[11]~5_combout\ & \stage3_1|forwarding|stage4_d3[9]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~2_combout\,
	datab => \stage3_1|m_34|o[11]~5_combout\,
	datac => \stage3_1|forwarding|stage4_d3[9]~11_combout\,
	datad => \stage3_1|m_34|o[9]~15_combout\,
	combout => \stage3_1|m_34|o[9]~16_combout\);

-- Location: FF_X32_Y19_N15
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

-- Location: LCCOMB_X30_Y16_N30
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

-- Location: FF_X30_Y16_N31
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

-- Location: LCCOMB_X31_Y16_N26
\PR2_pc|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[8]~feeder_combout\ = \PR1_pc|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(8),
	combout => \PR2_pc|Q[8]~feeder_combout\);

-- Location: FF_X31_Y16_N27
\PR2_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(8));

-- Location: LCCOMB_X30_Y16_N6
\PR3_pc|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[8]~feeder_combout\ = \PR2_pc|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(8),
	combout => \PR3_pc|Q[8]~feeder_combout\);

-- Location: FF_X30_Y16_N7
\PR3_pc|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(8));

-- Location: FF_X30_Y17_N25
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

-- Location: FF_X31_Y16_N21
\PR4_aluout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR3_aluout|Q\(8),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(8));

-- Location: FF_X31_Y16_N3
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

-- Location: LCCOMB_X31_Y16_N2
\stage5_1|m_50|o[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[8]~12_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(8))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_aluout|Q\(8),
	datac => \PR4_pc|Q\(8),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[8]~12_combout\);

-- Location: LCCOMB_X30_Y17_N24
\stage5_1|m_50|o[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[8]~13_combout\ = (\stage5_1|m_50|o[8]~12_combout\) # ((\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_LS7|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_LS7|Q\(8),
	datad => \stage5_1|m_50|o[8]~12_combout\,
	combout => \stage5_1|m_50|o[8]~13_combout\);

-- Location: LCCOMB_X32_Y14_N8
\stage2_2|rf_1|r6|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r6|Q[8]~feeder_combout\ = \stage5_1|m_50|o[8]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[8]~13_combout\,
	combout => \stage2_2|rf_1|r6|Q[8]~feeder_combout\);

-- Location: FF_X32_Y14_N9
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

-- Location: LCCOMB_X31_Y14_N28
\stage2_2|rf_1|r0|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[8]~feeder_combout\ = \stage5_1|m_50|o[8]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[8]~13_combout\,
	combout => \stage2_2|rf_1|r0|Q[8]~feeder_combout\);

-- Location: FF_X31_Y14_N29
\stage2_2|rf_1|r0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(8));

-- Location: LCCOMB_X32_Y14_N10
\stage2_2|rf_1|M1_2|o[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[8]~6_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[8]~13_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \PR1_pc|Q\(8),
	datad => \stage5_1|m_50|o[8]~13_combout\,
	combout => \stage2_2|rf_1|M1_2|o[8]~6_combout\);

-- Location: FF_X32_Y14_N11
\stage2_2|rf_1|r7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[8]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(8));

-- Location: FF_X32_Y16_N31
\stage2_2|rf_1|r1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[8]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(8));

-- Location: LCCOMB_X32_Y16_N30
\stage2_2|rf_1|M1|output[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[8]~12_combout\ = (\PR1_instr|Q\(10) & ((\stage2_2|rf_1|r7|Q\(8)) # ((!\PR1_instr|Q\(9))))) # (!\PR1_instr|Q\(10) & (((\stage2_2|rf_1|r1|Q\(8) & \PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(8),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r1|Q\(8),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[8]~12_combout\);

-- Location: LCCOMB_X31_Y14_N8
\stage2_2|rf_1|M1|output[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[8]~13_combout\ = (\PR1_instr|Q\(9) & (((\stage2_2|rf_1|M1|output[8]~12_combout\)))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|M1|output[8]~12_combout\ & (\stage2_2|rf_1|r6|Q\(8))) # (!\stage2_2|rf_1|M1|output[8]~12_combout\ & 
-- ((\stage2_2|rf_1|r0|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datab => \stage2_2|rf_1|r6|Q\(8),
	datac => \stage2_2|rf_1|r0|Q\(8),
	datad => \stage2_2|rf_1|M1|output[8]~12_combout\,
	combout => \stage2_2|rf_1|M1|output[8]~13_combout\);

-- Location: FF_X31_Y14_N9
\PR2_d1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[8]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(8));

-- Location: LCCOMB_X30_Y17_N2
\stage3_1|m_34|o[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[8]~17_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & (\stage5_1|m_50|o[8]~13_combout\)) # (!\stage3_1|forwarding|new_d2~6_combout\ & ((\PR2_d1|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~6_combout\,
	datab => \stage5_1|m_50|o[8]~13_combout\,
	datac => \PR2_d1|Q\(8),
	datad => \stage3_1|m_34|o[11]~3_combout\,
	combout => \stage3_1|m_34|o[8]~17_combout\);

-- Location: LCCOMB_X30_Y17_N20
\stage3_1|m_34|o[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[8]~18_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[8]~17_combout\) # ((\stage3_1|forwarding|stage4_d3[8]~13_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|stage4_d3[8]~13_combout\,
	datab => \stage3_1|m_34|o[11]~2_combout\,
	datac => \stage3_1|m_34|o[11]~5_combout\,
	datad => \stage3_1|m_34|o[8]~17_combout\,
	combout => \stage3_1|m_34|o[8]~18_combout\);

-- Location: LCCOMB_X30_Y15_N12
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

-- Location: FF_X30_Y15_N13
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

-- Location: FF_X30_Y15_N31
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

-- Location: LCCOMB_X30_Y15_N28
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

-- Location: FF_X30_Y15_N29
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

-- Location: FF_X30_Y15_N27
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

-- Location: LCCOMB_X30_Y15_N4
\PR3_pc|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[7]~feeder_combout\ = \PR2_pc|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(7),
	combout => \PR3_pc|Q[7]~feeder_combout\);

-- Location: FF_X30_Y15_N5
\PR3_pc|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(7));

-- Location: FF_X30_Y15_N19
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

-- Location: LCCOMB_X30_Y15_N18
\stage5_1|m_50|o[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[7]~14_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(7))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_aluout|Q\(7),
	datac => \PR4_pc|Q\(7),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[7]~14_combout\);

-- Location: LCCOMB_X30_Y15_N30
\stage5_1|m_50|o[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[7]~15_combout\ = (\stage5_1|m_50|o[7]~14_combout\) # ((\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_LS7|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_LS7|Q\(7),
	datad => \stage5_1|m_50|o[7]~14_combout\,
	combout => \stage5_1|m_50|o[7]~15_combout\);

-- Location: FF_X30_Y15_N3
\stage2_2|rf_1|r6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(7));

-- Location: LCCOMB_X34_Y17_N20
\stage2_2|rf_1|M1_2|o[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[7]~7_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[7]~15_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \PR1_pc|Q\(7),
	datad => \stage5_1|m_50|o[7]~15_combout\,
	combout => \stage2_2|rf_1|M1_2|o[7]~7_combout\);

-- Location: FF_X34_Y17_N21
\stage2_2|rf_1|r7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(7));

-- Location: FF_X29_Y17_N25
\stage2_2|rf_1|r1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[7]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(7));

-- Location: LCCOMB_X29_Y17_N24
\stage2_2|rf_1|M1|output[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[7]~14_combout\ = (\PR1_instr|Q\(10) & ((\stage2_2|rf_1|r7|Q\(7)) # ((!\PR1_instr|Q\(9))))) # (!\PR1_instr|Q\(10) & (((\stage2_2|rf_1|r1|Q\(7) & \PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \stage2_2|rf_1|r7|Q\(7),
	datac => \stage2_2|rf_1|r1|Q\(7),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[7]~14_combout\);

-- Location: LCCOMB_X29_Y15_N24
\stage2_2|rf_1|r0|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[7]~feeder_combout\ = \stage5_1|m_50|o[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[7]~15_combout\,
	combout => \stage2_2|rf_1|r0|Q[7]~feeder_combout\);

-- Location: FF_X29_Y15_N25
\stage2_2|rf_1|r0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(7));

-- Location: LCCOMB_X30_Y15_N8
\stage2_2|rf_1|M1|output[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[7]~15_combout\ = (\stage2_2|rf_1|M1|output[7]~14_combout\ & ((\stage2_2|rf_1|r6|Q\(7)) # ((\PR1_instr|Q\(9))))) # (!\stage2_2|rf_1|M1|output[7]~14_combout\ & (((!\PR1_instr|Q\(9) & \stage2_2|rf_1|r0|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r6|Q\(7),
	datab => \stage2_2|rf_1|M1|output[7]~14_combout\,
	datac => \PR1_instr|Q\(9),
	datad => \stage2_2|rf_1|r0|Q\(7),
	combout => \stage2_2|rf_1|M1|output[7]~15_combout\);

-- Location: FF_X30_Y15_N9
\PR2_d1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[7]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(7));

-- Location: LCCOMB_X30_Y15_N20
\stage3_1|m_34|o[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[7]~19_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[7]~15_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(7),
	datab => \stage3_1|forwarding|new_d2~6_combout\,
	datac => \stage5_1|m_50|o[7]~15_combout\,
	datad => \stage3_1|m_34|o[11]~3_combout\,
	combout => \stage3_1|m_34|o[7]~19_combout\);

-- Location: LCCOMB_X30_Y15_N16
\stage3_1|m_34|o[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[7]~20_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[7]~19_combout\) # ((\stage3_1|forwarding|stage4_d3[7]~15_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|stage4_d3[7]~15_combout\,
	datab => \stage3_1|m_34|o[11]~2_combout\,
	datac => \stage3_1|m_34|o[11]~5_combout\,
	datad => \stage3_1|m_34|o[7]~19_combout\,
	combout => \stage3_1|m_34|o[7]~20_combout\);

-- Location: LCCOMB_X31_Y14_N14
\PR4_aluout|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[6]~feeder_combout\ = \PR3_aluout|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(6),
	combout => \PR4_aluout|Q[6]~feeder_combout\);

-- Location: FF_X31_Y14_N15
\PR4_aluout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(6));

-- Location: FF_X35_Y18_N1
\PR2_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR1_pc|Q\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(6));

-- Location: FF_X34_Y18_N21
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

-- Location: FF_X31_Y14_N25
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

-- Location: LCCOMB_X31_Y14_N24
\stage5_1|m_50|o[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[6]~16_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(6))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_aluout|Q\(6),
	datac => \PR4_pc|Q\(6),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[6]~16_combout\);

-- Location: LCCOMB_X31_Y14_N2
\stage2_2|rf_1|r0|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[6]~feeder_combout\ = \stage5_1|m_50|o[6]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[6]~16_combout\,
	combout => \stage2_2|rf_1|r0|Q[6]~feeder_combout\);

-- Location: FF_X31_Y14_N3
\stage2_2|rf_1|r0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(6));

-- Location: FF_X34_Y16_N9
\stage2_2|rf_1|r1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(6));

-- Location: LCCOMB_X35_Y16_N24
\stage2_2|rf_1|M1_2|o[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[6]~8_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[6]~16_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7_write~combout\,
	datab => \PR1_pc|Q\(6),
	datac => \stage5_1|m_50|o[6]~16_combout\,
	combout => \stage2_2|rf_1|M1_2|o[6]~8_combout\);

-- Location: FF_X35_Y16_N25
\stage2_2|rf_1|r7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[6]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(6));

-- Location: LCCOMB_X34_Y16_N8
\stage2_2|rf_1|M1|output[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[6]~16_combout\ = (\PR1_instr|Q\(9) & ((\PR1_instr|Q\(10) & ((\stage2_2|rf_1|r7|Q\(6)))) # (!\PR1_instr|Q\(10) & (\stage2_2|rf_1|r1|Q\(6))))) # (!\PR1_instr|Q\(9) & (\PR1_instr|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r1|Q\(6),
	datad => \stage2_2|rf_1|r7|Q\(6),
	combout => \stage2_2|rf_1|M1|output[6]~16_combout\);

-- Location: FF_X31_Y18_N29
\stage2_2|rf_1|r6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[6]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(6));

-- Location: LCCOMB_X32_Y18_N0
\stage2_2|rf_1|M1|output[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[6]~17_combout\ = (\PR1_instr|Q\(9) & (((\stage2_2|rf_1|M1|output[6]~16_combout\)))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|M1|output[6]~16_combout\ & ((\stage2_2|rf_1|r6|Q\(6)))) # (!\stage2_2|rf_1|M1|output[6]~16_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r0|Q\(6),
	datab => \PR1_instr|Q\(9),
	datac => \stage2_2|rf_1|M1|output[6]~16_combout\,
	datad => \stage2_2|rf_1|r6|Q\(6),
	combout => \stage2_2|rf_1|M1|output[6]~17_combout\);

-- Location: FF_X32_Y18_N1
\PR2_d1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[6]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(6));

-- Location: LCCOMB_X31_Y19_N6
\stage3_1|forwarding|new_d1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1~5_combout\ = (\PR4_ctrl|Q\(2) & (\PR4_rfa3|Q\(2) $ (!\PR2_rfa1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(2),
	datab => \PR4_rfa3|Q\(2),
	datad => \PR2_rfa1|Q\(1),
	combout => \stage3_1|forwarding|new_d1~5_combout\);

-- Location: LCCOMB_X32_Y18_N10
\stage3_1|forwarding|new_d1[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[6]~14_combout\ = (\stage3_1|forwarding|new_d1~4_combout\ & ((\stage3_1|forwarding|new_d1~5_combout\ & ((\stage5_1|m_50|o[6]~16_combout\))) # (!\stage3_1|forwarding|new_d1~5_combout\ & (\PR2_d1|Q\(6))))) # 
-- (!\stage3_1|forwarding|new_d1~4_combout\ & (\PR2_d1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~4_combout\,
	datab => \PR2_d1|Q\(6),
	datac => \stage3_1|forwarding|new_d1~5_combout\,
	datad => \stage5_1|m_50|o[6]~16_combout\,
	combout => \stage3_1|forwarding|new_d1[6]~14_combout\);

-- Location: LCCOMB_X32_Y18_N22
\stage3_1|m_32|o[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[6]~8_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1~3_combout\ & (\stage3_1|m_34|o[6]~21_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1[6]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \stage3_1|m_34|o[6]~21_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|forwarding|new_d1[6]~14_combout\,
	combout => \stage3_1|m_32|o[6]~8_combout\);

-- Location: LCCOMB_X32_Y16_N0
\PR4_aluout|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[5]~feeder_combout\ = \PR3_aluout|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(5),
	combout => \PR4_aluout|Q[5]~feeder_combout\);

-- Location: FF_X32_Y16_N1
\PR4_aluout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(5));

-- Location: LCCOMB_X31_Y16_N14
\PR2_pc|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[5]~feeder_combout\ = \PR1_pc|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(5),
	combout => \PR2_pc|Q[5]~feeder_combout\);

-- Location: FF_X31_Y16_N15
\PR2_pc|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_pc|Q[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_pc|Q\(5));

-- Location: FF_X31_Y16_N17
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

-- Location: FF_X32_Y16_N19
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

-- Location: LCCOMB_X32_Y16_N18
\stage5_1|m_50|o[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[5]~17_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(5))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_aluout|Q\(5),
	datac => \PR4_pc|Q\(5),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[5]~17_combout\);

-- Location: FF_X34_Y18_N11
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

-- Location: LCCOMB_X32_Y18_N24
\stage2_2|rf_1|M1_2|o[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[5]~9_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[5]~17_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[5]~17_combout\,
	datad => \PR1_pc|Q\(5),
	combout => \stage2_2|rf_1|M1_2|o[5]~9_combout\);

-- Location: FF_X32_Y18_N25
\stage2_2|rf_1|r7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[5]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(5));

-- Location: LCCOMB_X34_Y18_N10
\stage2_2|rf_1|M1|output[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[5]~18_combout\ = (\PR1_instr|Q\(10) & (((\stage2_2|rf_1|r7|Q\(5))) # (!\PR1_instr|Q\(9)))) # (!\PR1_instr|Q\(10) & (\PR1_instr|Q\(9) & (\stage2_2|rf_1|r1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \PR1_instr|Q\(9),
	datac => \stage2_2|rf_1|r1|Q\(5),
	datad => \stage2_2|rf_1|r7|Q\(5),
	combout => \stage2_2|rf_1|M1|output[5]~18_combout\);

-- Location: LCCOMB_X32_Y15_N18
\stage2_2|rf_1|r0|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[5]~feeder_combout\ = \stage5_1|m_50|o[5]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[5]~17_combout\,
	combout => \stage2_2|rf_1|r0|Q[5]~feeder_combout\);

-- Location: FF_X32_Y15_N19
\stage2_2|rf_1|r0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(5));

-- Location: FF_X32_Y14_N17
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

-- Location: LCCOMB_X32_Y18_N8
\stage2_2|rf_1|M1|output[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[5]~19_combout\ = (\stage2_2|rf_1|M1|output[5]~18_combout\ & (((\stage2_2|rf_1|r6|Q\(5)) # (\PR1_instr|Q\(9))))) # (!\stage2_2|rf_1|M1|output[5]~18_combout\ & (\stage2_2|rf_1|r0|Q\(5) & ((!\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[5]~18_combout\,
	datab => \stage2_2|rf_1|r0|Q\(5),
	datac => \stage2_2|rf_1|r6|Q\(5),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[5]~19_combout\);

-- Location: FF_X32_Y18_N9
\PR2_d1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[5]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(5));

-- Location: LCCOMB_X32_Y18_N18
\stage3_1|forwarding|new_d1[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[5]~15_combout\ = (\stage3_1|forwarding|new_d1~5_combout\ & ((\stage3_1|forwarding|new_d1~4_combout\ & (\stage5_1|m_50|o[5]~17_combout\)) # (!\stage3_1|forwarding|new_d1~4_combout\ & ((\PR2_d1|Q\(5)))))) # 
-- (!\stage3_1|forwarding|new_d1~5_combout\ & (((\PR2_d1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~5_combout\,
	datab => \stage5_1|m_50|o[5]~17_combout\,
	datac => \stage3_1|forwarding|new_d1~4_combout\,
	datad => \PR2_d1|Q\(5),
	combout => \stage3_1|forwarding|new_d1[5]~15_combout\);

-- Location: LCCOMB_X32_Y18_N28
\stage3_1|m_32|o[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[5]~9_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1~3_combout\ & (\stage3_1|m_34|o[5]~24_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1[5]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[5]~24_combout\,
	datab => \PR2_ctrl|Q\(10),
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage3_1|forwarding|new_d1[5]~15_combout\,
	combout => \stage3_1|m_32|o[5]~9_combout\);

-- Location: FF_X30_Y16_N19
\stage2_2|rf_1|r0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(4));

-- Location: FF_X30_Y18_N21
\stage2_2|rf_1|r6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(4));

-- Location: LCCOMB_X34_Y17_N14
\stage2_2|rf_1|M1_2|o[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[4]~10_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[4]~18_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(4),
	datac => \stage5_1|m_50|o[4]~18_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[4]~10_combout\);

-- Location: FF_X34_Y17_N15
\stage2_2|rf_1|r7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[4]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(4));

-- Location: FF_X29_Y17_N19
\stage2_2|rf_1|r1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[4]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(4));

-- Location: LCCOMB_X29_Y17_N18
\stage2_2|rf_1|M1|output[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[4]~20_combout\ = (\PR1_instr|Q\(10) & ((\stage2_2|rf_1|r7|Q\(4)) # ((!\PR1_instr|Q\(9))))) # (!\PR1_instr|Q\(10) & (((\stage2_2|rf_1|r1|Q\(4) & \PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \stage2_2|rf_1|r7|Q\(4),
	datac => \stage2_2|rf_1|r1|Q\(4),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[4]~20_combout\);

-- Location: LCCOMB_X30_Y18_N0
\stage2_2|rf_1|M1|output[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[4]~21_combout\ = (\stage2_2|rf_1|M1|output[4]~20_combout\ & (((\stage2_2|rf_1|r6|Q\(4)) # (\PR1_instr|Q\(9))))) # (!\stage2_2|rf_1|M1|output[4]~20_combout\ & (\stage2_2|rf_1|r0|Q\(4) & ((!\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r0|Q\(4),
	datab => \stage2_2|rf_1|r6|Q\(4),
	datac => \stage2_2|rf_1|M1|output[4]~20_combout\,
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[4]~21_combout\);

-- Location: FF_X30_Y18_N1
\PR2_d1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[4]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(4));

-- Location: LCCOMB_X30_Y18_N20
\stage3_1|forwarding|new_d1[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[4]~16_combout\ = (\stage3_1|forwarding|new_d1~4_combout\ & ((\stage3_1|forwarding|new_d1~5_combout\ & ((\stage5_1|m_50|o[4]~18_combout\))) # (!\stage3_1|forwarding|new_d1~5_combout\ & (\PR2_d1|Q\(4))))) # 
-- (!\stage3_1|forwarding|new_d1~4_combout\ & (\PR2_d1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~4_combout\,
	datab => \PR2_d1|Q\(4),
	datac => \stage5_1|m_50|o[4]~18_combout\,
	datad => \stage3_1|forwarding|new_d1~5_combout\,
	combout => \stage3_1|forwarding|new_d1[4]~16_combout\);

-- Location: LCCOMB_X30_Y18_N30
\stage3_1|m_32|o[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[4]~10_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|m_34|o[4]~27_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\stage3_1|forwarding|new_d1[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1[4]~16_combout\,
	datac => \stage3_1|m_34|o[4]~27_combout\,
	datad => \stage3_1|forwarding|new_d1~3_combout\,
	combout => \stage3_1|m_32|o[4]~10_combout\);

-- Location: LCCOMB_X31_Y19_N12
\stage3_1|m_34|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[3]~33_combout\ = (\PR2_ctrl|Q\(9) & \PR2_LS7|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(9),
	datad => \PR2_LS7|Q\(10),
	combout => \stage3_1|m_34|o[3]~33_combout\);

-- Location: LCCOMB_X29_Y18_N20
\PR2_pc|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_pc|Q[3]~feeder_combout\ = \PR1_pc|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR1_pc|Q\(3),
	combout => \PR2_pc|Q[3]~feeder_combout\);

-- Location: FF_X29_Y18_N21
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

-- Location: FF_X30_Y18_N25
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

-- Location: LCCOMB_X30_Y18_N24
\stage3_1|m_34|o[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[3]~31_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(3))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(3),
	datab => \PR3_ctrl|Q\(0),
	datac => \PR3_pc|Q\(3),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|m_34|o[3]~31_combout\);

-- Location: LCCOMB_X30_Y19_N22
\stage3_1|m_34|o[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[3]~32_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[3]~19_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~6_combout\,
	datab => \PR2_d1|Q\(3),
	datac => \stage5_1|m_50|o[3]~19_combout\,
	datad => \stage3_1|m_34|o[11]~3_combout\,
	combout => \stage3_1|m_34|o[3]~32_combout\);

-- Location: LCCOMB_X30_Y19_N16
\stage3_1|m_34|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[3]~34_combout\ = (\stage3_1|m_34|o[3]~33_combout\) # ((\stage3_1|m_34|o[3]~32_combout\) # ((\stage3_1|m_34|o[3]~31_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[3]~33_combout\,
	datab => \stage3_1|m_34|o[3]~31_combout\,
	datac => \stage3_1|m_34|o[3]~32_combout\,
	datad => \stage3_1|m_34|o[11]~5_combout\,
	combout => \stage3_1|m_34|o[3]~34_combout\);

-- Location: LCCOMB_X32_Y19_N18
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

-- Location: FF_X32_Y19_N19
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

-- Location: LCCOMB_X29_Y19_N26
\PR3_pc|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[2]~feeder_combout\ = \PR2_pc|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(2),
	combout => \PR3_pc|Q[2]~feeder_combout\);

-- Location: FF_X29_Y19_N27
\PR3_pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(2));

-- Location: LCCOMB_X29_Y19_N12
\stage3_1|m_34|o[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[2]~37_combout\ = (\PR2_LS7|Q\(9) & \PR2_ctrl|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_LS7|Q\(9),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[2]~37_combout\);

-- Location: LCCOMB_X30_Y16_N10
\PR4_aluout|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[2]~feeder_combout\ = \PR3_aluout|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(2),
	combout => \PR4_aluout|Q[2]~feeder_combout\);

-- Location: FF_X30_Y16_N11
\PR4_aluout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(2));

-- Location: FF_X30_Y16_N25
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

-- Location: LCCOMB_X30_Y16_N24
\stage5_1|m_50|o[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[2]~20_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(2))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(2),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_pc|Q\(2),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[2]~20_combout\);

-- Location: FF_X32_Y19_N9
\stage2_2|rf_1|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(2));

-- Location: LCCOMB_X35_Y16_N10
\stage2_2|rf_1|M1_2|o[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[2]~12_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[2]~20_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[2]~20_combout\,
	datac => \stage2_2|rf_1|r7_write~combout\,
	datad => \PR1_pc|Q\(2),
	combout => \stage2_2|rf_1|M1_2|o[2]~12_combout\);

-- Location: FF_X35_Y16_N11
\stage2_2|rf_1|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[2]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(2));

-- Location: LCCOMB_X32_Y19_N8
\stage2_2|rf_1|M1|output[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[2]~24_combout\ = (\PR1_instr|Q\(9) & ((\PR1_instr|Q\(10) & ((\stage2_2|rf_1|r7|Q\(2)))) # (!\PR1_instr|Q\(10) & (\stage2_2|rf_1|r1|Q\(2))))) # (!\PR1_instr|Q\(9) & (\PR1_instr|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r1|Q\(2),
	datad => \stage2_2|rf_1|r7|Q\(2),
	combout => \stage2_2|rf_1|M1|output[2]~24_combout\);

-- Location: LCCOMB_X29_Y19_N24
\stage2_2|rf_1|r6|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r6|Q[2]~feeder_combout\ = \stage5_1|m_50|o[2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[2]~20_combout\,
	combout => \stage2_2|rf_1|r6|Q[2]~feeder_combout\);

-- Location: FF_X29_Y19_N25
\stage2_2|rf_1|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r6|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(2));

-- Location: FF_X30_Y16_N13
\stage2_2|rf_1|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[2]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(2));

-- Location: LCCOMB_X29_Y19_N16
\stage2_2|rf_1|M1|output[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[2]~25_combout\ = (\stage2_2|rf_1|M1|output[2]~24_combout\ & ((\stage2_2|rf_1|r6|Q\(2)) # ((\PR1_instr|Q\(9))))) # (!\stage2_2|rf_1|M1|output[2]~24_combout\ & (((!\PR1_instr|Q\(9) & \stage2_2|rf_1|r0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[2]~24_combout\,
	datab => \stage2_2|rf_1|r6|Q\(2),
	datac => \PR1_instr|Q\(9),
	datad => \stage2_2|rf_1|r0|Q\(2),
	combout => \stage2_2|rf_1|M1|output[2]~25_combout\);

-- Location: FF_X29_Y19_N17
\PR2_d1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[2]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(2));

-- Location: LCCOMB_X30_Y19_N26
\stage3_1|m_34|o[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[2]~36_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & (\stage5_1|m_50|o[2]~20_combout\)) # (!\stage3_1|forwarding|new_d2~6_combout\ & ((\PR2_d1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~6_combout\,
	datab => \stage5_1|m_50|o[2]~20_combout\,
	datac => \PR2_d1|Q\(2),
	datad => \stage3_1|m_34|o[11]~3_combout\,
	combout => \stage3_1|m_34|o[2]~36_combout\);

-- Location: LCCOMB_X30_Y19_N20
\stage3_1|m_34|o[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[2]~38_combout\ = (\stage3_1|m_34|o[2]~37_combout\) # ((\stage3_1|m_34|o[2]~36_combout\) # ((\stage3_1|m_34|o[2]~35_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[2]~37_combout\,
	datab => \stage3_1|m_34|o[2]~35_combout\,
	datac => \stage3_1|m_34|o[2]~36_combout\,
	datad => \stage3_1|m_34|o[11]~5_combout\,
	combout => \stage3_1|m_34|o[2]~38_combout\);

-- Location: LCCOMB_X34_Y18_N0
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

-- Location: FF_X34_Y18_N1
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

-- Location: LCCOMB_X29_Y19_N6
\PR3_pc|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[1]~feeder_combout\ = \PR2_pc|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(1),
	combout => \PR3_pc|Q[1]~feeder_combout\);

-- Location: FF_X29_Y19_N7
\PR3_pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(1));

-- Location: LCCOMB_X32_Y19_N16
\stage3_1|m_34|o[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[1]~45_combout\ = (\PR2_LS7|Q\(8) & \PR2_ctrl|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR2_LS7|Q\(8),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[1]~45_combout\);

-- Location: LCCOMB_X31_Y19_N0
\stage3_1|m_34|o[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[1]~46_combout\ = (\stage3_1|forwarding|new_d2~2_combout\ & (!\PR2_ctrl|Q\(9) & (\stage3_1|m_34|o[1]~39_combout\ & \stage3_1|forwarding|new_d2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~2_combout\,
	datab => \PR2_ctrl|Q\(9),
	datac => \stage3_1|m_34|o[1]~39_combout\,
	datad => \stage3_1|forwarding|new_d2~3_combout\,
	combout => \stage3_1|m_34|o[1]~46_combout\);

-- Location: LCCOMB_X31_Y19_N2
\stage3_1|forwarding|new_d2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~5_combout\ = (\PR4_ctrl|Q\(2) & (\PR4_rfa3|Q\(2) $ (!\PR2_rfa2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(2),
	datab => \PR4_rfa3|Q\(2),
	datad => \PR2_rfa2|Q\(2),
	combout => \stage3_1|forwarding|new_d2~5_combout\);

-- Location: FF_X31_Y16_N9
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

-- Location: FF_X31_Y16_N13
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

-- Location: LCCOMB_X31_Y16_N12
\stage5_1|m_50|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[1]~21_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(1))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_aluout|Q\(1),
	datac => \PR4_pc|Q\(1),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[1]~21_combout\);

-- Location: LCCOMB_X32_Y15_N12
\stage2_2|rf_1|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[1]~feeder_combout\ = \stage5_1|m_50|o[1]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[1]~21_combout\,
	combout => \stage2_2|rf_1|r0|Q[1]~feeder_combout\);

-- Location: FF_X32_Y15_N13
\stage2_2|rf_1|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(1));

-- Location: FF_X29_Y19_N19
\stage2_2|rf_1|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(1));

-- Location: FF_X32_Y19_N1
\stage2_2|rf_1|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[1]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(1));

-- Location: LCCOMB_X32_Y18_N14
\stage2_2|rf_1|M1_2|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[1]~13_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[1]~21_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage5_1|m_50|o[1]~21_combout\,
	datac => \stage2_2|rf_1|r7_write~combout\,
	datad => \PR1_pc|Q\(1),
	combout => \stage2_2|rf_1|M1_2|o[1]~13_combout\);

-- Location: FF_X32_Y18_N15
\stage2_2|rf_1|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[1]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(1));

-- Location: LCCOMB_X32_Y19_N0
\stage2_2|rf_1|M1|output[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[1]~26_combout\ = (\PR1_instr|Q\(9) & ((\PR1_instr|Q\(10) & ((\stage2_2|rf_1|r7|Q\(1)))) # (!\PR1_instr|Q\(10) & (\stage2_2|rf_1|r1|Q\(1))))) # (!\PR1_instr|Q\(9) & (\PR1_instr|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r1|Q\(1),
	datad => \stage2_2|rf_1|r7|Q\(1),
	combout => \stage2_2|rf_1|M1|output[1]~26_combout\);

-- Location: LCCOMB_X32_Y19_N30
\stage2_2|rf_1|M1|output[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[1]~27_combout\ = (\PR1_instr|Q\(9) & (((\stage2_2|rf_1|M1|output[1]~26_combout\)))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|M1|output[1]~26_combout\ & ((\stage2_2|rf_1|r6|Q\(1)))) # (!\stage2_2|rf_1|M1|output[1]~26_combout\ & 
-- (\stage2_2|rf_1|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datab => \stage2_2|rf_1|r0|Q\(1),
	datac => \stage2_2|rf_1|r6|Q\(1),
	datad => \stage2_2|rf_1|M1|output[1]~26_combout\,
	combout => \stage2_2|rf_1|M1|output[1]~27_combout\);

-- Location: FF_X32_Y19_N31
\PR2_d1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[1]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(1));

-- Location: LCCOMB_X32_Y19_N2
\stage3_1|m_34|o[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[1]~47_combout\ = (\stage3_1|forwarding|new_d2~5_combout\ & ((\stage3_1|forwarding|new_d2~4_combout\ & ((\stage5_1|m_50|o[1]~21_combout\))) # (!\stage3_1|forwarding|new_d2~4_combout\ & (\PR2_d1|Q\(1))))) # 
-- (!\stage3_1|forwarding|new_d2~5_combout\ & (((\PR2_d1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~5_combout\,
	datab => \stage3_1|forwarding|new_d2~4_combout\,
	datac => \PR2_d1|Q\(1),
	datad => \stage5_1|m_50|o[1]~21_combout\,
	combout => \stage3_1|m_34|o[1]~47_combout\);

-- Location: LCCOMB_X32_Y19_N28
\stage3_1|m_34|o[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[1]~48_combout\ = (\stage3_1|m_34|o[1]~45_combout\) # ((\stage3_1|m_34|o[1]~46_combout\) # ((\stage3_1|m_34|o[11]~3_combout\ & \stage3_1|m_34|o[1]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~3_combout\,
	datab => \stage3_1|m_34|o[1]~45_combout\,
	datac => \stage3_1|m_34|o[1]~46_combout\,
	datad => \stage3_1|m_34|o[1]~47_combout\,
	combout => \stage3_1|m_34|o[1]~48_combout\);

-- Location: LCCOMB_X32_Y19_N6
\stage3_1|m_34|o[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~40_combout\ = (\PR2_ctrl|Q\(9) & \PR2_LS7|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PR2_ctrl|Q\(9),
	datad => \PR2_LS7|Q\(7),
	combout => \stage3_1|m_34|o[0]~40_combout\);

-- Location: FF_X29_Y19_N13
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

-- Location: LCCOMB_X29_Y19_N8
\PR3_pc|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_pc|Q[0]~feeder_combout\ = \PR2_pc|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR2_pc|Q\(0),
	combout => \PR3_pc|Q[0]~feeder_combout\);

-- Location: FF_X29_Y19_N9
\PR3_pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_pc|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_pc|Q\(0));

-- Location: LCCOMB_X29_Y17_N10
\PR4_aluout|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[0]~feeder_combout\ = \PR3_aluout|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(0),
	combout => \PR4_aluout|Q[0]~feeder_combout\);

-- Location: FF_X29_Y17_N11
\PR4_aluout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(0));

-- Location: FF_X29_Y17_N1
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

-- Location: LCCOMB_X29_Y17_N0
\stage5_1|m_50|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[0]~22_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(0))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_aluout|Q\(0),
	datac => \PR4_pc|Q\(0),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[0]~22_combout\);

-- Location: LCCOMB_X29_Y19_N28
\stage2_2|rf_1|r6|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r6|Q[0]~feeder_combout\ = \stage5_1|m_50|o[0]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[0]~22_combout\,
	combout => \stage2_2|rf_1|r6|Q[0]~feeder_combout\);

-- Location: FF_X29_Y19_N29
\stage2_2|rf_1|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r6|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(0));

-- Location: LCCOMB_X32_Y15_N26
\stage2_2|rf_1|r0|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[0]~feeder_combout\ = \stage5_1|m_50|o[0]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[0]~22_combout\,
	combout => \stage2_2|rf_1|r0|Q[0]~feeder_combout\);

-- Location: FF_X32_Y15_N27
\stage2_2|rf_1|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(0));

-- Location: FF_X32_Y19_N23
\stage2_2|rf_1|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[0]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(0));

-- Location: LCCOMB_X31_Y15_N24
\stage2_2|rf_1|M1_2|o[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[0]~14_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[0]~22_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(0),
	datac => \stage5_1|m_50|o[0]~22_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[0]~14_combout\);

-- Location: FF_X31_Y15_N25
\stage2_2|rf_1|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[0]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(0));

-- Location: LCCOMB_X32_Y19_N22
\stage2_2|rf_1|M1|output[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[0]~28_combout\ = (\PR1_instr|Q\(9) & ((\PR1_instr|Q\(10) & ((\stage2_2|rf_1|r7|Q\(0)))) # (!\PR1_instr|Q\(10) & (\stage2_2|rf_1|r1|Q\(0))))) # (!\PR1_instr|Q\(9) & (\PR1_instr|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(9),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r1|Q\(0),
	datad => \stage2_2|rf_1|r7|Q\(0),
	combout => \stage2_2|rf_1|M1|output[0]~28_combout\);

-- Location: LCCOMB_X32_Y19_N4
\stage2_2|rf_1|M1|output[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[0]~29_combout\ = (\stage2_2|rf_1|M1|output[0]~28_combout\ & ((\stage2_2|rf_1|r6|Q\(0)) # ((\PR1_instr|Q\(9))))) # (!\stage2_2|rf_1|M1|output[0]~28_combout\ & (((\stage2_2|rf_1|r0|Q\(0) & !\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r6|Q\(0),
	datab => \stage2_2|rf_1|r0|Q\(0),
	datac => \stage2_2|rf_1|M1|output[0]~28_combout\,
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[0]~29_combout\);

-- Location: FF_X32_Y19_N5
\PR2_d1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[0]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(0));

-- Location: LCCOMB_X31_Y18_N4
\stage3_1|forwarding|new_d1[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[0]~20_combout\ = (\stage3_1|forwarding|new_d1~4_combout\ & ((\stage3_1|forwarding|new_d1~5_combout\ & ((\stage5_1|m_50|o[0]~22_combout\))) # (!\stage3_1|forwarding|new_d1~5_combout\ & (\PR2_d1|Q\(0))))) # 
-- (!\stage3_1|forwarding|new_d1~4_combout\ & (\PR2_d1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(0),
	datab => \stage3_1|forwarding|new_d1~4_combout\,
	datac => \stage5_1|m_50|o[0]~22_combout\,
	datad => \stage3_1|forwarding|new_d1~5_combout\,
	combout => \stage3_1|forwarding|new_d1[0]~20_combout\);

-- Location: LCCOMB_X31_Y18_N2
\stage3_1|forwarding|new_d1[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[0]~21_combout\ = (\stage3_1|forwarding|new_d1~3_combout\ & (\stage3_1|m_34|o[0]~41_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[0]~41_combout\,
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage3_1|forwarding|new_d1[0]~20_combout\,
	combout => \stage3_1|forwarding|new_d1[0]~21_combout\);

-- Location: LCCOMB_X30_Y18_N22
\stage3_1|alu_1|M|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[0]~9_combout\ = (\stage3_1|m_34|o[0]~44_combout\ & (\stage3_1|forwarding|new_d1[0]~21_combout\ $ (((!\PR2_ctrl|Q\(10)) # (!\PR2_ctrl|Q\(11)))))) # (!\stage3_1|m_34|o[0]~44_combout\ & ((\PR2_ctrl|Q\(11)) # 
-- ((\stage3_1|forwarding|new_d1[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[0]~44_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|forwarding|new_d1[0]~21_combout\,
	combout => \stage3_1|alu_1|M|o[0]~9_combout\);

-- Location: FF_X30_Y18_N23
\PR3_aluout|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[0]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(0));

-- Location: LCCOMB_X30_Y19_N18
\stage3_1|m_34|o[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~41_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(0)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_pc|Q\(0),
	datab => \PR3_ctrl|Q\(0),
	datac => \PR3_ctrl|Q\(1),
	datad => \PR3_aluout|Q\(0),
	combout => \stage3_1|m_34|o[0]~41_combout\);

-- Location: LCCOMB_X31_Y19_N14
\stage3_1|m_34|o[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~42_combout\ = (\stage3_1|forwarding|new_d2~2_combout\ & (\stage3_1|forwarding|new_d2~3_combout\ & (!\PR2_ctrl|Q\(9) & \stage3_1|m_34|o[0]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~2_combout\,
	datab => \stage3_1|forwarding|new_d2~3_combout\,
	datac => \PR2_ctrl|Q\(9),
	datad => \stage3_1|m_34|o[0]~41_combout\,
	combout => \stage3_1|m_34|o[0]~42_combout\);

-- Location: LCCOMB_X31_Y19_N18
\stage3_1|m_34|o[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~43_combout\ = (\stage3_1|forwarding|new_d2~5_combout\ & ((\stage3_1|forwarding|new_d2~4_combout\ & ((\stage5_1|m_50|o[0]~22_combout\))) # (!\stage3_1|forwarding|new_d2~4_combout\ & (\PR2_d1|Q\(0))))) # 
-- (!\stage3_1|forwarding|new_d2~5_combout\ & (\PR2_d1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(0),
	datab => \stage3_1|forwarding|new_d2~5_combout\,
	datac => \stage3_1|forwarding|new_d2~4_combout\,
	datad => \stage5_1|m_50|o[0]~22_combout\,
	combout => \stage3_1|m_34|o[0]~43_combout\);

-- Location: LCCOMB_X31_Y19_N30
\stage3_1|m_34|o[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[0]~44_combout\ = (\stage3_1|m_34|o[0]~40_combout\) # ((\stage3_1|m_34|o[0]~42_combout\) # ((\stage3_1|m_34|o[11]~3_combout\ & \stage3_1|m_34|o[0]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[0]~40_combout\,
	datab => \stage3_1|m_34|o[11]~3_combout\,
	datac => \stage3_1|m_34|o[0]~42_combout\,
	datad => \stage3_1|m_34|o[0]~43_combout\,
	combout => \stage3_1|m_34|o[0]~44_combout\);

-- Location: LCCOMB_X31_Y18_N0
\stage3_1|alu_1|A|a0|fa0|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa0|c~0_combout\ = (\stage3_1|forwarding|new_d1[0]~21_combout\ & ((\stage3_1|m_34|o[0]~44_combout\))) # (!\stage3_1|forwarding|new_d1[0]~21_combout\ & (\PR2_ctrl|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datac => \stage3_1|m_34|o[0]~44_combout\,
	datad => \stage3_1|forwarding|new_d1[0]~21_combout\,
	combout => \stage3_1|alu_1|A|a0|fa0|c~0_combout\);

-- Location: LCCOMB_X31_Y18_N16
\stage3_1|alu_1|A|a0|fa1|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~1_cout\ = CARRY(\stage3_1|m_34|o[1]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3_1|m_34|o[1]~48_combout\,
	datad => VCC,
	cout => \stage3_1|alu_1|A|a0|fa1|s~1_cout\);

-- Location: LCCOMB_X31_Y18_N18
\stage3_1|alu_1|A|a0|fa1|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~2_combout\ = (\stage3_1|m_32|o[1]~13_combout\ & ((\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~1_cout\ & VCC)) # (!\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~1_cout\)))) # 
-- (!\stage3_1|m_32|o[1]~13_combout\ & ((\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~1_cout\)) # (!\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~1_cout\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~3\ = CARRY((\stage3_1|m_32|o[1]~13_combout\ & (!\stage3_1|alu_1|A|a0|fa0|c~0_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~1_cout\)) # (!\stage3_1|m_32|o[1]~13_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~1_cout\) # 
-- (!\stage3_1|alu_1|A|a0|fa0|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[1]~13_combout\,
	datab => \stage3_1|alu_1|A|a0|fa0|c~0_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~1_cout\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~2_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~3\);

-- Location: LCCOMB_X31_Y18_N6
\stage3_1|alu_1|M|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[1]~10_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[1]~48_combout\)) # (!\stage3_1|m_32|o[1]~13_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[1]~13_combout\,
	datab => \stage3_1|m_34|o[1]~48_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~2_combout\,
	combout => \stage3_1|alu_1|M|o[1]~10_combout\);

-- Location: FF_X31_Y18_N7
\PR3_aluout|Q[1]\ : dffeas
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
	q => \PR3_aluout|Q\(1));

-- Location: LCCOMB_X30_Y19_N6
\stage3_1|m_34|o[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[1]~39_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(1)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(1),
	datad => \PR3_aluout|Q\(1),
	combout => \stage3_1|m_34|o[1]~39_combout\);

-- Location: LCCOMB_X30_Y19_N24
\stage3_1|forwarding|new_d1[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[1]~19_combout\ = (\stage3_1|forwarding|new_d1~4_combout\ & ((\stage3_1|forwarding|new_d1~5_combout\ & ((\stage5_1|m_50|o[1]~21_combout\))) # (!\stage3_1|forwarding|new_d1~5_combout\ & (\PR2_d1|Q\(1))))) # 
-- (!\stage3_1|forwarding|new_d1~4_combout\ & (\PR2_d1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(1),
	datab => \stage3_1|forwarding|new_d1~4_combout\,
	datac => \stage5_1|m_50|o[1]~21_combout\,
	datad => \stage3_1|forwarding|new_d1~5_combout\,
	combout => \stage3_1|forwarding|new_d1[1]~19_combout\);

-- Location: LCCOMB_X30_Y19_N8
\stage3_1|m_32|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[1]~13_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1~3_combout\ & (\stage3_1|m_34|o[1]~39_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1[1]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[1]~39_combout\,
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|forwarding|new_d1[1]~19_combout\,
	combout => \stage3_1|m_32|o[1]~13_combout\);

-- Location: LCCOMB_X31_Y18_N20
\stage3_1|alu_1|A|a0|fa1|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~4_combout\ = ((\stage3_1|m_32|o[2]~12_combout\ $ (\stage3_1|m_34|o[2]~38_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~3\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~5\ = CARRY((\stage3_1|m_32|o[2]~12_combout\ & ((\stage3_1|m_34|o[2]~38_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~3\))) # (!\stage3_1|m_32|o[2]~12_combout\ & (\stage3_1|m_34|o[2]~38_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[2]~12_combout\,
	datab => \stage3_1|m_34|o[2]~38_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~3\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~4_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~5\);

-- Location: LCCOMB_X31_Y18_N8
\stage3_1|alu_1|M|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[2]~11_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[2]~38_combout\)) # (!\stage3_1|m_32|o[2]~12_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[2]~12_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_34|o[2]~38_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~4_combout\,
	combout => \stage3_1|alu_1|M|o[2]~11_combout\);

-- Location: FF_X31_Y18_N9
\PR3_aluout|Q[2]\ : dffeas
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
	q => \PR3_aluout|Q\(2));

-- Location: LCCOMB_X29_Y19_N20
\stage3_1|m_34|o[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[2]~35_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(2)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(2),
	datad => \PR3_aluout|Q\(2),
	combout => \stage3_1|m_34|o[2]~35_combout\);

-- Location: LCCOMB_X30_Y19_N12
\stage3_1|forwarding|new_d1[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[2]~18_combout\ = (\stage3_1|forwarding|new_d1~5_combout\ & ((\stage3_1|forwarding|new_d1~4_combout\ & ((\stage5_1|m_50|o[2]~20_combout\))) # (!\stage3_1|forwarding|new_d1~4_combout\ & (\PR2_d1|Q\(2))))) # 
-- (!\stage3_1|forwarding|new_d1~5_combout\ & (((\PR2_d1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~5_combout\,
	datab => \stage3_1|forwarding|new_d1~4_combout\,
	datac => \PR2_d1|Q\(2),
	datad => \stage5_1|m_50|o[2]~20_combout\,
	combout => \stage3_1|forwarding|new_d1[2]~18_combout\);

-- Location: LCCOMB_X30_Y19_N30
\stage3_1|m_32|o[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[2]~12_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1~3_combout\ & (\stage3_1|m_34|o[2]~35_combout\)) # (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1[2]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~3_combout\,
	datab => \stage3_1|m_34|o[2]~35_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|forwarding|new_d1[2]~18_combout\,
	combout => \stage3_1|m_32|o[2]~12_combout\);

-- Location: LCCOMB_X31_Y18_N22
\stage3_1|alu_1|A|a0|fa1|s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~6_combout\ = (\stage3_1|m_32|o[3]~11_combout\ & ((\stage3_1|m_34|o[3]~34_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~5\ & VCC)) # (!\stage3_1|m_34|o[3]~34_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~5\)))) # 
-- (!\stage3_1|m_32|o[3]~11_combout\ & ((\stage3_1|m_34|o[3]~34_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~5\)) # (!\stage3_1|m_34|o[3]~34_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~5\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~7\ = CARRY((\stage3_1|m_32|o[3]~11_combout\ & (!\stage3_1|m_34|o[3]~34_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~5\)) # (!\stage3_1|m_32|o[3]~11_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~5\) # (!\stage3_1|m_34|o[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[3]~11_combout\,
	datab => \stage3_1|m_34|o[3]~34_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~5\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~6_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~7\);

-- Location: LCCOMB_X31_Y18_N10
\stage3_1|alu_1|M|o[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[3]~12_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[3]~34_combout\)) # (!\stage3_1|m_32|o[3]~11_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[3]~11_combout\,
	datab => \stage3_1|m_34|o[3]~34_combout\,
	datac => \stage3_1|alu_1|A|a0|fa1|s~6_combout\,
	datad => \PR2_ctrl|Q\(11),
	combout => \stage3_1|alu_1|M|o[3]~12_combout\);

-- Location: FF_X31_Y18_N11
\PR3_aluout|Q[3]\ : dffeas
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
	q => \PR3_aluout|Q\(3));

-- Location: LCCOMB_X30_Y16_N22
\PR4_aluout|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR4_aluout|Q[3]~feeder_combout\ = \PR3_aluout|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR3_aluout|Q\(3),
	combout => \PR4_aluout|Q[3]~feeder_combout\);

-- Location: FF_X30_Y16_N23
\PR4_aluout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR4_aluout|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR4_aluout|Q\(3));

-- Location: FF_X30_Y16_N9
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

-- Location: LCCOMB_X30_Y16_N8
\stage5_1|m_50|o[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[3]~19_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(3))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(3),
	datab => \PR4_ctrl|Q\(0),
	datac => \PR4_pc|Q\(3),
	datad => \PR4_ctrl|Q\(1),
	combout => \stage5_1|m_50|o[3]~19_combout\);

-- Location: FF_X30_Y18_N5
\stage2_2|rf_1|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(3));

-- Location: FF_X34_Y18_N29
\stage2_2|rf_1|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(3));

-- Location: LCCOMB_X34_Y17_N0
\stage2_2|rf_1|M1_2|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[3]~11_combout\ = (\stage2_2|rf_1|r7_write~combout\ & ((\stage5_1|m_50|o[3]~19_combout\))) # (!\stage2_2|rf_1|r7_write~combout\ & (\PR1_pc|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PR1_pc|Q\(3),
	datac => \stage5_1|m_50|o[3]~19_combout\,
	datad => \stage2_2|rf_1|r7_write~combout\,
	combout => \stage2_2|rf_1|M1_2|o[3]~11_combout\);

-- Location: FF_X34_Y17_N1
\stage2_2|rf_1|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[3]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(3));

-- Location: LCCOMB_X34_Y18_N28
\stage2_2|rf_1|M1|output[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[3]~22_combout\ = (\PR1_instr|Q\(10) & (((\stage2_2|rf_1|r7|Q\(3))) # (!\PR1_instr|Q\(9)))) # (!\PR1_instr|Q\(10) & (\PR1_instr|Q\(9) & (\stage2_2|rf_1|r1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \PR1_instr|Q\(9),
	datac => \stage2_2|rf_1|r1|Q\(3),
	datad => \stage2_2|rf_1|r7|Q\(3),
	combout => \stage2_2|rf_1|M1|output[3]~22_combout\);

-- Location: FF_X30_Y16_N5
\stage2_2|rf_1|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(3));

-- Location: LCCOMB_X30_Y18_N28
\stage2_2|rf_1|M1|output[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[3]~23_combout\ = (\stage2_2|rf_1|M1|output[3]~22_combout\ & ((\stage2_2|rf_1|r6|Q\(3)) # ((\PR1_instr|Q\(9))))) # (!\stage2_2|rf_1|M1|output[3]~22_combout\ & (((\stage2_2|rf_1|r0|Q\(3) & !\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r6|Q\(3),
	datab => \stage2_2|rf_1|M1|output[3]~22_combout\,
	datac => \stage2_2|rf_1|r0|Q\(3),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[3]~23_combout\);

-- Location: FF_X30_Y18_N29
\PR2_d1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[3]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(3));

-- Location: LCCOMB_X30_Y18_N6
\stage3_1|forwarding|new_d1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[3]~17_combout\ = (\stage3_1|forwarding|new_d1~4_combout\ & ((\stage3_1|forwarding|new_d1~5_combout\ & ((\stage5_1|m_50|o[3]~19_combout\))) # (!\stage3_1|forwarding|new_d1~5_combout\ & (\PR2_d1|Q\(3))))) # 
-- (!\stage3_1|forwarding|new_d1~4_combout\ & (\PR2_d1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(3),
	datab => \stage5_1|m_50|o[3]~19_combout\,
	datac => \stage3_1|forwarding|new_d1~4_combout\,
	datad => \stage3_1|forwarding|new_d1~5_combout\,
	combout => \stage3_1|forwarding|new_d1[3]~17_combout\);

-- Location: LCCOMB_X30_Y18_N16
\stage3_1|m_32|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[3]~11_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|m_34|o[3]~31_combout\))) # (!\stage3_1|forwarding|new_d1~3_combout\ & (\stage3_1|forwarding|new_d1[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1[3]~17_combout\,
	datab => \stage3_1|m_34|o[3]~31_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|forwarding|new_d1~3_combout\,
	combout => \stage3_1|m_32|o[3]~11_combout\);

-- Location: LCCOMB_X31_Y18_N24
\stage3_1|alu_1|A|a0|fa1|s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~8_combout\ = ((\stage3_1|m_34|o[4]~30_combout\ $ (\stage3_1|m_32|o[4]~10_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~7\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~9\ = CARRY((\stage3_1|m_34|o[4]~30_combout\ & ((\stage3_1|m_32|o[4]~10_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~7\))) # (!\stage3_1|m_34|o[4]~30_combout\ & (\stage3_1|m_32|o[4]~10_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[4]~30_combout\,
	datab => \stage3_1|m_32|o[4]~10_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~7\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~8_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~9\);

-- Location: LCCOMB_X31_Y18_N26
\stage3_1|alu_1|A|a0|fa1|s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~10_combout\ = (\stage3_1|m_34|o[5]~26_combout\ & ((\stage3_1|m_32|o[5]~9_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~9\ & VCC)) # (!\stage3_1|m_32|o[5]~9_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~9\)))) # 
-- (!\stage3_1|m_34|o[5]~26_combout\ & ((\stage3_1|m_32|o[5]~9_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~9\)) # (!\stage3_1|m_32|o[5]~9_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~9\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~11\ = CARRY((\stage3_1|m_34|o[5]~26_combout\ & (!\stage3_1|m_32|o[5]~9_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~9\)) # (!\stage3_1|m_34|o[5]~26_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~9\) # (!\stage3_1|m_32|o[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[5]~26_combout\,
	datab => \stage3_1|m_32|o[5]~9_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~9\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~10_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~11\);

-- Location: LCCOMB_X31_Y18_N12
\stage3_1|alu_1|M|o[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[5]~14_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[5]~9_combout\)) # (!\stage3_1|m_34|o[5]~26_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[5]~26_combout\,
	datab => \stage3_1|m_32|o[5]~9_combout\,
	datac => \stage3_1|alu_1|A|a0|fa1|s~10_combout\,
	datad => \PR2_ctrl|Q\(11),
	combout => \stage3_1|alu_1|M|o[5]~14_combout\);

-- Location: FF_X31_Y18_N13
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

-- Location: LCCOMB_X31_Y16_N16
\stage3_1|m_34|o[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[5]~24_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(5))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_aluout|Q\(5),
	datac => \PR3_pc|Q\(5),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|m_34|o[5]~24_combout\);

-- Location: LCCOMB_X32_Y18_N2
\stage3_1|m_34|o[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[5]~25_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[5]~17_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(5),
	datab => \stage5_1|m_50|o[5]~17_combout\,
	datac => \stage3_1|m_34|o[11]~3_combout\,
	datad => \stage3_1|forwarding|new_d2~6_combout\,
	combout => \stage3_1|m_34|o[5]~25_combout\);

-- Location: LCCOMB_X32_Y18_N20
\stage3_1|m_34|o[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[5]~26_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[5]~25_combout\) # ((\stage3_1|m_34|o[5]~24_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~2_combout\,
	datab => \stage3_1|m_34|o[5]~24_combout\,
	datac => \stage3_1|m_34|o[11]~5_combout\,
	datad => \stage3_1|m_34|o[5]~25_combout\,
	combout => \stage3_1|m_34|o[5]~26_combout\);

-- Location: LCCOMB_X31_Y18_N28
\stage3_1|alu_1|A|a0|fa1|s~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~12_combout\ = ((\stage3_1|m_34|o[6]~23_combout\ $ (\stage3_1|m_32|o[6]~8_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~11\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~13\ = CARRY((\stage3_1|m_34|o[6]~23_combout\ & ((\stage3_1|m_32|o[6]~8_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~11\))) # (!\stage3_1|m_34|o[6]~23_combout\ & (\stage3_1|m_32|o[6]~8_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[6]~23_combout\,
	datab => \stage3_1|m_32|o[6]~8_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~11\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~12_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~13\);

-- Location: LCCOMB_X32_Y18_N12
\stage3_1|alu_1|M|o[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[6]~13_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[6]~8_combout\)) # (!\stage3_1|m_34|o[6]~23_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[6]~23_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_32|o[6]~8_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~12_combout\,
	combout => \stage3_1|alu_1|M|o[6]~13_combout\);

-- Location: FF_X32_Y18_N13
\PR3_aluout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[6]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(6));

-- Location: LCCOMB_X34_Y18_N22
\stage3_1|m_34|o[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[6]~21_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(6))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(6),
	datab => \PR3_pc|Q\(6),
	datac => \PR3_ctrl|Q\(1),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|m_34|o[6]~21_combout\);

-- Location: LCCOMB_X32_Y18_N16
\stage3_1|m_34|o[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[6]~22_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[6]~16_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(6),
	datab => \stage5_1|m_50|o[6]~16_combout\,
	datac => \stage3_1|m_34|o[11]~3_combout\,
	datad => \stage3_1|forwarding|new_d2~6_combout\,
	combout => \stage3_1|m_34|o[6]~22_combout\);

-- Location: LCCOMB_X32_Y18_N6
\stage3_1|m_34|o[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[6]~23_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[6]~22_combout\) # ((\stage3_1|m_34|o[6]~21_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~2_combout\,
	datab => \stage3_1|m_34|o[6]~21_combout\,
	datac => \stage3_1|m_34|o[11]~5_combout\,
	datad => \stage3_1|m_34|o[6]~22_combout\,
	combout => \stage3_1|m_34|o[6]~23_combout\);

-- Location: LCCOMB_X31_Y18_N30
\stage3_1|alu_1|A|a0|fa1|s~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~14_combout\ = (\stage3_1|m_32|o[7]~7_combout\ & ((\stage3_1|m_34|o[7]~20_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~13\ & VCC)) # (!\stage3_1|m_34|o[7]~20_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~13\)))) # 
-- (!\stage3_1|m_32|o[7]~7_combout\ & ((\stage3_1|m_34|o[7]~20_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~13\)) # (!\stage3_1|m_34|o[7]~20_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~13\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~15\ = CARRY((\stage3_1|m_32|o[7]~7_combout\ & (!\stage3_1|m_34|o[7]~20_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~13\)) # (!\stage3_1|m_32|o[7]~7_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~13\) # (!\stage3_1|m_34|o[7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[7]~7_combout\,
	datab => \stage3_1|m_34|o[7]~20_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~13\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~14_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~15\);

-- Location: LCCOMB_X30_Y15_N14
\stage3_1|alu_1|M|o[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[7]~6_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[7]~7_combout\)) # (!\stage3_1|m_34|o[7]~20_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_34|o[7]~20_combout\,
	datac => \stage3_1|m_32|o[7]~7_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~14_combout\,
	combout => \stage3_1|alu_1|M|o[7]~6_combout\);

-- Location: LCCOMB_X30_Y15_N6
\PR3_aluout|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR3_aluout|Q[7]~feeder_combout\ = \stage3_1|alu_1|M|o[7]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage3_1|alu_1|M|o[7]~6_combout\,
	combout => \PR3_aluout|Q[7]~feeder_combout\);

-- Location: FF_X30_Y15_N7
\PR3_aluout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR3_aluout|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(7));

-- Location: LCCOMB_X30_Y15_N10
\stage3_1|forwarding|stage4_d3[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[7]~14_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(7))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(7),
	datab => \PR3_pc|Q\(7),
	datac => \PR3_ctrl|Q\(0),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|stage4_d3[7]~14_combout\);

-- Location: LCCOMB_X30_Y15_N26
\stage3_1|forwarding|stage4_d3[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[7]~15_combout\ = (\stage3_1|forwarding|stage4_d3[7]~14_combout\) # ((\PR3_LS7|Q\(7) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(7),
	datab => \PR3_ctrl|Q\(0),
	datad => \stage3_1|forwarding|stage4_d3[7]~14_combout\,
	combout => \stage3_1|forwarding|stage4_d3[7]~15_combout\);

-- Location: LCCOMB_X30_Y15_N2
\stage3_1|forwarding|new_d1[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[7]~13_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[7]~15_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(7),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage5_1|m_50|o[7]~15_combout\,
	datad => \stage3_1|forwarding|new_d1~23_combout\,
	combout => \stage3_1|forwarding|new_d1[7]~13_combout\);

-- Location: LCCOMB_X30_Y15_N22
\stage3_1|m_32|o[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[7]~7_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[7]~13_combout\) # ((\stage3_1|forwarding|new_d1~3_combout\ & \stage3_1|forwarding|stage4_d3[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|stage4_d3[7]~15_combout\,
	datad => \stage3_1|forwarding|new_d1[7]~13_combout\,
	combout => \stage3_1|m_32|o[7]~7_combout\);

-- Location: LCCOMB_X31_Y17_N0
\stage3_1|alu_1|A|a0|fa1|s~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~16_combout\ = ((\stage3_1|m_32|o[8]~6_combout\ $ (\stage3_1|m_34|o[8]~18_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~15\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~17\ = CARRY((\stage3_1|m_32|o[8]~6_combout\ & ((\stage3_1|m_34|o[8]~18_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~15\))) # (!\stage3_1|m_32|o[8]~6_combout\ & (\stage3_1|m_34|o[8]~18_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[8]~6_combout\,
	datab => \stage3_1|m_34|o[8]~18_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~15\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~16_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~17\);

-- Location: LCCOMB_X31_Y17_N30
\stage3_1|alu_1|M|o[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[8]~8_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[8]~18_combout\)) # (!\stage3_1|m_32|o[8]~6_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[8]~6_combout\,
	datab => \stage3_1|m_34|o[8]~18_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~16_combout\,
	combout => \stage3_1|alu_1|M|o[8]~8_combout\);

-- Location: FF_X31_Y17_N31
\PR3_aluout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(8));

-- Location: LCCOMB_X30_Y16_N20
\stage3_1|forwarding|stage4_d3[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[8]~12_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(8)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_pc|Q\(8),
	datab => \PR3_ctrl|Q\(0),
	datac => \PR3_ctrl|Q\(1),
	datad => \PR3_aluout|Q\(8),
	combout => \stage3_1|forwarding|stage4_d3[8]~12_combout\);

-- Location: LCCOMB_X30_Y16_N4
\stage3_1|forwarding|stage4_d3[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[8]~13_combout\ = (\stage3_1|forwarding|stage4_d3[8]~12_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_LS7|Q\(8),
	datad => \stage3_1|forwarding|stage4_d3[8]~12_combout\,
	combout => \stage3_1|forwarding|stage4_d3[8]~13_combout\);

-- Location: LCCOMB_X30_Y17_N30
\stage3_1|forwarding|new_d1[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[8]~12_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[8]~13_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~23_combout\,
	datab => \PR2_d1|Q\(8),
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage5_1|m_50|o[8]~13_combout\,
	combout => \stage3_1|forwarding|new_d1[8]~12_combout\);

-- Location: LCCOMB_X30_Y17_N8
\stage3_1|m_32|o[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[8]~6_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[8]~12_combout\) # ((\stage3_1|forwarding|stage4_d3[8]~13_combout\ & \stage3_1|forwarding|new_d1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|stage4_d3[8]~13_combout\,
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|new_d1[8]~12_combout\,
	datad => \PR2_ctrl|Q\(10),
	combout => \stage3_1|m_32|o[8]~6_combout\);

-- Location: LCCOMB_X31_Y17_N2
\stage3_1|alu_1|A|a0|fa1|s~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~18_combout\ = (\stage3_1|m_32|o[9]~5_combout\ & ((\stage3_1|m_34|o[9]~16_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~17\ & VCC)) # (!\stage3_1|m_34|o[9]~16_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~17\)))) # 
-- (!\stage3_1|m_32|o[9]~5_combout\ & ((\stage3_1|m_34|o[9]~16_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~17\)) # (!\stage3_1|m_34|o[9]~16_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~17\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~19\ = CARRY((\stage3_1|m_32|o[9]~5_combout\ & (!\stage3_1|m_34|o[9]~16_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~17\)) # (!\stage3_1|m_32|o[9]~5_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~17\) # (!\stage3_1|m_34|o[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[9]~5_combout\,
	datab => \stage3_1|m_34|o[9]~16_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~17\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~18_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~19\);

-- Location: LCCOMB_X30_Y16_N16
\stage3_1|alu_1|M|o[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[9]~7_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[9]~16_combout\)) # (!\stage3_1|m_32|o[9]~5_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[9]~5_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_34|o[9]~16_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~18_combout\,
	combout => \stage3_1|alu_1|M|o[9]~7_combout\);

-- Location: FF_X30_Y16_N17
\PR3_aluout|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[9]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(9));

-- Location: LCCOMB_X31_Y16_N0
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

-- Location: FF_X31_Y16_N1
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

-- Location: FF_X31_Y16_N19
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

-- Location: LCCOMB_X31_Y16_N18
\stage5_1|m_50|o[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[9]~10_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(9))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \PR4_aluout|Q\(9),
	datac => \PR4_pc|Q\(9),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[9]~10_combout\);

-- Location: FF_X31_Y16_N25
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

-- Location: LCCOMB_X31_Y16_N24
\stage5_1|m_50|o[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[9]~11_combout\ = (\stage5_1|m_50|o[9]~10_combout\) # ((\PR4_ctrl|Q\(1) & (\PR4_LS7|Q\(9) & \PR4_ctrl|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(1),
	datab => \stage5_1|m_50|o[9]~10_combout\,
	datac => \PR4_LS7|Q\(9),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[9]~11_combout\);

-- Location: LCCOMB_X32_Y14_N14
\stage2_2|rf_1|M1_2|o[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[9]~5_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[9]~11_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[9]~11_combout\,
	datad => \PR1_pc|Q\(9),
	combout => \stage2_2|rf_1|M1_2|o[9]~5_combout\);

-- Location: FF_X32_Y14_N15
\stage2_2|rf_1|r7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[9]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(9));

-- Location: FF_X32_Y14_N13
\stage2_2|rf_1|r6|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[9]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(9));

-- Location: LCCOMB_X32_Y14_N12
\stage2_2|rf_1|M1|output[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[9]~10_combout\ = (\PR1_instr|Q\(10) & ((\PR1_instr|Q\(9) & (\stage2_2|rf_1|r7|Q\(9))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|r6|Q\(9)))))) # (!\PR1_instr|Q\(10) & (((\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(10),
	datab => \stage2_2|rf_1|r7|Q\(9),
	datac => \stage2_2|rf_1|r6|Q\(9),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[9]~10_combout\);

-- Location: LCCOMB_X35_Y17_N8
\stage2_2|rf_1|r0|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[9]~feeder_combout\ = \stage5_1|m_50|o[9]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[9]~11_combout\,
	combout => \stage2_2|rf_1|r0|Q[9]~feeder_combout\);

-- Location: FF_X35_Y17_N9
\stage2_2|rf_1|r0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(9));

-- Location: LCCOMB_X34_Y16_N26
\stage2_2|rf_1|r1|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[9]~feeder_combout\ = \stage5_1|m_50|o[9]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[9]~11_combout\,
	combout => \stage2_2|rf_1|r1|Q[9]~feeder_combout\);

-- Location: FF_X34_Y16_N27
\stage2_2|rf_1|r1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r1|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r1|Q\(9));

-- Location: LCCOMB_X34_Y17_N22
\stage2_2|rf_1|M1|output[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[9]~11_combout\ = (\stage2_2|rf_1|M1|output[9]~10_combout\ & (((\stage2_2|rf_1|r1|Q\(9)) # (\PR1_instr|Q\(10))))) # (!\stage2_2|rf_1|M1|output[9]~10_combout\ & (\stage2_2|rf_1|r0|Q\(9) & ((!\PR1_instr|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[9]~10_combout\,
	datab => \stage2_2|rf_1|r0|Q\(9),
	datac => \stage2_2|rf_1|r1|Q\(9),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|rf_1|M1|output[9]~11_combout\);

-- Location: FF_X34_Y17_N23
\PR2_d1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[9]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(9));

-- Location: LCCOMB_X30_Y17_N4
\stage3_1|forwarding|new_d1[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[9]~11_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[9]~11_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~23_combout\,
	datab => \PR2_d1|Q\(9),
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage5_1|m_50|o[9]~11_combout\,
	combout => \stage3_1|forwarding|new_d1[9]~11_combout\);

-- Location: LCCOMB_X30_Y17_N10
\stage3_1|m_32|o[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[9]~5_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[9]~11_combout\) # ((\stage3_1|forwarding|new_d1~3_combout\ & \stage3_1|forwarding|stage4_d3[9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1[9]~11_combout\,
	datac => \stage3_1|forwarding|new_d1~3_combout\,
	datad => \stage3_1|forwarding|stage4_d3[9]~11_combout\,
	combout => \stage3_1|m_32|o[9]~5_combout\);

-- Location: LCCOMB_X31_Y17_N4
\stage3_1|alu_1|A|a0|fa1|s~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~20_combout\ = ((\stage3_1|m_32|o[10]~4_combout\ $ (\stage3_1|m_34|o[10]~14_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~19\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~21\ = CARRY((\stage3_1|m_32|o[10]~4_combout\ & ((\stage3_1|m_34|o[10]~14_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~19\))) # (!\stage3_1|m_32|o[10]~4_combout\ & (\stage3_1|m_34|o[10]~14_combout\ & 
-- !\stage3_1|alu_1|A|a0|fa1|s~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[10]~4_combout\,
	datab => \stage3_1|m_34|o[10]~14_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~19\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~20_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~21\);

-- Location: LCCOMB_X30_Y17_N6
\stage3_1|alu_1|M|o[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[10]~4_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[10]~4_combout\)) # (!\stage3_1|m_34|o[10]~14_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_34|o[10]~14_combout\,
	datac => \stage3_1|m_32|o[10]~4_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~20_combout\,
	combout => \stage3_1|alu_1|M|o[10]~4_combout\);

-- Location: FF_X30_Y17_N7
\PR3_aluout|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[10]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(10));

-- Location: LCCOMB_X29_Y18_N0
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

-- Location: FF_X29_Y18_N1
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

-- Location: LCCOMB_X29_Y18_N16
\stage5_1|m_50|o[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[10]~8_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & ((\PR4_aluout|Q\(10)))) # (!\PR4_ctrl|Q\(1) & (\PR4_pc|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(10),
	datad => \PR4_aluout|Q\(10),
	combout => \stage5_1|m_50|o[10]~8_combout\);

-- Location: LCCOMB_X29_Y18_N2
\stage5_1|m_50|o[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[10]~9_combout\ = (\stage5_1|m_50|o[10]~8_combout\) # ((\PR4_ctrl|Q\(0) & (\PR4_ctrl|Q\(1) & \PR4_LS7|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_ctrl|Q\(0),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_LS7|Q\(10),
	datad => \stage5_1|m_50|o[10]~8_combout\,
	combout => \stage5_1|m_50|o[10]~9_combout\);

-- Location: LCCOMB_X34_Y17_N6
\stage2_2|rf_1|M1_2|o[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1_2|o[10]~4_combout\ = (\stage2_2|rf_1|r7_write~combout\ & (\stage5_1|m_50|o[10]~9_combout\)) # (!\stage2_2|rf_1|r7_write~combout\ & ((\PR1_pc|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage2_2|rf_1|r7_write~combout\,
	datac => \stage5_1|m_50|o[10]~9_combout\,
	datad => \PR1_pc|Q\(10),
	combout => \stage2_2|rf_1|M1_2|o[10]~4_combout\);

-- Location: FF_X34_Y17_N7
\stage2_2|rf_1|r7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1_2|o[10]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r7|Q\(10));

-- Location: FF_X31_Y16_N23
\stage2_2|rf_1|r6|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage5_1|m_50|o[10]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \stage2_2|rf_1|wr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r6|Q\(10));

-- Location: LCCOMB_X31_Y16_N22
\stage2_2|rf_1|M1|output[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[10]~8_combout\ = (\PR1_instr|Q\(10) & ((\PR1_instr|Q\(9) & (\stage2_2|rf_1|r7|Q\(10))) # (!\PR1_instr|Q\(9) & ((\stage2_2|rf_1|r6|Q\(10)))))) # (!\PR1_instr|Q\(10) & (((\PR1_instr|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|r7|Q\(10),
	datab => \PR1_instr|Q\(10),
	datac => \stage2_2|rf_1|r6|Q\(10),
	datad => \PR1_instr|Q\(9),
	combout => \stage2_2|rf_1|M1|output[10]~8_combout\);

-- Location: LCCOMB_X29_Y16_N28
\stage2_2|rf_1|r1|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r1|Q[10]~feeder_combout\ = \stage5_1|m_50|o[10]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stage5_1|m_50|o[10]~9_combout\,
	combout => \stage2_2|rf_1|r1|Q[10]~feeder_combout\);

-- Location: FF_X29_Y16_N29
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

-- Location: LCCOMB_X28_Y17_N22
\stage2_2|rf_1|r0|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|r0|Q[10]~feeder_combout\ = \stage5_1|m_50|o[10]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage5_1|m_50|o[10]~9_combout\,
	combout => \stage2_2|rf_1|r0|Q[10]~feeder_combout\);

-- Location: FF_X28_Y17_N23
\stage2_2|rf_1|r0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|r0|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \stage2_2|rf_1|wr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2_2|rf_1|r0|Q\(10));

-- Location: LCCOMB_X28_Y17_N4
\stage2_2|rf_1|M1|output[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|rf_1|M1|output[10]~9_combout\ = (\stage2_2|rf_1|M1|output[10]~8_combout\ & ((\stage2_2|rf_1|r1|Q\(10)) # ((\PR1_instr|Q\(10))))) # (!\stage2_2|rf_1|M1|output[10]~8_combout\ & (((\stage2_2|rf_1|r0|Q\(10) & !\PR1_instr|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|rf_1|M1|output[10]~8_combout\,
	datab => \stage2_2|rf_1|r1|Q\(10),
	datac => \stage2_2|rf_1|r0|Q\(10),
	datad => \PR1_instr|Q\(10),
	combout => \stage2_2|rf_1|M1|output[10]~9_combout\);

-- Location: FF_X28_Y17_N5
\PR2_d1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage2_2|rf_1|M1|output[10]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_d1|Q\(10));

-- Location: LCCOMB_X28_Y17_N14
\stage3_1|forwarding|new_d1[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[10]~10_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[10]~9_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~23_combout\,
	datab => \PR2_d1|Q\(10),
	datac => \stage5_1|m_50|o[10]~9_combout\,
	datad => \stage3_1|forwarding|new_d1~3_combout\,
	combout => \stage3_1|forwarding|new_d1[10]~10_combout\);

-- Location: LCCOMB_X28_Y17_N0
\stage3_1|m_32|o[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[10]~4_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[10]~10_combout\) # ((\stage3_1|forwarding|new_d1~3_combout\ & \stage3_1|forwarding|stage4_d3[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|new_d1[10]~10_combout\,
	datad => \stage3_1|forwarding|stage4_d3[10]~9_combout\,
	combout => \stage3_1|m_32|o[10]~4_combout\);

-- Location: LCCOMB_X31_Y17_N6
\stage3_1|alu_1|A|a0|fa1|s~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~22_combout\ = (\stage3_1|m_34|o[11]~12_combout\ & ((\stage3_1|m_32|o[11]~3_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~21\ & VCC)) # (!\stage3_1|m_32|o[11]~3_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~21\)))) # 
-- (!\stage3_1|m_34|o[11]~12_combout\ & ((\stage3_1|m_32|o[11]~3_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~21\)) # (!\stage3_1|m_32|o[11]~3_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~21\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~23\ = CARRY((\stage3_1|m_34|o[11]~12_combout\ & (!\stage3_1|m_32|o[11]~3_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~21\)) # (!\stage3_1|m_34|o[11]~12_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~21\) # 
-- (!\stage3_1|m_32|o[11]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~12_combout\,
	datab => \stage3_1|m_32|o[11]~3_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~21\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~22_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~23\);

-- Location: LCCOMB_X30_Y17_N0
\stage3_1|alu_1|M|o[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[11]~3_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[11]~12_combout\)) # (!\stage3_1|m_32|o[11]~3_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[11]~3_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_34|o[11]~12_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~22_combout\,
	combout => \stage3_1|alu_1|M|o[11]~3_combout\);

-- Location: FF_X30_Y17_N1
\PR3_aluout|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[11]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(11));

-- Location: LCCOMB_X29_Y18_N24
\stage3_1|forwarding|stage4_d3[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[11]~6_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(11)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_pc|Q\(11),
	datab => \PR3_aluout|Q\(11),
	datac => \PR3_ctrl|Q\(0),
	datad => \PR3_ctrl|Q\(1),
	combout => \stage3_1|forwarding|stage4_d3[11]~6_combout\);

-- Location: LCCOMB_X29_Y18_N30
\stage3_1|forwarding|stage4_d3[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[11]~7_combout\ = (\stage3_1|forwarding|stage4_d3[11]~6_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_LS7|Q\(11),
	datad => \stage3_1|forwarding|stage4_d3[11]~6_combout\,
	combout => \stage3_1|forwarding|stage4_d3[11]~7_combout\);

-- Location: LCCOMB_X28_Y17_N16
\stage3_1|m_34|o[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[11]~11_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[11]~7_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(11),
	datab => \stage3_1|forwarding|new_d2~6_combout\,
	datac => \stage3_1|m_34|o[11]~3_combout\,
	datad => \stage5_1|m_50|o[11]~7_combout\,
	combout => \stage3_1|m_34|o[11]~11_combout\);

-- Location: LCCOMB_X28_Y17_N10
\stage3_1|m_34|o[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[11]~12_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[11]~11_combout\) # ((\stage3_1|m_34|o[11]~5_combout\ & \stage3_1|forwarding|stage4_d3[11]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~5_combout\,
	datab => \stage3_1|m_34|o[11]~2_combout\,
	datac => \stage3_1|forwarding|stage4_d3[11]~7_combout\,
	datad => \stage3_1|m_34|o[11]~11_combout\,
	combout => \stage3_1|m_34|o[11]~12_combout\);

-- Location: LCCOMB_X31_Y17_N8
\stage3_1|alu_1|A|a0|fa1|s~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~24_combout\ = ((\stage3_1|m_32|o[12]~2_combout\ $ (\stage3_1|m_34|o[12]~10_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~23\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~25\ = CARRY((\stage3_1|m_32|o[12]~2_combout\ & ((\stage3_1|m_34|o[12]~10_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~23\))) # (!\stage3_1|m_32|o[12]~2_combout\ & (\stage3_1|m_34|o[12]~10_combout\ & 
-- !\stage3_1|alu_1|A|a0|fa1|s~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[12]~2_combout\,
	datab => \stage3_1|m_34|o[12]~10_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~23\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~24_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~25\);

-- Location: LCCOMB_X30_Y17_N26
\stage3_1|alu_1|M|o[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[12]~5_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[12]~10_combout\)) # (!\stage3_1|m_32|o[12]~2_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_32|o[12]~2_combout\,
	datac => \stage3_1|alu_1|A|a0|fa1|s~24_combout\,
	datad => \stage3_1|m_34|o[12]~10_combout\,
	combout => \stage3_1|alu_1|M|o[12]~5_combout\);

-- Location: FF_X30_Y17_N27
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

-- Location: LCCOMB_X31_Y15_N10
\stage3_1|forwarding|stage4_d3[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[12]~4_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(12))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_aluout|Q\(12),
	datac => \PR3_ctrl|Q\(1),
	datad => \PR3_pc|Q\(12),
	combout => \stage3_1|forwarding|stage4_d3[12]~4_combout\);

-- Location: LCCOMB_X31_Y15_N28
\stage3_1|forwarding|stage4_d3[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[12]~5_combout\ = (\stage3_1|forwarding|stage4_d3[12]~4_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_LS7|Q\(12),
	datad => \stage3_1|forwarding|stage4_d3[12]~4_combout\,
	combout => \stage3_1|forwarding|stage4_d3[12]~5_combout\);

-- Location: LCCOMB_X30_Y17_N16
\stage3_1|forwarding|new_d1[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[12]~8_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[12]~5_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(12),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|new_d1~23_combout\,
	datad => \stage5_1|m_50|o[12]~5_combout\,
	combout => \stage3_1|forwarding|new_d1[12]~8_combout\);

-- Location: LCCOMB_X30_Y17_N14
\stage3_1|m_32|o[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[12]~2_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[12]~8_combout\) # ((\stage3_1|forwarding|new_d1~3_combout\ & \stage3_1|forwarding|stage4_d3[12]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|stage4_d3[12]~5_combout\,
	datad => \stage3_1|forwarding|new_d1[12]~8_combout\,
	combout => \stage3_1|m_32|o[12]~2_combout\);

-- Location: LCCOMB_X31_Y17_N10
\stage3_1|alu_1|A|a0|fa1|s~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~26_combout\ = (\stage3_1|m_32|o[13]~1_combout\ & ((\stage3_1|m_34|o[13]~8_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~25\ & VCC)) # (!\stage3_1|m_34|o[13]~8_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~25\)))) # 
-- (!\stage3_1|m_32|o[13]~1_combout\ & ((\stage3_1|m_34|o[13]~8_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~25\)) # (!\stage3_1|m_34|o[13]~8_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~25\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~27\ = CARRY((\stage3_1|m_32|o[13]~1_combout\ & (!\stage3_1|m_34|o[13]~8_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~25\)) # (!\stage3_1|m_32|o[13]~1_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~25\) # 
-- (!\stage3_1|m_34|o[13]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[13]~1_combout\,
	datab => \stage3_1|m_34|o[13]~8_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~25\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~26_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~27\);

-- Location: LCCOMB_X32_Y17_N14
\stage3_1|alu_1|M|o[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[13]~2_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[13]~1_combout\)) # (!\stage3_1|m_34|o[13]~8_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(11),
	datab => \stage3_1|m_34|o[13]~8_combout\,
	datac => \stage3_1|m_32|o[13]~1_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~26_combout\,
	combout => \stage3_1|alu_1|M|o[13]~2_combout\);

-- Location: FF_X32_Y17_N15
\PR3_aluout|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[13]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(13));

-- Location: LCCOMB_X32_Y16_N22
\stage3_1|forwarding|stage4_d3[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[13]~2_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(13))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_aluout|Q\(13),
	datab => \PR3_ctrl|Q\(1),
	datac => \PR3_pc|Q\(13),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[13]~2_combout\);

-- Location: LCCOMB_X32_Y16_N14
\stage3_1|forwarding|stage4_d3[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[13]~3_combout\ = (\stage3_1|forwarding|stage4_d3[13]~2_combout\) # ((\PR3_LS7|Q\(13) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|stage4_d3[13]~2_combout\,
	datab => \PR3_LS7|Q\(13),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[13]~3_combout\);

-- Location: LCCOMB_X28_Y17_N18
\stage3_1|forwarding|new_d1[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d1[13]~7_combout\ = (!\stage3_1|forwarding|new_d1~3_combout\ & ((\stage3_1|forwarding|new_d1~23_combout\ & ((\stage5_1|m_50|o[13]~3_combout\))) # (!\stage3_1|forwarding|new_d1~23_combout\ & (\PR2_d1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d1~23_combout\,
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \PR2_d1|Q\(13),
	datad => \stage5_1|m_50|o[13]~3_combout\,
	combout => \stage3_1|forwarding|new_d1[13]~7_combout\);

-- Location: LCCOMB_X28_Y17_N28
\stage3_1|m_32|o[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_32|o[13]~1_combout\ = \PR2_ctrl|Q\(10) $ (((\stage3_1|forwarding|new_d1[13]~7_combout\) # ((\stage3_1|forwarding|new_d1~3_combout\ & \stage3_1|forwarding|stage4_d3[13]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(10),
	datab => \stage3_1|forwarding|new_d1~3_combout\,
	datac => \stage3_1|forwarding|stage4_d3[13]~3_combout\,
	datad => \stage3_1|forwarding|new_d1[13]~7_combout\,
	combout => \stage3_1|m_32|o[13]~1_combout\);

-- Location: LCCOMB_X31_Y17_N12
\stage3_1|alu_1|A|a0|fa1|s~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~28_combout\ = ((\stage3_1|m_34|o[14]~6_combout\ $ (\stage3_1|m_32|o[14]~0_combout\ $ (!\stage3_1|alu_1|A|a0|fa1|s~27\)))) # (GND)
-- \stage3_1|alu_1|A|a0|fa1|s~29\ = CARRY((\stage3_1|m_34|o[14]~6_combout\ & ((\stage3_1|m_32|o[14]~0_combout\) # (!\stage3_1|alu_1|A|a0|fa1|s~27\))) # (!\stage3_1|m_34|o[14]~6_combout\ & (\stage3_1|m_32|o[14]~0_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[14]~6_combout\,
	datab => \stage3_1|m_32|o[14]~0_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~27\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~28_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~29\);

-- Location: LCCOMB_X30_Y17_N28
\stage3_1|alu_1|M|o[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[14]~0_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_34|o[14]~6_combout\)) # (!\stage3_1|m_32|o[14]~0_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[14]~0_combout\,
	datab => \stage3_1|alu_1|A|a0|fa1|s~28_combout\,
	datac => \stage3_1|m_34|o[14]~6_combout\,
	datad => \PR2_ctrl|Q\(11),
	combout => \stage3_1|alu_1|M|o[14]~0_combout\);

-- Location: FF_X30_Y17_N29
\PR3_aluout|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[14]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(14));

-- Location: LCCOMB_X29_Y17_N8
\stage3_1|forwarding|stage4_d3[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[14]~0_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & (\PR3_aluout|Q\(14))) # (!\PR3_ctrl|Q\(1) & ((\PR3_pc|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(1),
	datab => \PR3_aluout|Q\(14),
	datac => \PR3_pc|Q\(14),
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[14]~0_combout\);

-- Location: LCCOMB_X29_Y17_N30
\stage3_1|forwarding|stage4_d3[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[14]~1_combout\ = (\stage3_1|forwarding|stage4_d3[14]~0_combout\) # ((\PR3_LS7|Q\(14) & \PR3_ctrl|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_LS7|Q\(14),
	datab => \stage3_1|forwarding|stage4_d3[14]~0_combout\,
	datad => \PR3_ctrl|Q\(0),
	combout => \stage3_1|forwarding|stage4_d3[14]~1_combout\);

-- Location: LCCOMB_X29_Y17_N20
\stage3_1|m_34|o[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[14]~4_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & (\stage5_1|m_50|o[14]~1_combout\)) # (!\stage3_1|forwarding|new_d2~6_combout\ & ((\PR2_d1|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~6_combout\,
	datab => \stage5_1|m_50|o[14]~1_combout\,
	datac => \PR2_d1|Q\(14),
	datad => \stage3_1|m_34|o[11]~3_combout\,
	combout => \stage3_1|m_34|o[14]~4_combout\);

-- Location: LCCOMB_X29_Y17_N6
\stage3_1|m_34|o[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[14]~6_combout\ = (\stage3_1|m_34|o[11]~2_combout\) # ((\stage3_1|m_34|o[14]~4_combout\) # ((\stage3_1|m_34|o[11]~5_combout\ & \stage3_1|forwarding|stage4_d3[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[11]~2_combout\,
	datab => \stage3_1|m_34|o[11]~5_combout\,
	datac => \stage3_1|forwarding|stage4_d3[14]~1_combout\,
	datad => \stage3_1|m_34|o[14]~4_combout\,
	combout => \stage3_1|m_34|o[14]~6_combout\);

-- Location: LCCOMB_X31_Y17_N14
\stage3_1|alu_1|A|a0|fa1|s~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|A|a0|fa1|s~30_combout\ = (\stage3_1|m_32|o[15]~14_combout\ & ((\stage3_1|m_34|o[15]~51_combout\ & (\stage3_1|alu_1|A|a0|fa1|s~29\ & VCC)) # (!\stage3_1|m_34|o[15]~51_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~29\)))) # 
-- (!\stage3_1|m_32|o[15]~14_combout\ & ((\stage3_1|m_34|o[15]~51_combout\ & (!\stage3_1|alu_1|A|a0|fa1|s~29\)) # (!\stage3_1|m_34|o[15]~51_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~29\) # (GND)))))
-- \stage3_1|alu_1|A|a0|fa1|s~31\ = CARRY((\stage3_1|m_32|o[15]~14_combout\ & (!\stage3_1|m_34|o[15]~51_combout\ & !\stage3_1|alu_1|A|a0|fa1|s~29\)) # (!\stage3_1|m_32|o[15]~14_combout\ & ((!\stage3_1|alu_1|A|a0|fa1|s~29\) # 
-- (!\stage3_1|m_34|o[15]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_32|o[15]~14_combout\,
	datab => \stage3_1|m_34|o[15]~51_combout\,
	datad => VCC,
	cin => \stage3_1|alu_1|A|a0|fa1|s~29\,
	combout => \stage3_1|alu_1|A|a0|fa1|s~30_combout\,
	cout => \stage3_1|alu_1|A|a0|fa1|s~31\);

-- Location: LCCOMB_X31_Y17_N16
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

-- Location: LCCOMB_X30_Y15_N24
\carry_flag|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry_flag|Q~0_combout\ = (\ctrl_edit|new_ctrl[8]~1_combout\ & ((\stage3_1|alu_1|A|a0|fa1|s~32_combout\))) # (!\ctrl_edit|new_ctrl[8]~1_combout\ & (\carry_flag|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_edit|new_ctrl[8]~1_combout\,
	datac => \carry_flag|Q~q\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~32_combout\,
	combout => \carry_flag|Q~0_combout\);

-- Location: FF_X30_Y15_N25
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

-- Location: LCCOMB_X30_Y19_N0
\zero_flag|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero_flag|Q~0_combout\ = ((!\ctrl_edit|x~0_combout\ & !\PR2_ctrl|Q\(9))) # (!\PR2_ctrl|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_edit|x~0_combout\,
	datab => \PR2_ctrl|Q\(7),
	datad => \PR2_ctrl|Q\(9),
	combout => \zero_flag|Q~0_combout\);

-- Location: LCCOMB_X32_Y17_N26
\zero_flag|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero_flag|Q~1_combout\ = (\zero_flag|Q~0_combout\ & (\zero_flag|Q~q\)) # (!\zero_flag|Q~0_combout\ & ((!\stage3_1|alu_1|zero~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero_flag|Q~0_combout\,
	datac => \zero_flag|Q~q\,
	datad => \stage3_1|alu_1|zero~4_combout\,
	combout => \zero_flag|Q~1_combout\);

-- Location: FF_X32_Y17_N27
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

-- Location: LCCOMB_X30_Y15_N0
\ctrl_edit|x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_edit|x~0_combout\ = (\PR2_LS7|Q\(7) & (((!\PR2_LS7|Q\(8) & \zero_flag|Q~q\)))) # (!\PR2_LS7|Q\(7) & ((\carry_flag|Q~q\) # ((!\PR2_LS7|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_LS7|Q\(7),
	datab => \carry_flag|Q~q\,
	datac => \PR2_LS7|Q\(8),
	datad => \zero_flag|Q~q\,
	combout => \ctrl_edit|x~0_combout\);

-- Location: LCCOMB_X30_Y19_N14
\ctrl_edit|new_ctrl[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_edit|new_ctrl[2]~0_combout\ = (\PR2_ctrl|Q\(7) & ((\PR2_ctrl|Q\(9) & (\PR2_ctrl|Q\(1))) # (!\PR2_ctrl|Q\(9) & ((\ctrl_edit|x~0_combout\))))) # (!\PR2_ctrl|Q\(7) & (\PR2_ctrl|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_ctrl|Q\(1),
	datab => \PR2_ctrl|Q\(7),
	datac => \ctrl_edit|x~0_combout\,
	datad => \PR2_ctrl|Q\(9),
	combout => \ctrl_edit|new_ctrl[2]~0_combout\);

-- Location: FF_X30_Y19_N15
\PR3_ctrl|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_edit|new_ctrl[2]~0_combout\,
	clrn => \ALT_INV_create_bubble2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_ctrl|Q\(2));

-- Location: LCCOMB_X31_Y19_N28
\stage3_1|forwarding|new_d2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|new_d2~3_combout\ = (\PR3_ctrl|Q\(2) & (\PR2_rfa2|Q\(2) $ (!\PR3_rfa3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_rfa2|Q\(2),
	datab => \PR3_rfa3|Q\(2),
	datad => \PR3_ctrl|Q\(2),
	combout => \stage3_1|forwarding|new_d2~3_combout\);

-- Location: LCCOMB_X31_Y19_N22
\stage3_1|m_34|o[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[11]~5_combout\ = (\stage3_1|forwarding|new_d2~2_combout\ & (!\PR2_ctrl|Q\(9) & \stage3_1|forwarding|new_d2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~2_combout\,
	datab => \PR2_ctrl|Q\(9),
	datad => \stage3_1|forwarding|new_d2~3_combout\,
	combout => \stage3_1|m_34|o[11]~5_combout\);

-- Location: LCCOMB_X30_Y18_N18
\stage3_1|m_34|o[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[4]~28_combout\ = (\stage3_1|m_34|o[11]~3_combout\ & ((\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[4]~18_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(4),
	datab => \stage5_1|m_50|o[4]~18_combout\,
	datac => \stage3_1|m_34|o[11]~3_combout\,
	datad => \stage3_1|forwarding|new_d2~6_combout\,
	combout => \stage3_1|m_34|o[4]~28_combout\);

-- Location: LCCOMB_X30_Y18_N10
\stage3_1|m_34|o[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[4]~30_combout\ = (\stage3_1|m_34|o[4]~29_combout\) # ((\stage3_1|m_34|o[4]~28_combout\) # ((\stage3_1|m_34|o[4]~27_combout\ & \stage3_1|m_34|o[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[4]~27_combout\,
	datab => \stage3_1|m_34|o[4]~29_combout\,
	datac => \stage3_1|m_34|o[11]~5_combout\,
	datad => \stage3_1|m_34|o[4]~28_combout\,
	combout => \stage3_1|m_34|o[4]~30_combout\);

-- Location: LCCOMB_X30_Y18_N8
\stage3_1|alu_1|M|o[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[4]~15_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[4]~10_combout\)) # (!\stage3_1|m_34|o[4]~30_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[4]~30_combout\,
	datab => \PR2_ctrl|Q\(11),
	datac => \stage3_1|m_32|o[4]~10_combout\,
	datad => \stage3_1|alu_1|A|a0|fa1|s~8_combout\,
	combout => \stage3_1|alu_1|M|o[4]~15_combout\);

-- Location: FF_X30_Y18_N9
\PR3_aluout|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage3_1|alu_1|M|o[4]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR3_aluout|Q\(4));

-- Location: FF_X30_Y18_N13
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

-- Location: FF_X30_Y18_N15
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

-- Location: LCCOMB_X30_Y18_N14
\stage5_1|m_50|o[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5_1|m_50|o[4]~18_combout\ = (!\PR4_ctrl|Q\(0) & ((\PR4_ctrl|Q\(1) & (\PR4_aluout|Q\(4))) # (!\PR4_ctrl|Q\(1) & ((\PR4_pc|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR4_aluout|Q\(4),
	datab => \PR4_ctrl|Q\(1),
	datac => \PR4_pc|Q\(4),
	datad => \PR4_ctrl|Q\(0),
	combout => \stage5_1|m_50|o[4]~18_combout\);

-- Location: FF_X34_Y17_N3
\stage0_0|PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[4]~15_combout\,
	asdata => \stage5_1|m_50|o[4]~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(4));

-- Location: LCCOMB_X34_Y17_N26
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

-- Location: FF_X34_Y17_N27
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(4));

-- Location: LCCOMB_X31_Y16_N6
\PR1_pc|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[4]~feeder_combout\ = \PR0_pc|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(4),
	combout => \PR1_pc|Q[4]~feeder_combout\);

-- Location: FF_X31_Y16_N7
\PR1_pc|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(4));

-- Location: LCCOMB_X35_Y18_N10
\PR2_adderout|Q[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[5]~25_combout\ = (\PR1_instr|Q\(5) & ((\PR1_pc|Q\(5) & (\PR2_adderout|Q[4]~24\ & VCC)) # (!\PR1_pc|Q\(5) & (!\PR2_adderout|Q[4]~24\)))) # (!\PR1_instr|Q\(5) & ((\PR1_pc|Q\(5) & (!\PR2_adderout|Q[4]~24\)) # (!\PR1_pc|Q\(5) & 
-- ((\PR2_adderout|Q[4]~24\) # (GND)))))
-- \PR2_adderout|Q[5]~26\ = CARRY((\PR1_instr|Q\(5) & (!\PR1_pc|Q\(5) & !\PR2_adderout|Q[4]~24\)) # (!\PR1_instr|Q\(5) & ((!\PR2_adderout|Q[4]~24\) # (!\PR1_pc|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(5),
	datab => \PR1_pc|Q\(5),
	datad => VCC,
	cin => \PR2_adderout|Q[4]~24\,
	combout => \PR2_adderout|Q[5]~25_combout\,
	cout => \PR2_adderout|Q[5]~26\);

-- Location: FF_X35_Y18_N11
\PR2_adderout|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[5]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(5));

-- Location: LCCOMB_X37_Y17_N10
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

-- Location: LCCOMB_X36_Y17_N20
\stage0_0|PC|Q[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[5]~14_combout\ = (\m3b_select~combout\ & (\PR2_adderout|Q\(5))) # (!\m3b_select~combout\ & ((\incPC[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(5),
	datab => \incPC[5]~10_combout\,
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[5]~14_combout\);

-- Location: FF_X36_Y17_N21
\stage0_0|PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[5]~14_combout\,
	asdata => \stage5_1|m_50|o[5]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(5));

-- Location: LCCOMB_X37_Y17_N12
\incPC[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[6]~12_combout\ = (\stage0_0|PC|Q\(6) & (\incPC[5]~11\ $ (GND))) # (!\stage0_0|PC|Q\(6) & (!\incPC[5]~11\ & VCC))
-- \incPC[6]~13\ = CARRY((\stage0_0|PC|Q\(6) & !\incPC[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(6),
	datad => VCC,
	cin => \incPC[5]~11\,
	combout => \incPC[6]~12_combout\,
	cout => \incPC[6]~13\);

-- Location: LCCOMB_X31_Y15_N22
\m_2x|o[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_2x|o[6]~2_combout\ = (\PR1_ctrl|Q\(10) & (\PR1_instr|Q\(5))) # (!\PR1_ctrl|Q\(10) & ((\PR1_instr|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_instr|Q\(5),
	datab => \PR1_instr|Q\(6),
	datad => \PR1_ctrl|Q\(10),
	combout => \m_2x|o[6]~2_combout\);

-- Location: LCCOMB_X35_Y18_N12
\PR2_adderout|Q[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[6]~27_combout\ = ((\PR1_pc|Q\(6) $ (\m_2x|o[6]~2_combout\ $ (!\PR2_adderout|Q[5]~26\)))) # (GND)
-- \PR2_adderout|Q[6]~28\ = CARRY((\PR1_pc|Q\(6) & ((\m_2x|o[6]~2_combout\) # (!\PR2_adderout|Q[5]~26\))) # (!\PR1_pc|Q\(6) & (\m_2x|o[6]~2_combout\ & !\PR2_adderout|Q[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(6),
	datab => \m_2x|o[6]~2_combout\,
	datad => VCC,
	cin => \PR2_adderout|Q[5]~26\,
	combout => \PR2_adderout|Q[6]~27_combout\,
	cout => \PR2_adderout|Q[6]~28\);

-- Location: FF_X35_Y18_N13
\PR2_adderout|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[6]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(6));

-- Location: LCCOMB_X35_Y17_N20
\stage0_0|PC|Q[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[6]~13_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(6)))) # (!\m3b_select~combout\ & (\incPC[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[6]~12_combout\,
	datab => \PR2_adderout|Q\(6),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[6]~13_combout\);

-- Location: FF_X35_Y17_N21
\stage0_0|PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[6]~13_combout\,
	asdata => \stage5_1|m_50|o[6]~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(6));

-- Location: FF_X35_Y16_N19
\PR0_pc|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stage0_0|PC|Q\(6),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(6));

-- Location: LCCOMB_X35_Y16_N4
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

-- Location: FF_X35_Y16_N5
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(6));

-- Location: LCCOMB_X35_Y18_N14
\PR2_adderout|Q[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[7]~29_combout\ = (\m_2x|o[7]~1_combout\ & ((\PR1_pc|Q\(7) & (\PR2_adderout|Q[6]~28\ & VCC)) # (!\PR1_pc|Q\(7) & (!\PR2_adderout|Q[6]~28\)))) # (!\m_2x|o[7]~1_combout\ & ((\PR1_pc|Q\(7) & (!\PR2_adderout|Q[6]~28\)) # (!\PR1_pc|Q\(7) & 
-- ((\PR2_adderout|Q[6]~28\) # (GND)))))
-- \PR2_adderout|Q[7]~30\ = CARRY((\m_2x|o[7]~1_combout\ & (!\PR1_pc|Q\(7) & !\PR2_adderout|Q[6]~28\)) # (!\m_2x|o[7]~1_combout\ & ((!\PR2_adderout|Q[6]~28\) # (!\PR1_pc|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[7]~1_combout\,
	datab => \PR1_pc|Q\(7),
	datad => VCC,
	cin => \PR2_adderout|Q[6]~28\,
	combout => \PR2_adderout|Q[7]~29_combout\,
	cout => \PR2_adderout|Q[7]~30\);

-- Location: FF_X35_Y18_N15
\PR2_adderout|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[7]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(7));

-- Location: LCCOMB_X37_Y17_N14
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

-- Location: LCCOMB_X36_Y17_N10
\stage0_0|PC|Q[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[7]~12_combout\ = (\m3b_select~combout\ & (\PR2_adderout|Q\(7))) # (!\m3b_select~combout\ & ((\incPC[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(7),
	datab => \incPC[7]~14_combout\,
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[7]~12_combout\);

-- Location: FF_X36_Y17_N11
\stage0_0|PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[7]~12_combout\,
	asdata => \stage5_1|m_50|o[7]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(7));

-- Location: FF_X37_Y17_N1
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(7));

-- Location: FF_X37_Y17_N29
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(7));

-- Location: LCCOMB_X35_Y18_N16
\PR2_adderout|Q[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[8]~31_combout\ = ((\PR1_pc|Q\(8) $ (\m_2x|o[8]~0_combout\ $ (!\PR2_adderout|Q[7]~30\)))) # (GND)
-- \PR2_adderout|Q[8]~32\ = CARRY((\PR1_pc|Q\(8) & ((\m_2x|o[8]~0_combout\) # (!\PR2_adderout|Q[7]~30\))) # (!\PR1_pc|Q\(8) & (\m_2x|o[8]~0_combout\ & !\PR2_adderout|Q[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PR1_pc|Q\(8),
	datab => \m_2x|o[8]~0_combout\,
	datad => VCC,
	cin => \PR2_adderout|Q[7]~30\,
	combout => \PR2_adderout|Q[8]~31_combout\,
	cout => \PR2_adderout|Q[8]~32\);

-- Location: FF_X35_Y18_N17
\PR2_adderout|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[8]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(8));

-- Location: LCCOMB_X37_Y17_N16
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

-- Location: LCCOMB_X34_Y17_N12
\stage0_0|PC|Q[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[8]~11_combout\ = (\m3b_select~combout\ & (\PR2_adderout|Q\(8))) # (!\m3b_select~combout\ & ((\incPC[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(8),
	datab => \incPC[8]~16_combout\,
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[8]~11_combout\);

-- Location: FF_X34_Y17_N13
\stage0_0|PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[8]~11_combout\,
	asdata => \stage5_1|m_50|o[8]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(8));

-- Location: LCCOMB_X37_Y17_N18
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

-- Location: LCCOMB_X35_Y18_N18
\PR2_adderout|Q[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[9]~33_combout\ = (\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(9) & (\PR2_adderout|Q[8]~32\ & VCC)) # (!\PR1_pc|Q\(9) & (!\PR2_adderout|Q[8]~32\)))) # (!\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(9) & (!\PR2_adderout|Q[8]~32\)) # (!\PR1_pc|Q\(9) & 
-- ((\PR2_adderout|Q[8]~32\) # (GND)))))
-- \PR2_adderout|Q[9]~34\ = CARRY((\m_2x|o[8]~0_combout\ & (!\PR1_pc|Q\(9) & !\PR2_adderout|Q[8]~32\)) # (!\m_2x|o[8]~0_combout\ & ((!\PR2_adderout|Q[8]~32\) # (!\PR1_pc|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(9),
	datad => VCC,
	cin => \PR2_adderout|Q[8]~32\,
	combout => \PR2_adderout|Q[9]~33_combout\,
	cout => \PR2_adderout|Q[9]~34\);

-- Location: FF_X35_Y18_N19
\PR2_adderout|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[9]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(9));

-- Location: LCCOMB_X35_Y17_N18
\stage0_0|PC|Q[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[9]~10_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(9)))) # (!\m3b_select~combout\ & (\incPC[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[9]~18_combout\,
	datab => \PR2_adderout|Q\(9),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[9]~10_combout\);

-- Location: FF_X35_Y17_N19
\stage0_0|PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[9]~10_combout\,
	asdata => \stage5_1|m_50|o[9]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(9));

-- Location: LCCOMB_X37_Y17_N20
\incPC[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[10]~20_combout\ = (\stage0_0|PC|Q\(10) & (\incPC[9]~19\ $ (GND))) # (!\stage0_0|PC|Q\(10) & (!\incPC[9]~19\ & VCC))
-- \incPC[10]~21\ = CARRY((\stage0_0|PC|Q\(10) & !\incPC[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(10),
	datad => VCC,
	cin => \incPC[9]~19\,
	combout => \incPC[10]~20_combout\,
	cout => \incPC[10]~21\);

-- Location: LCCOMB_X35_Y18_N20
\PR2_adderout|Q[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[10]~35_combout\ = ((\m_2x|o[8]~0_combout\ $ (\PR1_pc|Q\(10) $ (!\PR2_adderout|Q[9]~34\)))) # (GND)
-- \PR2_adderout|Q[10]~36\ = CARRY((\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(10)) # (!\PR2_adderout|Q[9]~34\))) # (!\m_2x|o[8]~0_combout\ & (\PR1_pc|Q\(10) & !\PR2_adderout|Q[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(10),
	datad => VCC,
	cin => \PR2_adderout|Q[9]~34\,
	combout => \PR2_adderout|Q[10]~35_combout\,
	cout => \PR2_adderout|Q[10]~36\);

-- Location: FF_X35_Y18_N21
\PR2_adderout|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[10]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(10));

-- Location: LCCOMB_X36_Y17_N16
\stage0_0|PC|Q[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[10]~5_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(10)))) # (!\m3b_select~combout\ & (\incPC[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[10]~20_combout\,
	datab => \PR2_adderout|Q\(10),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[10]~5_combout\);

-- Location: FF_X36_Y17_N17
\stage0_0|PC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[10]~5_combout\,
	asdata => \stage5_1|m_50|o[10]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(10));

-- Location: FF_X37_Y17_N21
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(10));

-- Location: LCCOMB_X34_Y17_N28
\PR1_pc|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR1_pc|Q[10]~feeder_combout\ = \PR0_pc|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PR0_pc|Q\(10),
	combout => \PR1_pc|Q[10]~feeder_combout\);

-- Location: FF_X34_Y17_N29
\PR1_pc|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR1_pc|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(10));

-- Location: LCCOMB_X35_Y18_N22
\PR2_adderout|Q[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[11]~37_combout\ = (\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(11) & (\PR2_adderout|Q[10]~36\ & VCC)) # (!\PR1_pc|Q\(11) & (!\PR2_adderout|Q[10]~36\)))) # (!\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(11) & (!\PR2_adderout|Q[10]~36\)) # (!\PR1_pc|Q\(11) 
-- & ((\PR2_adderout|Q[10]~36\) # (GND)))))
-- \PR2_adderout|Q[11]~38\ = CARRY((\m_2x|o[8]~0_combout\ & (!\PR1_pc|Q\(11) & !\PR2_adderout|Q[10]~36\)) # (!\m_2x|o[8]~0_combout\ & ((!\PR2_adderout|Q[10]~36\) # (!\PR1_pc|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(11),
	datad => VCC,
	cin => \PR2_adderout|Q[10]~36\,
	combout => \PR2_adderout|Q[11]~37_combout\,
	cout => \PR2_adderout|Q[11]~38\);

-- Location: FF_X35_Y18_N23
\PR2_adderout|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[11]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(11));

-- Location: LCCOMB_X37_Y17_N22
\incPC[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[11]~22_combout\ = (\stage0_0|PC|Q\(11) & (!\incPC[10]~21\)) # (!\stage0_0|PC|Q\(11) & ((\incPC[10]~21\) # (GND)))
-- \incPC[11]~23\ = CARRY((!\incPC[10]~21\) # (!\stage0_0|PC|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(11),
	datad => VCC,
	cin => \incPC[10]~21\,
	combout => \incPC[11]~22_combout\,
	cout => \incPC[11]~23\);

-- Location: LCCOMB_X35_Y17_N24
\stage0_0|PC|Q[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[11]~4_combout\ = (\m3b_select~combout\ & (\PR2_adderout|Q\(11))) # (!\m3b_select~combout\ & ((\incPC[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(11),
	datab => \incPC[11]~22_combout\,
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[11]~4_combout\);

-- Location: FF_X35_Y17_N25
\stage0_0|PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[11]~4_combout\,
	asdata => \stage5_1|m_50|o[11]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(11));

-- Location: FF_X37_Y17_N3
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(11));

-- Location: FF_X29_Y18_N31
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(11));

-- Location: LCCOMB_X35_Y18_N24
\PR2_adderout|Q[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[12]~39_combout\ = ((\m_2x|o[8]~0_combout\ $ (\PR1_pc|Q\(12) $ (!\PR2_adderout|Q[11]~38\)))) # (GND)
-- \PR2_adderout|Q[12]~40\ = CARRY((\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(12)) # (!\PR2_adderout|Q[11]~38\))) # (!\m_2x|o[8]~0_combout\ & (\PR1_pc|Q\(12) & !\PR2_adderout|Q[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(12),
	datad => VCC,
	cin => \PR2_adderout|Q[11]~38\,
	combout => \PR2_adderout|Q[12]~39_combout\,
	cout => \PR2_adderout|Q[12]~40\);

-- Location: FF_X35_Y18_N25
\PR2_adderout|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[12]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(12));

-- Location: LCCOMB_X37_Y17_N24
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

-- Location: LCCOMB_X36_Y17_N18
\stage0_0|PC|Q[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[12]~6_combout\ = (\m3b_select~combout\ & (\PR2_adderout|Q\(12))) # (!\m3b_select~combout\ & ((\incPC[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(12),
	datab => \incPC[12]~24_combout\,
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[12]~6_combout\);

-- Location: FF_X36_Y17_N19
\stage0_0|PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[12]~6_combout\,
	asdata => \stage5_1|m_50|o[12]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(12));

-- Location: LCCOMB_X37_Y17_N26
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

-- Location: LCCOMB_X35_Y18_N26
\PR2_adderout|Q[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[13]~41_combout\ = (\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(13) & (\PR2_adderout|Q[12]~40\ & VCC)) # (!\PR1_pc|Q\(13) & (!\PR2_adderout|Q[12]~40\)))) # (!\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(13) & (!\PR2_adderout|Q[12]~40\)) # (!\PR1_pc|Q\(13) 
-- & ((\PR2_adderout|Q[12]~40\) # (GND)))))
-- \PR2_adderout|Q[13]~42\ = CARRY((\m_2x|o[8]~0_combout\ & (!\PR1_pc|Q\(13) & !\PR2_adderout|Q[12]~40\)) # (!\m_2x|o[8]~0_combout\ & ((!\PR2_adderout|Q[12]~40\) # (!\PR1_pc|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(13),
	datad => VCC,
	cin => \PR2_adderout|Q[12]~40\,
	combout => \PR2_adderout|Q[13]~41_combout\,
	cout => \PR2_adderout|Q[13]~42\);

-- Location: FF_X35_Y18_N27
\PR2_adderout|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[13]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(13));

-- Location: LCCOMB_X36_Y17_N8
\stage0_0|PC|Q[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[13]~7_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(13)))) # (!\m3b_select~combout\ & (\incPC[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[13]~26_combout\,
	datab => \PR2_adderout|Q\(13),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[13]~7_combout\);

-- Location: FF_X36_Y17_N9
\stage0_0|PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[13]~7_combout\,
	asdata => \stage5_1|m_50|o[13]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(13));

-- Location: LCCOMB_X37_Y17_N28
\incPC[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[14]~28_combout\ = (\stage0_0|PC|Q\(14) & (\incPC[13]~27\ $ (GND))) # (!\stage0_0|PC|Q\(14) & (!\incPC[13]~27\ & VCC))
-- \incPC[14]~29\ = CARRY((\stage0_0|PC|Q\(14) & !\incPC[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(14),
	datad => VCC,
	cin => \incPC[13]~27\,
	combout => \incPC[14]~28_combout\,
	cout => \incPC[14]~29\);

-- Location: LCCOMB_X35_Y18_N28
\PR2_adderout|Q[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[14]~43_combout\ = ((\m_2x|o[8]~0_combout\ $ (\PR1_pc|Q\(14) $ (!\PR2_adderout|Q[13]~42\)))) # (GND)
-- \PR2_adderout|Q[14]~44\ = CARRY((\m_2x|o[8]~0_combout\ & ((\PR1_pc|Q\(14)) # (!\PR2_adderout|Q[13]~42\))) # (!\m_2x|o[8]~0_combout\ & (\PR1_pc|Q\(14) & !\PR2_adderout|Q[13]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datab => \PR1_pc|Q\(14),
	datad => VCC,
	cin => \PR2_adderout|Q[13]~42\,
	combout => \PR2_adderout|Q[14]~43_combout\,
	cout => \PR2_adderout|Q[14]~44\);

-- Location: FF_X35_Y18_N29
\PR2_adderout|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[14]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(14));

-- Location: LCCOMB_X34_Y17_N10
\stage0_0|PC|Q[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[14]~8_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(14)))) # (!\m3b_select~combout\ & (\incPC[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[14]~28_combout\,
	datab => \PR2_adderout|Q\(14),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[14]~8_combout\);

-- Location: FF_X34_Y17_N11
\stage0_0|PC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[14]~8_combout\,
	asdata => \stage5_1|m_50|o[14]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(14));

-- Location: LCCOMB_X37_Y17_N30
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

-- Location: LCCOMB_X35_Y18_N30
\PR2_adderout|Q[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PR2_adderout|Q[15]~45_combout\ = \m_2x|o[8]~0_combout\ $ (\PR2_adderout|Q[14]~44\ $ (\PR1_pc|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_2x|o[8]~0_combout\,
	datad => \PR1_pc|Q\(15),
	cin => \PR2_adderout|Q[14]~44\,
	combout => \PR2_adderout|Q[15]~45_combout\);

-- Location: FF_X35_Y18_N31
\PR2_adderout|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[15]~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(15));

-- Location: LCCOMB_X36_Y17_N14
\stage0_0|PC|Q[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[15]~9_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(15)))) # (!\m3b_select~combout\ & (\incPC[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[15]~30_combout\,
	datab => \PR2_adderout|Q\(15),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[15]~9_combout\);

-- Location: FF_X36_Y17_N15
\stage0_0|PC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[15]~9_combout\,
	asdata => \stage5_1|m_50|o[15]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(15));

-- Location: FF_X37_Y17_N15
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_pc|Q\(15));

-- Location: FF_X37_Y17_N31
\PR1_pc|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_pc|Q\(15),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_pc|Q\(15));

-- Location: FF_X31_Y15_N9
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

-- Location: FF_X31_Y15_N19
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

-- Location: LCCOMB_X31_Y15_N2
\stage3_1|forwarding|stage4_d3[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[15]~16_combout\ = (!\PR3_ctrl|Q\(0) & ((\PR3_ctrl|Q\(1) & ((\PR3_aluout|Q\(15)))) # (!\PR3_ctrl|Q\(1) & (\PR3_pc|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datab => \PR3_pc|Q\(15),
	datac => \PR3_ctrl|Q\(1),
	datad => \PR3_aluout|Q\(15),
	combout => \stage3_1|forwarding|stage4_d3[15]~16_combout\);

-- Location: LCCOMB_X31_Y15_N4
\stage3_1|forwarding|stage4_d3[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|forwarding|stage4_d3[15]~17_combout\ = (\stage3_1|forwarding|stage4_d3[15]~16_combout\) # ((\PR3_ctrl|Q\(0) & \PR3_LS7|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR3_ctrl|Q\(0),
	datac => \PR3_LS7|Q\(15),
	datad => \stage3_1|forwarding|stage4_d3[15]~16_combout\,
	combout => \stage3_1|forwarding|stage4_d3[15]~17_combout\);

-- Location: LCCOMB_X31_Y15_N14
\stage3_1|m_34|o[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[15]~49_combout\ = (\stage3_1|forwarding|new_d2~6_combout\ & ((\stage5_1|m_50|o[15]~24_combout\))) # (!\stage3_1|forwarding|new_d2~6_combout\ & (\PR2_d1|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_d1|Q\(15),
	datab => \stage5_1|m_50|o[15]~24_combout\,
	datad => \stage3_1|forwarding|new_d2~6_combout\,
	combout => \stage3_1|m_34|o[15]~49_combout\);

-- Location: LCCOMB_X31_Y15_N12
\stage3_1|m_34|o[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[15]~50_combout\ = (\stage3_1|forwarding|new_d2~2_combout\ & ((\stage3_1|forwarding|new_d2~3_combout\ & (\stage3_1|forwarding|stage4_d3[15]~17_combout\)) # (!\stage3_1|forwarding|new_d2~3_combout\ & ((\stage3_1|m_34|o[15]~49_combout\))))) 
-- # (!\stage3_1|forwarding|new_d2~2_combout\ & (((\stage3_1|m_34|o[15]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|forwarding|new_d2~2_combout\,
	datab => \stage3_1|forwarding|stage4_d3[15]~17_combout\,
	datac => \stage3_1|m_34|o[15]~49_combout\,
	datad => \stage3_1|forwarding|new_d2~3_combout\,
	combout => \stage3_1|m_34|o[15]~50_combout\);

-- Location: LCCOMB_X31_Y15_N8
\stage3_1|m_34|o[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|m_34|o[15]~51_combout\ = (\PR2_ctrl|Q\(9) & ((\PR2_LS7|Q\(12)))) # (!\PR2_ctrl|Q\(9) & (\stage3_1|m_34|o[15]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[15]~50_combout\,
	datab => \PR2_LS7|Q\(12),
	datad => \PR2_ctrl|Q\(9),
	combout => \stage3_1|m_34|o[15]~51_combout\);

-- Location: LCCOMB_X32_Y17_N20
\stage3_1|alu_1|M|o[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|M|o[15]~1_combout\ = (\PR2_ctrl|Q\(11) & (((!\stage3_1|m_32|o[15]~14_combout\)) # (!\stage3_1|m_34|o[15]~51_combout\))) # (!\PR2_ctrl|Q\(11) & (((\stage3_1|alu_1|A|a0|fa1|s~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|m_34|o[15]~51_combout\,
	datab => \stage3_1|m_32|o[15]~14_combout\,
	datac => \PR2_ctrl|Q\(11),
	datad => \stage3_1|alu_1|A|a0|fa1|s~30_combout\,
	combout => \stage3_1|alu_1|M|o[15]~1_combout\);

-- Location: LCCOMB_X31_Y18_N14
\stage3_1|alu_1|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~0_combout\ = (\stage3_1|alu_1|M|o[1]~10_combout\) # ((\stage3_1|alu_1|M|o[0]~9_combout\) # ((\stage3_1|alu_1|M|o[2]~11_combout\) # (\stage3_1|alu_1|M|o[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[1]~10_combout\,
	datab => \stage3_1|alu_1|M|o[0]~9_combout\,
	datac => \stage3_1|alu_1|M|o[2]~11_combout\,
	datad => \stage3_1|alu_1|M|o[3]~12_combout\,
	combout => \stage3_1|alu_1|zero~0_combout\);

-- Location: LCCOMB_X31_Y17_N26
\stage3_1|alu_1|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~1_combout\ = (\stage3_1|alu_1|M|o[5]~14_combout\) # ((\stage3_1|alu_1|M|o[4]~15_combout\) # ((\stage3_1|alu_1|zero~0_combout\) # (\stage3_1|alu_1|M|o[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[5]~14_combout\,
	datab => \stage3_1|alu_1|M|o[4]~15_combout\,
	datac => \stage3_1|alu_1|zero~0_combout\,
	datad => \stage3_1|alu_1|M|o[6]~13_combout\,
	combout => \stage3_1|alu_1|zero~1_combout\);

-- Location: LCCOMB_X31_Y17_N28
\stage3_1|alu_1|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~2_combout\ = (\stage3_1|alu_1|M|o[8]~8_combout\) # ((\stage3_1|alu_1|M|o[7]~6_combout\) # ((\stage3_1|alu_1|zero~1_combout\) # (\stage3_1|alu_1|M|o[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[8]~8_combout\,
	datab => \stage3_1|alu_1|M|o[7]~6_combout\,
	datac => \stage3_1|alu_1|zero~1_combout\,
	datad => \stage3_1|alu_1|M|o[9]~7_combout\,
	combout => \stage3_1|alu_1|zero~2_combout\);

-- Location: LCCOMB_X31_Y17_N18
\stage3_1|alu_1|zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~3_combout\ = (\stage3_1|alu_1|M|o[11]~3_combout\) # ((\stage3_1|alu_1|M|o[10]~4_combout\) # ((\stage3_1|alu_1|M|o[12]~5_combout\) # (\stage3_1|alu_1|zero~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[11]~3_combout\,
	datab => \stage3_1|alu_1|M|o[10]~4_combout\,
	datac => \stage3_1|alu_1|M|o[12]~5_combout\,
	datad => \stage3_1|alu_1|zero~2_combout\,
	combout => \stage3_1|alu_1|zero~3_combout\);

-- Location: LCCOMB_X31_Y17_N20
\stage3_1|alu_1|zero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3_1|alu_1|zero~4_combout\ = (\stage3_1|alu_1|M|o[15]~1_combout\) # ((\stage3_1|alu_1|M|o[14]~0_combout\) # ((\stage3_1|alu_1|M|o[13]~2_combout\) # (\stage3_1|alu_1|zero~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3_1|alu_1|M|o[15]~1_combout\,
	datab => \stage3_1|alu_1|M|o[14]~0_combout\,
	datac => \stage3_1|alu_1|M|o[13]~2_combout\,
	datad => \stage3_1|alu_1|zero~3_combout\,
	combout => \stage3_1|alu_1|zero~4_combout\);

-- Location: LCCOMB_X31_Y17_N24
create_bubble2 : cycloneive_lcell_comb
-- Equation(s):
-- \create_bubble2~combout\ = (\rst~input_o\) # ((\m51_select~0_combout\) # ((\PR2_ctrl|Q\(10) & !\stage3_1|alu_1|zero~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \m51_select~0_combout\,
	datac => \PR2_ctrl|Q\(10),
	datad => \stage3_1|alu_1|zero~4_combout\,
	combout => \create_bubble2~combout\);

-- Location: LCCOMB_X32_Y17_N30
\temp_instr[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[1]~6_combout\ = (\stage0_0|InstrMem|RAM~31_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~31_combout\,
	datac => \create_bubble2~combout\,
	combout => \temp_instr[1]~6_combout\);

-- Location: FF_X32_Y17_N31
\PR0_instr|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[1]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(1));

-- Location: FF_X31_Y18_N31
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_LS7|Q\(8));

-- Location: FF_X35_Y18_N3
\PR2_adderout|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[1]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(1));

-- Location: LCCOMB_X35_Y17_N0
\stage0_0|PC|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[1]~1_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(1)))) # (!\m3b_select~combout\ & (\incPC[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[1]~2_combout\,
	datab => \PR2_adderout|Q\(1),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[1]~1_combout\);

-- Location: FF_X35_Y17_N1
\stage0_0|PC|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[1]~1_combout\,
	asdata => \stage5_1|m_50|o[1]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(1));

-- Location: LCCOMB_X32_Y15_N24
\stage0_0|InstrMem|RAM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~30_combout\ = (\stage0_0|PC|Q\(2)) # ((\stage0_0|PC|Q\(1) & (!\stage0_0|PC|Q\(3))) # (!\stage0_0|PC|Q\(1) & ((!\stage0_0|PC|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(2),
	datad => \stage0_0|PC|Q\(1),
	combout => \stage0_0|InstrMem|RAM~30_combout\);

-- Location: LCCOMB_X32_Y17_N8
\temp_instr[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[0]~5_combout\ = (\stage0_0|InstrMem|RAM~30_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~30_combout\,
	datac => \create_bubble2~combout\,
	combout => \temp_instr[0]~5_combout\);

-- Location: FF_X32_Y17_N9
\PR0_instr|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(0));

-- Location: FF_X31_Y18_N21
\PR1_LS7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(0),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_LS7|Q\(7));

-- Location: LCCOMB_X31_Y16_N4
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

-- Location: FF_X31_Y16_N5
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

-- Location: LCCOMB_X32_Y17_N28
\stage0_0|PC|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[0]~0_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(0)))) # (!\m3b_select~combout\ & (\incPC[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[0]~0_combout\,
	datab => \PR2_adderout|Q\(0),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[0]~0_combout\);

-- Location: FF_X32_Y17_N29
\stage0_0|PC|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[0]~0_combout\,
	asdata => \stage5_1|m_50|o[0]~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(0));

-- Location: LCCOMB_X32_Y15_N28
\stage0_0|InstrMem|RAM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~23_combout\ = (\stage0_0|PC|Q\(3) & (!\stage0_0|PC|Q\(0) & (!\stage0_0|PC|Q\(2) & !\stage0_0|PC|Q\(1)))) # (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(0)) # ((!\stage0_0|PC|Q\(1)) # (!\stage0_0|PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(2),
	datad => \stage0_0|PC|Q\(1),
	combout => \stage0_0|InstrMem|RAM~23_combout\);

-- Location: LCCOMB_X32_Y17_N0
\temp_instr[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[13]~0_combout\ = (\stage0_0|InstrMem|RAM~23_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|InstrMem|RAM~23_combout\,
	datac => \create_bubble2~combout\,
	combout => \temp_instr[13]~0_combout\);

-- Location: FF_X32_Y17_N1
\PR0_instr|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[13]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(13));

-- Location: FF_X31_Y18_N25
\PR1_LS7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PR0_instr|Q\(13),
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR1_LS7|Q\(9));

-- Location: FF_X35_Y18_N5
\PR2_adderout|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[2]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(2));

-- Location: LCCOMB_X37_Y17_N4
\incPC[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \incPC[2]~4_combout\ = (\stage0_0|PC|Q\(2) & (\incPC[1]~3\ $ (GND))) # (!\stage0_0|PC|Q\(2) & (!\incPC[1]~3\ & VCC))
-- \incPC[2]~5\ = CARRY((\stage0_0|PC|Q\(2) & !\incPC[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0_0|PC|Q\(2),
	datad => VCC,
	cin => \incPC[1]~3\,
	combout => \incPC[2]~4_combout\,
	cout => \incPC[2]~5\);

-- Location: LCCOMB_X35_Y17_N2
\stage0_0|PC|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[2]~2_combout\ = (\m3b_select~combout\ & (\PR2_adderout|Q\(2))) # (!\m3b_select~combout\ & ((\incPC[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR2_adderout|Q\(2),
	datab => \incPC[2]~4_combout\,
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[2]~2_combout\);

-- Location: FF_X35_Y17_N3
\stage0_0|PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[2]~2_combout\,
	asdata => \stage5_1|m_50|o[2]~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(2));

-- Location: FF_X35_Y18_N7
\PR2_adderout|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PR2_adderout|Q[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR2_adderout|Q\(3));

-- Location: LCCOMB_X34_Y17_N8
\stage0_0|PC|Q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|PC|Q[3]~3_combout\ = (\m3b_select~combout\ & ((\PR2_adderout|Q\(3)))) # (!\m3b_select~combout\ & (\incPC[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPC[3]~6_combout\,
	datab => \PR2_adderout|Q\(3),
	datad => \m3b_select~combout\,
	combout => \stage0_0|PC|Q[3]~3_combout\);

-- Location: FF_X34_Y17_N9
\stage0_0|PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stage0_0|PC|Q[3]~3_combout\,
	asdata => \stage5_1|m_50|o[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \m51_select~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0_0|PC|Q\(3));

-- Location: LCCOMB_X36_Y17_N24
\stage0_0|InstrMem|RAM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|InstrMem|RAM~24_combout\ = (!\stage0_0|PC|Q\(3) & ((\stage0_0|PC|Q\(1) & ((!\stage0_0|PC|Q\(2)))) # (!\stage0_0|PC|Q\(1) & ((\stage0_0|PC|Q\(0)) # (\stage0_0|PC|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|PC|Q\(3),
	datab => \stage0_0|PC|Q\(0),
	datac => \stage0_0|PC|Q\(1),
	datad => \stage0_0|PC|Q\(2),
	combout => \stage0_0|InstrMem|RAM~24_combout\);

-- Location: LCCOMB_X32_Y17_N6
\temp_instr[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_instr[15]~1_combout\ = (\stage0_0|InstrMem|RAM~24_combout\) # (\create_bubble2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_0|InstrMem|RAM~24_combout\,
	datac => \create_bubble2~combout\,
	combout => \temp_instr[15]~1_combout\);

-- Location: FF_X32_Y17_N7
\PR0_instr|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_instr[15]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PR0_instr|Q\(10));

-- Location: LCCOMB_X32_Y17_N24
\ctrl|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal10~0_combout\ = (!\PR0_instr|Q\(10) & (\PR0_instr|Q\(13) & \PR0_instr|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PR0_instr|Q\(10),
	datab => \PR0_instr|Q\(13),
	datad => \PR0_instr|Q\(12),
	combout => \ctrl|Equal10~0_combout\);

ww_output <= \output~output_o\;
END structure;


