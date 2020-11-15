--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:45:03 11/15/2020
-- Design Name:   
-- Module Name:   E:/Practica9/FREQUENCY_DIVISOR_TB.vhd
-- Project Name:  Practica9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FREQUENCY_DIVISOR
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
 
ENTITY FREQUENCY_DIVISOR_TB IS
END FREQUENCY_DIVISOR_TB;
 
ARCHITECTURE behavior OF FREQUENCY_DIVISOR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FREQUENCY_DIVISOR
    PORT(
         CLK_IN : IN  std_logic;
         CLK_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_IN : std_logic := '0';

 	--Outputs
   signal CLK_OUT : std_logic;

   -- Clock period definitions
   constant CLK_IN_period : time := 0.1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FREQUENCY_DIVISOR PORT MAP (
          CLK_IN => CLK_IN,
          CLK_OUT => CLK_OUT
        );

   -- Clock process definitions
   CLK_IN_process :process
   begin
		CLK_IN <= '0';
		wait for CLK_IN_period/2;
		CLK_IN <= '1';
		wait for CLK_IN_period/2;
   end process;
 
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		
      wait for CLK_IN_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
