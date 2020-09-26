----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:53:30 09/12/2020 
-- Design Name: 
-- Module Name:    REG_FILE_REGISTERS - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package register_utils is

type REGISTERS is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
end register_utils;

package body register_utils is
end register_utils;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.register_utils.all;

entity REG_FILE_REGISTERS is
    Port ( ENABLES : in  STD_LOGIC_VECTOR (31 downto 0);
           WRITE_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC;
           OUT_DATA : out  REGISTERS);
end REG_FILE_REGISTERS;



architecture Behavioral of REG_FILE_REGISTERS is
begin
-- Entrada 0000001000  -> pasar a posicion en la que esta el bit sin hardcodear :/ ?


process(CLK, ENABLES, WRITE_DATA) 
variable register_selected : integer := 0;
begin
	OUT_DATA(0)<=x"00000000";
	if CLK'event and CLK = '0' then
		for k in 1 to 31 loop
			if ENABLES(k) = '1' then
				OUT_DATA(k) <= WRITE_DATA;
			end if;
		end loop;
	end if;
	
end process;
end Behavioral;

