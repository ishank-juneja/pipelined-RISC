--VHDL Module for Control Stall/Flush implementation
--3 different branch instructions 

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

--This enity handles both these cases
--BEQ: Static not taken prediction
--resolved at the end of EX stage
--3 instructions flushed
--JLR: Unconditional jump to address in register
--address resolved at the end of EX stage
--to handle cases of immediate data dependency
--necessary that BEQ be resolved only in EX stage
--3 instructions flushed 
entity BEQ_JLR_stall is
	port (
		branch_taken : in std_logic;	--Whether branch taken		
		beq_ins : in std_logic	--whether current instruction in EX stage 3 is beq
		jlr_ins : in std_logic	--whether current instruction in EX stage 3 is JLR
		--------------------------------- 	
		flush_first3	: out std_logic	--kill bit to flush the pipeline stages 0, 1 and 2		
		);  
end entity;

architecture behav of BEQ_JLR_stall is
------------- Architechture Begins------------------
begin

flush_first3 <= '1' when ((branch_taken and beq_ins) or jlr_ins)					
else 
'0';
		
end behav;
