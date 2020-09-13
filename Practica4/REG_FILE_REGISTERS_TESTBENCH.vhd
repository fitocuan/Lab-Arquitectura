--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:32:46 09/12/2020
-- Design Name:   
-- Module Name:   E:/Practica4/REG_FILE_REGISTERS_TESTBENCH.vhd
-- Project Name:  Practica4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG_FILE_REGISTERS
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
library work;
use work.register_utils.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY REG_FILE_REGISTERS_TESTBENCH IS
END REG_FILE_REGISTERS_TESTBENCH;
 
ARCHITECTURE behavior OF REG_FILE_REGISTERS_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_FILE_REGISTERS
    PORT(
         ENABLES : IN  std_logic_vector(31 downto 0);
         WRITE_DATA : IN  std_logic_vector(31 downto 0);
         CLK : IN  std_logic;
         OUT_DATA : OUT  REGISTERS
        );
    END COMPONENT;
    

   --Inputs
   signal ENABLES : std_logic_vector(31 downto 0) := (others => '0');
   signal WRITE_DATA : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal OUT_DATA : REGISTERS :=(
							OTHERS => (OTHERS => '0')
							);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_FILE_REGISTERS PORT MAP (
          ENABLES => ENABLES,
          WRITE_DATA => WRITE_DATA,
          CLK => CLK,
          OUT_DATA => OUT_DATA
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

      wait for CLK_period*10;
		ENABLES(3) <= '1'; --- Writes to the fourth register
		WRITE_DATA <= x"00001111";
      -- insert stimulus here 
		wait for CLK_period*10;
		ENABLES(3) <= '0'; --- Writes to the fourth register
		ENABLES(31) <= '1'; --- Writes to the fourth register
		WRITE_DATA <= x"10001110";
      wait;
   end process;

END;
