----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:38 09/04/2020 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( READ_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
				INSTRUCTION : out STD_LOGIC_VECTOR (31 downto 0));
end ROM;

architecture Behavioral of ROM is

type DATA_ARRAY is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal ROM_DATA : DATA_ARRAY :=(
							OTHERS => (OTHERS => '0')
							);
signal NEW_INSTRUCTION: STD_LOGIC_VECTOR(31 downto 0);
begin
-- HARDCODED VALUES FOR TESTING
ROM_DATA(0) <= x"8C010000"; -- READDRESS 0x0C
ROM_DATA(1) <= x"00000000"; -- READADDRESS 0x04
ROM_DATA(2) <= x"8C020008"; -- READADDRESS 0x08
ROM_DATA(3) <= x"00000000"; -- READADDRESS 0x08
ROM_DATA(4) <= x"00112233"; -- READADDRESS 0x08
ROM_DATA(5) <= x"00211820"; -- READADDRESS 0x08


process(READ_ADDRESS, ROM_DATA)
begin
INSTRUCTION <= ROM_DATA(to_integer(unsigned(READ_ADDRESS)) / 4);
end process;
end Behavioral;

