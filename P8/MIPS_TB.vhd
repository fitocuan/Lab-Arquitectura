--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:51:49 10/25/2020
-- Design Name:   
-- Module Name:   Z:/lab-repo/P8/MIPS_TB.vhd
-- Project Name:  P8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MIPS_PROCESSOR
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
 
ENTITY MIPS_TB IS
END MIPS_TB;
 
ARCHITECTURE behavior OF MIPS_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MIPS_PROCESSOR
    PORT(
         MIPS_P_RESET : IN  std_logic;
         MIPS_P_CLK : IN  std_logic;
         DUMMY_OUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal MIPS_P_RESET : std_logic := '0';
   signal MIPS_P_CLK : std_logic := '0';

 	--Outputs
   signal DUMMY_OUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant MIPS_P_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MIPS_PROCESSOR PORT MAP (
          MIPS_P_RESET => MIPS_P_RESET,
          MIPS_P_CLK => MIPS_P_CLK,
          DUMMY_OUT => DUMMY_OUT
        );

   -- Clock process definitions
   MIPS_P_CLK_process :process
   begin
		MIPS_P_CLK <= '0';
		wait for MIPS_P_CLK_period/2;
		MIPS_P_CLK <= '1';
		wait for MIPS_P_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 60 ns;	

      wait for MIPS_P_CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
