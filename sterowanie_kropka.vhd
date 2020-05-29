----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:55 05/29/2020 
-- Design Name: 
-- Module Name:    sterowanie_kropka - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	 Sterowanie kropka - stan niski = zapalona kropka,
--						 kropki na miejscach 1 i 3 - M.SS.U(od prawej od zera liczac)
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sterowanie_kropka is
    Port ( cyfra : in  STD_LOGIC_VECTOR (1 downto 0);
           kropka : out  STD_LOGIC);
end sterowanie_kropka;

architecture Behavioral of sterowanie_kropka is

begin
	kropka <= '0' when (cyfra="01" or cyfra="11") else '1';

end Behavioral;

