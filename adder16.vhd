library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity fulladder is
	port ( a,b,cin: in std_logic;
			c,s: out std_logic);
end entity fulladder;
architecture Behave of fulladder is
begin
	c<=(a and b) or (b and cin) or (cin and a);
	s<=(a and b and cin) or (a and (not b) and (not cin)) or ((not a) and (b) and (not cin)) or ((not a) and (not b) and (cin));
end Behave;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity eightbitadder is
	port (x,y : in std_logic_vector(7 downto 0);
			cin : in std_logic;
			cout : out std_logic;
			z: out std_logic_vector(7 downto 0));
end entity;
architecture struct of eightbitadder is
	component fulladder is
		port ( a,b,cin: in std_logic;
				c,s: out std_logic);	
	end component;
	signal carry: std_logic_vector(6 downto 0);
begin

	fa0: fulladder port map (a=>x(0), b=>y(0), cin=> cin, c=>carry(0), s=>z(0));
	fa1: fulladder port map (a=>x(1), b=>y(1), cin=> carry(0),c=>carry(1), s=>z(1));
	fa2: fulladder port map (a=>x(2), b=>y(2), cin=> carry(1),c=>carry(2), s=>z(2));
	fa3: fulladder port map (a=>x(3), b=>y(3), cin=> carry(2),c=>carry(3), s=>z(3));
	fa4: fulladder port map (a=>x(4), b=>y(4), cin=> carry(3),c=>carry(4), s=>z(4));
	fa5: fulladder port map (a=>x(5), b=>y(5), cin=> carry(4),c=>carry(5), s=>z(5));
	fa6: fulladder port map (a=>x(6), b=>y(6), cin=> carry(5),c=>carry(6), s=>z(6));
	fa7: fulladder port map (a=>x(7), b=>y(7), cin=> carry(6),c=>cout, s=>z(7));
end struct;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity adder16 is
	port (a,b : in std_logic_vector(15 downto 0);
			cin : in std_logic;
			cout : out std_logic;
			o: out std_logic_vector(15 downto 0));
end entity;
architecture struct of adder16 is
	component eightbitadder
		port (x,y : in std_logic_vector(7 downto 0);
			cin : in std_logic;
			cout : out std_logic;
			z: out std_logic_vector(7 downto 0));
	end component;
	signal auxc : std_logic;
begin
	a0 : eightbitadder port map (x=>a(7 downto 0), y=>b(7 downto 0), cin=>cin, cout=>auxc, z=>o(7 downto 0));
	a1 : eightbitadder port map (x=>a(15 downto 8), y=>b(15 downto 8), cin=>auxc, cout=>cout, z=>o(15 downto 8));

end struct;


