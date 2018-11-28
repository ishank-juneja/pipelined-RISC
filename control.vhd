library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity control is
<<<<<<< HEAD
	port (	instruction : in std_logic_vector(15 downto 0);
			carry,zero : in std_logic;
			----------------------------------------			
=======
	port (instruction : in std_logic_vector(15 downto 0);
>>>>>>> aaaffe15b3d0cc7d81cdbcfe545ed099ad4dd3a3
			output : out std_logic_vector(15 downto 0)
			);
end entity;

------Begin Architechture of Controller 
architecture behave of control is

signal opcode : std_logic_vector(3 downto 0);

begin

opcode <= instruction(15 downto 12);

output <= 	"0100000110000010" when (opcode = "0000") else
			"0100001110000110" when (opcode = "0001") else
			"0100100010000010" when (opcode = "0010") else
			"0000000000000111" when (opcode = "0011") else
			"0100001011000101" when (opcode = "0100") else
			"0101001000100000" when (opcode = "0101") else
			"1110000001000101" when (opcode = "0110") else
			"1110000000100000" when (opcode = "0111") else
			"0101010000000000" when (opcode = "1100") else
			"0000000000010100" when (opcode = "1000") else
			"0100000000011100" when (opcode = "1001") else
			"0000000000000000";

end behave;
