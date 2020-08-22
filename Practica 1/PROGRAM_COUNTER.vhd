----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:13 08/22/2020 
-- Design Name: 
-- Module Name:    PROGRAM_COUNTER - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROGRAM_COUNTER is
    Port ( D : in  STD_LOGIC_VECTOR (31 downto 0);
           Q : out  STD_LOGIC_VECTOR (31 downto 0);
           RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end PROGRAM_COUNTER;

architecture Behavioral of PROGRAM_COUNTER is

begin

process (CLK, RESET)
begin  
   if RESET = '1' then
      Q <= x"00000000";
   elsif (CLK'event and CLK = '0') then
      Q <= D;
   end if;
end process;
				

end Behavioral;

