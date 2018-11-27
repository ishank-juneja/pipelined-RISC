library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity mux8 is
	port (i0,i1,i2,i3,i4,i5,i6,i7 : in std_logic_vector(15 downto 0);
			S : in std_logic_vector(2 downto 0);
			output : out std_logic_vector(15 downto 0));
end entity;
architecture behave of mux8 is
begin
 output <= i0 when (s = "000") else
           i1 when (s = "001") else
           i2 when (s = "010") else
           i3 when (s = "011") else
           i4 when (s = "100") else
           i5 when (s = "101") else
           i6 when (s = "110") else
           i7;
end behave;


   library IEEE;
    use IEEE.std_logic_1164.all;
    entity mux4 is
    port(
      a3,a2,a1,a0      : in  std_logic_vector;
      sel     : in  std_logic_vector(1 downto 0);
      o       : out std_logic_vector);
    end mux4;
    architecture rtl of mux4 is
      -- declarative part: empty
    begin
      o <= a0 when (sel = "00") else
           a1 when (sel = "01") else
           a2 when (sel = "10") else
           a3;
    end rtl;

	 
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

o <= a1 when s = '1' else
     a0;

end struct;

