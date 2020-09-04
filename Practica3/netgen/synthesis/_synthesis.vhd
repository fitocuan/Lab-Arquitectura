--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: _synthesis.vhd
-- /___/   /\     Timestamp: Fri Sep 04 15:02:27 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -w -dir netgen/synthesis -ofmt vhdl -sim ROM.ngc _synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: ROM.ngc
-- Output file	: \\vboxsvr\te2031\lab-repo\Practica3\netgen\synthesis\_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ROM
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ROM is
  port (
    READ_ADDRESS : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    INSTRUCTION : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end ROM;

architecture Structure of ROM is
  signal READ_ADDRESS_6_IBUF_0 : STD_LOGIC; 
  signal READ_ADDRESS_5_IBUF_1 : STD_LOGIC; 
  signal READ_ADDRESS_4_IBUF_2 : STD_LOGIC; 
  signal READ_ADDRESS_3_IBUF_3 : STD_LOGIC; 
  signal READ_ADDRESS_2_IBUF_4 : STD_LOGIC; 
  signal INSTRUCTION_31_OBUF_5 : STD_LOGIC; 
  signal INSTRUCTION_11_OBUF_6 : STD_LOGIC; 
  signal INSTRUCTION_1_OBUF_7 : STD_LOGIC; 
  signal INSTRUCTION_11_1_8 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => INSTRUCTION_31_OBUF_5
    );
  INSTRUCTION_11_11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => READ_ADDRESS_5_IBUF_1,
      I1 => READ_ADDRESS_6_IBUF_0,
      I2 => READ_ADDRESS_4_IBUF_2,
      I3 => READ_ADDRESS_2_IBUF_4,
      O => INSTRUCTION_11_1_8
    );
  READ_ADDRESS_6_IBUF : IBUF
    port map (
      I => READ_ADDRESS(6),
      O => READ_ADDRESS_6_IBUF_0
    );
  READ_ADDRESS_5_IBUF : IBUF
    port map (
      I => READ_ADDRESS(5),
      O => READ_ADDRESS_5_IBUF_1
    );
  READ_ADDRESS_4_IBUF : IBUF
    port map (
      I => READ_ADDRESS(4),
      O => READ_ADDRESS_4_IBUF_2
    );
  READ_ADDRESS_3_IBUF : IBUF
    port map (
      I => READ_ADDRESS(3),
      O => READ_ADDRESS_3_IBUF_3
    );
  READ_ADDRESS_2_IBUF : IBUF
    port map (
      I => READ_ADDRESS(2),
      O => READ_ADDRESS_2_IBUF_4
    );
  INSTRUCTION_31_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(31)
    );
  INSTRUCTION_30_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(30)
    );
  INSTRUCTION_29_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(29)
    );
  INSTRUCTION_28_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(28)
    );
  INSTRUCTION_27_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(27)
    );
  INSTRUCTION_26_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(26)
    );
  INSTRUCTION_25_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(25)
    );
  INSTRUCTION_24_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(24)
    );
  INSTRUCTION_23_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(23)
    );
  INSTRUCTION_22_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(22)
    );
  INSTRUCTION_21_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(21)
    );
  INSTRUCTION_20_OBUF : OBUF
    port map (
      I => INSTRUCTION_1_OBUF_7,
      O => INSTRUCTION(20)
    );
  INSTRUCTION_19_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(19)
    );
  INSTRUCTION_18_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(18)
    );
  INSTRUCTION_17_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(17)
    );
  INSTRUCTION_16_OBUF : OBUF
    port map (
      I => INSTRUCTION_1_OBUF_7,
      O => INSTRUCTION(16)
    );
  INSTRUCTION_15_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(15)
    );
  INSTRUCTION_14_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(14)
    );
  INSTRUCTION_13_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_1_8,
      O => INSTRUCTION(13)
    );
  INSTRUCTION_12_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(12)
    );
  INSTRUCTION_11_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(11)
    );
  INSTRUCTION_10_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(10)
    );
  INSTRUCTION_9_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_1_8,
      O => INSTRUCTION(9)
    );
  INSTRUCTION_8_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(8)
    );
  INSTRUCTION_7_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(7)
    );
  INSTRUCTION_6_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(6)
    );
  INSTRUCTION_5_OBUF : OBUF
    port map (
      I => INSTRUCTION_1_OBUF_7,
      O => INSTRUCTION(5)
    );
  INSTRUCTION_4_OBUF : OBUF
    port map (
      I => INSTRUCTION_1_OBUF_7,
      O => INSTRUCTION(4)
    );
  INSTRUCTION_3_OBUF : OBUF
    port map (
      I => INSTRUCTION_11_OBUF_6,
      O => INSTRUCTION(3)
    );
  INSTRUCTION_2_OBUF : OBUF
    port map (
      I => INSTRUCTION_31_OBUF_5,
      O => INSTRUCTION(2)
    );
  INSTRUCTION_1_OBUF : OBUF
    port map (
      I => INSTRUCTION_1_OBUF_7,
      O => INSTRUCTION(1)
    );
  INSTRUCTION_0_OBUF : OBUF
    port map (
      I => INSTRUCTION_1_OBUF_7,
      O => INSTRUCTION(0)
    );
  INSTRUCTION_1_1 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => READ_ADDRESS_3_IBUF_3,
      I1 => READ_ADDRESS_5_IBUF_1,
      I2 => READ_ADDRESS_6_IBUF_0,
      I3 => READ_ADDRESS_4_IBUF_2,
      I4 => READ_ADDRESS_2_IBUF_4,
      O => INSTRUCTION_1_OBUF_7
    );
  INSTRUCTION_11_1 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => READ_ADDRESS_3_IBUF_3,
      I1 => READ_ADDRESS_5_IBUF_1,
      I2 => READ_ADDRESS_6_IBUF_0,
      I3 => READ_ADDRESS_4_IBUF_2,
      I4 => READ_ADDRESS_2_IBUF_4,
      O => INSTRUCTION_11_OBUF_6
    );

end Structure;

