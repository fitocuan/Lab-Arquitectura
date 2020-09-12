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


type std_logic_vector_array is array (0 to 31) of std_logic_vector(31 downto 0);
signal table_of_outputs : std_logic_vector_array := (x"00000001", x"00000002", x"00000004", x"00000008",  
													   x"00000010", x"00000020", x"00000040", x"00000080",
													   x"00000100", x"00000200", x"00000400", x"00000800",
													   x"00001000", x"00002000", x"00004000", x"00008000",
													   x"00010000", x"00020000", x"00040000", x"00080000",
													   x"00100000", x"00200000", x"00400000", x"00800000",
													   x"01000000", x"02000000", x"04000000", x"08000000",
													   x"10000000", x"20000000", x"40000000", x"80000000");
BEGIN 

REG_FILE_DECODER_0 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(0) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_1 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(1) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_2 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(2) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_3 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(3) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_4 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(4) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_5 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(5) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_6 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(6) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_7 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(7) AND REG_FILE_DECODER_REGWRITE_ENABLE;

REG_FILE_DECODER_8 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(8) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_9 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(9) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_10 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(10) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_11 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(11) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_12 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(12) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_13 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(13) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_14 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(14) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_15 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(15) AND REG_FILE_DECODER_REGWRITE_ENABLE;

REG_FILE_DECODER_16 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(16) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_17 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(17) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_18 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(18) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_19 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(19) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_20 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(20) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_21 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(21) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_22 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(22) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_23 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(23) AND REG_FILE_DECODER_REGWRITE_ENABLE;

REG_FILE_DECODER_24 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(24) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_25 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(25) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_26 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(26) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_27 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(27) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_28 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(28) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_29 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(29) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_30 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(30) AND REG_FILE_DECODER_REGWRITE_ENABLE;
REG_FILE_DECODER_31 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(31) AND REG_FILE_DECODER_REGWRITE_ENABLE;



end Behavioral;

