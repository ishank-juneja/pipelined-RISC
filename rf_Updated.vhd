library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity rf is
	port (WR,clk,PC_WR, rst : in std_logic;
			a1,a2,a3 : in std_logic_vector(2 downto 0);
			d3,PC_in : in std_logic_vector(15 downto 0);
			d1,d2 : out std_logic_vector(15 downto 0);
				R7_WR : out std_logic);
end entity;
architecture struct of rf is
	component reg16 is
		port (D : in std_logic_vector(15 downto 0);
				clk, WR, reset: in std_logic; 
				Q : out std_logic_vector(15 downto 0));
	end component;
	component mux8 is
		port (i0,i1,i2,i3,i4,i5,i6,i7 : in std_logic_vector(15 downto 0);
				S : in std_logic_vector(2 downto 0);
				output : out std_logic_vector(15 downto 0));
	end component;
	
	component mux2 is
	port (a1,a0 : in std_logic_vector;
			s : in std_logic;
			o : out std_logic_vector);
	end component;	

	signal i0,i1,i2,i3,i4,i5,i6,i7,r7_in : std_logic_vector(15 downto 0);
	signal wr0,wr1,wr2,wr3,wr4,wr5,wr6,wr7,r7_write : std_logic;
begin

	wr0 <= not a3(2) and not a3(1) and not a3(0) and WR;
	wr1 <= not a3(2) and not a3(1) and     a3(0) and WR;
	wr2 <= not a3(2) and 	 a3(1) and not a3(0) and WR;
	wr3 <= not a3(2) and 	 a3(1) and     a3(0) and WR;
	wr4 <= 	  a3(2) and not a3(1) and not  a3(0) and WR;
	wr5 <= 	  a3(2) and not a3(1) and      a3(0) and WR;
	wr6 <= 	  a3(2) and 	 a3(1) and not a3(0) and WR;
	r7_write <=  a3(0) and 	 a3(1) and     a3(2) and WR;
	wr7 <= 	  r7_write or PC_WR;
	
	R7_WR <= r7_write;
	M1_2 : mux2 port map (a1=> d3, a0=> PC_in, s=> r7_write, o=> r7_in);	

	r0: reg16 port map (D=>d3, clk=>clk, WR=>wr0, reset=>rst, Q=>i0);
	r1: reg16 port map (D=>d3, clk=>clk, WR=>wr1, reset=>rst, Q=>i1);
	r2: reg16 port map (D=>d3, clk=>clk, WR=>wr2, reset=>rst, Q=>i2);
	r3: reg16 port map (D=>d3, clk=>clk, WR=>wr3, reset=>rst, Q=>i3);
	r4: reg16 port map (D=>d3, clk=>clk, WR=>wr4, reset=>rst, Q=>i4);
	r5: reg16 port map (D=>d3, clk=>clk, WR=>wr5, reset=>rst, Q=>i5);
	r6: reg16 port map (D=>d3, clk=>clk, WR=>wr6, reset=>rst, Q=>i6);
	r7: reg16 port map (D=>r7_in, clk=>clk, WR=>wr7, reset=>rst, Q=>i7);
	M1 : mux8 port map (i0=>i0,i1=>i1,i2=>i2,i3=>i3,i4=>i4,i5=>i5,i6=>i6,i7=>i7, S=>a1,output=>d1);
	M2 : mux8 port map (i0=>i0,i1=>i1,i2=>i2,i3=>i3,i4=>i4,i5=>i5,i6=>i6,i7=>i7, S=>a2,output=>d2);
	
end struct;
