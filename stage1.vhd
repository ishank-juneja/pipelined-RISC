library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity stage1 is
	port (instruction : in std_logic_vector(15 downto 0);
			p_reg0_m10 : in std_logic_vector(7 downto 0);
			clk,rst : in std_logic;
			
			output_SE9,output_SE6,output_LS7 : out std_logic_vector(15 downto 0);		
			output_pe : out std_logic_vector(2 downto 0);
			output_decoder : out std_logic_vector(7 downto 0);
			done : out std_logic
			);
end entity;

architecture behave of stage1 is 
component decoder is
	port (t3 : in std_logic_vector(7 downto 0);
			input : in std_logic_vector(2 downto 0);
			next_t3 : out std_logic_vector(7 downto 0);
			done : out std_logic);
end component;

component LS7 is
	port (input : std_logic_vector(8 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component SE6 is
	port (input : std_logic_vector(5 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component SE9 is
	port (input : std_logic_vector(8 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component encoder is
	port (input : in std_logic_vector(7 downto 0);
			output : out std_logic_vector(2 downto 0));
end component;
signal out_pe: std_logic_vector(2 downto 0);
begin
LS7_1 : LS7 port map(input => instruction(8 downto 0), output => output_LS7);
SE9_1 : SE9 port map(input =>instruction(8 downto 0), output => output_SE9);
SE6_1 : SE6 port map(input => instruction(5 downto 0), output => output_SE6);

PE : encoder port map(input => p_reg0_m10, output => out_pe);
DE : decoder port map(t3 => p_reg0_m10, input => out_pe, next_t3 => output_decoder, done=>done);
output_pe<=out_pe;

end behave;
