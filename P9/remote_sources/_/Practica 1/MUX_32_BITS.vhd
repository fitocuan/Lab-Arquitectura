----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:11:04 08/19/2020 
-- Design Name: 
-- Module Name:    MUX_5_BITS - Behavioral 
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

entity MUX_32_BITS is
    Port ( MUX_32_BITS_A : in  STD_LOGIC_VECTOR (31 downto 0);
           MUX_32_BITS_B : in  STD_LOGIC_VECTOR (31 downto 0);
           MUX_32_BITS_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           MUX_32_BITS_SELECT : in  STD_LOGIC);
end MUX_32_BITS;

architecture Behavioral of MUX_32_BITS is

begin

   with MUX_32_BITS_SELECT select
      MUX_32_BITS_OUT <= MUX_32_BITS_A when '0',
								MUX_32_BITS_B when others;
			

end Behavioral;

