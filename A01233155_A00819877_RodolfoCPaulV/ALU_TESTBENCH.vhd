--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:15:37 08/26/2020
-- Design Name:   
-- Module Name:   Z:/lab-repo/P2/ALU_TESTBENCH.vhd
-- Project Name:  P2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_TESTBENCH IS
END ALU_TESTBENCH;
 
ARCHITECTURE behavior OF ALU_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         ALU_CNTRL : IN  std_logic_vector(2 downto 0);
         ALU_A : IN  std_logic_vector(31 downto 0);
         ALU_B : IN  std_logic_vector(31 downto 0);
         ALU_ZERO : OUT  std_logic;
         ALU_RESULT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_CNTRL : std_logic_vector(2 downto 0) := (others => '0');
   signal ALU_A : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal ALU_ZERO : std_logic;
   signal ALU_RESULT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          ALU_CNTRL => ALU_CNTRL,
          ALU_A => ALU_A,
          ALU_B => ALU_B,
          ALU_ZERO => ALU_ZERO,
          ALU_RESULT => ALU_RESULT
        );
		  
	stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ns;
      -- insert stimulus here 
		
		-- AND
		ALU_CNTRL 	<= "000";
		ALU_A 		<= "10101010101010101010101010101010";
		ALU_B 		<= "01010101010101010101010101010101";
		wait for 100 ns;	
		-- OR
		ALU_CNTRL 	<= "001";
		ALU_A 		<= "10101010101010101010101010101010";
		ALU_B 		<= "01010101010101010101010101010101";
		wait for 100 ns;	
		-- ADD
		ALU_CNTRL 	<= "010";
		ALU_A 		<= "00000000000000000000000000000001";
		ALU_B 		<= "00000000000000000000000000000001";
		wait for 100 ns;	
      -- MOV
		ALU_CNTRL 	<= "011";
		ALU_A 		<= "00000011000000000000000000000001";
		ALU_B 		<= "00000000000000000000000000000001";
		wait for 100 ns;
		-- B UPPER
		ALU_CNTRL 	<= "100";
		ALU_A 		<= "00000011000000000000000000000001";
		ALU_B 		<= "00000000000000000000000100100101";
		wait for 100 ns;
		-- Missing case 101
		-- Substract
		ALU_CNTRL 	<= "110";
		ALU_A 		<= "00000000000000000000000000000011";
		ALU_B 		<= "00000000000000000000000000000001";
		wait for 100 ns;
		-- LEss than case true
		ALU_CNTRL 	<= "111";
		ALU_A 		<= "00000000000000000000000000000000";
		ALU_B 		<= "00000000000000000000000000000011";
		wait for 100 ns;
		
		-- LEss than case false
		ALU_CNTRL 	<= "111";
		ALU_A 		<= "00000000000000000000000000000000";
		ALU_B 		<= "00000000000000000000000000000000";
		wait for 100 ns;
		wait;
		
   end process;


END;
