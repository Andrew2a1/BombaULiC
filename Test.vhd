-- Vhdl test bench created from schematic F:\dokumenty szkola\semestr_4\ulic_lab\BombaULiC\main.sch - Tue Jun 09 14:34:11 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY main_main_sch_tb IS
END main_main_sch_tb;
ARCHITECTURE behavioral OF main_main_sch_tb IS 

   COMPONENT main
   PORT( clock	:	IN	STD_LOGIC; 
          segment	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          kropka	:	OUT	STD_LOGIC; 
          katody_7seg	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          diody	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          przyciski	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          przelaczniki	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0));
   END COMPONENT;

   SIGNAL clock	:	STD_LOGIC;
   SIGNAL segment	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL kropka	:	STD_LOGIC;
   SIGNAL katody_7seg	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL diody	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL przyciski	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL przelaczniki	:	STD_LOGIC_VECTOR (1 DOWNTO 0);

BEGIN

   UUT: main PORT MAP(
		clock => clock, 
		segment => segment, 
		kropka => kropka, 
		katody_7seg => katody_7seg, 
		diody => diody, 
		przyciski => przyciski, 
		przelaczniki => przelaczniki
   );
	
	clock_process : process begin
		clock <= '1';
		wait for 62 ns;
		clock <= '0';
		wait for 62 ns;
	end process;

   tb : PROCESS
   BEGIN
		
      WAIT; -- will wait forever
   END PROCESS;

END;
