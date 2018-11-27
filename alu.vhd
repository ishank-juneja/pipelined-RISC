library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity alu is
	port (alu_a,alu_b : in std_logic_vector(15 downto 0);
			op,cin : in std_logic;										--control signals from FSM
			carry,zero : out std_logic;
			alu_out : out std_logic_vector(15 downto 0));
end entity;
architecture struct of alu is
	component mux2 is
		port (a1,a0 : in std_logic_vector;
				s : in std_logic;
				o : out std_logic_vector);
	end component;
	component adder16 is
		port (a,b : in std_logic_vector(15 downto 0);
				cin : in std_logic;
				cout : out std_logic;
				o: out std_logic_vector(15 downto 0));
	end component;
	component NAND16 is
		port (a,b : in std_logic_vector(15 downto 0);
				o: out std_logic_vector(15 downto 0));
	end component;
	signal nandout,addout,tempout : std_logic_vector(15 downto 0);
	
begin
	N : nand16 port map (a=>alu_a, b=>alu_b, o=>nandout);
	A : adder16 port map (a=>alu_a, b=>alu_b, cin=>cin, cout=>carry, o=>addout);
	M : mux2 port map (a1=>nandout, a0=>addout, s=>op, o=>tempout);
	zero<=not(tempout(0) or tempout(1) or tempout(2) or tempout(3) or tempout(4) or tempout(5) or tempout(6) or tempout(7) or 
				tempout(8) or tempout(9) or tempout(10) or tempout(11) or tempout(12) or tempout(13) or tempout(14) or tempout(15));
	alu_out <= tempout;
end struct;

