----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:09 05/29/2020 
-- Design Name: 
-- Module Name:    dzielnik_zegara - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;

entity dzielnik_zegara is
    Port ( clock : in  STD_LOGIC;
           clock_out : out  STD_LOGIC);
end dzielnik_zegara;

architecture Behavioral of dzielnik_zegara is
signal counter : integer range 0 to 800000 := 0; 

begin
	clock_out <= '1' when counter=399 else '0';

	process (clock) begin
		if clock'event and clock='1' then
			if counter=399 then 
				counter <= 0;
			else 
				counter <= counter + 1;
			end if;
		end if;
	end process;

end Behavioral;

