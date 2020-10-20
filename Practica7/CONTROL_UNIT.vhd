----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:10 09/30/2020 
-- Design Name: 
-- Module Name:    CONTROL_UNIT - Behavioral 
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

entity CONTROL_UNIT is
    Port ( CONTROL_UNIT_OP_CODE : in  STD_LOGIC_VECTOR (5 downto 0);
           CONTROL_UNIT_ALUOP : out  STD_LOGIC_VECTOR (2 downto 0);
           CONTROL_UNIT_REG_DEST : out  STD_LOGIC;
           CONTROL_UNIT_JUMP : out  STD_LOGIC;
           CONTROL_UNIT_BRANCH : out  STD_LOGIC;
           CONTROL_UNIT_MEM_READ : out  STD_LOGIC;
           CONTROL_UNIT_MEM_TO_REG : out  STD_LOGIC;
           CONTROL_UNIT_MEM_WRITE : out  STD_LOGIC;
           CONTROL_UNIT_ALU_SRC : out  STD_LOGIC;
           CONTROL_UNIT_REG_WRITE : out  STD_LOGIC);
end CONTROL_UNIT;

architecture Behavioral of CONTROL_UNIT is

begin

--100000 add
--100010 sub
--100100 and
--100101 or

--101010 slt

--100011 lw
--101011 sw

--000100 beq.

--000010 j
--001000 jr

--001000 addi
--001101 ori
--001111 lui

with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_ALUOP <= 	"000" when "000000", --R-Type 
									"010" when "100011", --Suma LW
									"010" when "101011", --Suma SW
									"010" when "001000", --Suma ADDI
									"110" when "000100", --Resta BEQ 
									"001" when "001101", --OR ORI
									"100" when "001111", --B UPPER LUI
									"101" when others;

with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_REG_DEST <= '1' when "000000",
								'0' when others;

		
with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_JUMP <= '1' when "000010",
								'0' when others;
								
with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_BRANCH <= 	'1' when "000100",
									'0' when others;
									
									
with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_MEM_READ <= 	'1' when "100011",
									'0' when others;									
									
with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_MEM_TO_REG <= '1' when "100011",
										'0' when others;									
									
with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_MEM_WRITE <= 	'1' when "101011",
										'0' when others;									
									
									
with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_ALU_SRC <= '1' when "100011",
									'1' when "101011",
									'1' when "001000",
									'1' when "001101",
									'1' when "001111",
									'0' when others;

with CONTROL_UNIT_OP_CODE select
	CONTROL_UNIT_REG_WRITE <= 	'0' when "101011",
										'0' when "000100",
										'0' when "000010",
										'1' when others;																																															


end Behavioral;

