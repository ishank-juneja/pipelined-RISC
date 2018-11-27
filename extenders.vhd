library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity SE9 is
	port (input : std_logic_vector(8 downto 0);
			output : out std_logic_vector(15 downto 0));
end entity;
architecture behave of SE9 is
begin
output(8 downto 0) <= input;
output(15 downto 9) <= "0000000" when (input(8) = '0') else
								"1111111" ;
end behave;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity SE6 is
	port (input : std_logic_vector(5 downto 0);
			output : out std_logic_vector(15 downto 0));
end entity;
architecture behave of SE6 is
begin
output(5 downto 0) <= input;
output(15 downto 6) <= 	"0000000000" when (input(5) = '0') else
								"1111111111" ;
end behave;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity LS7 is
	port (input : std_logic_vector(8 downto 0);
			output : out std_logic_vector(15 downto 0));
end entity;
architecture behave of LS7 is
begin
output(15 downto 7) <= input;
output(6 downto 0) <= "0000000";
end behave;