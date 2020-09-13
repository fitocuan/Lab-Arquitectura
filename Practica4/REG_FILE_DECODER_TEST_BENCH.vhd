--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:32:07 09/12/2020
-- Design Name:   
-- Module Name:   E:/Practica4/REG_FILE_DECODER_TEST_BENCH.vhd
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
 
ENTITY REG_FILE_DECODER_TEST_BENCH IS
END REG_FILE_DECODER_TEST_BENCH;
 
ARCHITECTURE behavior OF REG_FILE_DECODER_TEST_BENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_FILE_DECODER
    PORT(
         REG_FILE_DECODER_WRITEREG_SEL : IN  std_logic_vector(4 downto 0);
         REG_FILE_DECODER_REGWRITE_ENABLE : IN  std_logic;
         REG_FILE_DECODER_ENABLES : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal REG_FILE_DECODER_WRITEREG_SEL : std_logic_vector(4 downto 0) := (others => '0');
   signal REG_FILE_DECODER_REGWRITE_ENABLE : std_logic := '0';

 	--Outputs
   signal REG_FILE_DECODER_ENABLES : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_FILE_DECODER PORT MAP (
          REG_FILE_DECODER_WRITEREG_SEL => REG_FILE_DECODER_WRITEREG_SEL,
          REG_FILE_DECODER_REGWRITE_ENABLE => REG_FILE_DECODER_REGWRITE_ENABLE,
          REG_FILE_DECODER_ENABLES => REG_FILE_DECODER_ENABLES
        );


   -- Stimulus process
   stim_proc: process
   begin		
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
