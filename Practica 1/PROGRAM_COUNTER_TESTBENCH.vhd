--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:32:12 08/22/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/XILINX/PRACTICA1/PROGRAM_COUNTER_TESTBENCH.vhd
-- Project Name:  PRACTICA1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PROGRAM_COUNTER
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
 
ENTITY PROGRAM_COUNTER_TESTBENCH IS
END PROGRAM_COUNTER_TESTBENCH;
 
ARCHITECTURE behavior OF PROGRAM_COUNTER_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROGRAM_COUNTER
    PORT(
         D : IN  std_logic_vector(31 downto 0);
         Q : OUT  std_logic_vector(31 downto 0);
         RESET : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(31 downto 0) := (others => '0');
   signal RESET : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROGRAM_COUNTER PORT MAP (
          D => D,
          Q => Q,
          RESET => RESET,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10 + CLK_period/2;
		D <= x"00000232";
		wait for CLK_period*10;
		RESET <= '1';
      -- insert stimulus here 
		D <= x"00000555";
		wait for CLK_period*10 + CLK_period/2;
		RESET <= '0';
      wait;
   end process;

END;
