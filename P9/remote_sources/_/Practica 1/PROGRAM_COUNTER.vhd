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
signal ANTERIOR : std_logic_vector(31 downto 0) := x"00000000";
begin

process (CLK, RESET)
begin
		if(RESET ='0') then
			if(rising_edge(CLK)) then
				ANTERIOR<=D;
			else
				ANTERIOR<=ANTERIOR;
			end if;			
		elsif(RESET='1') then
			ANTERIOR<=x"00000000";
		end if;
	end process;
	Q<=ANTERIOR;
end Behavioral;