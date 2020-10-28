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
							x"00000000", -- NOP
							x"20050004", -- ADDI $r5, $r0, 0x04
							x"AC050001", -- sw  $r5, 0x01($r0)
							x"8C0A0001", --LW $r10, 0x01($r0)
							x"214B0002", -- ADDI $r11,$r10, 0x02
							x"014B6020", -- ADD $r12, $r11, $r10
							x"014B6822", -- SUB $r13, $r11, $r10
							--x"00000000", --NOP 
							x"10AA0002", --BEQ r5,r10,0x02(2)
							x"00000000", -- NOP
							x"00000000", -- NOP
							x"08000004", -- J 0x04
							--x"00A00008", --JR $r5
							OTHERS => (OTHERS => '0')
							);

begin
-- HARDCODED VALUES FOR TESTING
--ROM_DATA(1) <= x"20050004"; --Register 5 = 0 + 4  (ADDI)
--ROM_DATA(2) <= x"AC050000"; -- sw register 5 0x01($r0)
--ROM_DATA(3) <= x""; -- LW r10, 0x00(0x00)


process(READ_ADDRESS, ROM_DATA)
begin
INSTRUCTION <= ROM_DATA(to_integer(unsigned(READ_ADDRESS)) / 4);
end process;
end Behavioral;

