--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:41:18 08/19/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/XILINX/PRACTICA1/SHIFTLEFT_TESTBENCH.vhd
-- Project Name:  PRACTICA1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SHIFTLEFT
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
 
ENTITY SHIFTLEFT_TESTBENCH IS
END SHIFTLEFT_TESTBENCH;
 
ARCHITECTURE behavior OF SHIFTLEFT_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SHIFTLEFT
    PORT(
         shift_left_in : IN  std_logic_vector(25 downto 0);
         shift_left_out : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal shift_left_in : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal shift_left_out : std_logic_vector(27 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SHIFTLEFT PORT MAP (
          shift_left_in => shift_left_in,
          shift_left_out => shift_left_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		shift_left_in <= "00000000000000000000000001";
		wait for 100 ns;	
		shift_left_in <= "10000000000000000000000000";
		wait for 100 ns;	
		shift_left_in <= "10000000000000000000000001";
		wait for 100 ns;	
      wait;
   end process;

END;
