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

entity data_memory is
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

architecture behav of data_memory is

--Declare Constants 
constant DEPTH : integer := 4;
constant WIDTH : integer := 16;

--Custom data types
type mem_array is array (0 to 2**DEPTH - 1)	of
	std_logic_vector(WIDTH - 1 downto 0);

--instance of memory

signal RAM : mem_array := (
--
"0000000000000101",  
"0000000000010001",  
"0000000000000010",  
"0000000000000011", 
 
"0000000000000100",  
"0000000000000101",  
"0000000000000110",  
"0000000000000001",  

"0000000000000001",  
"0000000000000001",  
"0000000000000001",  
"0000000000000001",  

"0000000000000001",  
"0000000000000001",  
"0000000000000001",  
"0000000000000001"

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
