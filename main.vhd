--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 06/09/2020 12:41:22
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
   port ( clock        : in    std_logic; 
          przelaczniki : in    std_logic_vector (1 downto 0); 
          przyciski    : in    std_logic_vector (1 downto 0); 
          diody        : out   std_logic_vector (3 downto 0); 
          katody_7seg  : out   std_logic_vector (6 downto 0); 
          kropka       : out   std_logic; 
          segment      : out   std_logic_vector (3 downto 0));
end main;

architecture BEHAVIORAL of main is
   signal XLXN_10      : std_logic_vector (1 downto 0);
   signal XLXN_12      : std_logic_vector (3 downto 0);
   signal XLXN_16      : std_logic_vector (3 downto 0);
   signal XLXN_17      : std_logic_vector (3 downto 0);
   signal XLXN_18      : std_logic_vector (3 downto 0);
   signal XLXN_19      : std_logic_vector (3 downto 0);
   signal XLXN_20      : std_logic;
   signal XLXN_28      : std_logic;
   component dzielnik_zegara
      port ( clock     : in    std_logic; 
             clock_out : out   std_logic);
   end component;
   
   component wybor_cyfry
      port ( clock : in    std_logic; 
             cyfra : out   std_logic_vector (1 downto 0));
   end component;
   
   component wybor_segmentu
      port ( cyfra   : in    std_logic_vector (1 downto 0); 
             segment : out   std_logic_vector (3 downto 0));
   end component;
   
   component sterowanie_kropka
      port ( cyfra  : in    std_logic_vector (1 downto 0); 
             kropka : out   std_logic);
   end component;
   
   component multiplekser_vect
      port ( segment : in    std_logic_vector (1 downto 0); 
             cyfra1  : in    std_logic_vector (3 downto 0); 
             cyfra2  : in    std_logic_vector (3 downto 0); 
             cyfra3  : in    std_logic_vector (3 downto 0); 
             cyfra4  : in    std_logic_vector (3 downto 0); 
             cyfra   : out   std_logic_vector (3 downto 0));
   end component;
   
   component transkoder_7seg
      port ( cyfra  : in    std_logic_vector (3 downto 0); 
             katody : out   std_logic_vector (6 downto 0));
   end component;
   
   component bomba
      port ( clock        : in    std_logic; 
             przyciski    : in    std_logic_vector (1 downto 0); 
             przelaczniki : in    std_logic_vector (1 downto 0); 
             cyfra1       : out   std_logic_vector (3 downto 0); 
             cyfra2       : out   std_logic_vector (3 downto 0); 
             cyfra3       : out   std_logic_vector (3 downto 0); 
             cyfra4       : out   std_logic_vector (3 downto 0); 
             diody        : out   std_logic_vector (3 downto 0));
   end component;
   
   component dzielnik_100x
      port ( clock     : in    std_logic; 
             clock_out : out   std_logic);
   end component;
   
begin
   XLXI_1 : dzielnik_zegara
      port map (clock=>clock,
                clock_out=>XLXN_28);
   
   XLXI_2 : wybor_cyfry
      port map (clock=>XLXN_28,
                cyfra(1 downto 0)=>XLXN_10(1 downto 0));
   
   XLXI_4 : wybor_segmentu
      port map (cyfra(1 downto 0)=>XLXN_10(1 downto 0),
                segment(3 downto 0)=>segment(3 downto 0));
   
   XLXI_5 : sterowanie_kropka
      port map (cyfra(1 downto 0)=>XLXN_10(1 downto 0),
                kropka=>kropka);
   
   XLXI_6 : multiplekser_vect
      port map (cyfra1(3 downto 0)=>XLXN_16(3 downto 0),
                cyfra2(3 downto 0)=>XLXN_17(3 downto 0),
                cyfra3(3 downto 0)=>XLXN_18(3 downto 0),
                cyfra4(3 downto 0)=>XLXN_19(3 downto 0),
                segment(1 downto 0)=>XLXN_10(1 downto 0),
                cyfra(3 downto 0)=>XLXN_12(3 downto 0));
   
   XLXI_7 : transkoder_7seg
      port map (cyfra(3 downto 0)=>XLXN_12(3 downto 0),
                katody(6 downto 0)=>katody_7seg(6 downto 0));
   
   XLXI_8 : bomba
      port map (clock=>XLXN_20,
                przelaczniki(1 downto 0)=>przelaczniki(1 downto 0),
                przyciski(1 downto 0)=>przyciski(1 downto 0),
                cyfra1(3 downto 0)=>XLXN_16(3 downto 0),
                cyfra2(3 downto 0)=>XLXN_17(3 downto 0),
                cyfra3(3 downto 0)=>XLXN_18(3 downto 0),
                cyfra4(3 downto 0)=>XLXN_19(3 downto 0),
                diody(3 downto 0)=>diody(3 downto 0));
   
   XLXI_9 : dzielnik_100x
      port map (clock=>XLXN_28,
                clock_out=>XLXN_20);
   
end BEHAVIORAL;


