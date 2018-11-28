library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity stage2 is
	port ( 	p_reg1_pc, p_reg1_instr, input_d3 : in std_logic_vector(15 downto 0);
			p_reg1_ctrl : in std_logic_vector(19 downto 0);
			clk, rst, p_reg4_wr : in std_logic;
			input_a3, p_reg1_pe : in std_logic_vector(2 downto 0);
			stage3mem_rd : in std_logic			
			stage3_a3 : in std_logic_vector(2 downto 0); 
			------------------------------			
			output_SE9, output_SE6, output_LS7,output_d1, output_d2 : out std_logic_vector(15 downto 0);
			rfa3 : out std_logic_vector(2 downto 0);
			r7_wr : out std_logic
			stall_DH : out std_logic--Bit to stop PC updation
									--and stage 0,1,2 progress
									--for 1 cycle									 
		);
end entity; 

architecture behave of stage2 is 

--For data hazards that are 
--not resolvable using data forwarding 

component DH_stall is
	port (	
		stage3mem_rd : in std_logic;	--Determines if stall occurs		
		rf_a1, rf_a2 : in std_logic_vector(2 downto 0);
		stage3_a3 : in std_logic_vector(2 downto 0);
		--------------------------------- 	
		kill_bit	: out std_logic	--kill bit to stall the pipeline, active high		
		);  
end component;

component rf is
	port (	WR, clk, PC_WR, rst : in std_logic;
			a1, a2, a3 : in std_logic_vector(2 downto 0);
			d3, PC_in : in std_logic_vector(15 downto 0);
			d1, d2 : out std_logic_vector(15 downto 0);
			R7_WR : out std_logic);
end component;

component LS7 is
	port (	input : std_logic_vector(8 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component SE6 is
	port (	input : std_logic_vector(5 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component SE9 is
	port (	input : std_logic_vector(8 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component mux2 is
	port (	a1, a0 : in std_logic_vector;
			s : in std_logic;
			o : out std_logic_vector);
end component;

component mux4 is
		port (	a3, a2, a1, a0 : in std_logic_vector;
				sel : in std_logic_vector(1 downto 0);
				o : out std_logic_vector);
end component;

signal output_m21, output_m20, output_m22: std_logic_vector(2 downto 0);

begin

LS7_1 : LS7 port map(input => p_reg1_instr(8 downto 0), output => output_LS7);
SE9_1 : SE9 port map(input =>p_reg1_instr(8 downto 0), output => output_SE9);
SE6_1 : SE6 port map(input => p_reg1_instr(5 downto 0), output => output_SE6);
m_20 : mux2 port map(a1 => p_reg1_instr(8 downto 6), a0 => p_reg1_instr(11 downto 9), s => p_reg1_ctrl(5), o => output_m20);
m_21 : mux2 port map(a1 => p_reg1_instr(5 downto 3), a0 => p_reg1_instr(11 downto 9), s => p_reg1_ctrl(6), o => output_m21);
m_22 : mux2 port map(a1 => output_m21, a0 => p_reg1_pe, s => p_reg1_ctrl(7), o => output_m22);
m_23 : mux2 port map(a1 => p_reg1_instr(11 downto 9), a0 => p_reg1_pe, s => p_reg1_ctrl(8), o => rfa3);
rf_1 : rf 	port map(WR => p_reg4_wr, clk => not(clk), PC_WR => p_reg1_ctrl(0), rst=>rst, a1 => output_m20, 
					a2 => output_m22, a3 => input_a3, d3 => input_d3, PC_in => p_reg1_pc, 
					d1 => output_d1, d2 => output_d2, R7_WR => r7_wr);
--incomplete
DH : DH_stall port map(stage3mem_rd => stage3mem_rd, rf_a1 =>, rf_a2 =>
						stage3_a3 =>
		--------------------------------- 	
		kill_bit	: out std_logic	--kill bit to stall the pipeline, active high		)

end behave;
