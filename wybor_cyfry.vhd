----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:38 05/29/2020 
-- Design Name: 
-- Module Name:    wybor_cyfry - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity wybor_cyfry is
    Port ( clock : in  STD_LOGIC;
           cyfra : out  STD_LOGIC_VECTOR (1 downto 0));
end wybor_cyfry;

architecture Behavioral of wybor_cyfry is
signal digit : STD_LOGIC_VECTOR (1 downto 0) := "00"; 

begin
	cyfra <= digit;

	process (clock) begin
		if clock'event and clock='1' then
			digit <= digit + 1;
		end if;
	end process;

end Behavioral;

