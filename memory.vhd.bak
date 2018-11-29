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
signal RAM : mem_array := ("0110000000000000",
"0110000000000001",
"0110000000000010",
"0110000001010110",
"0110000011111111",
"0000000001100001",
"0001000101000011",
"0001111111111110",
"0110111111100001",
"0110000001111010",
	 	"0110011001010110",
	 	"0110000011111111",
		"0000000000000000",
	   "1010101010101010", 
	   "0000000000000000",
		"0110000000000000");	--Array that Implements Memory


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
