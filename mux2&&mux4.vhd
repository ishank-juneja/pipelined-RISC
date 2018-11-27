library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity mux2 is
	port (a1,a0 : in std_logic_vector;
			s : in std_logic;
			o : out std_logic_vector);
end entity;
architecture struct of mux2 is
begin
 o(0) <= (s and a1(0)) or (not s and a0(0));
 o(1) <= (s and a1(1)) or (not s and a0(1));
 o(2) <= (s and a1(2)) or (not s and a0(2));
 o(3) <= (s and a1(3)) or (not s and a0(3));
 o(4) <= (s and a1(4)) or (not s and a0(4));
 o(5) <= (s and a1(5)) or (not s and a0(5));
 o(6) <= (s and a1(6)) or (not s and a0(6));
 o(7) <= (s and a1(7)) or (not s and a0(7));
 o(8) <= (s and a1(8)) or (not s and a0(8));
 o(9) <= (s and a1(9)) or (not s and a0(9));
 o(10) <= (s and a1(10)) or (not s and a0(10));
 o(11) <= (s and a1(11)) or (not s and a0(11));
 o(12) <= (s and a1(12)) or (not s and a0(12));
 o(13) <= (s and a1(13)) or (not s and a0(13));
 o(14) <= (s and a1(14)) or (not s and a0(14));
 o(15) <= (s and a1(15)) or (not s and a0(15));

end struct;



    library IEEE;
    use IEEE.std_logic_1164.all;
    entity mux4 is
    port(
      a3,a2,a1,a0    : in  std_logic_vector(15 downto 0);
      s_1,s_0     : in  std_logic;
      o       : out std_logic_vector(15 downto 0));
    end mux4;
    architecture rtl of mux4 is
    
    begin
      o <= a3 when (s_1 = '1' && s_0 = '1') else
           a2 when (s_1 = '1' && s_0 = '0') else
           a1 when (s_1 = '0' && s_0 = '1') else
           a0;
    end rtl;
