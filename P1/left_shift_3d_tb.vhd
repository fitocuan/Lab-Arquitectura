--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:20:41 08/19/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/P1/left_shift_3d_tb.vhd
-- Project Name:  P1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_left_32b
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
 
ENTITY left_shift_3d_tb IS
END left_shift_3d_tb;
 
ARCHITECTURE behavior OF left_shift_3d_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_left_32b
    PORT(
         A_shift_left_32b : IN  std_logic_vector(31 downto 0);
         B_shift_left_32b : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_shift_left_32b : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal B_shift_left_32b : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_left_32b PORT MAP (
          A_shift_left_32b => A_shift_left_32b,
          B_shift_left_32b => B_shift_left_32b
        );

	A_shift_left_32b <= 	"00000000000000000000000000000000" after 100 ns,
								"00000000000000000000000000000001" after 200 ns,
								"00000000000000000000000000000000" after 300 ns,
								"10000000000000000000000000000000" after 400 ns,
								"11111111111111111111111111111111" after 500 ns;

END;
