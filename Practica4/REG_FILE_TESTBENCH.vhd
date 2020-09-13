--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:54:44 09/13/2020
-- Design Name:   
-- Module Name:   Z:/lab-repo/Practica4/REG_FILE_TESTBENCH.vhd
-- Project Name:  Practica4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG_FILE
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
 
ENTITY REG_FILE_TESTBENCH IS
END REG_FILE_TESTBENCH;
 
ARCHITECTURE behavior OF REG_FILE_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_FILE
    PORT(
         REG_FILE_WRITEREG_SEL : IN  std_logic_vector(4 downto 0);
         REG_FILE_REGWRITE_ENABLE : IN  std_logic;
         WRITE_DATA : IN  std_logic_vector(31 downto 0);
         CLK : IN  std_logic;
         REG_FILE_MUX_READ_REG_1 : IN  std_logic_vector(4 downto 0);
         REG_FILE_MUX_READ_REG_2 : IN  std_logic_vector(4 downto 0);
         REG_FILE_READ_DATA_1 : OUT  std_logic_vector(31 downto 0);
         REG_FILE_READ_DATA_2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal REG_FILE_WRITEREG_SEL : std_logic_vector(4 downto 0) := (others => '0');
   signal REG_FILE_REGWRITE_ENABLE : std_logic := '0';
   signal WRITE_DATA : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal REG_FILE_MUX_READ_REG_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal REG_FILE_MUX_READ_REG_2 : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal REG_FILE_READ_DATA_1 : std_logic_vector(31 downto 0);
   signal REG_FILE_READ_DATA_2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_FILE PORT MAP (
          REG_FILE_WRITEREG_SEL => REG_FILE_WRITEREG_SEL,
          REG_FILE_REGWRITE_ENABLE => REG_FILE_REGWRITE_ENABLE,
          WRITE_DATA => WRITE_DATA,
          CLK => CLK,
          REG_FILE_MUX_READ_REG_1 => REG_FILE_MUX_READ_REG_1,
          REG_FILE_MUX_READ_REG_2 => REG_FILE_MUX_READ_REG_2,
          REG_FILE_READ_DATA_1 => REG_FILE_READ_DATA_1,
          REG_FILE_READ_DATA_2 => REG_FILE_READ_DATA_2
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
		
		REG_FILE_WRITEREG_SEL <= "00010";
		REG_FILE_REGWRITE_ENABLE <= '1';
		WRITE_DATA <= x"f0f0f0f0";
		REG_FILE_MUX_READ_REG_1 <= "00000";
		REG_FILE_MUX_READ_REG_2 <= "00000";

		wait for 100 ns;	

		REG_FILE_WRITEREG_SEL <= "00010";
		REG_FILE_REGWRITE_ENABLE <= '0';
		WRITE_DATA <= x"f0f0f0f0";
		REG_FILE_MUX_READ_REG_1 <= "00010";
		REG_FILE_MUX_READ_REG_2 <= "00000";

		wait for 100 ns;	

		REG_FILE_WRITEREG_SEL <= "00100";
		REG_FILE_REGWRITE_ENABLE <= '0';
		WRITE_DATA <= x"ffff0000";
		REG_FILE_MUX_READ_REG_1 <= "00010";
		REG_FILE_MUX_READ_REG_2 <= "00100";
				
				
		wait for 100 ns;	

		REG_FILE_WRITEREG_SEL <= "00100";
		REG_FILE_REGWRITE_ENABLE <= '1';
		WRITE_DATA <= x"ffff0000";
		REG_FILE_MUX_READ_REG_1 <= "00010";
		REG_FILE_MUX_READ_REG_2 <= "00100";
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
