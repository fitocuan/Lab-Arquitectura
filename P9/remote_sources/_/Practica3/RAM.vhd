----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:55:15 09/04/2020 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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

entity RAM is
    Port ( ENABLE : in  STD_LOGIC;
           WRITE_ENABLE : in  STD_LOGIC;
           READ_ENABLE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RW_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           WRITE_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           READ_DATA : out  STD_LOGIC_VECTOR (31 downto 0);
			  
			  LEDS : out STD_LOGIC_VECTOR (7 downto 0);
			  SWITCHES : in STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is

type RAM_DATA_ARRAY is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal RAM_DATA : RAM_DATA_ARRAY :=(
							x"00000001",
							x"00000002",
							OTHERS => (OTHERS => '0')
							);
begin

process(WRITE_ENABLE,READ_ENABLE,ENABLE, CLK, RW_ADDRESS, WRITE_DATA, RAM_DATA)
begin

	if ENABLE = '0' then
	
		if (READ_ENABLE = '1') and  (WRITE_ENABLE = '0') then
			
			READ_DATA <= RAM_DATA(to_integer(unsigned(RW_ADDRESS))/4);
		
		elsif (READ_ENABLE = '0') and  (WRITE_ENABLE = '1') then
			
			if falling_edge(CLK) then
			
				RAM_DATA(to_integer(unsigned(RW_ADDRESS))/4) <= WRITE_DATA;
				
				LEDS <= RAM_DATA(0)(7 downto 0);
				RAM_DATA(1)(7 downto 0) <= SWITCHES;
				
			end if;
				
			READ_DATA <= x"00000000";
			
			
			
			
		end if;
		
	end if;

end process;


end Behavioral;

