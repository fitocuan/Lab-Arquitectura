--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:48:54 09/12/2020
-- Design Name:   
-- Module Name:   E:/Practica4/REG_FILE_DECODER_TESTBENCH.vhd
-- Project Name:  Practica4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG_FILE_DECODER
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
 
ENTITY REG_FILE_DECODER_TESTBENCH IS
END REG_FILE_DECODER_TESTBENCH;
 
ARCHITECTURE behavior OF REG_FILE_DECODER_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_FILE_DECODER
    PORT(
         REG_FILE_DECODER_WRITEREG_SEL : IN  std_logic_vector(4 downto 0);
         REG_FILE_DECODER_REGWRITE_ENABLE : IN  std_logic;
         REG_FILE_DECODER_0 : OUT  std_logic;
         REG_FILE_DECODER_1 : OUT  std_logic;
         REG_FILE_DECODER_2 : OUT  std_logic;
         REG_FILE_DECODER_3 : OUT  std_logic;
         REG_FILE_DECODER_4 : OUT  std_logic;
         REG_FILE_DECODER_5 : OUT  std_logic;
         REG_FILE_DECODER_6 : OUT  std_logic;
         REG_FILE_DECODER_7 : OUT  std_logic;
         REG_FILE_DECODER_8 : OUT  std_logic;
         REG_FILE_DECODER_9 : OUT  std_logic;
         REG_FILE_DECODER_10 : OUT  std_logic;
         REG_FILE_DECODER_11 : OUT  std_logic;
         REG_FILE_DECODER_12 : OUT  std_logic;
         REG_FILE_DECODER_13 : OUT  std_logic;
         REG_FILE_DECODER_14 : OUT  std_logic;
         REG_FILE_DECODER_15 : OUT  std_logic;
         REG_FILE_DECODER_16 : OUT  std_logic;
         REG_FILE_DECODER_17 : OUT  std_logic;
         REG_FILE_DECODER_18 : OUT  std_logic;
         REG_FILE_DECODER_19 : OUT  std_logic;
         REG_FILE_DECODER_20 : OUT  std_logic;
         REG_FILE_DECODER_21 : OUT  std_logic;
         REG_FILE_DECODER_22 : OUT  std_logic;
         REG_FILE_DECODER_23 : OUT  std_logic;
         REG_FILE_DECODER_24 : OUT  std_logic;
         REG_FILE_DECODER_25 : OUT  std_logic;
         REG_FILE_DECODER_26 : OUT  std_logic;
         REG_FILE_DECODER_27 : OUT  std_logic;
         REG_FILE_DECODER_28 : OUT  std_logic;
         REG_FILE_DECODER_29 : OUT  std_logic;
         REG_FILE_DECODER_30 : OUT  std_logic;
         REG_FILE_DECODER_31 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal REG_FILE_DECODER_WRITEREG_SEL : std_logic_vector(4 downto 0) := (others => '0');
   signal REG_FILE_DECODER_REGWRITE_ENABLE : std_logic := '0';

 	--Outputs
   signal REG_FILE_DECODER_0 : std_logic;
   signal REG_FILE_DECODER_1 : std_logic;
   signal REG_FILE_DECODER_2 : std_logic;
   signal REG_FILE_DECODER_3 : std_logic;
   signal REG_FILE_DECODER_4 : std_logic;
   signal REG_FILE_DECODER_5 : std_logic;
   signal REG_FILE_DECODER_6 : std_logic;
   signal REG_FILE_DECODER_7 : std_logic;
   signal REG_FILE_DECODER_8 : std_logic;
   signal REG_FILE_DECODER_9 : std_logic;
   signal REG_FILE_DECODER_10 : std_logic;
   signal REG_FILE_DECODER_11 : std_logic;
   signal REG_FILE_DECODER_12 : std_logic;
   signal REG_FILE_DECODER_13 : std_logic;
   signal REG_FILE_DECODER_14 : std_logic;
   signal REG_FILE_DECODER_15 : std_logic;
   signal REG_FILE_DECODER_16 : std_logic;
   signal REG_FILE_DECODER_17 : std_logic;
   signal REG_FILE_DECODER_18 : std_logic;
   signal REG_FILE_DECODER_19 : std_logic;
   signal REG_FILE_DECODER_20 : std_logic;
   signal REG_FILE_DECODER_21 : std_logic;
   signal REG_FILE_DECODER_22 : std_logic;
   signal REG_FILE_DECODER_23 : std_logic;
   signal REG_FILE_DECODER_24 : std_logic;
   signal REG_FILE_DECODER_25 : std_logic;
   signal REG_FILE_DECODER_26 : std_logic;
   signal REG_FILE_DECODER_27 : std_logic;
   signal REG_FILE_DECODER_28 : std_logic;
   signal REG_FILE_DECODER_29 : std_logic;
   signal REG_FILE_DECODER_30 : std_logic;
   signal REG_FILE_DECODER_31 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_FILE_DECODER PORT MAP (
          REG_FILE_DECODER_WRITEREG_SEL => REG_FILE_DECODER_WRITEREG_SEL,
          REG_FILE_DECODER_REGWRITE_ENABLE => REG_FILE_DECODER_REGWRITE_ENABLE,
          REG_FILE_DECODER_0 => REG_FILE_DECODER_0,
          REG_FILE_DECODER_1 => REG_FILE_DECODER_1,
          REG_FILE_DECODER_2 => REG_FILE_DECODER_2,
          REG_FILE_DECODER_3 => REG_FILE_DECODER_3,
          REG_FILE_DECODER_4 => REG_FILE_DECODER_4,
          REG_FILE_DECODER_5 => REG_FILE_DECODER_5,
          REG_FILE_DECODER_6 => REG_FILE_DECODER_6,
          REG_FILE_DECODER_7 => REG_FILE_DECODER_7,
          REG_FILE_DECODER_8 => REG_FILE_DECODER_8,
          REG_FILE_DECODER_9 => REG_FILE_DECODER_9,
          REG_FILE_DECODER_10 => REG_FILE_DECODER_10,
          REG_FILE_DECODER_11 => REG_FILE_DECODER_11,
          REG_FILE_DECODER_12 => REG_FILE_DECODER_12,
          REG_FILE_DECODER_13 => REG_FILE_DECODER_13,
          REG_FILE_DECODER_14 => REG_FILE_DECODER_14,
          REG_FILE_DECODER_15 => REG_FILE_DECODER_15,
          REG_FILE_DECODER_16 => REG_FILE_DECODER_16,
          REG_FILE_DECODER_17 => REG_FILE_DECODER_17,
          REG_FILE_DECODER_18 => REG_FILE_DECODER_18,
          REG_FILE_DECODER_19 => REG_FILE_DECODER_19,
          REG_FILE_DECODER_20 => REG_FILE_DECODER_20,
          REG_FILE_DECODER_21 => REG_FILE_DECODER_21,
          REG_FILE_DECODER_22 => REG_FILE_DECODER_22,
          REG_FILE_DECODER_23 => REG_FILE_DECODER_23,
          REG_FILE_DECODER_24 => REG_FILE_DECODER_24,
          REG_FILE_DECODER_25 => REG_FILE_DECODER_25,
          REG_FILE_DECODER_26 => REG_FILE_DECODER_26,
          REG_FILE_DECODER_27 => REG_FILE_DECODER_27,
          REG_FILE_DECODER_28 => REG_FILE_DECODER_28,
          REG_FILE_DECODER_29 => REG_FILE_DECODER_29,
          REG_FILE_DECODER_30 => REG_FILE_DECODER_30,
          REG_FILE_DECODER_31 => REG_FILE_DECODER_31
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		REG_FILE_DECODER_REGWRITE_ENABLE <= '1';
		REG_FILE_DECODER_WRITEREG_SEL <= "00000";
		wait for 100 ns;
		REG_FILE_DECODER_WRITEREG_SEL <= "10000";
		wait for 100 ns;
		
		REG_FILE_DECODER_WRITEREG_SEL <= "11111";
		wait for 100 ns;
      REG_FILE_DECODER_REGWRITE_ENABLE <= '0';
		wait for 100 ns;
		wait;
   end process;

END;
