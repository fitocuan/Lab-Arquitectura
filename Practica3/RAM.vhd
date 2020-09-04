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
           READ_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end RAM;

architecture Behavioral of RAM is
type RAM_DATA_ARRAY is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal RAM_DATA : RAM_DATA_ARRAY :=(
							OTHERS => (OTHERS => '0')
							);
begin


end Behavioral;
