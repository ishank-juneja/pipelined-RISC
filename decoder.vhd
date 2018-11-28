library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity decoder is
	port (t3 : in std_logic_vector(7 downto 0);
			input : in std_logic_vector(2 downto 0);
			next_t3 : out std_logic_vector(7 downto 0);
			done : out std_logic);
end entity;
architecture struct of decoder is
signal done : std_logic;
signal sig : std_logic_vector(7 downto 0);
begin
	sig(0) <= t3(0) and not(not(input(2)) and not(input(1)) and not(input(0)));
	sig(1) <= t3(1) and not(not(input(2)) and not(input(1)) and     input(0))	;
	sig(2) <= t3(2) and not(not(input(2)) and     input(1)  and not(input(0)));
	sig(3) <= t3(3) and not(not(input(2)) and 	  input(1)  and 	  input(0))	;
	sig(4) <= t3(4) and not(	  input(2)  and not(input(1)) and not(input(0)));
	sig(5) <= t3(5) and not(	  input(2)  and not(input(1)) and 	  input(0))	;
	sig(6) <= t3(6) and not(	  input(2)  and 	  input(1)  and not(input(0)));
	sig(7) <= t3(7) and not(	  input(2)  and     input(1)  and 	  input(0))	;
	
	done <= '1' when (sig="00000000") else
				'0';
	next_t3 = sig;
end struct;