library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity stage5 is
	port ( 	control_signal : in std_logic_vector(15 downto 0);			
			alu_out_in, PC_in, output_LS7_in, mem_dout : in std_logic_vector(15 downto 0);
			---------------------------------------------			
			rf_wr_5 : out std_logic;
			input_d3_out: out std_logic_vector(15 downto 0)
			);
end entity;

architecture behave of stage5 is 

component mux4 is
    port(
      a3,a2,a1,a0      : in  std_logic_vector;
      sel     : in  std_logic_vector(1 downto 0);
      o       : out std_logic_vector);
end component;

begin

rf_wr_5 <= control_signal(2);
--Inputs to the multiplxer
--1. Address of current instruction + 1
--2. D_out from memory
--3. Alu output form previous stage
--4. 7bit Padded value of LS 9 bit of Instruction word 
--Control signals have been engineered specially for this MUX
m_50 : mux4 port map(a0 => PC_in, a1=> mem_dout, a2 => alu_out_in, a3 => output_LS7_in, 
						sel => control_signal(1 downto 0), o => input_d3_out); 

end behave;
