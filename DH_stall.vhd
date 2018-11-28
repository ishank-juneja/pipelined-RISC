--VHDL Module for Data Stall implementation
--If any instruction performs a data mem read (mem_rd = 1)
--and there is an operand dependant on it
--in the following instruction, then there will be a Data Stall 
--part of stage 2 

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DH_stall is
	port (
		stage3mem_rd : in std_logic;	--Determines if stall occurs		
		rf_a1, rf_a2 : in std_logic_vector(2 downto 0);
		stage3_a3 : in std_logic_vector(2 downto 0);
		--------------------------------- 	
		kill_bit	: out std_logic	--kill bit to stall the pipeline, active high		
		);  
end entity;

architecture behav of DH_stall is

------------- Architechture Begins------------------
begin

--When there is a load type instruction
--ie a possibility of a data hazard
kill_bit <= '1' when (stage3mem_rd = '1' and (rf_a1 = stage3_a3 or rf_a2 = stage3_a3))					
else 
'0';
		
end behav;
