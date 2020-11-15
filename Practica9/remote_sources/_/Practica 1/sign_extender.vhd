----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:49 08/19/2020 
-- Design Name: 
-- Module Name:    sign_extender - Behavioral 
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

entity sign_extender is
    Port ( A_sign_extender : in  STD_LOGIC_VECTOR (15 downto 0);
           B_sign_extender : out  STD_LOGIC_VECTOR (31 downto 0));
end sign_extender;

architecture Behavioral of sign_extender is

signal aux : STD_LOGIC_VECTOR (15 downto 0);

begin

aux <= 	"0000000000000000" when A_sign_extender(15) = '0' else
			"1111111111111111";
			
B_sign_extender <= aux & A_sign_extender;

end Behavioral;

