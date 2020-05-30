----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:34 05/30/2020 
-- Design Name: 
-- Module Name:    dzielnik_100x - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dzielnik_100x is
    Port ( clock : in  STD_LOGIC;
           clock_out : out  STD_LOGIC);
end dzielnik_100x;

architecture Behavioral of dzielnik_100x is
signal counter : integer range 0 to 100 := 0; 

begin
	clock_out <= '1' when counter=99 else '0';

	process (clock) begin
		if clock'event and clock='1' then
			if counter=99 then 
				counter <= 0;
			else 
				counter <= counter + 1;
			end if;
		end if;
	end process;

end Behavioral;

