----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:15 05/29/2020 
-- Design Name: 
-- Module Name:    wybor_segmentu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:	 Demultiplekser z negacj¹ wyjœæ
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

entity wybor_segmentu is
    Port ( cyfra : in  STD_LOGIC_VECTOR (1 downto 0);
           segment : out  STD_LOGIC_VECTOR (3 downto 0));
end wybor_segmentu;

architecture Behavioral of wybor_segmentu is

begin
	with cyfra select
		segment <= "1110" when "00",
						"1101" when "01",
						"1011" when "10",
						"0111" when others;

end Behavioral;

