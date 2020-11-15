----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:02:11 08/19/2020 
-- Design Name: 
-- Module Name:    shift_left_32b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_left_32b is
    Port ( A_shift_left_32b : in  STD_LOGIC_VECTOR (31 downto 0);
           B_shift_left_32b : out  STD_LOGIC_VECTOR (31 downto 0));
end shift_left_32b;

architecture Behavioral of shift_left_32b is

signal aux : STD_LOGIC_VECTOR (33 downto 0);

begin

aux <= A_shift_left_32b & "00";
B_shift_left_32b <= aux(31 downto 0);

end Behavioral;

