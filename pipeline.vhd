library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
use ieee.numeric_std.all;

entity Pipeline is
	port ( 
		clk,rst,clk50 : in std_logic;
		output : out std_logic
		);
end entity;


architecture struct of pipeline is
component datapath is
	port ( 
		clk,rst : in std_logic;
		output : out std_logic
		);
end component;
begin
DP : datapath port map (clk=>clk , rst=>rst , output=>output);

end struct;