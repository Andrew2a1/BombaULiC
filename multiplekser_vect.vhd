----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:20 05/29/2020 
-- Design Name: 
-- Module Name:    multiplekser_vect - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplekser_vect is
    Port ( segment : in  STD_LOGIC_VECTOR (1 downto 0);
           cyfra1 : in  STD_LOGIC_VECTOR (3 downto 0);
           cyfra2 : in  STD_LOGIC_VECTOR (3 downto 0);
           cyfra3 : in  STD_LOGIC_VECTOR (3 downto 0);
           cyfra4 : in  STD_LOGIC_VECTOR (3 downto 0);
           cyfra : out  STD_LOGIC_VECTOR (3 downto 0));
end multiplekser_vect;

architecture Behavioral of multiplekser_vect is

begin
	with segment select
			cyfra <= cyfra1 when "00",
							cyfra2 when "01",
							cyfra3 when "10",
							cyfra4 when others;

end Behavioral;

