library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity NAND16 is
	port (a,b : in std_logic_vector(15 downto 0);
			o: out std_logic_vector(15 downto 0));
end entity;
architecture struct of NAND16 is
begin
	o(0) <= not(a(0) and b(0)); 
	o(1) <= not(a(1) and b(1)); 
	o(2) <= not(a(2) and b(2));
	o(3) <= not(a(3) and b(3));
	o(4) <= not(a(4) and b(4));
	o(5) <= not(a(5) and b(5));
	o(6) <= not(a(6) and b(6));
	o(7) <= not(a(7) and b(7));
	o(8) <= not(a(8) and b(8));
	o(9) <= not(a(9) and b(9));
	o(10) <= not(a(10) and b(10));
	o(11) <= not(a(11) and b(11));
	o(12) <= not(a(12) and b(12));
	o(13) <= not(a(13) and b(13));
	o(14) <= not(a(14) and b(14));
	o(15) <= not(a(15) and b(15));
end struct;
