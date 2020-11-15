----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:31:05 10/09/2020 
-- Design Name: 
-- Module Name:    ALU_CONTROL - Behavioral 
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

entity ALU_CONTROL is
    Port ( ALU_CONTROL_JR : out  STD_LOGIC;
           ALU_CONTROL_INSTRUC : in  STD_LOGIC_VECTOR (5 downto 0);
           ALU_CONTROL_ALUOP : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_CONTROL_OUT : out  STD_LOGIC_VECTOR (2 downto 0));
end ALU_CONTROL;

architecture Behavioral of ALU_CONTROL is
signal L_TYPE : STD_LOGIC_VECTOR(2 downto 0);
signal R_TYPE : STD_LOGIC_VECTOR(2 downto 0);

begin

-- VALUE 101 is DONT CARE FOR ALU --

L_TYPE <= ALU_CONTROL_ALUOP; 

with ALU_CONTROL_INSTRUC select
			R_TYPE <= 		"010" when "100000", --ADD
								"110" when "100010", --RESTA
								"000" when "100100", --AND
								"001" when "100101", --OR
								"111" when "101010", --SLT
								"101" when others;   --DONT CARE (JR) 
								
with ALU_CONTROL_INSTRUC select
			ALU_CONTROL_JR <= '1' when "001000", --JR
									'0' when others;

with ALU_CONTROL_ALUOP select
	ALU_CONTROL_OUT <= 	R_TYPE when "000", --R-Type 
								L_TYPE when others; --L_TYPE 


end Behavioral;

