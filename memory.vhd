--VHDL Module for Memory Implemented on an FPGA
--RAM is implemented as an array of registers
--Synchronous Write with Asynchronous Read

--
-- ------mem_a(From Data Path, Asynchronous Read)--||Memory||--mem_d(Pin)--...
-- ...----(@Clock Edge: Control Signal Decides Where)----Temporary Register
--
--

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
	port (
		en	: in std_logic;	--Chip Enable for memory	
		clk	:	in std_logic;	--XXMHz on board clock
		RD	: in std_logic;	--Read Enable, Active High 
		WR	: in std_logic;	--Write Enable, Active High		
		mem_a	: in std_logic_vector(15 downto 0);	--16bit Address for Memory		
		din : in std_logic_vector(15 downto 0);	--16bit Data Input 
			
		--------------------------------- 	

		dout	: out std_logic_vector(15 downto 0) --16bit Data Out pin, goes to Reg at clock edge
		
		);  
end entity;

architecture behav of memory is

--Declare Constants 
constant DEPTH : integer := 4;
constant WIDTH : integer := 16;

--Custom data types
type mem_array is array (0 to 2**DEPTH - 1)	of
	std_logic_vector(WIDTH - 1 downto 0);

--instance of memory

signal RAM : mem_array := (
"0001001000000001",  
"0001010000000101",  
"0001011000001001",  

-- SM R0 R321
"0111000000001110",  

-- LM R0 R654
"0110000001110000",

"1111111111111110",
"1111111111111100",
"1111111111111010",
"1111111111110110",
"1111111111101110",
"0001011000000000",  
"0001011000000000",  
"0001011000000000",  
"1111111111110110",
"1111111111101110",
"1111111111011110"
--"0000000001100001"
--ADI R0 R5 0x0003
--"0001000101000011"
);
--Array that Implements Memory

------- Architechture Begins------------------
begin
		
--Memory thread
synchronous_RAM: process(clk, mem_a, RAM, en, RD) 
	
--variable declaration	
variable index : integer;
	
begin
	--variable assignments
	--An Asynchrnous Read task	
	--Here Depth is 4	
	index := to_integer(unsigned(mem_a(DEPTH downto 0)));	
	
	if(en = '1') then		
	
		--Asynchronous Read of Data
		--Read from Memory Case, WR = '0' implicit	
		if(RD = '1') then		
			dout <= RAM(index);		
							
		elsif(rising_edge(clk)) then
			--Synchrnous Write of Data
			--Write to Memory Case, RD = '0' implicit	
			if(WR = '1') then
				RAM(index) <= din;
				--Explicit Assignment to prevent latch				
				dout <= (others => '0');

			--Memory Idle Case 
			-- WR = 0 and RD = 0		
			else 
				--Explicit Assignment to prevent latch
				dout <= (others => '0');			
		
			end if;
		
		else 
			--Explicit Assignment to prevent latch
			dout <= (others => '0');			
		end if; 		
	else 
		dout <= (others => '0');
		--Chip Not Enabled
		--Do nothing, no updation		
	end if;
	
end process;

end behav;
