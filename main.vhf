--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 05/29/2020 14:34:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl "F:/dokumenty szkola/semestr_4/ulic_lab/BombaULiC/main.vhf" -w "F:/dokumenty szkola/semestr_4/ulic_lab/BombaULiC/main.sch"
--Design Name: main
--Device: xbr
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( clock : in    std_logic);
end main;

architecture BEHAVIORAL of main is
   component dzielnik_zegara
      port ( clock     : in    std_logic; 
             clock_out : out   std_logic);
   end component;
   
begin
   XLXI_1 : dzielnik_zegara
      port map (clock=>clock,
                clock_out=>open);
   
end BEHAVIORAL;


