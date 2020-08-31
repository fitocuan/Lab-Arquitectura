--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:07:15 08/19/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/P1/add_tb.vhd
-- Project Name:  P1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY add_tb IS
END add_tb;
 
ARCHITECTURE behavior OF add_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add
    PORT(
         A_Adder : IN  std_logic_vector(31 downto 0);
         B_Adder : IN  std_logic_vector(31 downto 0);
         C_Adder : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_Adder : std_logic_vector(31 downto 0) := (others => '0');
   signal B_Adder : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal C_Adder : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add PORT MAP (
          A_Adder => A_Adder,
          B_Adder => B_Adder,
          C_Adder => C_Adder
        );

 A_Adder <= "00000000000000000000000000000000" after 100 ns,
				"11111111111111111111111111111111" after 200 ns,
				"11111111111111111111111111111111" after 300 ns;
				
 B_Adder <= "00000000000000000000000000000000" after 100 ns,
				"00000000000000000000000000000000" after 200 ns,
				"11111111111111111111111111111111" after 300 ns;					
 
 
 
 
END;
