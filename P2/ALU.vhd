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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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

begin

	process(ALU_CNTRL,ALU_A,ALU_B,aux_result) is
	begin

		case ALU_CNTRL is
			when "000" =>
				aux_result <= ALU_A and ALU_B;
			when "001" =>
				aux_result <= ALU_A or ALU_B;
			when "010" =>
				aux_result <= ALU_A + ALU_B;
				
			when others => --esto lo puse porque no me dejaba compilar sin la opcion others
				aux_result <= ALU_A;
		end case;
		
		if (aux_result = "0000000000000000000000000000000000000000") then
			ALU_ZERO <= '1';
		else
			ALU_ZERO <= '0';
		end if;
		
		ALU_RESULT <= aux_result;
		
	end process;
	


end Behavioral;
