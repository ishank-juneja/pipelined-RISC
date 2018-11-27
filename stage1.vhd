library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity stage1 is
	port ( p_reg0_pc : in std_logic_vector(15 downto 0);
			p_reg0_m10 : in std_logic_vector(7 downto 0);
			clk,rst : in std_logic;
			output_pe : out std_logic_vector(2 downto 0);
			output_decoder : out std_logic_vector(7 downto 0)
			);
end entity;

architecture behave of stage1 is 
component decoder is
	port (t3 : in std_logic_vector(7 downto 0);
			input : in std_logic_vector(2 downto 0);
			next_t3 : out std_logic_vector(7 downto 0));
end component;

component encoder is
	port (input : in std_logic_vector(7 downto 0);
			output : out std_logic_vector(2 downto 0));
end component;
signal out_pe: std_logic_vector(2 downto 0);
begin
PE : encoder port map(input => p_reg0_m10, output => out_pe);
DE : decoder port map(t3 => p_reg0_m10, input => out_pe, next_t3 => output_decoder);
output_pe<=out_pe;

end behave;
