----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:23 09/09/2020 
-- Design Name: 
-- Module Name:    REG_FILE_MUX - Behavioral 
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

entity REG_FILE_MUX is
    Port ( REG_FILE_MUX_0 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_1 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_2 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_3 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_4 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_5 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_6 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_7 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_8 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_9 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_10 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_11 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_12 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_13 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_14 : in  STD_LOGIC_VECTOR (31 downto 0);
			  REG_FILE_MUX_15 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_16 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_17 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_18 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_19 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_20 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_21 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_22 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_23 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_24 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_25 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_26 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_27 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_28 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_29 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_30 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_31 : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_READ_DATA : out  STD_LOGIC_VECTOR (31 downto 0);
           REG_FILE_MUX_READ_REG : in  STD_LOGIC_VECTOR (4 downto 0));
end REG_FILE_MUX;

architecture Behavioral of REG_FILE_MUX is

type DATA_ARRAY is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal DATA_IN : DATA_ARRAY :=(
							OTHERS => (OTHERS => '0')
							);

begin

process(DATA_IN, REG_FILE_MUX_READ_REG, REG_FILE_MUX_0,
		REG_FILE_MUX_1,
		REG_FILE_MUX_2,
		REG_FILE_MUX_3,
		REG_FILE_MUX_4,
		REG_FILE_MUX_5,
		REG_FILE_MUX_6,
		REG_FILE_MUX_7,
		REG_FILE_MUX_8,
		REG_FILE_MUX_9,
		REG_FILE_MUX_10,
		REG_FILE_MUX_11,
		REG_FILE_MUX_12,
		REG_FILE_MUX_13,
		REG_FILE_MUX_14,
		REG_FILE_MUX_15,
		REG_FILE_MUX_16,
		REG_FILE_MUX_17,
		REG_FILE_MUX_18,
		REG_FILE_MUX_19,
		REG_FILE_MUX_20,
		REG_FILE_MUX_21,
		REG_FILE_MUX_22,
		REG_FILE_MUX_23,
		REG_FILE_MUX_24,
		REG_FILE_MUX_25,
		REG_FILE_MUX_26,
		REG_FILE_MUX_27,
		REG_FILE_MUX_28,
		REG_FILE_MUX_29,
		REG_FILE_MUX_30,
		REG_FILE_MUX_31)
begin

DATA_IN <=(
		REG_FILE_MUX_0,
		REG_FILE_MUX_1,
		REG_FILE_MUX_2,
		REG_FILE_MUX_3,
		REG_FILE_MUX_4,
		REG_FILE_MUX_5,
		REG_FILE_MUX_6,
		REG_FILE_MUX_7,
		REG_FILE_MUX_8,
		REG_FILE_MUX_9,
		REG_FILE_MUX_10,
		REG_FILE_MUX_11,
		REG_FILE_MUX_12,
		REG_FILE_MUX_13,
		REG_FILE_MUX_14,
		REG_FILE_MUX_15,
		REG_FILE_MUX_16,
		REG_FILE_MUX_17,
		REG_FILE_MUX_18,
		REG_FILE_MUX_19,
		REG_FILE_MUX_20,
		REG_FILE_MUX_21,
		REG_FILE_MUX_22,
		REG_FILE_MUX_23,
		REG_FILE_MUX_24,
		REG_FILE_MUX_25,
		REG_FILE_MUX_26,
		REG_FILE_MUX_27,
		REG_FILE_MUX_28,
		REG_FILE_MUX_29,
		REG_FILE_MUX_30,
		REG_FILE_MUX_31
		);

REG_FILE_MUX_READ_DATA <= DATA_IN(to_integer(unsigned(REG_FILE_MUX_READ_REG)));

end process;

end Behavioral;

