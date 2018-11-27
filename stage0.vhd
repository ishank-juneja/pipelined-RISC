library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity stage0 is
	port ( input_pc : in std_logic_vector(15 downto 0);
			control_signal : in std_logic_vector(19 downto 0);
			r7_wr,clk,rst : in std_logic;
			output_decoder: in std_logic_vector(7 downto 0);
			output_pc,output_mem : out std_logic_vector(15 downto 0);
			output_m10 : out std_logic_vector(7 downto 0)
			);
end entity; 

architecture behave of stage0 is 
component reg16 is
		port (D : in std_logic_vector(15 downto 0);
				clk, WR, reset: in std_logic; 
				Q : out std_logic_vector(15 downto 0)
				);
	end component;
component reg8 is
	port (D : in std_logic_vector(7 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(7 downto 0));
end component;

component mux2 is
	port (a1,a0 : in std_logic_vector;
			s : in std_logic;
			o : out std_logic_vector);
end component;
	component memory is
	port (
		en	: in std_logic;	--Chip Enable for memory	
		clk	: in std_logic;	--XXMHz on board clock
		RD	: in std_logic;	--Read Enable, Active High 
		WR	: in std_logic;	--Write Enable, Active High		
		mem_a	: in std_logic_vector(15 downto 0);	--16bit Address for Memory		
		din : in std_logic_vector(15 downto 0);	--16bit Data Input
		dout	: out std_logic_vector(15 downto 0) --16bit Data Out pin, goes to Reg at clock edge
		); 
	end component;
signal output_pc_sig,output_mem_sig: std_logic_vector(15 downto 0);

begin
PC : reg16 port map(D => input_pc, clk => clk, WR => control_signal(0) or r7_wr, reset=>rst, Q => output_pc_sig);
InstrMem : memory port map(en => '1', clk => clk, RD => control_signal(1), WR => '0', mem_a => output_pc_sig, din => "0000000000000000", dout => output_mem_sig);
M10 : mux2 port map(a1 => output_mem_sig(7 downto 0), a0 => output_decoder, s => control_signal(2), o => output_m10);
output_pc<=output_pc_sig;
output_mem<=output_mem_sig;
end behave;
	