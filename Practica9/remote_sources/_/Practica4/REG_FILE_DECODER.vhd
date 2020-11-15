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
			  REG_FILE_DECODER_ENABLES : out STD_LOGIC_VECTOR(31 downto 0));
			  
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
signal initial_value : unsigned(31 downto 0) := x"00000000";
BEGIN 

---REG_FILE_DECODER_0 <= table_of_outputs(to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL)))(0) AND REG_FILE_DECODER_REGWRITE_ENABLE;
initial_value(0) <= REG_FILE_DECODER_REGWRITE_ENABLE;

REG_FILE_DECODER_ENABLES <=  std_logic_vector(shift_left(initial_value, to_integer(unsigned(REG_FILE_DECODER_WRITEREG_SEL))));



end Behavioral;

