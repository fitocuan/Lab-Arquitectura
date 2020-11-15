----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:06:38 09/13/2020 
-- Design Name: 
-- Module Name:    REG_FILE - Behavioral 
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
library work;
use work.register_utils.all;





-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG_FILE is
	port(REG_FILE_WRITEREG_SEL 		: in  STD_LOGIC_VECTOR (4 downto 0);
	REG_FILE_REGWRITE_ENABLE 			: in  STD_LOGIC;
	WRITE_DATA 								: in  STD_LOGIC_VECTOR (31 downto 0);
	CLK 										: in  STD_LOGIC;
	REG_FILE_MUX_READ_REG_1				: in  STD_LOGIC_VECTOR (4 downto 0);
	REG_FILE_MUX_READ_REG_2				: in  STD_LOGIC_VECTOR (4 downto 0);
	REG_FILE_READ_DATA_1 				: out  STD_LOGIC_VECTOR (31 downto 0);
	REG_FILE_READ_DATA_2 				: out  STD_LOGIC_VECTOR (31 downto 0));
end REG_FILE;

architecture structural of REG_FILE is

component REG_FILE_DECODER is
	Port ( 	REG_FILE_DECODER_WRITEREG_SEL 		: in  STD_LOGIC_VECTOR (4 downto 0);
				REG_FILE_DECODER_REGWRITE_ENABLE 	: in  STD_LOGIC;
				REG_FILE_DECODER_ENABLES 				: out STD_LOGIC_VECTOR(31 downto 0));	
end component;

component REG_FILE_MUX is
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
end component;

component REG_FILE_REGISTERS is
	Port ( ENABLES : in  STD_LOGIC_VECTOR (31 downto 0);
           WRITE_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC;
           OUT_DATA : out  REGISTERS);	
end component;

signal ENABLES_SIG :  STD_LOGIC_VECTOR (31 downto 0);
signal REGISTERS_SIG :  REGISTERS;


begin

DECODER : REG_FILE_DECODER PORT MAP(REG_FILE_WRITEREG_SEL,REG_FILE_REGWRITE_ENABLE,ENABLES_SIG);
REGISTERS : REG_FILE_REGISTERS PORT MAP(ENABLES_SIG,WRITE_DATA,CLK,REGISTERS_SIG);
MUX1 : REG_FILE_MUX PORT MAP(	
										REGISTERS_SIG(0),
										REGISTERS_SIG(1),
										REGISTERS_SIG(2),
										REGISTERS_SIG(3),
										REGISTERS_SIG(4),
										REGISTERS_SIG(5),
										REGISTERS_SIG(6),
										REGISTERS_SIG(7),
										REGISTERS_SIG(8),
										REGISTERS_SIG(9),
										REGISTERS_SIG(10),
										REGISTERS_SIG(11),
										REGISTERS_SIG(12),
										REGISTERS_SIG(13),
										REGISTERS_SIG(14),
										REGISTERS_SIG(15),
										REGISTERS_SIG(16),
										REGISTERS_SIG(17),
										REGISTERS_SIG(18),
										REGISTERS_SIG(19),
										REGISTERS_SIG(20),
										REGISTERS_SIG(21),
										REGISTERS_SIG(22),
										REGISTERS_SIG(23),
										REGISTERS_SIG(24),
										REGISTERS_SIG(25),
										REGISTERS_SIG(26),
										REGISTERS_SIG(27),
										REGISTERS_SIG(28),
										REGISTERS_SIG(29),
										REGISTERS_SIG(30),
										REGISTERS_SIG(31),
										REG_FILE_READ_DATA_1,
										REG_FILE_MUX_READ_REG_1);
										
MUX2 : REG_FILE_MUX PORT MAP(REGISTERS_SIG(0),
										REGISTERS_SIG(1),
										REGISTERS_SIG(2),
										REGISTERS_SIG(3),
										REGISTERS_SIG(4),
										REGISTERS_SIG(5),
										REGISTERS_SIG(6),
										REGISTERS_SIG(7),
										REGISTERS_SIG(8),
										REGISTERS_SIG(9),
										REGISTERS_SIG(10),
										REGISTERS_SIG(11),
										REGISTERS_SIG(12),
										REGISTERS_SIG(13),
										REGISTERS_SIG(14),
										REGISTERS_SIG(15),
										REGISTERS_SIG(16),
										REGISTERS_SIG(17),
										REGISTERS_SIG(18),
										REGISTERS_SIG(19),
										REGISTERS_SIG(20),
										REGISTERS_SIG(21),
										REGISTERS_SIG(22),
										REGISTERS_SIG(23),
										REGISTERS_SIG(24),
										REGISTERS_SIG(25),
										REGISTERS_SIG(26),
										REGISTERS_SIG(27),
										REGISTERS_SIG(28),
										REGISTERS_SIG(29),
										REGISTERS_SIG(30),
										REGISTERS_SIG(31),
										REG_FILE_READ_DATA_2,
										REG_FILE_MUX_READ_REG_2);

end structural;

