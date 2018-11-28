library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity stage5 is
	port ( input_d3_out: out std_logic_vector(15 downto 0);
			control_signal : in std_logic_vector(15 downto 0);			
			alu_out_in, PC_in, output_LS7_in, mem_dout : in std_logic_vector(15 downto 0);
			rf_wr_5 : out std_logic;
			rfa3_in: in std_logic_vector(2 downto 0);
			rfa3_out: out std_logic_vector(2 downto 0);
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

m_50 : mux4 port map(a0=> PC_in, a1=> mem_dout, a2 => alu_out_in, a3 => output_LS7_in, sel => control_signal(1 downto 0), o => input_d3_out); 


end behave;
