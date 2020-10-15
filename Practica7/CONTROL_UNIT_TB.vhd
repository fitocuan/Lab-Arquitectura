--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:45:12 10/14/2020
-- Design Name:   
-- Module Name:   Z:/lab-repo/Practica7/CONTROL_UNIT_TB.vhd
-- Project Name:  Practica7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROL_UNIT
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
 
ENTITY CONTROL_UNIT_TB IS
END CONTROL_UNIT_TB;
 
ARCHITECTURE behavior OF CONTROL_UNIT_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL_UNIT
    PORT(
         CONTROL_UNIT_OP_CODE : IN  std_logic_vector(5 downto 0);
         CONTROL_UNIT_ALUOP : OUT  std_logic_vector(2 downto 0);
         CONTROL_UNIT_REG_DEST : OUT  std_logic;
         CONTROL_UNIT_JUMP : OUT  std_logic;
         CONTROL_UNIT_BRANCH : OUT  std_logic;
         CONTROL_UNIT_MEM_READ : OUT  std_logic;
         CONTROL_UNIT_MEM_TO_REG : OUT  std_logic;
         CONTROL_UNIT_MEM_WRITE : OUT  std_logic;
         CONTROL_UNIT_ALU_SRC : OUT  std_logic;
         CONTROL_UNIT_REG_WRITE : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CONTROL_UNIT_OP_CODE : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal CONTROL_UNIT_ALUOP : std_logic_vector(2 downto 0);
   signal CONTROL_UNIT_REG_DEST : std_logic;
   signal CONTROL_UNIT_JUMP : std_logic;
   signal CONTROL_UNIT_BRANCH : std_logic;
   signal CONTROL_UNIT_MEM_READ : std_logic;
   signal CONTROL_UNIT_MEM_TO_REG : std_logic;
   signal CONTROL_UNIT_MEM_WRITE : std_logic;
   signal CONTROL_UNIT_ALU_SRC : std_logic;
   signal CONTROL_UNIT_REG_WRITE : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL_UNIT PORT MAP (
          CONTROL_UNIT_OP_CODE => CONTROL_UNIT_OP_CODE,
          CONTROL_UNIT_ALUOP => CONTROL_UNIT_ALUOP,
          CONTROL_UNIT_REG_DEST => CONTROL_UNIT_REG_DEST,
          CONTROL_UNIT_JUMP => CONTROL_UNIT_JUMP,
          CONTROL_UNIT_BRANCH => CONTROL_UNIT_BRANCH,
          CONTROL_UNIT_MEM_READ => CONTROL_UNIT_MEM_READ,
          CONTROL_UNIT_MEM_TO_REG => CONTROL_UNIT_MEM_TO_REG,
          CONTROL_UNIT_MEM_WRITE => CONTROL_UNIT_MEM_WRITE,
          CONTROL_UNIT_ALU_SRC => CONTROL_UNIT_ALU_SRC,
          CONTROL_UNIT_REG_WRITE => CONTROL_UNIT_REG_WRITE
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		CONTROL_UNIT_OP_CODE <= "000000";
      wait for 100 ns;	
		CONTROL_UNIT_OP_CODE <= "100011";
      wait for 100 ns;	
		CONTROL_UNIT_OP_CODE <= "101011";
      wait for 100 ns;	
		CONTROL_UNIT_OP_CODE <= "000100";
      wait for 100 ns;	
		CONTROL_UNIT_OP_CODE <= "000010";
      wait for 100 ns;	
		CONTROL_UNIT_OP_CODE <= "001000";
      wait for 100 ns;	
		CONTROL_UNIT_OP_CODE <= "001101";
      wait for 100 ns;
		CONTROL_UNIT_OP_CODE <= "001111";
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
