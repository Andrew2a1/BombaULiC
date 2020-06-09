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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
signal isOver : std_logic := '0';
signal isCounting : std_logic := '0';

signal reset : std_logic := '0';
signal stop : std_logic := '0';
signal explosion : std_logic := '0';

signal u : std_logic_vector(3 downto 0) := "0100";
signal s0 : std_logic_vector(3 downto 0) := "0010";
signal s1 : std_logic_vector(3 downto 0) := "0100";
signal m : std_logic_vector(3 downto 0) := "0101";

begin
	diody <= "0000" when isOver = '1' else "1111";
	cyfra1 <= u;
	cyfra2 <= s0;
	cyfra3 <= s1;
	cyfra4 <= m;
	
	process(przelaczniki, przyciski) begin
		if przelaczniki = "00" then
			if przyciski(1) = '0' then	
				reset <= '1';
				stop <= '0';
				explosion <= '0';
			elsif przyciski(0) = '0' then
				explosion <= '1';
			else
				reset <= '0';
			end if;
		elsif przelaczniki = "11" then
			if przyciski(1) = '0' then
				stop <= '1';
			elsif przyciski(0) = '0' then
				explosion <= '1';
			else
				reset <= '0';
			end if;
		else
			if przyciski(0) = '0' or przyciski(1) = '0' then
				explosion <= '1';
			else
				reset <= '0';
			end if;
		end if;
	end process;

	process(clock) begin
		if clock'event and clock='1' then
			if reset = '1' then
				isOver <= '0';
				isCounting <= '1';
				u <= "0100";
				s0 <= "0010";
				s1 <= "0100";
				m <= "0101";
			elsif explosion = '1' then
				isOver <= '1';
			elsif stop = '1' then
				isCounting <= '0';
			elsif isOver = '0' and isCounting = '1' then
				if u = "0000" then
					if (s0 or s1 or m) = "0000" then
						isOver <= '1';
					else
						u <= "1001";
						if s0 = "0000" then
							s0 <= "1001";
							if s1 = "0000" then
								s1 <= "0101";
								m <= m - 1;
							else
								s1 <= s1 - 1;
							end if;
						else
							s0 <= s0 - 1;
						end if;
					end if;
				else
					u <= u - 1;
				end if;
			end if;
		end if;
	end process;
	
end Behavioral;

