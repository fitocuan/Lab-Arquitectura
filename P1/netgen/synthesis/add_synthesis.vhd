--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: add_synthesis.vhd
-- /___/   /\     Timestamp: Mon Aug 24 14:28:22 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm add -w -dir netgen/synthesis -ofmt vhdl -sim add.ngc add_synthesis.vhd 
-- Device	: xc6slx25-3-csg324
-- Input file	: add.ngc
-- Output file	: C:\PROJECTS\P1\netgen\synthesis\add_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: add
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

entity add is
  port (
    A_Adder : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    B_Adder : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    C_Adder : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end add;

architecture Structure of add is
  signal A_Adder_31_IBUF_0 : STD_LOGIC; 
  signal A_Adder_30_IBUF_1 : STD_LOGIC; 
  signal A_Adder_29_IBUF_2 : STD_LOGIC; 
  signal A_Adder_28_IBUF_3 : STD_LOGIC; 
  signal A_Adder_27_IBUF_4 : STD_LOGIC; 
  signal A_Adder_26_IBUF_5 : STD_LOGIC; 
  signal A_Adder_25_IBUF_6 : STD_LOGIC; 
  signal A_Adder_24_IBUF_7 : STD_LOGIC; 
  signal A_Adder_23_IBUF_8 : STD_LOGIC; 
  signal A_Adder_22_IBUF_9 : STD_LOGIC; 
  signal A_Adder_21_IBUF_10 : STD_LOGIC; 
  signal A_Adder_20_IBUF_11 : STD_LOGIC; 
  signal A_Adder_19_IBUF_12 : STD_LOGIC; 
  signal A_Adder_18_IBUF_13 : STD_LOGIC; 
  signal A_Adder_17_IBUF_14 : STD_LOGIC; 
  signal A_Adder_16_IBUF_15 : STD_LOGIC; 
  signal A_Adder_15_IBUF_16 : STD_LOGIC; 
  signal A_Adder_14_IBUF_17 : STD_LOGIC; 
  signal A_Adder_13_IBUF_18 : STD_LOGIC; 
  signal A_Adder_12_IBUF_19 : STD_LOGIC; 
  signal A_Adder_11_IBUF_20 : STD_LOGIC; 
  signal A_Adder_10_IBUF_21 : STD_LOGIC; 
  signal A_Adder_9_IBUF_22 : STD_LOGIC; 
  signal A_Adder_8_IBUF_23 : STD_LOGIC; 
  signal A_Adder_7_IBUF_24 : STD_LOGIC; 
  signal A_Adder_6_IBUF_25 : STD_LOGIC; 
  signal A_Adder_5_IBUF_26 : STD_LOGIC; 
  signal A_Adder_4_IBUF_27 : STD_LOGIC; 
  signal A_Adder_3_IBUF_28 : STD_LOGIC; 
  signal A_Adder_2_IBUF_29 : STD_LOGIC; 
  signal A_Adder_1_IBUF_30 : STD_LOGIC; 
  signal A_Adder_0_IBUF_31 : STD_LOGIC; 
  signal B_Adder_31_IBUF_32 : STD_LOGIC; 
  signal B_Adder_30_IBUF_33 : STD_LOGIC; 
  signal B_Adder_29_IBUF_34 : STD_LOGIC; 
  signal B_Adder_28_IBUF_35 : STD_LOGIC; 
  signal B_Adder_27_IBUF_36 : STD_LOGIC; 
  signal B_Adder_26_IBUF_37 : STD_LOGIC; 
  signal B_Adder_25_IBUF_38 : STD_LOGIC; 
  signal B_Adder_24_IBUF_39 : STD_LOGIC; 
  signal B_Adder_23_IBUF_40 : STD_LOGIC; 
  signal B_Adder_22_IBUF_41 : STD_LOGIC; 
  signal B_Adder_21_IBUF_42 : STD_LOGIC; 
  signal B_Adder_20_IBUF_43 : STD_LOGIC; 
  signal B_Adder_19_IBUF_44 : STD_LOGIC; 
  signal B_Adder_18_IBUF_45 : STD_LOGIC; 
  signal B_Adder_17_IBUF_46 : STD_LOGIC; 
  signal B_Adder_16_IBUF_47 : STD_LOGIC; 
  signal B_Adder_15_IBUF_48 : STD_LOGIC; 
  signal B_Adder_14_IBUF_49 : STD_LOGIC; 
  signal B_Adder_13_IBUF_50 : STD_LOGIC; 
  signal B_Adder_12_IBUF_51 : STD_LOGIC; 
  signal B_Adder_11_IBUF_52 : STD_LOGIC; 
  signal B_Adder_10_IBUF_53 : STD_LOGIC; 
  signal B_Adder_9_IBUF_54 : STD_LOGIC; 
  signal B_Adder_8_IBUF_55 : STD_LOGIC; 
  signal B_Adder_7_IBUF_56 : STD_LOGIC; 
  signal B_Adder_6_IBUF_57 : STD_LOGIC; 
  signal B_Adder_5_IBUF_58 : STD_LOGIC; 
  signal B_Adder_4_IBUF_59 : STD_LOGIC; 
  signal B_Adder_3_IBUF_60 : STD_LOGIC; 
  signal B_Adder_2_IBUF_61 : STD_LOGIC; 
  signal B_Adder_1_IBUF_62 : STD_LOGIC; 
  signal B_Adder_0_IBUF_63 : STD_LOGIC; 
  signal C_Adder_31_OBUF_64 : STD_LOGIC; 
  signal C_Adder_30_OBUF_65 : STD_LOGIC; 
  signal C_Adder_29_OBUF_66 : STD_LOGIC; 
  signal C_Adder_28_OBUF_67 : STD_LOGIC; 
  signal C_Adder_27_OBUF_68 : STD_LOGIC; 
  signal C_Adder_26_OBUF_69 : STD_LOGIC; 
  signal C_Adder_25_OBUF_70 : STD_LOGIC; 
  signal C_Adder_24_OBUF_71 : STD_LOGIC; 
  signal C_Adder_23_OBUF_72 : STD_LOGIC; 
  signal C_Adder_22_OBUF_73 : STD_LOGIC; 
  signal C_Adder_21_OBUF_74 : STD_LOGIC; 
  signal C_Adder_20_OBUF_75 : STD_LOGIC; 
  signal C_Adder_19_OBUF_76 : STD_LOGIC; 
  signal C_Adder_18_OBUF_77 : STD_LOGIC; 
  signal C_Adder_17_OBUF_78 : STD_LOGIC; 
  signal C_Adder_16_OBUF_79 : STD_LOGIC; 
  signal C_Adder_15_OBUF_80 : STD_LOGIC; 
  signal C_Adder_14_OBUF_81 : STD_LOGIC; 
  signal C_Adder_13_OBUF_82 : STD_LOGIC; 
  signal C_Adder_12_OBUF_83 : STD_LOGIC; 
  signal C_Adder_11_OBUF_84 : STD_LOGIC; 
  signal C_Adder_10_OBUF_85 : STD_LOGIC; 
  signal C_Adder_9_OBUF_86 : STD_LOGIC; 
  signal C_Adder_8_OBUF_87 : STD_LOGIC; 
  signal C_Adder_7_OBUF_88 : STD_LOGIC; 
  signal C_Adder_6_OBUF_89 : STD_LOGIC; 
  signal C_Adder_5_OBUF_90 : STD_LOGIC; 
  signal C_Adder_4_OBUF_91 : STD_LOGIC; 
  signal C_Adder_3_OBUF_92 : STD_LOGIC; 
  signal C_Adder_2_OBUF_93 : STD_LOGIC; 
  signal C_Adder_1_OBUF_94 : STD_LOGIC; 
  signal C_Adder_0_OBUF_95 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Madd_C_Adder_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Madd_C_Adder_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  Madd_C_Adder_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_0_IBUF_31,
      I1 => B_Adder_0_IBUF_63,
      O => Madd_C_Adder_lut(0)
    );
  Madd_C_Adder_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => A_Adder_0_IBUF_31,
      S => Madd_C_Adder_lut(0),
      O => Madd_C_Adder_cy(0)
    );
  Madd_C_Adder_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Madd_C_Adder_lut(0),
      O => C_Adder_0_OBUF_95
    );
  Madd_C_Adder_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_1_IBUF_30,
      I1 => B_Adder_1_IBUF_62,
      O => Madd_C_Adder_lut(1)
    );
  Madd_C_Adder_cy_1_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(0),
      DI => A_Adder_1_IBUF_30,
      S => Madd_C_Adder_lut(1),
      O => Madd_C_Adder_cy(1)
    );
  Madd_C_Adder_xor_1_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(0),
      LI => Madd_C_Adder_lut(1),
      O => C_Adder_1_OBUF_94
    );
  Madd_C_Adder_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_2_IBUF_29,
      I1 => B_Adder_2_IBUF_61,
      O => Madd_C_Adder_lut(2)
    );
  Madd_C_Adder_cy_2_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(1),
      DI => A_Adder_2_IBUF_29,
      S => Madd_C_Adder_lut(2),
      O => Madd_C_Adder_cy(2)
    );
  Madd_C_Adder_xor_2_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(1),
      LI => Madd_C_Adder_lut(2),
      O => C_Adder_2_OBUF_93
    );
  Madd_C_Adder_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_3_IBUF_28,
      I1 => B_Adder_3_IBUF_60,
      O => Madd_C_Adder_lut(3)
    );
  Madd_C_Adder_cy_3_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(2),
      DI => A_Adder_3_IBUF_28,
      S => Madd_C_Adder_lut(3),
      O => Madd_C_Adder_cy(3)
    );
  Madd_C_Adder_xor_3_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(2),
      LI => Madd_C_Adder_lut(3),
      O => C_Adder_3_OBUF_92
    );
  Madd_C_Adder_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_4_IBUF_27,
      I1 => B_Adder_4_IBUF_59,
      O => Madd_C_Adder_lut(4)
    );
  Madd_C_Adder_cy_4_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(3),
      DI => A_Adder_4_IBUF_27,
      S => Madd_C_Adder_lut(4),
      O => Madd_C_Adder_cy(4)
    );
  Madd_C_Adder_xor_4_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(3),
      LI => Madd_C_Adder_lut(4),
      O => C_Adder_4_OBUF_91
    );
  Madd_C_Adder_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_5_IBUF_26,
      I1 => B_Adder_5_IBUF_58,
      O => Madd_C_Adder_lut(5)
    );
  Madd_C_Adder_cy_5_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(4),
      DI => A_Adder_5_IBUF_26,
      S => Madd_C_Adder_lut(5),
      O => Madd_C_Adder_cy(5)
    );
  Madd_C_Adder_xor_5_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(4),
      LI => Madd_C_Adder_lut(5),
      O => C_Adder_5_OBUF_90
    );
  Madd_C_Adder_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_6_IBUF_25,
      I1 => B_Adder_6_IBUF_57,
      O => Madd_C_Adder_lut(6)
    );
  Madd_C_Adder_cy_6_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(5),
      DI => A_Adder_6_IBUF_25,
      S => Madd_C_Adder_lut(6),
      O => Madd_C_Adder_cy(6)
    );
  Madd_C_Adder_xor_6_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(5),
      LI => Madd_C_Adder_lut(6),
      O => C_Adder_6_OBUF_89
    );
  Madd_C_Adder_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_7_IBUF_24,
      I1 => B_Adder_7_IBUF_56,
      O => Madd_C_Adder_lut(7)
    );
  Madd_C_Adder_cy_7_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(6),
      DI => A_Adder_7_IBUF_24,
      S => Madd_C_Adder_lut(7),
      O => Madd_C_Adder_cy(7)
    );
  Madd_C_Adder_xor_7_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(6),
      LI => Madd_C_Adder_lut(7),
      O => C_Adder_7_OBUF_88
    );
  Madd_C_Adder_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_8_IBUF_23,
      I1 => B_Adder_8_IBUF_55,
      O => Madd_C_Adder_lut(8)
    );
  Madd_C_Adder_cy_8_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(7),
      DI => A_Adder_8_IBUF_23,
      S => Madd_C_Adder_lut(8),
      O => Madd_C_Adder_cy(8)
    );
  Madd_C_Adder_xor_8_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(7),
      LI => Madd_C_Adder_lut(8),
      O => C_Adder_8_OBUF_87
    );
  Madd_C_Adder_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_9_IBUF_22,
      I1 => B_Adder_9_IBUF_54,
      O => Madd_C_Adder_lut(9)
    );
  Madd_C_Adder_cy_9_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(8),
      DI => A_Adder_9_IBUF_22,
      S => Madd_C_Adder_lut(9),
      O => Madd_C_Adder_cy(9)
    );
  Madd_C_Adder_xor_9_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(8),
      LI => Madd_C_Adder_lut(9),
      O => C_Adder_9_OBUF_86
    );
  Madd_C_Adder_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_10_IBUF_21,
      I1 => B_Adder_10_IBUF_53,
      O => Madd_C_Adder_lut(10)
    );
  Madd_C_Adder_cy_10_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(9),
      DI => A_Adder_10_IBUF_21,
      S => Madd_C_Adder_lut(10),
      O => Madd_C_Adder_cy(10)
    );
  Madd_C_Adder_xor_10_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(9),
      LI => Madd_C_Adder_lut(10),
      O => C_Adder_10_OBUF_85
    );
  Madd_C_Adder_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_11_IBUF_20,
      I1 => B_Adder_11_IBUF_52,
      O => Madd_C_Adder_lut(11)
    );
  Madd_C_Adder_cy_11_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(10),
      DI => A_Adder_11_IBUF_20,
      S => Madd_C_Adder_lut(11),
      O => Madd_C_Adder_cy(11)
    );
  Madd_C_Adder_xor_11_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(10),
      LI => Madd_C_Adder_lut(11),
      O => C_Adder_11_OBUF_84
    );
  Madd_C_Adder_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_12_IBUF_19,
      I1 => B_Adder_12_IBUF_51,
      O => Madd_C_Adder_lut(12)
    );
  Madd_C_Adder_cy_12_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(11),
      DI => A_Adder_12_IBUF_19,
      S => Madd_C_Adder_lut(12),
      O => Madd_C_Adder_cy(12)
    );
  Madd_C_Adder_xor_12_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(11),
      LI => Madd_C_Adder_lut(12),
      O => C_Adder_12_OBUF_83
    );
  Madd_C_Adder_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_13_IBUF_18,
      I1 => B_Adder_13_IBUF_50,
      O => Madd_C_Adder_lut(13)
    );
  Madd_C_Adder_cy_13_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(12),
      DI => A_Adder_13_IBUF_18,
      S => Madd_C_Adder_lut(13),
      O => Madd_C_Adder_cy(13)
    );
  Madd_C_Adder_xor_13_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(12),
      LI => Madd_C_Adder_lut(13),
      O => C_Adder_13_OBUF_82
    );
  Madd_C_Adder_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_14_IBUF_17,
      I1 => B_Adder_14_IBUF_49,
      O => Madd_C_Adder_lut(14)
    );
  Madd_C_Adder_cy_14_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(13),
      DI => A_Adder_14_IBUF_17,
      S => Madd_C_Adder_lut(14),
      O => Madd_C_Adder_cy(14)
    );
  Madd_C_Adder_xor_14_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(13),
      LI => Madd_C_Adder_lut(14),
      O => C_Adder_14_OBUF_81
    );
  Madd_C_Adder_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_15_IBUF_16,
      I1 => B_Adder_15_IBUF_48,
      O => Madd_C_Adder_lut(15)
    );
  Madd_C_Adder_cy_15_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(14),
      DI => A_Adder_15_IBUF_16,
      S => Madd_C_Adder_lut(15),
      O => Madd_C_Adder_cy(15)
    );
  Madd_C_Adder_xor_15_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(14),
      LI => Madd_C_Adder_lut(15),
      O => C_Adder_15_OBUF_80
    );
  Madd_C_Adder_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_16_IBUF_15,
      I1 => B_Adder_16_IBUF_47,
      O => Madd_C_Adder_lut(16)
    );
  Madd_C_Adder_cy_16_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(15),
      DI => A_Adder_16_IBUF_15,
      S => Madd_C_Adder_lut(16),
      O => Madd_C_Adder_cy(16)
    );
  Madd_C_Adder_xor_16_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(15),
      LI => Madd_C_Adder_lut(16),
      O => C_Adder_16_OBUF_79
    );
  Madd_C_Adder_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_17_IBUF_14,
      I1 => B_Adder_17_IBUF_46,
      O => Madd_C_Adder_lut(17)
    );
  Madd_C_Adder_cy_17_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(16),
      DI => A_Adder_17_IBUF_14,
      S => Madd_C_Adder_lut(17),
      O => Madd_C_Adder_cy(17)
    );
  Madd_C_Adder_xor_17_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(16),
      LI => Madd_C_Adder_lut(17),
      O => C_Adder_17_OBUF_78
    );
  Madd_C_Adder_lut_18_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_18_IBUF_13,
      I1 => B_Adder_18_IBUF_45,
      O => Madd_C_Adder_lut(18)
    );
  Madd_C_Adder_cy_18_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(17),
      DI => A_Adder_18_IBUF_13,
      S => Madd_C_Adder_lut(18),
      O => Madd_C_Adder_cy(18)
    );
  Madd_C_Adder_xor_18_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(17),
      LI => Madd_C_Adder_lut(18),
      O => C_Adder_18_OBUF_77
    );
  Madd_C_Adder_lut_19_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_19_IBUF_12,
      I1 => B_Adder_19_IBUF_44,
      O => Madd_C_Adder_lut(19)
    );
  Madd_C_Adder_cy_19_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(18),
      DI => A_Adder_19_IBUF_12,
      S => Madd_C_Adder_lut(19),
      O => Madd_C_Adder_cy(19)
    );
  Madd_C_Adder_xor_19_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(18),
      LI => Madd_C_Adder_lut(19),
      O => C_Adder_19_OBUF_76
    );
  Madd_C_Adder_lut_20_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_20_IBUF_11,
      I1 => B_Adder_20_IBUF_43,
      O => Madd_C_Adder_lut(20)
    );
  Madd_C_Adder_cy_20_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(19),
      DI => A_Adder_20_IBUF_11,
      S => Madd_C_Adder_lut(20),
      O => Madd_C_Adder_cy(20)
    );
  Madd_C_Adder_xor_20_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(19),
      LI => Madd_C_Adder_lut(20),
      O => C_Adder_20_OBUF_75
    );
  Madd_C_Adder_lut_21_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_21_IBUF_10,
      I1 => B_Adder_21_IBUF_42,
      O => Madd_C_Adder_lut(21)
    );
  Madd_C_Adder_cy_21_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(20),
      DI => A_Adder_21_IBUF_10,
      S => Madd_C_Adder_lut(21),
      O => Madd_C_Adder_cy(21)
    );
  Madd_C_Adder_xor_21_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(20),
      LI => Madd_C_Adder_lut(21),
      O => C_Adder_21_OBUF_74
    );
  Madd_C_Adder_lut_22_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_22_IBUF_9,
      I1 => B_Adder_22_IBUF_41,
      O => Madd_C_Adder_lut(22)
    );
  Madd_C_Adder_cy_22_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(21),
      DI => A_Adder_22_IBUF_9,
      S => Madd_C_Adder_lut(22),
      O => Madd_C_Adder_cy(22)
    );
  Madd_C_Adder_xor_22_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(21),
      LI => Madd_C_Adder_lut(22),
      O => C_Adder_22_OBUF_73
    );
  Madd_C_Adder_lut_23_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_23_IBUF_8,
      I1 => B_Adder_23_IBUF_40,
      O => Madd_C_Adder_lut(23)
    );
  Madd_C_Adder_cy_23_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(22),
      DI => A_Adder_23_IBUF_8,
      S => Madd_C_Adder_lut(23),
      O => Madd_C_Adder_cy(23)
    );
  Madd_C_Adder_xor_23_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(22),
      LI => Madd_C_Adder_lut(23),
      O => C_Adder_23_OBUF_72
    );
  Madd_C_Adder_lut_24_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_24_IBUF_7,
      I1 => B_Adder_24_IBUF_39,
      O => Madd_C_Adder_lut(24)
    );
  Madd_C_Adder_cy_24_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(23),
      DI => A_Adder_24_IBUF_7,
      S => Madd_C_Adder_lut(24),
      O => Madd_C_Adder_cy(24)
    );
  Madd_C_Adder_xor_24_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(23),
      LI => Madd_C_Adder_lut(24),
      O => C_Adder_24_OBUF_71
    );
  Madd_C_Adder_lut_25_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_25_IBUF_6,
      I1 => B_Adder_25_IBUF_38,
      O => Madd_C_Adder_lut(25)
    );
  Madd_C_Adder_cy_25_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(24),
      DI => A_Adder_25_IBUF_6,
      S => Madd_C_Adder_lut(25),
      O => Madd_C_Adder_cy(25)
    );
  Madd_C_Adder_xor_25_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(24),
      LI => Madd_C_Adder_lut(25),
      O => C_Adder_25_OBUF_70
    );
  Madd_C_Adder_lut_26_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_26_IBUF_5,
      I1 => B_Adder_26_IBUF_37,
      O => Madd_C_Adder_lut(26)
    );
  Madd_C_Adder_cy_26_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(25),
      DI => A_Adder_26_IBUF_5,
      S => Madd_C_Adder_lut(26),
      O => Madd_C_Adder_cy(26)
    );
  Madd_C_Adder_xor_26_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(25),
      LI => Madd_C_Adder_lut(26),
      O => C_Adder_26_OBUF_69
    );
  Madd_C_Adder_lut_27_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_27_IBUF_4,
      I1 => B_Adder_27_IBUF_36,
      O => Madd_C_Adder_lut(27)
    );
  Madd_C_Adder_cy_27_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(26),
      DI => A_Adder_27_IBUF_4,
      S => Madd_C_Adder_lut(27),
      O => Madd_C_Adder_cy(27)
    );
  Madd_C_Adder_xor_27_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(26),
      LI => Madd_C_Adder_lut(27),
      O => C_Adder_27_OBUF_68
    );
  Madd_C_Adder_lut_28_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_28_IBUF_3,
      I1 => B_Adder_28_IBUF_35,
      O => Madd_C_Adder_lut(28)
    );
  Madd_C_Adder_cy_28_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(27),
      DI => A_Adder_28_IBUF_3,
      S => Madd_C_Adder_lut(28),
      O => Madd_C_Adder_cy(28)
    );
  Madd_C_Adder_xor_28_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(27),
      LI => Madd_C_Adder_lut(28),
      O => C_Adder_28_OBUF_67
    );
  Madd_C_Adder_lut_29_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_29_IBUF_2,
      I1 => B_Adder_29_IBUF_34,
      O => Madd_C_Adder_lut(29)
    );
  Madd_C_Adder_cy_29_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(28),
      DI => A_Adder_29_IBUF_2,
      S => Madd_C_Adder_lut(29),
      O => Madd_C_Adder_cy(29)
    );
  Madd_C_Adder_xor_29_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(28),
      LI => Madd_C_Adder_lut(29),
      O => C_Adder_29_OBUF_66
    );
  Madd_C_Adder_lut_30_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_30_IBUF_1,
      I1 => B_Adder_30_IBUF_33,
      O => Madd_C_Adder_lut(30)
    );
  Madd_C_Adder_cy_30_Q : MUXCY
    port map (
      CI => Madd_C_Adder_cy(29),
      DI => A_Adder_30_IBUF_1,
      S => Madd_C_Adder_lut(30),
      O => Madd_C_Adder_cy(30)
    );
  Madd_C_Adder_xor_30_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(29),
      LI => Madd_C_Adder_lut(30),
      O => C_Adder_30_OBUF_65
    );
  Madd_C_Adder_lut_31_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_Adder_31_IBUF_0,
      I1 => B_Adder_31_IBUF_32,
      O => Madd_C_Adder_lut(31)
    );
  Madd_C_Adder_xor_31_Q : XORCY
    port map (
      CI => Madd_C_Adder_cy(30),
      LI => Madd_C_Adder_lut(31),
      O => C_Adder_31_OBUF_64
    );
  A_Adder_31_IBUF : IBUF
    port map (
      I => A_Adder(31),
      O => A_Adder_31_IBUF_0
    );
  A_Adder_30_IBUF : IBUF
    port map (
      I => A_Adder(30),
      O => A_Adder_30_IBUF_1
    );
  A_Adder_29_IBUF : IBUF
    port map (
      I => A_Adder(29),
      O => A_Adder_29_IBUF_2
    );
  A_Adder_28_IBUF : IBUF
    port map (
      I => A_Adder(28),
      O => A_Adder_28_IBUF_3
    );
  A_Adder_27_IBUF : IBUF
    port map (
      I => A_Adder(27),
      O => A_Adder_27_IBUF_4
    );
  A_Adder_26_IBUF : IBUF
    port map (
      I => A_Adder(26),
      O => A_Adder_26_IBUF_5
    );
  A_Adder_25_IBUF : IBUF
    port map (
      I => A_Adder(25),
      O => A_Adder_25_IBUF_6
    );
  A_Adder_24_IBUF : IBUF
    port map (
      I => A_Adder(24),
      O => A_Adder_24_IBUF_7
    );
  A_Adder_23_IBUF : IBUF
    port map (
      I => A_Adder(23),
      O => A_Adder_23_IBUF_8
    );
  A_Adder_22_IBUF : IBUF
    port map (
      I => A_Adder(22),
      O => A_Adder_22_IBUF_9
    );
  A_Adder_21_IBUF : IBUF
    port map (
      I => A_Adder(21),
      O => A_Adder_21_IBUF_10
    );
  A_Adder_20_IBUF : IBUF
    port map (
      I => A_Adder(20),
      O => A_Adder_20_IBUF_11
    );
  A_Adder_19_IBUF : IBUF
    port map (
      I => A_Adder(19),
      O => A_Adder_19_IBUF_12
    );
  A_Adder_18_IBUF : IBUF
    port map (
      I => A_Adder(18),
      O => A_Adder_18_IBUF_13
    );
  A_Adder_17_IBUF : IBUF
    port map (
      I => A_Adder(17),
      O => A_Adder_17_IBUF_14
    );
  A_Adder_16_IBUF : IBUF
    port map (
      I => A_Adder(16),
      O => A_Adder_16_IBUF_15
    );
  A_Adder_15_IBUF : IBUF
    port map (
      I => A_Adder(15),
      O => A_Adder_15_IBUF_16
    );
  A_Adder_14_IBUF : IBUF
    port map (
      I => A_Adder(14),
      O => A_Adder_14_IBUF_17
    );
  A_Adder_13_IBUF : IBUF
    port map (
      I => A_Adder(13),
      O => A_Adder_13_IBUF_18
    );
  A_Adder_12_IBUF : IBUF
    port map (
      I => A_Adder(12),
      O => A_Adder_12_IBUF_19
    );
  A_Adder_11_IBUF : IBUF
    port map (
      I => A_Adder(11),
      O => A_Adder_11_IBUF_20
    );
  A_Adder_10_IBUF : IBUF
    port map (
      I => A_Adder(10),
      O => A_Adder_10_IBUF_21
    );
  A_Adder_9_IBUF : IBUF
    port map (
      I => A_Adder(9),
      O => A_Adder_9_IBUF_22
    );
  A_Adder_8_IBUF : IBUF
    port map (
      I => A_Adder(8),
      O => A_Adder_8_IBUF_23
    );
  A_Adder_7_IBUF : IBUF
    port map (
      I => A_Adder(7),
      O => A_Adder_7_IBUF_24
    );
  A_Adder_6_IBUF : IBUF
    port map (
      I => A_Adder(6),
      O => A_Adder_6_IBUF_25
    );
  A_Adder_5_IBUF : IBUF
    port map (
      I => A_Adder(5),
      O => A_Adder_5_IBUF_26
    );
  A_Adder_4_IBUF : IBUF
    port map (
      I => A_Adder(4),
      O => A_Adder_4_IBUF_27
    );
  A_Adder_3_IBUF : IBUF
    port map (
      I => A_Adder(3),
      O => A_Adder_3_IBUF_28
    );
  A_Adder_2_IBUF : IBUF
    port map (
      I => A_Adder(2),
      O => A_Adder_2_IBUF_29
    );
  A_Adder_1_IBUF : IBUF
    port map (
      I => A_Adder(1),
      O => A_Adder_1_IBUF_30
    );
  A_Adder_0_IBUF : IBUF
    port map (
      I => A_Adder(0),
      O => A_Adder_0_IBUF_31
    );
  B_Adder_31_IBUF : IBUF
    port map (
      I => B_Adder(31),
      O => B_Adder_31_IBUF_32
    );
  B_Adder_30_IBUF : IBUF
    port map (
      I => B_Adder(30),
      O => B_Adder_30_IBUF_33
    );
  B_Adder_29_IBUF : IBUF
    port map (
      I => B_Adder(29),
      O => B_Adder_29_IBUF_34
    );
  B_Adder_28_IBUF : IBUF
    port map (
      I => B_Adder(28),
      O => B_Adder_28_IBUF_35
    );
  B_Adder_27_IBUF : IBUF
    port map (
      I => B_Adder(27),
      O => B_Adder_27_IBUF_36
    );
  B_Adder_26_IBUF : IBUF
    port map (
      I => B_Adder(26),
      O => B_Adder_26_IBUF_37
    );
  B_Adder_25_IBUF : IBUF
    port map (
      I => B_Adder(25),
      O => B_Adder_25_IBUF_38
    );
  B_Adder_24_IBUF : IBUF
    port map (
      I => B_Adder(24),
      O => B_Adder_24_IBUF_39
    );
  B_Adder_23_IBUF : IBUF
    port map (
      I => B_Adder(23),
      O => B_Adder_23_IBUF_40
    );
  B_Adder_22_IBUF : IBUF
    port map (
      I => B_Adder(22),
      O => B_Adder_22_IBUF_41
    );
  B_Adder_21_IBUF : IBUF
    port map (
      I => B_Adder(21),
      O => B_Adder_21_IBUF_42
    );
  B_Adder_20_IBUF : IBUF
    port map (
      I => B_Adder(20),
      O => B_Adder_20_IBUF_43
    );
  B_Adder_19_IBUF : IBUF
    port map (
      I => B_Adder(19),
      O => B_Adder_19_IBUF_44
    );
  B_Adder_18_IBUF : IBUF
    port map (
      I => B_Adder(18),
      O => B_Adder_18_IBUF_45
    );
  B_Adder_17_IBUF : IBUF
    port map (
      I => B_Adder(17),
      O => B_Adder_17_IBUF_46
    );
  B_Adder_16_IBUF : IBUF
    port map (
      I => B_Adder(16),
      O => B_Adder_16_IBUF_47
    );
  B_Adder_15_IBUF : IBUF
    port map (
      I => B_Adder(15),
      O => B_Adder_15_IBUF_48
    );
  B_Adder_14_IBUF : IBUF
    port map (
      I => B_Adder(14),
      O => B_Adder_14_IBUF_49
    );
  B_Adder_13_IBUF : IBUF
    port map (
      I => B_Adder(13),
      O => B_Adder_13_IBUF_50
    );
  B_Adder_12_IBUF : IBUF
    port map (
      I => B_Adder(12),
      O => B_Adder_12_IBUF_51
    );
  B_Adder_11_IBUF : IBUF
    port map (
      I => B_Adder(11),
      O => B_Adder_11_IBUF_52
    );
  B_Adder_10_IBUF : IBUF
    port map (
      I => B_Adder(10),
      O => B_Adder_10_IBUF_53
    );
  B_Adder_9_IBUF : IBUF
    port map (
      I => B_Adder(9),
      O => B_Adder_9_IBUF_54
    );
  B_Adder_8_IBUF : IBUF
    port map (
      I => B_Adder(8),
      O => B_Adder_8_IBUF_55
    );
  B_Adder_7_IBUF : IBUF
    port map (
      I => B_Adder(7),
      O => B_Adder_7_IBUF_56
    );
  B_Adder_6_IBUF : IBUF
    port map (
      I => B_Adder(6),
      O => B_Adder_6_IBUF_57
    );
  B_Adder_5_IBUF : IBUF
    port map (
      I => B_Adder(5),
      O => B_Adder_5_IBUF_58
    );
  B_Adder_4_IBUF : IBUF
    port map (
      I => B_Adder(4),
      O => B_Adder_4_IBUF_59
    );
  B_Adder_3_IBUF : IBUF
    port map (
      I => B_Adder(3),
      O => B_Adder_3_IBUF_60
    );
  B_Adder_2_IBUF : IBUF
    port map (
      I => B_Adder(2),
      O => B_Adder_2_IBUF_61
    );
  B_Adder_1_IBUF : IBUF
    port map (
      I => B_Adder(1),
      O => B_Adder_1_IBUF_62
    );
  B_Adder_0_IBUF : IBUF
    port map (
      I => B_Adder(0),
      O => B_Adder_0_IBUF_63
    );
  C_Adder_31_OBUF : OBUF
    port map (
      I => C_Adder_31_OBUF_64,
      O => C_Adder(31)
    );
  C_Adder_30_OBUF : OBUF
    port map (
      I => C_Adder_30_OBUF_65,
      O => C_Adder(30)
    );
  C_Adder_29_OBUF : OBUF
    port map (
      I => C_Adder_29_OBUF_66,
      O => C_Adder(29)
    );
  C_Adder_28_OBUF : OBUF
    port map (
      I => C_Adder_28_OBUF_67,
      O => C_Adder(28)
    );
  C_Adder_27_OBUF : OBUF
    port map (
      I => C_Adder_27_OBUF_68,
      O => C_Adder(27)
    );
  C_Adder_26_OBUF : OBUF
    port map (
      I => C_Adder_26_OBUF_69,
      O => C_Adder(26)
    );
  C_Adder_25_OBUF : OBUF
    port map (
      I => C_Adder_25_OBUF_70,
      O => C_Adder(25)
    );
  C_Adder_24_OBUF : OBUF
    port map (
      I => C_Adder_24_OBUF_71,
      O => C_Adder(24)
    );
  C_Adder_23_OBUF : OBUF
    port map (
      I => C_Adder_23_OBUF_72,
      O => C_Adder(23)
    );
  C_Adder_22_OBUF : OBUF
    port map (
      I => C_Adder_22_OBUF_73,
      O => C_Adder(22)
    );
  C_Adder_21_OBUF : OBUF
    port map (
      I => C_Adder_21_OBUF_74,
      O => C_Adder(21)
    );
  C_Adder_20_OBUF : OBUF
    port map (
      I => C_Adder_20_OBUF_75,
      O => C_Adder(20)
    );
  C_Adder_19_OBUF : OBUF
    port map (
      I => C_Adder_19_OBUF_76,
      O => C_Adder(19)
    );
  C_Adder_18_OBUF : OBUF
    port map (
      I => C_Adder_18_OBUF_77,
      O => C_Adder(18)
    );
  C_Adder_17_OBUF : OBUF
    port map (
      I => C_Adder_17_OBUF_78,
      O => C_Adder(17)
    );
  C_Adder_16_OBUF : OBUF
    port map (
      I => C_Adder_16_OBUF_79,
      O => C_Adder(16)
    );
  C_Adder_15_OBUF : OBUF
    port map (
      I => C_Adder_15_OBUF_80,
      O => C_Adder(15)
    );
  C_Adder_14_OBUF : OBUF
    port map (
      I => C_Adder_14_OBUF_81,
      O => C_Adder(14)
    );
  C_Adder_13_OBUF : OBUF
    port map (
      I => C_Adder_13_OBUF_82,
      O => C_Adder(13)
    );
  C_Adder_12_OBUF : OBUF
    port map (
      I => C_Adder_12_OBUF_83,
      O => C_Adder(12)
    );
  C_Adder_11_OBUF : OBUF
    port map (
      I => C_Adder_11_OBUF_84,
      O => C_Adder(11)
    );
  C_Adder_10_OBUF : OBUF
    port map (
      I => C_Adder_10_OBUF_85,
      O => C_Adder(10)
    );
  C_Adder_9_OBUF : OBUF
    port map (
      I => C_Adder_9_OBUF_86,
      O => C_Adder(9)
    );
  C_Adder_8_OBUF : OBUF
    port map (
      I => C_Adder_8_OBUF_87,
      O => C_Adder(8)
    );
  C_Adder_7_OBUF : OBUF
    port map (
      I => C_Adder_7_OBUF_88,
      O => C_Adder(7)
    );
  C_Adder_6_OBUF : OBUF
    port map (
      I => C_Adder_6_OBUF_89,
      O => C_Adder(6)
    );
  C_Adder_5_OBUF : OBUF
    port map (
      I => C_Adder_5_OBUF_90,
      O => C_Adder(5)
    );
  C_Adder_4_OBUF : OBUF
    port map (
      I => C_Adder_4_OBUF_91,
      O => C_Adder(4)
    );
  C_Adder_3_OBUF : OBUF
    port map (
      I => C_Adder_3_OBUF_92,
      O => C_Adder(3)
    );
  C_Adder_2_OBUF : OBUF
    port map (
      I => C_Adder_2_OBUF_93,
      O => C_Adder(2)
    );
  C_Adder_1_OBUF : OBUF
    port map (
      I => C_Adder_1_OBUF_94,
      O => C_Adder(1)
    );
  C_Adder_0_OBUF : OBUF
    port map (
      I => C_Adder_0_OBUF_95,
      O => C_Adder(0)
    );

end Structure;

