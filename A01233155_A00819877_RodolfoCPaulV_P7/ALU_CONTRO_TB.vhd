--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:06:48 10/14/2020
-- Design Name:   
-- Module Name:   Z:/lab-repo/Practica7/ALU_CONTRO_TB.vhd
-- Project Name:  Practica7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_CONTROL
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
 
ENTITY ALU_CONTRO_TB IS
END ALU_CONTRO_TB;
 
ARCHITECTURE behavior OF ALU_CONTRO_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_CONTROL
    PORT(
         ALU_CONTROL_JR : OUT  std_logic;
         ALU_CONTROL_INSTRUC : IN  std_logic_vector(5 downto 0);
         ALU_CONTROL_ALUOP : IN  std_logic_vector(2 downto 0);
         ALU_CONTROL_OUT : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_CONTROL_INSTRUC : std_logic_vector(5 downto 0) := (others => '0');
   signal ALU_CONTROL_ALUOP : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ALU_CONTROL_JR : std_logic;
   signal ALU_CONTROL_OUT : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_CONTROL PORT MAP (
          ALU_CONTROL_JR => ALU_CONTROL_JR,
          ALU_CONTROL_INSTRUC => ALU_CONTROL_INSTRUC,
          ALU_CONTROL_ALUOP => ALU_CONTROL_ALUOP,
          ALU_CONTROL_OUT => ALU_CONTROL_OUT
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
	
	
      -- hold reset state for 100 ns.
		ALU_CONTROL_INSTRUC <= "100000";
		ALU_CONTROL_ALUOP <= "000";
      wait for 100 ns;
		ALU_CONTROL_INSTRUC <= "100010";
		ALU_CONTROL_ALUOP <= "000";
      wait for 100 ns;
		ALU_CONTROL_INSTRUC <= "100100";
		ALU_CONTROL_ALUOP <= "000";
      wait for 100 ns;
		ALU_CONTROL_INSTRUC <= "100101";
		ALU_CONTROL_ALUOP <= "000";
      wait for 100 ns;
		ALU_CONTROL_INSTRUC <= "101010";
		ALU_CONTROL_ALUOP <= "000";
      wait for 100 ns;
		ALU_CONTROL_INSTRUC <= "001000";
		ALU_CONTROL_ALUOP <= "001";
      wait for 100 ns;



      -- insert stimulus here 

      wait;
   end process;

END;
