--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ALU_synthesis.vhd
-- /___/   /\     Timestamp: Wed Aug 26 16:29:33 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ALU -w -dir netgen/synthesis -ofmt vhdl -sim ALU.ngc ALU_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: ALU.ngc
-- Output file	: \\vboxsvr\te2031\lab-repo\P2\netgen\synthesis\ALU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ALU
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

entity ALU is
  port (
    ALU_ZERO : out STD_LOGIC; 
    ALU_CNTRL : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    ALU_A : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    ALU_B : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    ALU_RESULT : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end ALU;

architecture Structure of ALU is
  signal ALU_CNTRL_2_IBUF_0 : STD_LOGIC; 
  signal ALU_CNTRL_1_IBUF_1 : STD_LOGIC; 
  signal ALU_CNTRL_0_IBUF_2 : STD_LOGIC; 
  signal ALU_A_31_IBUF_3 : STD_LOGIC; 
  signal ALU_A_30_IBUF_4 : STD_LOGIC; 
  signal ALU_A_29_IBUF_5 : STD_LOGIC; 
  signal ALU_A_28_IBUF_6 : STD_LOGIC; 
  signal ALU_A_27_IBUF_7 : STD_LOGIC; 
  signal ALU_A_26_IBUF_8 : STD_LOGIC; 
  signal ALU_A_25_IBUF_9 : STD_LOGIC; 
  signal ALU_A_24_IBUF_10 : STD_LOGIC; 
  signal ALU_A_23_IBUF_11 : STD_LOGIC; 
  signal ALU_A_22_IBUF_12 : STD_LOGIC; 
  signal ALU_A_21_IBUF_13 : STD_LOGIC; 
  signal ALU_A_20_IBUF_14 : STD_LOGIC; 
  signal ALU_A_19_IBUF_15 : STD_LOGIC; 
  signal ALU_A_18_IBUF_16 : STD_LOGIC; 
  signal ALU_A_17_IBUF_17 : STD_LOGIC; 
  signal ALU_A_16_IBUF_18 : STD_LOGIC; 
  signal ALU_A_15_IBUF_19 : STD_LOGIC; 
  signal ALU_A_14_IBUF_20 : STD_LOGIC; 
  signal ALU_A_13_IBUF_21 : STD_LOGIC; 
  signal ALU_A_12_IBUF_22 : STD_LOGIC; 
  signal ALU_A_11_IBUF_23 : STD_LOGIC; 
  signal ALU_A_10_IBUF_24 : STD_LOGIC; 
  signal ALU_A_9_IBUF_25 : STD_LOGIC; 
  signal ALU_A_8_IBUF_26 : STD_LOGIC; 
  signal ALU_A_7_IBUF_27 : STD_LOGIC; 
  signal ALU_A_6_IBUF_28 : STD_LOGIC; 
  signal ALU_A_5_IBUF_29 : STD_LOGIC; 
  signal ALU_A_4_IBUF_30 : STD_LOGIC; 
  signal ALU_A_3_IBUF_31 : STD_LOGIC; 
  signal ALU_A_2_IBUF_32 : STD_LOGIC; 
  signal ALU_A_1_IBUF_33 : STD_LOGIC; 
  signal ALU_A_0_IBUF_34 : STD_LOGIC; 
  signal ALU_B_31_IBUF_35 : STD_LOGIC; 
  signal ALU_B_30_IBUF_36 : STD_LOGIC; 
  signal ALU_B_29_IBUF_37 : STD_LOGIC; 
  signal ALU_B_28_IBUF_38 : STD_LOGIC; 
  signal ALU_B_27_IBUF_39 : STD_LOGIC; 
  signal ALU_B_26_IBUF_40 : STD_LOGIC; 
  signal ALU_B_25_IBUF_41 : STD_LOGIC; 
  signal ALU_B_24_IBUF_42 : STD_LOGIC; 
  signal ALU_B_23_IBUF_43 : STD_LOGIC; 
  signal ALU_B_22_IBUF_44 : STD_LOGIC; 
  signal ALU_B_21_IBUF_45 : STD_LOGIC; 
  signal ALU_B_20_IBUF_46 : STD_LOGIC; 
  signal ALU_B_19_IBUF_47 : STD_LOGIC; 
  signal ALU_B_18_IBUF_48 : STD_LOGIC; 
  signal ALU_B_17_IBUF_49 : STD_LOGIC; 
  signal ALU_B_16_IBUF_50 : STD_LOGIC; 
  signal ALU_B_15_IBUF_51 : STD_LOGIC; 
  signal ALU_B_14_IBUF_52 : STD_LOGIC; 
  signal ALU_B_13_IBUF_53 : STD_LOGIC; 
  signal ALU_B_12_IBUF_54 : STD_LOGIC; 
  signal ALU_B_11_IBUF_55 : STD_LOGIC; 
  signal ALU_B_10_IBUF_56 : STD_LOGIC; 
  signal ALU_B_9_IBUF_57 : STD_LOGIC; 
  signal ALU_B_8_IBUF_58 : STD_LOGIC; 
  signal ALU_B_7_IBUF_59 : STD_LOGIC; 
  signal ALU_B_6_IBUF_60 : STD_LOGIC; 
  signal ALU_B_5_IBUF_61 : STD_LOGIC; 
  signal ALU_B_4_IBUF_62 : STD_LOGIC; 
  signal ALU_B_3_IBUF_63 : STD_LOGIC; 
  signal ALU_B_2_IBUF_64 : STD_LOGIC; 
  signal ALU_B_1_IBUF_65 : STD_LOGIC; 
  signal ALU_B_0_IBUF_66 : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_31_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_30_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_29_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_28_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_27_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_26_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_25_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_24_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_23_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_22_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_21_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_20_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_19_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_18_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_17_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_16_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_15_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_14_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_13_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_12_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_11_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_10_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_9_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_8_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_7_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_6_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_5_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_4_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_3_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_2_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_1_Q : STD_LOGIC; 
  signal ALU_A_31_ALU_B_31_add_2_OUT_0_Q : STD_LOGIC; 
  signal ALU_RESULT_31_OBUF_99 : STD_LOGIC; 
  signal ALU_RESULT_30_OBUF_100 : STD_LOGIC; 
  signal ALU_RESULT_29_OBUF_101 : STD_LOGIC; 
  signal ALU_RESULT_28_OBUF_102 : STD_LOGIC; 
  signal ALU_RESULT_27_OBUF_103 : STD_LOGIC; 
  signal ALU_RESULT_26_OBUF_104 : STD_LOGIC; 
  signal ALU_RESULT_25_OBUF_105 : STD_LOGIC; 
  signal ALU_RESULT_24_OBUF_106 : STD_LOGIC; 
  signal ALU_RESULT_23_OBUF_107 : STD_LOGIC; 
  signal ALU_RESULT_22_OBUF_108 : STD_LOGIC; 
  signal ALU_RESULT_21_OBUF_109 : STD_LOGIC; 
  signal ALU_RESULT_20_OBUF_110 : STD_LOGIC; 
  signal ALU_RESULT_19_OBUF_111 : STD_LOGIC; 
  signal ALU_RESULT_18_OBUF_112 : STD_LOGIC; 
  signal ALU_RESULT_17_OBUF_113 : STD_LOGIC; 
  signal ALU_RESULT_16_OBUF_114 : STD_LOGIC; 
  signal ALU_RESULT_15_OBUF_115 : STD_LOGIC; 
  signal ALU_RESULT_14_OBUF_116 : STD_LOGIC; 
  signal ALU_RESULT_13_OBUF_117 : STD_LOGIC; 
  signal ALU_RESULT_12_OBUF_118 : STD_LOGIC; 
  signal ALU_RESULT_11_OBUF_119 : STD_LOGIC; 
  signal ALU_RESULT_10_OBUF_120 : STD_LOGIC; 
  signal ALU_RESULT_9_OBUF_121 : STD_LOGIC; 
  signal ALU_RESULT_8_OBUF_122 : STD_LOGIC; 
  signal ALU_RESULT_7_OBUF_123 : STD_LOGIC; 
  signal ALU_RESULT_6_OBUF_124 : STD_LOGIC; 
  signal ALU_RESULT_5_OBUF_125 : STD_LOGIC; 
  signal ALU_RESULT_4_OBUF_126 : STD_LOGIC; 
  signal ALU_RESULT_3_OBUF_127 : STD_LOGIC; 
  signal ALU_RESULT_2_OBUF_128 : STD_LOGIC; 
  signal ALU_RESULT_1_OBUF_129 : STD_LOGIC; 
  signal ALU_RESULT_0_OBUF_130 : STD_LOGIC; 
  signal ALU_ZERO_OBUF_131 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_0_Q_132 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_0_Q_133 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_1_Q_134 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_1_Q_135 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_2_Q_136 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_2_Q_137 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_3_Q_138 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_3_Q_139 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_4_Q_140 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_4_Q_141 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_5_Q_142 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_5_Q_143 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_6_Q_144 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_6_Q_145 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_7_Q_146 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_7_Q_147 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_8_Q_148 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_8_Q_149 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_9_Q_150 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_9_Q_151 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_10_Q_152 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_10_Q_153 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_11_Q_154 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_11_Q_155 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_12_Q_156 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_12_Q_157 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_13_Q_158 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_13_Q_159 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_14_Q_160 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_14_Q_161 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_15_Q_162 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_15_Q_163 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_16_Q_164 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_16_Q_165 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_17_Q_166 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_17_Q_167 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_18_Q_168 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_18_Q_169 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_19_Q_170 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_19_Q_171 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_20_Q_172 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_20_Q_173 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_21_Q_174 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_21_Q_175 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_22_Q_176 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_22_Q_177 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_23_Q_178 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_23_Q_179 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_24_Q_180 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_24_Q_181 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_25_Q_182 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_25_Q_183 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_26_Q_184 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_26_Q_185 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_27_Q_186 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_27_Q_187 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_28_Q_188 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_28_Q_189 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_29_Q_190 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_29_Q_191 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_30_Q_192 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_30_Q_193 : STD_LOGIC; 
  signal Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_31_Q_194 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => ALU_ZERO_OBUF_131
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_0_IBUF_34,
      I1 => ALU_B_0_IBUF_66,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_0_Q_132
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_0_Q : MUXCY
    port map (
      CI => ALU_ZERO_OBUF_131,
      DI => ALU_A_0_IBUF_34,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_0_Q_132,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_0_Q_133
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_0_Q : XORCY
    port map (
      CI => ALU_ZERO_OBUF_131,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_0_Q_132,
      O => ALU_A_31_ALU_B_31_add_2_OUT_0_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_1_IBUF_33,
      I1 => ALU_B_1_IBUF_65,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_1_Q_134
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_0_Q_133,
      DI => ALU_A_1_IBUF_33,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_1_Q_134,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_1_Q_135
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_0_Q_133,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_1_Q_134,
      O => ALU_A_31_ALU_B_31_add_2_OUT_1_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_2_IBUF_32,
      I1 => ALU_B_2_IBUF_64,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_2_Q_136
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_1_Q_135,
      DI => ALU_A_2_IBUF_32,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_2_Q_136,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_2_Q_137
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_1_Q_135,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_2_Q_136,
      O => ALU_A_31_ALU_B_31_add_2_OUT_2_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_3_IBUF_31,
      I1 => ALU_B_3_IBUF_63,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_3_Q_138
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_2_Q_137,
      DI => ALU_A_3_IBUF_31,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_3_Q_138,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_3_Q_139
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_2_Q_137,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_3_Q_138,
      O => ALU_A_31_ALU_B_31_add_2_OUT_3_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_4_IBUF_30,
      I1 => ALU_B_4_IBUF_62,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_4_Q_140
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_3_Q_139,
      DI => ALU_A_4_IBUF_30,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_4_Q_140,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_4_Q_141
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_3_Q_139,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_4_Q_140,
      O => ALU_A_31_ALU_B_31_add_2_OUT_4_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_5_IBUF_29,
      I1 => ALU_B_5_IBUF_61,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_5_Q_142
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_4_Q_141,
      DI => ALU_A_5_IBUF_29,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_5_Q_142,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_5_Q_143
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_4_Q_141,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_5_Q_142,
      O => ALU_A_31_ALU_B_31_add_2_OUT_5_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_6_IBUF_28,
      I1 => ALU_B_6_IBUF_60,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_6_Q_144
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_5_Q_143,
      DI => ALU_A_6_IBUF_28,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_6_Q_144,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_6_Q_145
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_5_Q_143,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_6_Q_144,
      O => ALU_A_31_ALU_B_31_add_2_OUT_6_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_7_IBUF_27,
      I1 => ALU_B_7_IBUF_59,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_7_Q_146
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_6_Q_145,
      DI => ALU_A_7_IBUF_27,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_7_Q_146,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_7_Q_147
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_6_Q_145,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_7_Q_146,
      O => ALU_A_31_ALU_B_31_add_2_OUT_7_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_8_IBUF_26,
      I1 => ALU_B_8_IBUF_58,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_8_Q_148
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_7_Q_147,
      DI => ALU_A_8_IBUF_26,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_8_Q_148,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_8_Q_149
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_7_Q_147,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_8_Q_148,
      O => ALU_A_31_ALU_B_31_add_2_OUT_8_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_9_IBUF_25,
      I1 => ALU_B_9_IBUF_57,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_9_Q_150
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_8_Q_149,
      DI => ALU_A_9_IBUF_25,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_9_Q_150,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_9_Q_151
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_8_Q_149,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_9_Q_150,
      O => ALU_A_31_ALU_B_31_add_2_OUT_9_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_10_IBUF_24,
      I1 => ALU_B_10_IBUF_56,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_10_Q_152
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_9_Q_151,
      DI => ALU_A_10_IBUF_24,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_10_Q_152,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_10_Q_153
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_9_Q_151,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_10_Q_152,
      O => ALU_A_31_ALU_B_31_add_2_OUT_10_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_11_IBUF_23,
      I1 => ALU_B_11_IBUF_55,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_11_Q_154
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_10_Q_153,
      DI => ALU_A_11_IBUF_23,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_11_Q_154,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_11_Q_155
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_10_Q_153,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_11_Q_154,
      O => ALU_A_31_ALU_B_31_add_2_OUT_11_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_12_IBUF_22,
      I1 => ALU_B_12_IBUF_54,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_12_Q_156
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_11_Q_155,
      DI => ALU_A_12_IBUF_22,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_12_Q_156,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_12_Q_157
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_11_Q_155,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_12_Q_156,
      O => ALU_A_31_ALU_B_31_add_2_OUT_12_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_13_IBUF_21,
      I1 => ALU_B_13_IBUF_53,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_13_Q_158
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_12_Q_157,
      DI => ALU_A_13_IBUF_21,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_13_Q_158,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_13_Q_159
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_12_Q_157,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_13_Q_158,
      O => ALU_A_31_ALU_B_31_add_2_OUT_13_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_14_IBUF_20,
      I1 => ALU_B_14_IBUF_52,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_14_Q_160
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_13_Q_159,
      DI => ALU_A_14_IBUF_20,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_14_Q_160,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_14_Q_161
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_13_Q_159,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_14_Q_160,
      O => ALU_A_31_ALU_B_31_add_2_OUT_14_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_15_IBUF_19,
      I1 => ALU_B_15_IBUF_51,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_15_Q_162
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_14_Q_161,
      DI => ALU_A_15_IBUF_19,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_15_Q_162,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_15_Q_163
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_14_Q_161,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_15_Q_162,
      O => ALU_A_31_ALU_B_31_add_2_OUT_15_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_16_IBUF_18,
      I1 => ALU_B_16_IBUF_50,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_16_Q_164
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_15_Q_163,
      DI => ALU_A_16_IBUF_18,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_16_Q_164,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_16_Q_165
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_15_Q_163,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_16_Q_164,
      O => ALU_A_31_ALU_B_31_add_2_OUT_16_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_17_IBUF_17,
      I1 => ALU_B_17_IBUF_49,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_17_Q_166
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_16_Q_165,
      DI => ALU_A_17_IBUF_17,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_17_Q_166,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_17_Q_167
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_16_Q_165,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_17_Q_166,
      O => ALU_A_31_ALU_B_31_add_2_OUT_17_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_18_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_18_IBUF_16,
      I1 => ALU_B_18_IBUF_48,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_18_Q_168
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_17_Q_167,
      DI => ALU_A_18_IBUF_16,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_18_Q_168,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_18_Q_169
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_17_Q_167,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_18_Q_168,
      O => ALU_A_31_ALU_B_31_add_2_OUT_18_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_19_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_19_IBUF_15,
      I1 => ALU_B_19_IBUF_47,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_19_Q_170
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_18_Q_169,
      DI => ALU_A_19_IBUF_15,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_19_Q_170,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_19_Q_171
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_18_Q_169,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_19_Q_170,
      O => ALU_A_31_ALU_B_31_add_2_OUT_19_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_20_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_20_IBUF_14,
      I1 => ALU_B_20_IBUF_46,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_20_Q_172
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_19_Q_171,
      DI => ALU_A_20_IBUF_14,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_20_Q_172,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_20_Q_173
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_19_Q_171,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_20_Q_172,
      O => ALU_A_31_ALU_B_31_add_2_OUT_20_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_21_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_21_IBUF_13,
      I1 => ALU_B_21_IBUF_45,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_21_Q_174
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_20_Q_173,
      DI => ALU_A_21_IBUF_13,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_21_Q_174,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_21_Q_175
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_20_Q_173,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_21_Q_174,
      O => ALU_A_31_ALU_B_31_add_2_OUT_21_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_22_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_22_IBUF_12,
      I1 => ALU_B_22_IBUF_44,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_22_Q_176
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_21_Q_175,
      DI => ALU_A_22_IBUF_12,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_22_Q_176,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_22_Q_177
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_21_Q_175,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_22_Q_176,
      O => ALU_A_31_ALU_B_31_add_2_OUT_22_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_23_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_23_IBUF_11,
      I1 => ALU_B_23_IBUF_43,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_23_Q_178
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_22_Q_177,
      DI => ALU_A_23_IBUF_11,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_23_Q_178,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_23_Q_179
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_22_Q_177,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_23_Q_178,
      O => ALU_A_31_ALU_B_31_add_2_OUT_23_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_24_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_24_IBUF_10,
      I1 => ALU_B_24_IBUF_42,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_24_Q_180
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_23_Q_179,
      DI => ALU_A_24_IBUF_10,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_24_Q_180,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_24_Q_181
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_23_Q_179,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_24_Q_180,
      O => ALU_A_31_ALU_B_31_add_2_OUT_24_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_25_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_25_IBUF_9,
      I1 => ALU_B_25_IBUF_41,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_25_Q_182
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_25_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_24_Q_181,
      DI => ALU_A_25_IBUF_9,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_25_Q_182,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_25_Q_183
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_24_Q_181,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_25_Q_182,
      O => ALU_A_31_ALU_B_31_add_2_OUT_25_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_26_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_26_IBUF_8,
      I1 => ALU_B_26_IBUF_40,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_26_Q_184
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_26_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_25_Q_183,
      DI => ALU_A_26_IBUF_8,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_26_Q_184,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_26_Q_185
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_26_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_25_Q_183,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_26_Q_184,
      O => ALU_A_31_ALU_B_31_add_2_OUT_26_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_27_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_27_IBUF_7,
      I1 => ALU_B_27_IBUF_39,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_27_Q_186
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_27_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_26_Q_185,
      DI => ALU_A_27_IBUF_7,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_27_Q_186,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_27_Q_187
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_27_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_26_Q_185,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_27_Q_186,
      O => ALU_A_31_ALU_B_31_add_2_OUT_27_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_28_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_28_IBUF_6,
      I1 => ALU_B_28_IBUF_38,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_28_Q_188
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_28_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_27_Q_187,
      DI => ALU_A_28_IBUF_6,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_28_Q_188,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_28_Q_189
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_28_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_27_Q_187,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_28_Q_188,
      O => ALU_A_31_ALU_B_31_add_2_OUT_28_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_29_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_29_IBUF_5,
      I1 => ALU_B_29_IBUF_37,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_29_Q_190
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_29_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_28_Q_189,
      DI => ALU_A_29_IBUF_5,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_29_Q_190,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_29_Q_191
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_29_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_28_Q_189,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_29_Q_190,
      O => ALU_A_31_ALU_B_31_add_2_OUT_29_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_30_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_30_IBUF_4,
      I1 => ALU_B_30_IBUF_36,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_30_Q_192
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_30_Q : MUXCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_29_Q_191,
      DI => ALU_A_30_IBUF_4,
      S => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_30_Q_192,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_30_Q_193
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_30_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_29_Q_191,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_30_Q_192,
      O => ALU_A_31_ALU_B_31_add_2_OUT_30_Q
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_31_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ALU_A_31_IBUF_3,
      I1 => ALU_B_31_IBUF_35,
      O => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_31_Q_194
    );
  Madd_ALU_A_31_ALU_B_31_add_2_OUT_xor_31_Q : XORCY
    port map (
      CI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_cy_30_Q_193,
      LI => Madd_ALU_A_31_ALU_B_31_add_2_OUT_lut_31_Q_194,
      O => ALU_A_31_ALU_B_31_add_2_OUT_31_Q
    );
  Mmux_ALU_RESULT110 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_0_IBUF_34,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_0_IBUF_66,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_0_Q,
      O => ALU_RESULT_0_OBUF_130
    );
  Mmux_ALU_RESULT101 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_18_IBUF_16,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_18_IBUF_48,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_18_Q,
      O => ALU_RESULT_18_OBUF_112
    );
  Mmux_ALU_RESULT111 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_19_IBUF_15,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_19_IBUF_47,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_19_Q,
      O => ALU_RESULT_19_OBUF_111
    );
  Mmux_ALU_RESULT121 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_1_IBUF_33,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_1_IBUF_65,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_1_Q,
      O => ALU_RESULT_1_OBUF_129
    );
  Mmux_ALU_RESULT131 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_20_IBUF_14,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_20_IBUF_46,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_20_Q,
      O => ALU_RESULT_20_OBUF_110
    );
  Mmux_ALU_RESULT141 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_21_IBUF_13,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_21_IBUF_45,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_21_Q,
      O => ALU_RESULT_21_OBUF_109
    );
  Mmux_ALU_RESULT151 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_22_IBUF_12,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_22_IBUF_44,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_22_Q,
      O => ALU_RESULT_22_OBUF_108
    );
  Mmux_ALU_RESULT161 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_23_IBUF_11,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_23_IBUF_43,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_23_Q,
      O => ALU_RESULT_23_OBUF_107
    );
  Mmux_ALU_RESULT171 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_24_IBUF_10,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_24_IBUF_42,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_24_Q,
      O => ALU_RESULT_24_OBUF_106
    );
  Mmux_ALU_RESULT181 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_25_IBUF_9,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_25_IBUF_41,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_25_Q,
      O => ALU_RESULT_25_OBUF_105
    );
  Mmux_ALU_RESULT191 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_26_IBUF_8,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_26_IBUF_40,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_26_Q,
      O => ALU_RESULT_26_OBUF_104
    );
  Mmux_ALU_RESULT210 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_10_IBUF_24,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_10_IBUF_56,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_10_Q,
      O => ALU_RESULT_10_OBUF_120
    );
  Mmux_ALU_RESULT201 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_27_IBUF_7,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_27_IBUF_39,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_27_Q,
      O => ALU_RESULT_27_OBUF_103
    );
  Mmux_ALU_RESULT211 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_28_IBUF_6,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_28_IBUF_38,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_28_Q,
      O => ALU_RESULT_28_OBUF_102
    );
  Mmux_ALU_RESULT221 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_29_IBUF_5,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_29_IBUF_37,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_29_Q,
      O => ALU_RESULT_29_OBUF_101
    );
  Mmux_ALU_RESULT231 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_2_IBUF_32,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_2_IBUF_64,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_2_Q,
      O => ALU_RESULT_2_OBUF_128
    );
  Mmux_ALU_RESULT241 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_30_IBUF_4,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_30_IBUF_36,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_30_Q,
      O => ALU_RESULT_30_OBUF_100
    );
  Mmux_ALU_RESULT251 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_31_IBUF_3,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_31_IBUF_35,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_31_Q,
      O => ALU_RESULT_31_OBUF_99
    );
  Mmux_ALU_RESULT261 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_3_IBUF_31,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_3_IBUF_63,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_3_Q,
      O => ALU_RESULT_3_OBUF_127
    );
  Mmux_ALU_RESULT271 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_4_IBUF_30,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_4_IBUF_62,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_4_Q,
      O => ALU_RESULT_4_OBUF_126
    );
  Mmux_ALU_RESULT281 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_5_IBUF_29,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_5_IBUF_61,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_5_Q,
      O => ALU_RESULT_5_OBUF_125
    );
  Mmux_ALU_RESULT291 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_6_IBUF_28,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_6_IBUF_60,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_6_Q,
      O => ALU_RESULT_6_OBUF_124
    );
  Mmux_ALU_RESULT33 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_11_IBUF_23,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_11_IBUF_55,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_11_Q,
      O => ALU_RESULT_11_OBUF_119
    );
  Mmux_ALU_RESULT301 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_7_IBUF_27,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_7_IBUF_59,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_7_Q,
      O => ALU_RESULT_7_OBUF_123
    );
  Mmux_ALU_RESULT311 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_8_IBUF_26,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_8_IBUF_58,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_8_Q,
      O => ALU_RESULT_8_OBUF_122
    );
  Mmux_ALU_RESULT321 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_9_IBUF_25,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_9_IBUF_57,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_9_Q,
      O => ALU_RESULT_9_OBUF_121
    );
  Mmux_ALU_RESULT41 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_12_IBUF_22,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_12_IBUF_54,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_12_Q,
      O => ALU_RESULT_12_OBUF_118
    );
  Mmux_ALU_RESULT51 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_13_IBUF_21,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_13_IBUF_53,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_13_Q,
      O => ALU_RESULT_13_OBUF_117
    );
  Mmux_ALU_RESULT61 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_14_IBUF_20,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_14_IBUF_52,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_14_Q,
      O => ALU_RESULT_14_OBUF_116
    );
  Mmux_ALU_RESULT71 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_15_IBUF_19,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_15_IBUF_51,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_15_Q,
      O => ALU_RESULT_15_OBUF_115
    );
  Mmux_ALU_RESULT81 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_16_IBUF_18,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_16_IBUF_50,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_16_Q,
      O => ALU_RESULT_16_OBUF_114
    );
  Mmux_ALU_RESULT91 : LUT6
    generic map(
      INIT => X"AABABBA8AABA88A8"
    )
    port map (
      I0 => ALU_A_17_IBUF_17,
      I1 => ALU_CNTRL_2_IBUF_0,
      I2 => ALU_B_17_IBUF_49,
      I3 => ALU_CNTRL_1_IBUF_1,
      I4 => ALU_CNTRL_0_IBUF_2,
      I5 => ALU_A_31_ALU_B_31_add_2_OUT_17_Q,
      O => ALU_RESULT_17_OBUF_113
    );
  ALU_CNTRL_2_IBUF : IBUF
    port map (
      I => ALU_CNTRL(2),
      O => ALU_CNTRL_2_IBUF_0
    );
  ALU_CNTRL_1_IBUF : IBUF
    port map (
      I => ALU_CNTRL(1),
      O => ALU_CNTRL_1_IBUF_1
    );
  ALU_CNTRL_0_IBUF : IBUF
    port map (
      I => ALU_CNTRL(0),
      O => ALU_CNTRL_0_IBUF_2
    );
  ALU_A_31_IBUF : IBUF
    port map (
      I => ALU_A(31),
      O => ALU_A_31_IBUF_3
    );
  ALU_A_30_IBUF : IBUF
    port map (
      I => ALU_A(30),
      O => ALU_A_30_IBUF_4
    );
  ALU_A_29_IBUF : IBUF
    port map (
      I => ALU_A(29),
      O => ALU_A_29_IBUF_5
    );
  ALU_A_28_IBUF : IBUF
    port map (
      I => ALU_A(28),
      O => ALU_A_28_IBUF_6
    );
  ALU_A_27_IBUF : IBUF
    port map (
      I => ALU_A(27),
      O => ALU_A_27_IBUF_7
    );
  ALU_A_26_IBUF : IBUF
    port map (
      I => ALU_A(26),
      O => ALU_A_26_IBUF_8
    );
  ALU_A_25_IBUF : IBUF
    port map (
      I => ALU_A(25),
      O => ALU_A_25_IBUF_9
    );
  ALU_A_24_IBUF : IBUF
    port map (
      I => ALU_A(24),
      O => ALU_A_24_IBUF_10
    );
  ALU_A_23_IBUF : IBUF
    port map (
      I => ALU_A(23),
      O => ALU_A_23_IBUF_11
    );
  ALU_A_22_IBUF : IBUF
    port map (
      I => ALU_A(22),
      O => ALU_A_22_IBUF_12
    );
  ALU_A_21_IBUF : IBUF
    port map (
      I => ALU_A(21),
      O => ALU_A_21_IBUF_13
    );
  ALU_A_20_IBUF : IBUF
    port map (
      I => ALU_A(20),
      O => ALU_A_20_IBUF_14
    );
  ALU_A_19_IBUF : IBUF
    port map (
      I => ALU_A(19),
      O => ALU_A_19_IBUF_15
    );
  ALU_A_18_IBUF : IBUF
    port map (
      I => ALU_A(18),
      O => ALU_A_18_IBUF_16
    );
  ALU_A_17_IBUF : IBUF
    port map (
      I => ALU_A(17),
      O => ALU_A_17_IBUF_17
    );
  ALU_A_16_IBUF : IBUF
    port map (
      I => ALU_A(16),
      O => ALU_A_16_IBUF_18
    );
  ALU_A_15_IBUF : IBUF
    port map (
      I => ALU_A(15),
      O => ALU_A_15_IBUF_19
    );
  ALU_A_14_IBUF : IBUF
    port map (
      I => ALU_A(14),
      O => ALU_A_14_IBUF_20
    );
  ALU_A_13_IBUF : IBUF
    port map (
      I => ALU_A(13),
      O => ALU_A_13_IBUF_21
    );
  ALU_A_12_IBUF : IBUF
    port map (
      I => ALU_A(12),
      O => ALU_A_12_IBUF_22
    );
  ALU_A_11_IBUF : IBUF
    port map (
      I => ALU_A(11),
      O => ALU_A_11_IBUF_23
    );
  ALU_A_10_IBUF : IBUF
    port map (
      I => ALU_A(10),
      O => ALU_A_10_IBUF_24
    );
  ALU_A_9_IBUF : IBUF
    port map (
      I => ALU_A(9),
      O => ALU_A_9_IBUF_25
    );
  ALU_A_8_IBUF : IBUF
    port map (
      I => ALU_A(8),
      O => ALU_A_8_IBUF_26
    );
  ALU_A_7_IBUF : IBUF
    port map (
      I => ALU_A(7),
      O => ALU_A_7_IBUF_27
    );
  ALU_A_6_IBUF : IBUF
    port map (
      I => ALU_A(6),
      O => ALU_A_6_IBUF_28
    );
  ALU_A_5_IBUF : IBUF
    port map (
      I => ALU_A(5),
      O => ALU_A_5_IBUF_29
    );
  ALU_A_4_IBUF : IBUF
    port map (
      I => ALU_A(4),
      O => ALU_A_4_IBUF_30
    );
  ALU_A_3_IBUF : IBUF
    port map (
      I => ALU_A(3),
      O => ALU_A_3_IBUF_31
    );
  ALU_A_2_IBUF : IBUF
    port map (
      I => ALU_A(2),
      O => ALU_A_2_IBUF_32
    );
  ALU_A_1_IBUF : IBUF
    port map (
      I => ALU_A(1),
      O => ALU_A_1_IBUF_33
    );
  ALU_A_0_IBUF : IBUF
    port map (
      I => ALU_A(0),
      O => ALU_A_0_IBUF_34
    );
  ALU_B_31_IBUF : IBUF
    port map (
      I => ALU_B(31),
      O => ALU_B_31_IBUF_35
    );
  ALU_B_30_IBUF : IBUF
    port map (
      I => ALU_B(30),
      O => ALU_B_30_IBUF_36
    );
  ALU_B_29_IBUF : IBUF
    port map (
      I => ALU_B(29),
      O => ALU_B_29_IBUF_37
    );
  ALU_B_28_IBUF : IBUF
    port map (
      I => ALU_B(28),
      O => ALU_B_28_IBUF_38
    );
  ALU_B_27_IBUF : IBUF
    port map (
      I => ALU_B(27),
      O => ALU_B_27_IBUF_39
    );
  ALU_B_26_IBUF : IBUF
    port map (
      I => ALU_B(26),
      O => ALU_B_26_IBUF_40
    );
  ALU_B_25_IBUF : IBUF
    port map (
      I => ALU_B(25),
      O => ALU_B_25_IBUF_41
    );
  ALU_B_24_IBUF : IBUF
    port map (
      I => ALU_B(24),
      O => ALU_B_24_IBUF_42
    );
  ALU_B_23_IBUF : IBUF
    port map (
      I => ALU_B(23),
      O => ALU_B_23_IBUF_43
    );
  ALU_B_22_IBUF : IBUF
    port map (
      I => ALU_B(22),
      O => ALU_B_22_IBUF_44
    );
  ALU_B_21_IBUF : IBUF
    port map (
      I => ALU_B(21),
      O => ALU_B_21_IBUF_45
    );
  ALU_B_20_IBUF : IBUF
    port map (
      I => ALU_B(20),
      O => ALU_B_20_IBUF_46
    );
  ALU_B_19_IBUF : IBUF
    port map (
      I => ALU_B(19),
      O => ALU_B_19_IBUF_47
    );
  ALU_B_18_IBUF : IBUF
    port map (
      I => ALU_B(18),
      O => ALU_B_18_IBUF_48
    );
  ALU_B_17_IBUF : IBUF
    port map (
      I => ALU_B(17),
      O => ALU_B_17_IBUF_49
    );
  ALU_B_16_IBUF : IBUF
    port map (
      I => ALU_B(16),
      O => ALU_B_16_IBUF_50
    );
  ALU_B_15_IBUF : IBUF
    port map (
      I => ALU_B(15),
      O => ALU_B_15_IBUF_51
    );
  ALU_B_14_IBUF : IBUF
    port map (
      I => ALU_B(14),
      O => ALU_B_14_IBUF_52
    );
  ALU_B_13_IBUF : IBUF
    port map (
      I => ALU_B(13),
      O => ALU_B_13_IBUF_53
    );
  ALU_B_12_IBUF : IBUF
    port map (
      I => ALU_B(12),
      O => ALU_B_12_IBUF_54
    );
  ALU_B_11_IBUF : IBUF
    port map (
      I => ALU_B(11),
      O => ALU_B_11_IBUF_55
    );
  ALU_B_10_IBUF : IBUF
    port map (
      I => ALU_B(10),
      O => ALU_B_10_IBUF_56
    );
  ALU_B_9_IBUF : IBUF
    port map (
      I => ALU_B(9),
      O => ALU_B_9_IBUF_57
    );
  ALU_B_8_IBUF : IBUF
    port map (
      I => ALU_B(8),
      O => ALU_B_8_IBUF_58
    );
  ALU_B_7_IBUF : IBUF
    port map (
      I => ALU_B(7),
      O => ALU_B_7_IBUF_59
    );
  ALU_B_6_IBUF : IBUF
    port map (
      I => ALU_B(6),
      O => ALU_B_6_IBUF_60
    );
  ALU_B_5_IBUF : IBUF
    port map (
      I => ALU_B(5),
      O => ALU_B_5_IBUF_61
    );
  ALU_B_4_IBUF : IBUF
    port map (
      I => ALU_B(4),
      O => ALU_B_4_IBUF_62
    );
  ALU_B_3_IBUF : IBUF
    port map (
      I => ALU_B(3),
      O => ALU_B_3_IBUF_63
    );
  ALU_B_2_IBUF : IBUF
    port map (
      I => ALU_B(2),
      O => ALU_B_2_IBUF_64
    );
  ALU_B_1_IBUF : IBUF
    port map (
      I => ALU_B(1),
      O => ALU_B_1_IBUF_65
    );
  ALU_B_0_IBUF : IBUF
    port map (
      I => ALU_B(0),
      O => ALU_B_0_IBUF_66
    );
  ALU_RESULT_31_OBUF : OBUF
    port map (
      I => ALU_RESULT_31_OBUF_99,
      O => ALU_RESULT(31)
    );
  ALU_RESULT_30_OBUF : OBUF
    port map (
      I => ALU_RESULT_30_OBUF_100,
      O => ALU_RESULT(30)
    );
  ALU_RESULT_29_OBUF : OBUF
    port map (
      I => ALU_RESULT_29_OBUF_101,
      O => ALU_RESULT(29)
    );
  ALU_RESULT_28_OBUF : OBUF
    port map (
      I => ALU_RESULT_28_OBUF_102,
      O => ALU_RESULT(28)
    );
  ALU_RESULT_27_OBUF : OBUF
    port map (
      I => ALU_RESULT_27_OBUF_103,
      O => ALU_RESULT(27)
    );
  ALU_RESULT_26_OBUF : OBUF
    port map (
      I => ALU_RESULT_26_OBUF_104,
      O => ALU_RESULT(26)
    );
  ALU_RESULT_25_OBUF : OBUF
    port map (
      I => ALU_RESULT_25_OBUF_105,
      O => ALU_RESULT(25)
    );
  ALU_RESULT_24_OBUF : OBUF
    port map (
      I => ALU_RESULT_24_OBUF_106,
      O => ALU_RESULT(24)
    );
  ALU_RESULT_23_OBUF : OBUF
    port map (
      I => ALU_RESULT_23_OBUF_107,
      O => ALU_RESULT(23)
    );
  ALU_RESULT_22_OBUF : OBUF
    port map (
      I => ALU_RESULT_22_OBUF_108,
      O => ALU_RESULT(22)
    );
  ALU_RESULT_21_OBUF : OBUF
    port map (
      I => ALU_RESULT_21_OBUF_109,
      O => ALU_RESULT(21)
    );
  ALU_RESULT_20_OBUF : OBUF
    port map (
      I => ALU_RESULT_20_OBUF_110,
      O => ALU_RESULT(20)
    );
  ALU_RESULT_19_OBUF : OBUF
    port map (
      I => ALU_RESULT_19_OBUF_111,
      O => ALU_RESULT(19)
    );
  ALU_RESULT_18_OBUF : OBUF
    port map (
      I => ALU_RESULT_18_OBUF_112,
      O => ALU_RESULT(18)
    );
  ALU_RESULT_17_OBUF : OBUF
    port map (
      I => ALU_RESULT_17_OBUF_113,
      O => ALU_RESULT(17)
    );
  ALU_RESULT_16_OBUF : OBUF
    port map (
      I => ALU_RESULT_16_OBUF_114,
      O => ALU_RESULT(16)
    );
  ALU_RESULT_15_OBUF : OBUF
    port map (
      I => ALU_RESULT_15_OBUF_115,
      O => ALU_RESULT(15)
    );
  ALU_RESULT_14_OBUF : OBUF
    port map (
      I => ALU_RESULT_14_OBUF_116,
      O => ALU_RESULT(14)
    );
  ALU_RESULT_13_OBUF : OBUF
    port map (
      I => ALU_RESULT_13_OBUF_117,
      O => ALU_RESULT(13)
    );
  ALU_RESULT_12_OBUF : OBUF
    port map (
      I => ALU_RESULT_12_OBUF_118,
      O => ALU_RESULT(12)
    );
  ALU_RESULT_11_OBUF : OBUF
    port map (
      I => ALU_RESULT_11_OBUF_119,
      O => ALU_RESULT(11)
    );
  ALU_RESULT_10_OBUF : OBUF
    port map (
      I => ALU_RESULT_10_OBUF_120,
      O => ALU_RESULT(10)
    );
  ALU_RESULT_9_OBUF : OBUF
    port map (
      I => ALU_RESULT_9_OBUF_121,
      O => ALU_RESULT(9)
    );
  ALU_RESULT_8_OBUF : OBUF
    port map (
      I => ALU_RESULT_8_OBUF_122,
      O => ALU_RESULT(8)
    );
  ALU_RESULT_7_OBUF : OBUF
    port map (
      I => ALU_RESULT_7_OBUF_123,
      O => ALU_RESULT(7)
    );
  ALU_RESULT_6_OBUF : OBUF
    port map (
      I => ALU_RESULT_6_OBUF_124,
      O => ALU_RESULT(6)
    );
  ALU_RESULT_5_OBUF : OBUF
    port map (
      I => ALU_RESULT_5_OBUF_125,
      O => ALU_RESULT(5)
    );
  ALU_RESULT_4_OBUF : OBUF
    port map (
      I => ALU_RESULT_4_OBUF_126,
      O => ALU_RESULT(4)
    );
  ALU_RESULT_3_OBUF : OBUF
    port map (
      I => ALU_RESULT_3_OBUF_127,
      O => ALU_RESULT(3)
    );
  ALU_RESULT_2_OBUF : OBUF
    port map (
      I => ALU_RESULT_2_OBUF_128,
      O => ALU_RESULT(2)
    );
  ALU_RESULT_1_OBUF : OBUF
    port map (
      I => ALU_RESULT_1_OBUF_129,
      O => ALU_RESULT(1)
    );
  ALU_RESULT_0_OBUF : OBUF
    port map (
      I => ALU_RESULT_0_OBUF_130,
      O => ALU_RESULT(0)
    );
  ALU_ZERO_OBUF : OBUF
    port map (
      I => ALU_ZERO_OBUF_131,
      O => ALU_ZERO
    );

end Structure;

