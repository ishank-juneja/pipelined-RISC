library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity stage4 is
	port (	alu_out_in, new_d2_in: in std_logic_vector(15 downto 0);
			output_m40, mem_dout, alu_out_out: out std_logic_vector(15 downto 0);
			control_signal : in std_logic_vector(15 downto 0);
			clk,rst: in std_logic;
			----------------------------------------------------
			rf_wr_4: out std_logic;
			M50_4 : out std_logic_vector(1 downto 0)
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
--signal output_m41;

begin

alu_out_out <= alu_out_in;
M50_4 <= control_signal(1 downto 0);
rf_wr_4 <= control_signal(2);
data_mem : memory port map(en=>	'1', clk=> clk, RD=> control_signal(6), WR=> control_signal(5), mem_a => alu_out_in, din => new_d2_in, dout => mem_dout);	

end behave;
