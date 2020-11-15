----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:33:53 08/19/2020 
-- Design Name: 
-- Module Name:    SHIFTLEFT - Behavioral 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFTLEFT is
    Port ( shift_left_in : in  STD_LOGIC_VECTOR (25 downto 0);
           shift_left_out : out  STD_LOGIC_VECTOR (27 downto 0));
end SHIFTLEFT;

architecture Behavioral of SHIFTLEFT is
				
begin

--The IEEE.numeric_std library will need to be accessed for these functions

shift_left_out(27 downto 2) <= shift_left_in(25 downto 0);
shift_left_out(1 downto 0) <= "00";
--shift_left_out <= shift_left_in OR "0000000000000000000000000000";
end Behavioral;

