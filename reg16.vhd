library ieee;
use ieee.std_logic_1164.all;

entity reg16 is
	port (D : in std_logic_vector(15 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(15 downto 0));
end entity;

architecture WhatDoYouCare of reg16 is
begin 

   process (clk, reset) is 
   begin
	if(reset = '1') then
			Q<="0000000000000000";
	else
		if rising_edge(clk) then
			if(WR = '1') then
				Q <= D;
			end if;
		end if;
	end if;
   end process;

end WhatDoYouCare;


library ieee;
use ieee.std_logic_1164.all;

entity reg8 is
	port (D : in std_logic_vector(7 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(7 downto 0));
end entity;

architecture WhatDoYouCare8 of reg8 is
begin 

   process (clk, reset) is 
   begin
	if(reset = '1') then
			Q<="00000000";
	else
		if falling_edge(clk) then
			if(WR = '1') then
				Q <= D;
			end if;
		end if;
	end if;
   end process;

end WhatDoYouCare8;

library ieee;
use ieee.std_logic_1164.all;

entity reg3 is
	port (D : in std_logic_vector(2 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(2 downto 0));
end entity;

architecture WhatDoYouCare3 of reg3 is
begin 

   process (clk, reset) is 
   begin
	if(reset = '1') then
			Q<="000";
	else
		if falling_edge(clk) then
			if(WR = '1') then
				Q <= D;
			end if;
		end if;
	end if;
   end process;

end WhatDoYouCare3;


library ieee;
use ieee.std_logic_1164.all;

entity reg1 is
	port (D : in std_logic;
			clk, WR, reset: in std_logic; 
			Q : out std_logic);
end entity;

architecture WhatDoYouCare1 of reg1 is
begin 

   process (clk, reset) is 
   begin
	if(reset = '1') then
			Q<='0';
	else
		if falling_edge(clk) then
			if(WR = '1') then
				Q <= D;
			end if;
		end if;
	end if;
   end process;

end WhatDoYouCare1;



