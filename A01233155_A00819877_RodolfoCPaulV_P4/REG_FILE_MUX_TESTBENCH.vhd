--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:18:47 09/09/2020
-- Design Name:   
-- Module Name:   Z:/lab-repo/Practica4/REG_FILE_MUX_TESTBENCH.vhd
-- Project Name:  Practica4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG_FILE_MUX
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
 
ENTITY REG_FILE_MUX_TESTBENCH IS
END REG_FILE_MUX_TESTBENCH;
 
ARCHITECTURE behavior OF REG_FILE_MUX_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_FILE_MUX
    PORT(
         REG_FILE_MUX_0 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_1 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_2 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_3 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_4 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_5 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_6 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_7 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_8 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_9 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_10 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_11 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_12 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_13 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_14 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_15 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_16 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_17 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_18 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_19 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_20 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_21 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_22 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_23 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_24 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_25 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_26 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_27 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_28 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_29 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_30 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_31 : IN  std_logic_vector(31 downto 0);
         REG_FILE_MUX_READ_DATA : OUT  std_logic_vector(31 downto 0);
         REG_FILE_MUX_READ_REG : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal REG_FILE_MUX_0 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_1 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_2 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_3 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_4 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_5 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_6 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_7 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_8 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_9 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_10 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_11 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_12 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_13 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_14 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_15 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_16 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_17 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_18 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_19 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_20 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_21 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_22 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_23 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_24 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_25 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_26 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_27 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_28 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_29 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_30 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_31 : std_logic_vector(31 downto 0) := (others => '0');
   signal REG_FILE_MUX_READ_REG : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal REG_FILE_MUX_READ_DATA : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_FILE_MUX PORT MAP (
          REG_FILE_MUX_0 => REG_FILE_MUX_0,
          REG_FILE_MUX_1 => REG_FILE_MUX_1,
          REG_FILE_MUX_2 => REG_FILE_MUX_2,
          REG_FILE_MUX_3 => REG_FILE_MUX_3,
          REG_FILE_MUX_4 => REG_FILE_MUX_4,
          REG_FILE_MUX_5 => REG_FILE_MUX_5,
          REG_FILE_MUX_6 => REG_FILE_MUX_6,
          REG_FILE_MUX_7 => REG_FILE_MUX_7,
          REG_FILE_MUX_8 => REG_FILE_MUX_8,
          REG_FILE_MUX_9 => REG_FILE_MUX_9,
          REG_FILE_MUX_10 => REG_FILE_MUX_10,
          REG_FILE_MUX_11 => REG_FILE_MUX_11,
          REG_FILE_MUX_12 => REG_FILE_MUX_12,
          REG_FILE_MUX_13 => REG_FILE_MUX_13,
          REG_FILE_MUX_14 => REG_FILE_MUX_14,
          REG_FILE_MUX_15 => REG_FILE_MUX_15,
          REG_FILE_MUX_16 => REG_FILE_MUX_16,
          REG_FILE_MUX_17 => REG_FILE_MUX_17,
          REG_FILE_MUX_18 => REG_FILE_MUX_18,
          REG_FILE_MUX_19 => REG_FILE_MUX_19,
          REG_FILE_MUX_20 => REG_FILE_MUX_20,
          REG_FILE_MUX_21 => REG_FILE_MUX_21,
          REG_FILE_MUX_22 => REG_FILE_MUX_22,
          REG_FILE_MUX_23 => REG_FILE_MUX_23,
          REG_FILE_MUX_24 => REG_FILE_MUX_24,
          REG_FILE_MUX_25 => REG_FILE_MUX_25,
          REG_FILE_MUX_26 => REG_FILE_MUX_26,
          REG_FILE_MUX_27 => REG_FILE_MUX_27,
          REG_FILE_MUX_28 => REG_FILE_MUX_28,
          REG_FILE_MUX_29 => REG_FILE_MUX_29,
          REG_FILE_MUX_30 => REG_FILE_MUX_30,
          REG_FILE_MUX_31 => REG_FILE_MUX_31,
          REG_FILE_MUX_READ_DATA => REG_FILE_MUX_READ_DATA,
          REG_FILE_MUX_READ_REG => REG_FILE_MUX_READ_REG
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      	

		REG_FILE_MUX_0 <= x"ffffffff";
		REG_FILE_MUX_10 <= x"f0f0f0f0";
		REG_FILE_MUX_20 <= x"aaaaaaaa";
		
		REG_FILE_MUX_READ_REG <= "00000";
		wait for 100 ns;
		REG_FILE_MUX_READ_REG <= "01010";
		wait for 100 ns;
		REG_FILE_MUX_READ_REG <= "10100";
		wait for 100 ns;
		REG_FILE_MUX_READ_REG <= "00000";
		wait for 100 ns;
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
