----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:27 08/26/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( ALU_CNTRL : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_A : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_ZERO : out  STD_LOGIC;
           ALU_RESULT : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

signal aux_result : STD_LOGIC_VECTOR (31 downto 0);
signal set_less_than_aux : STD_LOGIC_VECTOR (31 downto 0);

signal ALU_A_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal ALU_B_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);

begin
		
		ALU_A_SIGNAL <= ALU_A;
		ALU_B_SIGNAL <= ALU_B;
		
		with ALU_A < ALU_B select
		set_less_than_aux <= x"00000001" when True,
									x"00000000" when False;
		
		with ALU_CNTRL select
			aux_result <= ALU_A and ALU_B when "000",
			ALU_A or ALU_B when "001",
			STD_LOGIC_VECTOR(unsigned(ALU_A_SIGNAL) + unsigned(ALU_B_SIGNAL)) when "010",
			ALU_A when "011",
			ALU_B(15 downto 0)& x"0000" when "100",
			STD_LOGIC_VECTOR(unsigned(ALU_A_SIGNAL) - unsigned(ALU_B_SIGNAL)) when "110",
			set_less_than_aux when others;
			
		with aux_result select
			ALU_ZERO <= '1' when x"00000000",
			'0' when others;
		
		ALU_RESULT <= aux_result;


end Behavioral;
