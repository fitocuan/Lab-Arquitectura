--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:21:03 09/04/2020
-- Design Name:   
-- Module Name:   Z:/lab-repo/Practica3/RAM_TESTBENCH.vhd
-- Project Name:  Practica3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY RAM_TESTBENCH IS
END RAM_TESTBENCH;
 
ARCHITECTURE behavior OF RAM_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         ENABLE : IN  std_logic;
         WRITE_ENABLE : IN  std_logic;
         READ_ENABLE : IN  std_logic;
         CLK : IN  std_logic;
         RW_ADDRESS : IN  std_logic_vector(31 downto 0);
         WRITE_DATA : IN  std_logic_vector(31 downto 0);
         READ_DATA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENABLE : std_logic := '0';
   signal WRITE_ENABLE : std_logic := '0';
   signal READ_ENABLE : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RW_ADDRESS : std_logic_vector(31 downto 0) := (others => '0');
   signal WRITE_DATA : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal READ_DATA : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          ENABLE => ENABLE,
          WRITE_ENABLE => WRITE_ENABLE,
          READ_ENABLE => READ_ENABLE,
          CLK => CLK,
          RW_ADDRESS => RW_ADDRESS,
          WRITE_DATA => WRITE_DATA,
          READ_DATA => READ_DATA
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
		
		RW_ADDRESS <= x"0000000C";
		WRITE_DATA <= x"00000001";
		READ_ENABLE <= '0';
		WRITE_ENABLE <= '1';
		ENABLE <= '0';
		
		wait for 100 ns;

		RW_ADDRESS <= x"0000000C";
		WRITE_DATA <= x"00000001";
		READ_ENABLE <= '1';
		WRITE_ENABLE <= '0';
		ENABLE <= '0';		
		
		wait for 100 ns;
		
		RW_ADDRESS <= x"0000000C";
		WRITE_DATA <= x"00000006";
		READ_ENABLE <= '0';
		WRITE_ENABLE <= '1';
		ENABLE <= '0';
		
		wait for 100 ns;

		RW_ADDRESS <= x"0000000C";
		WRITE_DATA <= x"00000001";
		READ_ENABLE <= '1';
		WRITE_ENABLE <= '0';
		ENABLE <= '0';	

		
      wait for CLK_period*10;

      -- insert stimulus here 
		
		

      wait;
   end process;

END;
