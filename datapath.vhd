library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity datapath is
	port ( 
			clk,rst : in std_logic );
end entity; 

architecture behave of datapath is 
 
component stage0 is
port ( input_pc : in std_logic_vector(15 downto 0);
		control_signal : in std_logic_vector(19 downto 0);
		r7_wr,clk,rst,pause : in std_logic;
		output_decoder: in std_logic_vector(7 downto 0);
		output_pc,output_mem : out std_logic_vector(15 downto 0);
		output_m10 : out std_logic_vector(7 downto 0)
		);
end component;
	
component stage1 is
port ( p_reg0_pc : in std_logic_vector(15 downto 0);
		p_reg0_m10 :in std_logic_vector(7 downto 0);
		clk,rst : in std_logic;
		output_pe : out std_logic_vector(2 downto 0);
		output_decoder : out std_logic_vector(7 downto 0);
		done : out std_logic
		);
end component;

component stage2 is
	port ( p_reg1_pc,p_reg1_instr,input_d3 : in std_logic_vector(15 downto 0);
			p_reg1_ctrl : in std_logic_vector(19 downto 0);
			clk,rst,p_reg4_wr : in std_logic;
			input_a3,p_reg1_pe: in std_logic_vector(2 downto 0);
			output_SE9,output_SE6,output_LS7,output_d1,output_d2 : out std_logic_vector(15 downto 0);
			rfa3,rfa1,rfa2: out std_logic_vector(2 downto 0);
			r7_wr: out std_logic
			);
end component; 
	component reg16 is
	port (D : in std_logic_vector(15 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(15 downto 0));
end component;
component reg3 is
	port (D : in std_logic_vector(2 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(2 downto 0));
end component;
component reg8 is
	port (D : in std_logic_vector(7 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(7 downto 0));
end component;
component control is
	port (instruction : in std_logic_vector(15 downto 0);
			carry,zero : in std_logic;
			output : out std_logic_vector(15 downto 0)
			);
end component;
	
signal output_m50,input_pc,output_pc,output_mem,p_reg0_instr,p_reg1_instr,p_reg0_pc,p_reg1_pc,p_reg2_pc,p_reg3_pc,p_reg2_SE9,p_reg2_SE6,p_reg2_LS7,p_reg2_d1,p_reg2_d2,output_SE9,output_SE6,output_LS7,output_d1,output_d2: std_logic_vector(15 downto 0);
signal r7_wr,rf_write,done,pause,carry_sig,zero_sig, stall_DH: std_logic;
signal output_m10,p_reg0_m10,p_reg1_m10,output_decoder: std_logic_vector(7 downto 0);
signal control_signal,p_reg1_ctrl : std_logic_vector(19 downto 0);
signal output_pe : std_logic_vector(2 downto 0);
signal p_reg1_pe,output_rfa3,p_reg4_rfa3,p_reg2_rfa3 ,p_reg3_rfa3 : std_logic_vector(2 downto 0);
	
begin 
	
	pause <= not(done) and control_signal(15);
	
	stage0_0: stage0 port map(input_pc=>input_pc,control_signal=> control_signal,r7_wr=>r7_wr,clk=>clk,rst=>rst,pause=>pause,
									output_decoder=>output_decoder,output_pc=>output_pc,output_mem=>output_mem,output_m10=>output_m10);
	PR0_pc : reg16 port map(D => output_pc ,clk => clk, WR => pause, reset=>rst, Q => p_reg0_pc );
	PR0_instr: reg16 port map(D => output_mem ,clk => clk, WR => pause, reset=>rst, Q => p_reg0_instr);
	PR0_mux: reg8 port map(D => output_m10 ,clk => clk, WR => '1', reset=>rst, Q => p_reg0_m10);
	
	stage1_1: stage1 port map(p_reg0_pc=>p_reg0_pc,p_reg0_m10=>p_reg0_m10,clk=>clk,rst=>rst,
										done=>done,output_pe=>output_pe,output_decoder=>output_decoder);
	ctrl: control port map(instruction=> p_reg0_instr,carry=>carry_sig,zero=>zero_sig,output=>control_signal);
	PR1_pc : reg16 port map(D => p_reg0_pc ,clk => clk, WR => '1', reset=>rst, Q => p_reg1_pc );
	PR1_instr: reg16 port map(D => p_reg0_instr ,clk => clk, WR => '1', reset=>rst, Q => p_reg1_instr);
	PR1_pe: reg3 port map(D => output_pe ,clk => clk, WR => '1', reset=>rst, Q => p_reg1_pe);
	PR1_ctrl : reg20 port map(D =>control_signal,clk => clk, WR => '1', reset=>rst, Q => p_reg1_ctrl );
	
	stage2_2: stage2 port map( 	p_reg1_pc => p_reg1_pc, p_reg1_ctrl => p_reg1_ctrl, p_reg1_instr => p_reg1_instr, input_d3 => output_m50,
								clk => clk, rst => rst, p_reg4_wr => p_reg4_ctrl(2), input_a3 => p_reg4_rfa3, p_reg1_pe => p_reg1_pe, stage3mem_rd => p_reg2_ctrl(6), stage3_a3 => p_reg2_rfa3,  
								output_SE9 => output_SE9, output_SE6 => output_SE6, output_LS7 => output_LS7, output_d1 => output_d1,
								output_d2 => output_d2, rfa3 => output_rfa3, rfa1 => output_rfa1, rfa2 => output_rfa2, r7_wr => r7_wr, stall_DH => stall_DH);
	
	PR2_pc : reg16 port map(D => p_reg1_pc ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_pc );
	PR2_SE9 : reg16 port map(D => output_SE9 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_SE9 );
	PR2_SE6 : reg16 port map(D => output_SE6 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_SE6 );
	PR2_LS7 : reg16 port map(D => output_LS7 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_LS7 );
	PR2_d1 : reg16 port map(D => output_d1 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_d1 );
	PR2_d2 : reg16 port map(D => output_d2 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_d2 );
	PR2_rfa1 : reg3 port map(D => output_rfa1 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_rfa1 );
	PR2_rfa2 : reg3 port map(D => output_rfa2 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_rfa2 );
	PR2_rfa3 : reg3 port map(D => output_rfa3 ,clk => clk, WR => '1', reset=>rst, Q => p_reg2_rfa3 );
	PR2_ctrl : reg16 port map(D=>p_reg1_ctrl, clk=>clk, WR=>'1',reset=>rst, Q=>p_reg2_ctrl);
	
	
	
	end behave;
