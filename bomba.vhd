----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:11 05/29/2020 
-- Design Name: 
-- Module Name:    bomba - Behavioral 
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

entity bomba is
    Port ( clock : in  STD_LOGIC;
           przyciski : in  STD_LOGIC_VECTOR (1 downto 0);
           przelaczniki : in  STD_LOGIC_VECTOR (1 downto 0);
           cyfra1 : out  STD_LOGIC_VECTOR (3 downto 0);
           cyfra2 : out  STD_LOGIC_VECTOR (3 downto 0);
           cyfra3 : out  STD_LOGIC_VECTOR (3 downto 0);
           cyfra4 : out  STD_LOGIC_VECTOR (3 downto 0);
           diody : out  STD_LOGIC_VECTOR (3 downto 0));
end bomba;

architecture Behavioral of bomba is
begin


end Behavioral;

