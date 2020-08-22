--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:32:28 08/19/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/XILINX/PRACTICA1/MUX_32_BITS_TESTBENCH.vhd
-- Project Name:  PRACTICA1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_32_BITS
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
 
ENTITY MUX_32_BITS_TESTBENCH IS
END MUX_32_BITS_TESTBENCH;
 
ARCHITECTURE behavior OF MUX_32_BITS_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_32_BITS
    PORT(
         MUX_32_BITS_A : IN  std_logic_vector(31 downto 0);
         MUX_32_BITS_B : IN  std_logic_vector(31 downto 0);
         MUX_32_BITS_OUT : OUT  std_logic_vector(31 downto 0);
         MUX_32_BITS_SELECT : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal MUX_32_BITS_A : std_logic_vector(31 downto 0) := (others => '0');
   signal MUX_32_BITS_B : std_logic_vector(31 downto 0) := (others => '0');
   signal MUX_32_BITS_SELECT : std_logic := '0';

 	--Outputs
   signal MUX_32_BITS_OUT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_32_BITS PORT MAP (
          MUX_32_BITS_A => MUX_32_BITS_A,
          MUX_32_BITS_B => MUX_32_BITS_B,
          MUX_32_BITS_OUT => MUX_32_BITS_OUT,
          MUX_32_BITS_SELECT => MUX_32_BITS_SELECT
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		MUX_32_BITS_A <= x"00001615";
		MUX_32_BITS_B <= x"00000032";
		MUX_32_BITS_SELECT <= '0';
		wait for 100 ns;	
		MUX_32_BITS_SELECT <= '1';
		wait for 100 ns;
		MUX_32_BITS_B <= x"00004042";
		wait for 100 ns;			
      -- insert stimulus here 

      wait;

      -- insert stimulus here 

      wait;
   end process;

END;
