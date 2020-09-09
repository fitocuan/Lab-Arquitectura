----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:59 09/09/2020 
-- Design Name: 
-- Module Name:    REG_FILE_DECODER - Behavioral 
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

entity REG_FILE_DECODER is
	 Port ( REG_FILE_DECODER_WRITEREG_SEL : in  STD_LOGIC_VECTOR (4 downto 0);
			  REG_FILE_DECODER_REGWRITE_ENABLE : in  STD_LOGIC;
			  REG_FILE_DECODER_0 : out  STD_LOGIC;
			  REG_FILE_DECODER_1 : out  STD_LOGIC;
			  REG_FILE_DECODER_2 : out  STD_LOGIC;
			  REG_FILE_DECODER_3 : out  STD_LOGIC;
			  REG_FILE_DECODER_4 : out  STD_LOGIC;
			  REG_FILE_DECODER_5 : out  STD_LOGIC;
			  REG_FILE_DECODER_6 : out  STD_LOGIC;
			  REG_FILE_DECODER_7 : out  STD_LOGIC;
			  REG_FILE_DECODER_8 : out  STD_LOGIC;
			  REG_FILE_DECODER_9 : out  STD_LOGIC;
			  REG_FILE_DECODER_10 : out  STD_LOGIC;
			  REG_FILE_DECODER_11 : out  STD_LOGIC;
			  REG_FILE_DECODER_12 : out  STD_LOGIC;
			  REG_FILE_DECODER_13 : out  STD_LOGIC;
			  REG_FILE_DECODER_14 : out  STD_LOGIC;
			  REG_FILE_DECODER_15 : out  STD_LOGIC;
			  REG_FILE_DECODER_16 : out  STD_LOGIC;
			  REG_FILE_DECODER_17 : out  STD_LOGIC;
			  REG_FILE_DECODER_18 : out  STD_LOGIC;
			  REG_FILE_DECODER_19 : out  STD_LOGIC;
			  REG_FILE_DECODER_20 : out  STD_LOGIC;
			  REG_FILE_DECODER_21 : out  STD_LOGIC;
			  REG_FILE_DECODER_22 : out  STD_LOGIC;
			  REG_FILE_DECODER_23 : out  STD_LOGIC;
			  REG_FILE_DECODER_24 : out  STD_LOGIC;
			  REG_FILE_DECODER_25 : out  STD_LOGIC;
			  REG_FILE_DECODER_26 : out  STD_LOGIC;
			  REG_FILE_DECODER_27 : out  STD_LOGIC;
			  REG_FILE_DECODER_28 : out  STD_LOGIC;
			  REG_FILE_DECODER_29 : out  STD_LOGIC;
			  REG_FILE_DECODER_30 : out  STD_LOGIC;
			  REG_FILE_DECODER_31 : out  STD_LOGIC);
			  
end REG_FILE_DECODER;

architecture Behavioral of REG_FILE_DECODER is

type std_pointer is access STD_LOGIC;
type std_pointer_array is array (0 to 31) of std_pointer;


BEGIN 

PROCESS(REG_FILE_DECODER_WRITEREG_SEL, REG_FILE_DECODER_REGWRITE_ENABLE)
	variable DATA_OUT : std_pointer_array := (OTHERS => new STD_LOGIC);

	variable sel : std_pointer;


BEGIN




DATA_OUT(0) := new std_pointer'(REG_FILE_DECODER_31);



sel := DATA_OUT(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)));

END PROCESS;


end Behavioral;

