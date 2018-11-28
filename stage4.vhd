library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity stage4 is
	port (output_m40, mem_dout, alu_out_out: out std_logic_vector(15 downto 0);
			control_signal : in std_logic_vector(15 downto 0);
			clk,rst,zero : in std_logic;
			rf_wr_4: out std_logic;
			M50_4 : out std_logic_vector(1 downto 0);
			alu_out_in, incPC_in, output_adder, new_d1_in, new_d2_in: in std_logic_vector(15 downto 0)
			);
end entity;

architecture behave of stage4 is 

component memory is
	port (
		en	: in std_logic;	--Chip Enable for memory	
		clk	:	in std_logic;	--XXMHz on board clock
		RD	: in std_logic;	--Read Enable, Active High 
		WR	: in std_logic;	--Write Enable, Active High		
		mem_a	: in std_logic_vector(15 downto 0);	--16bit Address for Memory		
		din : in std_logic_vector(15 downto 0);	--16bit Data Input 
			
		--------------------------------- 	

		dout	: out std_logic_vector(15 downto 0) --16bit Data Out pin, goes to Reg at clock edge
		
		);  
end component;

component mux2 is
		port (a1,a0 : in std_logic_vector;
				s : in std_logic;
				o : out std_logic_vector);
end component;

signal m40_select: std_logic;
signal output_m41;

begin

alu_out_out <= alu_out_in;
M50_4 <= control_signal(1 downto 0);
rf_wr_4 <= control_signal(2);

--control_signal(10) is like an indicator for the BEQ instruction
m40_select <= (zero and control_signal(10)) or control_signal(4);
m_40 : mux2 port map(a1 => output_m41, a0 => incPC_in, s => m40_select, o => output_m40); 
m_41 : mux2 port map(a1 => new_d1_in, a0 => output_adder, s => control_signal(3), o => output_m41); 

data_mem : memory port map(en=>	'1', clk=> clk, RD=> control_signal(6), WR=> control_signal(5), mem_a => alu_out_in, din => new_d2_in, dout => mem_dout);	

end behave;
