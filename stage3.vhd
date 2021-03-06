library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
use ieee.numeric_std.all;

entity stage3 is
	port ( output_SE6, rf_d1,rf_d2, PC_4, aluout_4, LS7_4, input1_m34, input_d3 : in std_logic_vector(15 downto 0);
			rf_a1, rf_a2, stage4rf_a3, stage5rf_a3 : in std_logic_vector(2 downto 0);			
			control_signal : in std_logic_vector(15 downto 0);			
			clk,rst, rf_wr_4, rf_wr_5, done: in std_logic;
			M50_4 : in std_logic_vector(1 downto 0);
			------------------------------------------
			carry, zero : out std_logic;
			alu_out, output_m31, new_d1_out, new_d2_out : out std_logic_vector(15 downto 0)
			);
end entity;

architecture behave of stage3 is 

component alu is
	port (alu_a, alu_b : in std_logic_vector(15 downto 0);
			op, cin : in std_logic;	--control signals
			carry, zero : out std_logic;
			alu_out : out std_logic_vector(15 downto 0)
			);
end component;

component SE6 is
	port (input : std_logic_vector(5 downto 0);
			output : out std_logic_vector(15 downto 0));
end component;

component mux2 is
		port (a1,a0 : in std_logic_vector;
				s : in std_logic;
				o : out std_logic_vector);
end component;

component forwarding_unit is
	port (rf_d1,rf_d2 : in std_logic_vector(15 downto 0);
			stage4_rf_wr,stage5_rf_wr : in std_logic;
			rf_a1,rf_a2 : in std_logic_vector(2 downto 0);					
			stage4_a3,stage5_a3 : in std_logic_vector(2 downto 0);			
			M50_4 : in std_logic_vector(1 downto 0);
			pc_4,aluout_4,LS7_4,stage5_d3 : in std_logic_vector(15 downto 0);		
			new_d1,new_d2 : out std_logic_vector(15 downto 0));		 
end component;

signal output_m30,output_m32,output_m33,output_m34,new_d1,new_d2,cpl_new_d1,m31_a1: std_logic_vector(15 downto 0);
signal select_sig : std_logic;
begin

new_d1_out <= new_d1;
new_d2_out <= new_d2;
cpl_new_d1 <= not new_d1;
m31_a1 <= std_logic_vector(unsigned(input1_m34)+1);

select_sig<=not(done) and control_signal(15);

m_31 : mux2 port map(a1 => m31_a1, a0 => "0000000000000000", s => select_sig, o => output_m31); 
m_32 : mux2 port map(a1 => cpl_new_d1, a0 => new_d1, s => control_signal(10), o => output_m32); 
m_33 : mux2 port map(a1 => output_SE6, a0 => new_d2, s => control_signal(9), o => output_m33); 
m_34 : mux2 port map(a1 => input1_m34, a0 => output_m33, s => control_signal(15), o => output_m34); 

alu_1: alu port map(alu_a => output_m32,alu_b => output_m34,op => control_signal(11),cin => control_signal(10),carry => carry,zero => zero, alu_out => alu_out); 

forwarding : forwarding_unit port map(rf_d1=> rf_d1,rf_d2=> rf_d2,stage4_rf_wr=> rf_wr_4, stage5_rf_wr=> rf_wr_5, rf_a1=> rf_a1,
													rf_a2=> rf_a2,	stage4_a3=> stage4rf_a3, stage5_a3=> stage5rf_a3, M50_4=> M50_4, 
													pc_4 => PC_4,aluout_4 => aluout_4, LS7_4=> LS7_4,stage5_d3=> input_d3, new_d1=> new_d1, 
													new_d2=> new_d2);

--carry : reg1 port map(D => carry, clk => clk, WR => control_signal(8), reset=>rst, Q => carry_out);
--zero : reg1 port map(D => zero, clk => clk, WR => control_signal(7), reset=>rst, Q => zero_out);

end behave;
	

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity wrb_edit is
	port (bits : in std_logic_vector(1 downto 0);
			ctrl : in std_logic_vector(15 downto 0);
			carry,zero : in std_logic;
			new_ctrl : out std_logic_vector(15 downto 0));
end entity;
architecture struct of wrb_edit is
	signal x,y : std_logic;
begin
	
x <= '1' 	when (bits="00") else
		carry when (bits="10") else
		zero 	when (bits="01") else
		'0';

y <= '1' when (ctrl(9) = '0' and ctrl(7) = '1') else						--ctrl(9) and ctrl(7) identify add or nand type instruction
		'0';																				--and x = '1' implies we need to execute the instruction	
					
new_ctrl(2) <=  x when (y ='1') else									--write back bit
					ctrl(2) ;											

new_ctrl(7) <=  x when (y ='1') else									--zero back bit
					ctrl(7) ;											

new_ctrl(8) <=  x when (y ='1' and ctrl(8) = '1') else			--carry bit
					ctrl(8) ;											
			
new_ctrl(15 downto 9)<=ctrl(15 downto 9);
new_ctrl(6 downto 3)<=ctrl(6 downto 3);
new_ctrl(1 downto 0) <=ctrl(1 downto 0);

end struct;