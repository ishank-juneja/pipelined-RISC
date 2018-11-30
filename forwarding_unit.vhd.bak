library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity forwarding_unit is
	port (	rf_d1, rf_d2 : in std_logic_vector(15 downto 0);						--default outputs
			stage4_rf_wr, stage5_rf_wr : in std_logic;								--no data clash if these are 0 => default outputs
			rf_a1, rf_a2 : in std_logic_vector(2 downto 0);							--to check for data clash
			stage4_a3, stage5_a3 : in std_logic_vector(2 downto 0);					--to check for data clash
			M50_4 : in std_logic_vector(1 downto 0);
			pc_4, aluout_4, LS7_4,stage5_d3 : in std_logic_vector(15 downto 0);		--possible outputs in case of clash from respective stages
			new_d1, new_d2 : out std_logic_vector(15 downto 0));					--outputs updated d1 & d2
end entity;

architecture struct of forwarding_unit is

signal stage4_d3 : std_logic_vector(15 downto 0); 										--computes new output if clash from stage 4

begin
stage4_d3<= pc_4 when (M50_4="00") else
			--	don't care when (M50_4="01") else this case will be avoided using 1 cycle stall by hazard detection unit
				aluout_4 when (M50_4="10") else
				LS7_4 when (M50_4="11") else
				"XXXXXXXXXXXXXXXX";

--for new_d1:
new_d1<= stage4_d3 when (stage4_rf_wr='1' and rf_a1=stage4_a3) else
				stage5_d3 when (stage5_rf_wr='1' and rf_a1=stage5_a3) else			--stage4 clash gets higher priority as necessary
				rf_d1;
				
	
--for new_d2:
new_d2<= stage4_d3 when (stage4_rf_wr='1' and rf_a2=stage4_a3) else
				stage5_d3 when (stage5_rf_wr='1' and rf_a2=stage5_a3) else			--stage4 clash gets higher priority as necessary
				rf_d1;
	
end struct;
