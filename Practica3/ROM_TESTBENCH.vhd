--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:03:30 09/04/2020
-- Design Name:   
-- Module Name:   E:/Practica3/ROM_TESTBENCH.vhd
-- Project Name:  Practica3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 USE ieee.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ROM_TESTBENCH IS
END ROM_TESTBENCH;
 
ARCHITECTURE behavior OF ROM_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         READ_ADDRESS : IN  std_logic_vector(31 downto 0);
         INSTRUCTION : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal READ_ADDRESS : std_logic_vector(31 downto 0) := x"00000000";
	signal numeric_index : integer := 0;
 	--Outputs
   signal INSTRUCTION : std_logic_vector(31 downto 0) := (others => '0');
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          READ_ADDRESS => READ_ADDRESS,
          INSTRUCTION => INSTRUCTION
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		READ_ADDRESS <= x"00000000";
      wait for 100 ns;	
		READ_ADDRESS <= x"00000000";
      wait for 100 ns;	
		READ_ADDRESS <= x"00000001";
		wait for 100 ns;	
		READ_ADDRESS <= x"0000000C";
		wait for 100 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
