--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:29:36 08/19/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/P1/sign_extender_tb.vhd
-- Project Name:  P1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sign_extender
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
 
ENTITY sign_extender_tb IS
END sign_extender_tb;
 
ARCHITECTURE behavior OF sign_extender_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sign_extender
    PORT(
         A_sign_extender : IN  std_logic_vector(15 downto 0);
         B_sign_extender : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_sign_extender : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal B_sign_extender : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sign_extender PORT MAP (
          A_sign_extender => A_sign_extender,
          B_sign_extender => B_sign_extender
        );
		  
		  
A_sign_extender <= 		"0000000000000000" after 100 ns,
								"1000000000000000" after 200 ns,
								"0000000000000001" after 300 ns,
								"1111111111111111" after 400 ns;

END;
