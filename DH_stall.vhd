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
		stage3_mem_rd : in std_logic;	--Determines if stall occurs		
		rf_a1, rf_a2 : in std_logic_vector(2 downto 0);
		stage3_a3 : in std_logic_vector(2 downto 0);
		--------------------------------- 	
		kill_bit	: out std_logic	--kill bit to stall the pipeline, active high		
		);  
end entity;

architecture behav of stall_logic is

------------- Architechture Begins------------------
begin

--Sequential logic
data_hazard_stall: process() 

begin
	--if processor is not rst
	--and there is a load type instruction
	--ie a possibility of a data hazard
	if(stage3_mem_rd = '1')					
		if(rf_a1 = stage3_a3)
			kill_bit <= '1';
		
		elsif(rf_a2 = stage3_a3)
			kill_bit <= '1';
		
		else
			kill_bit <= '0';
		end if
	--Don't kill if	there is no unresolvable data dependence 	
	else
		kill_bit <= '0';
	end if

end process
end behav;
