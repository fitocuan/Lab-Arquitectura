----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:01 11/15/2020 
-- Design Name: 
-- Module Name:    FREQUENCY_DIVISOR - Behavioral 
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

entity FREQUENCY_DIVISOR is
    Port ( CLK_IN : in  STD_LOGIC;
           CLK_OUT : out  STD_LOGIC);
end FREQUENCY_DIVISOR;

architecture Behavioral of FREQUENCY_DIVISOR is
	signal aux_counter: integer := 0;
	signal clk_signal : STD_LOGIC := '0';
begin

	CLK_OUT <= clk_signal;

	process(CLK_IN)
		begin
		if CLK_IN = '1' and CLK_IN'EVENT then
			if aux_counter = 9_999 then
				clk_signal <= NOT clk_signal;
				aux_counter <= 0;
			else 
				aux_counter <= aux_counter + 1;
			end if;
		end if;
	end process;
end Behavioral;

