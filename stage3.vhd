library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library std;
use std.standard.all;

entity stage3 is
	port ( input_d3_in, PC_in, stage0_PC_in, output_SE9,output_SE6,output_LS7_in,rf_d1,rf_d2, PC_4, alu_out_4, LS7_4, input_d3 : 					in std_logic_vector(15 downto 0);
			control_signal : in std_logic_vector(15 downto 0);			
			clk,rst,rf_wr_4, rf_wr_5,M50_4: in std_logic;
			carry,zero : out std_logic;
			input_d3_out,output_LS7_out,alu_out,output_m31,input1_m34, PC_out, PC+1_out, output_adder, new_d1_out, 				new_d2_out : out std_logic_vector(15 downto 0);
			rfa3_in, rf_a1,rf_a2,stage4rf_a3,stage5rf_a3 : in std_logic_vector(2 downto 0);
			rfa3_out: out std_logic_vector(2 downto 0)
			);
end entity;

architecture behave of stage3 is 
component alu is
	port (alu_a,alu_b : in std_logic_vector(15 downto 0);
			op,cin : in std_logic;										--control signals from FSM
			carry,zero : out std_logic;
			alu_out : out std_logic_vector(15 downto 0));
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

component adder16 is
	port (a,b : in std_logic_vector(15 downto 0);
			cin : in std_logic;
			cout : out std_logic;
			o: out std_logic_vector(15 downto 0));
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

signal output_m30,output_m32,output_m33,output_m34,new_d1,new_d2,cpl_new_d1: std_logic_vector(15 downto 0);

begin

PC_out <= PC_in;
PC+1_out <= std_logic_vector(unsigned(stage0_PC_in)+1);
rfa3_out <= rfa3_in;
input_d3_out <= input_d3_in;
output_LS7_out <= output_LS7_in;

new_d1_out <= new_d1;
new_d2_out <= new_d2;
cpl_new_d1 <= not new_d1;

m_30 : mux2 port map(a1 => output_SE6, a0 => output_SE9, s => control_signal(10), o => output_m30); -
m_31 : mux2 port map(a1 => std_logic_vector(unsigned(input1_m34)+1), a0 => "0000000000000000", s => control_signal(15), o => output_m31); 
m_32 : mux2 port map(a1 => cpl_new_d1, a0 => new_d1, s => control_signal(10), o => output_m32); 
m_33 : mux2 port map(a1 => output_SE6, a0 => new_d2, s => control_signal(9), o => output_m33); 
m_34 : mux2 port map(a1 => input1_m34, a0 => output_m33, s => control_signal(15), o => output_m34); 

adder16_1 : adder_16 port map(a => output_m30,b=> PC_in, cin=> '0',cout=> ,o=> output_adder); 

alu_1: alu port map(alu_a => output_m32,alu_b => output_m34,op => control_signal(11),cin => control_signal(10),carry => carry,zero => zero, alu_out => alu_out); 

forwarding : forwarding_unit port map(rf_d1=> rf_d1,rf_d2=> rf_d2,stage4_rf_wr=> rf_wr_4, stage5_rf_wr=> rf_wr_5, rf_a1=> rf_a1, rf_a2=> rf_a2, stage4_a3=> stage4rf_a3, stage5_a3=> stage5rf_a3, M50_4=> M50_4, pc_4 => PC_4,aluout_4 => aluout_4, LS7_4=> LS7_4,stage5_d3=> input_d3, new_d1=> new_d1, new_d2=> new_d2);


--carry : reg1 port map(D => carry, clk => clk, WR => control_signal(8), reset=>rst, Q => carry_out);
--zero : reg1 port map(D => zero, clk => clk, WR => control_signal(7), reset=>rst, Q => zero_out);

end behave;
