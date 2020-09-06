--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RAM_synthesis.vhd
-- /___/   /\     Timestamp: Sun Sep 06 13:06:54 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm RAM -w -dir netgen/synthesis -ofmt vhdl -sim RAM.ngc RAM_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: RAM.ngc
-- Output file	: \\vboxsvr\te2031\lab-repo\Practica3\netgen\synthesis\RAM_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: RAM
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

entity RAM is
  port (
    ENABLE : in STD_LOGIC := 'X'; 
    WRITE_ENABLE : in STD_LOGIC := 'X'; 
    READ_ENABLE : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    RW_ADDRESS : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    WRITE_DATA : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    READ_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end RAM;

architecture Structure of RAM is
  signal RW_ADDRESS_6_IBUF_0 : STD_LOGIC; 
  signal RW_ADDRESS_5_IBUF_1 : STD_LOGIC; 
  signal RW_ADDRESS_4_IBUF_2 : STD_LOGIC; 
  signal RW_ADDRESS_3_IBUF_3 : STD_LOGIC; 
  signal RW_ADDRESS_2_IBUF_4 : STD_LOGIC; 
  signal WRITE_DATA_31_IBUF_5 : STD_LOGIC; 
  signal WRITE_DATA_30_IBUF_6 : STD_LOGIC; 
  signal WRITE_DATA_29_IBUF_7 : STD_LOGIC; 
  signal WRITE_DATA_28_IBUF_8 : STD_LOGIC; 
  signal WRITE_DATA_27_IBUF_9 : STD_LOGIC; 
  signal WRITE_DATA_26_IBUF_10 : STD_LOGIC; 
  signal WRITE_DATA_25_IBUF_11 : STD_LOGIC; 
  signal WRITE_DATA_24_IBUF_12 : STD_LOGIC; 
  signal WRITE_DATA_23_IBUF_13 : STD_LOGIC; 
  signal WRITE_DATA_22_IBUF_14 : STD_LOGIC; 
  signal WRITE_DATA_21_IBUF_15 : STD_LOGIC; 
  signal WRITE_DATA_20_IBUF_16 : STD_LOGIC; 
  signal WRITE_DATA_19_IBUF_17 : STD_LOGIC; 
  signal WRITE_DATA_18_IBUF_18 : STD_LOGIC; 
  signal WRITE_DATA_17_IBUF_19 : STD_LOGIC; 
  signal WRITE_DATA_16_IBUF_20 : STD_LOGIC; 
  signal WRITE_DATA_15_IBUF_21 : STD_LOGIC; 
  signal WRITE_DATA_14_IBUF_22 : STD_LOGIC; 
  signal WRITE_DATA_13_IBUF_23 : STD_LOGIC; 
  signal WRITE_DATA_12_IBUF_24 : STD_LOGIC; 
  signal WRITE_DATA_11_IBUF_25 : STD_LOGIC; 
  signal WRITE_DATA_10_IBUF_26 : STD_LOGIC; 
  signal WRITE_DATA_9_IBUF_27 : STD_LOGIC; 
  signal WRITE_DATA_8_IBUF_28 : STD_LOGIC; 
  signal WRITE_DATA_7_IBUF_29 : STD_LOGIC; 
  signal WRITE_DATA_6_IBUF_30 : STD_LOGIC; 
  signal WRITE_DATA_5_IBUF_31 : STD_LOGIC; 
  signal WRITE_DATA_4_IBUF_32 : STD_LOGIC; 
  signal WRITE_DATA_3_IBUF_33 : STD_LOGIC; 
  signal WRITE_DATA_2_IBUF_34 : STD_LOGIC; 
  signal WRITE_DATA_1_IBUF_35 : STD_LOGIC; 
  signal WRITE_DATA_0_IBUF_36 : STD_LOGIC; 
  signal ENABLE_IBUF_BUFG_37 : STD_LOGIC; 
  signal WRITE_ENABLE_IBUF_38 : STD_LOGIC; 
  signal READ_ENABLE_IBUF_39 : STD_LOGIC; 
  signal CLK_BUFGP_40 : STD_LOGIC; 
  signal READ_DATA_30_73 : STD_LOGIC; 
  signal READ_DATA_29_74 : STD_LOGIC; 
  signal READ_DATA_28_75 : STD_LOGIC; 
  signal READ_DATA_27_76 : STD_LOGIC; 
  signal READ_DATA_26_77 : STD_LOGIC; 
  signal READ_DATA_25_78 : STD_LOGIC; 
  signal READ_DATA_24_79 : STD_LOGIC; 
  signal READ_DATA_23_80 : STD_LOGIC; 
  signal READ_DATA_22_81 : STD_LOGIC; 
  signal READ_DATA_21_82 : STD_LOGIC; 
  signal READ_DATA_20_83 : STD_LOGIC; 
  signal READ_DATA_19_84 : STD_LOGIC; 
  signal READ_DATA_18_85 : STD_LOGIC; 
  signal READ_DATA_17_86 : STD_LOGIC; 
  signal READ_DATA_16_87 : STD_LOGIC; 
  signal READ_DATA_15_88 : STD_LOGIC; 
  signal READ_DATA_14_89 : STD_LOGIC; 
  signal READ_DATA_13_90 : STD_LOGIC; 
  signal READ_DATA_12_91 : STD_LOGIC; 
  signal READ_DATA_11_92 : STD_LOGIC; 
  signal READ_DATA_10_93 : STD_LOGIC; 
  signal READ_DATA_9_94 : STD_LOGIC; 
  signal READ_DATA_8_95 : STD_LOGIC; 
  signal READ_DATA_7_96 : STD_LOGIC; 
  signal READ_DATA_6_97 : STD_LOGIC; 
  signal READ_DATA_5_98 : STD_LOGIC; 
  signal READ_DATA_4_99 : STD_LOGIC; 
  signal READ_DATA_3_100 : STD_LOGIC; 
  signal READ_DATA_2_101 : STD_LOGIC; 
  signal READ_DATA_1_102 : STD_LOGIC; 
  signal READ_DATA_0_103 : STD_LOGIC; 
  signal READ_DATA_31_104 : STD_LOGIC; 
  signal READ_ENABLE_READ_ENABLE_OR_1_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0001_MUX_37_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0002_MUX_40_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0003_MUX_43_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0004_MUX_46_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0005_MUX_49_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0006_MUX_52_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0007_MUX_55_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0008_MUX_58_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0009_MUX_61_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0010_MUX_64_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0011_MUX_67_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0012_MUX_70_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0013_MUX_73_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0014_MUX_76_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0015_MUX_79_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0016_MUX_82_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0017_MUX_85_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0018_MUX_88_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0019_MUX_91_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0020_MUX_94_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0021_MUX_97_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0022_MUX_100_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0023_MUX_103_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0024_MUX_106_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0025_MUX_109_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0026_MUX_112_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0027_MUX_115_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0028_MUX_118_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0029_MUX_121_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0030_MUX_124_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0031_MUX_127_o : STD_LOGIC; 
  signal READ_DATA_31_BUS_0032_MUX_130_o : STD_LOGIC; 
  signal READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0 : STD_LOGIC; 
  signal CLK_inv : STD_LOGIC; 
  signal ENABLE_IBUF_213 : STD_LOGIC; 
  signal Q_n0080 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  READ_DATA_29 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0003_MUX_43_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_29_74
    );
  READ_DATA_30 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0002_MUX_40_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_30_73
    );
  READ_DATA_28 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0004_MUX_46_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_28_75
    );
  READ_DATA_27 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0005_MUX_49_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_27_76
    );
  READ_DATA_26 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0006_MUX_52_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_26_77
    );
  READ_DATA_25 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0007_MUX_55_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_25_78
    );
  READ_DATA_24 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0008_MUX_58_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_24_79
    );
  READ_DATA_23 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0009_MUX_61_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_23_80
    );
  READ_DATA_22 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0010_MUX_64_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_22_81
    );
  READ_DATA_21 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0011_MUX_67_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_21_82
    );
  READ_DATA_20 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0012_MUX_70_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_20_83
    );
  READ_DATA_19 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0013_MUX_73_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_19_84
    );
  READ_DATA_18 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0014_MUX_76_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_18_85
    );
  READ_DATA_17 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0015_MUX_79_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_17_86
    );
  READ_DATA_16 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0016_MUX_82_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_16_87
    );
  READ_DATA_15 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0017_MUX_85_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_15_88
    );
  READ_DATA_14 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0018_MUX_88_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_14_89
    );
  READ_DATA_13 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0019_MUX_91_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_13_90
    );
  READ_DATA_12 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0020_MUX_94_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_12_91
    );
  READ_DATA_11 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0021_MUX_97_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_11_92
    );
  READ_DATA_10 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0022_MUX_100_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_10_93
    );
  READ_DATA_9 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0023_MUX_103_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_9_94
    );
  READ_DATA_8 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0024_MUX_106_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_8_95
    );
  READ_DATA_7 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0025_MUX_109_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_7_96
    );
  READ_DATA_6 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0026_MUX_112_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_6_97
    );
  READ_DATA_5 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0027_MUX_115_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_5_98
    );
  READ_DATA_4 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0028_MUX_118_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_4_99
    );
  READ_DATA_3 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0029_MUX_121_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_3_100
    );
  READ_DATA_2 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0030_MUX_124_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_2_101
    );
  READ_DATA_1 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0031_MUX_127_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_1_102
    );
  READ_DATA_0 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0032_MUX_130_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_0_103
    );
  READ_DATA_31 : LDE_1
    port map (
      D => READ_DATA_31_BUS_0001_MUX_37_o,
      G => ENABLE_IBUF_BUFG_37,
      GE => READ_ENABLE_READ_ENABLE_OR_1_o,
      Q => READ_DATA_31_104
    );
  Mram_RAM_DATA1 : RAM32X1S
    generic map(
      INIT => X"00000005"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_0_IBUF_36,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(0)
    );
  Mram_RAM_DATA2 : RAM32X1S
    generic map(
      INIT => X"00000006"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_1_IBUF_35,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(1)
    );
  Mram_RAM_DATA3 : RAM32X1S
    generic map(
      INIT => X"00000008"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_2_IBUF_34,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(2)
    );
  Mram_RAM_DATA4 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_3_IBUF_33,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(3)
    );
  Mram_RAM_DATA5 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_4_IBUF_32,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(4)
    );
  Mram_RAM_DATA6 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_5_IBUF_31,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(5)
    );
  Mram_RAM_DATA7 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_6_IBUF_30,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(6)
    );
  Mram_RAM_DATA8 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_7_IBUF_29,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(7)
    );
  Mram_RAM_DATA9 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_8_IBUF_28,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(8)
    );
  Mram_RAM_DATA10 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_9_IBUF_27,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(9)
    );
  Mram_RAM_DATA11 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_10_IBUF_26,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(10)
    );
  Mram_RAM_DATA12 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_11_IBUF_25,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(11)
    );
  Mram_RAM_DATA13 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_12_IBUF_24,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(12)
    );
  Mram_RAM_DATA14 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_13_IBUF_23,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(13)
    );
  Mram_RAM_DATA15 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_14_IBUF_22,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(14)
    );
  Mram_RAM_DATA16 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_15_IBUF_21,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(15)
    );
  Mram_RAM_DATA17 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_16_IBUF_20,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(16)
    );
  Mram_RAM_DATA18 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_17_IBUF_19,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(17)
    );
  Mram_RAM_DATA19 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_18_IBUF_18,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(18)
    );
  Mram_RAM_DATA20 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_19_IBUF_17,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(19)
    );
  Mram_RAM_DATA21 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_20_IBUF_16,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(20)
    );
  Mram_RAM_DATA22 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_21_IBUF_15,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(21)
    );
  Mram_RAM_DATA23 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_22_IBUF_14,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(22)
    );
  Mram_RAM_DATA24 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_23_IBUF_13,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(23)
    );
  Mram_RAM_DATA25 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_24_IBUF_12,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(24)
    );
  Mram_RAM_DATA26 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_25_IBUF_11,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(25)
    );
  Mram_RAM_DATA27 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_26_IBUF_10,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(26)
    );
  Mram_RAM_DATA28 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_27_IBUF_9,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(27)
    );
  Mram_RAM_DATA29 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_28_IBUF_8,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(28)
    );
  Mram_RAM_DATA30 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_29_IBUF_7,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(29)
    );
  Mram_RAM_DATA31 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_30_IBUF_6,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(30)
    );
  Mram_RAM_DATA32 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => RW_ADDRESS_2_IBUF_4,
      A1 => RW_ADDRESS_3_IBUF_3,
      A2 => RW_ADDRESS_4_IBUF_2,
      A3 => RW_ADDRESS_5_IBUF_1,
      A4 => RW_ADDRESS_6_IBUF_0,
      D => WRITE_DATA_31_IBUF_5,
      WCLK => CLK_inv,
      WE => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0,
      O => Q_n0080(31)
    );
  READ_ENABLE_READ_ENABLE_OR_1_o1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => READ_ENABLE_IBUF_39,
      I1 => WRITE_ENABLE_IBUF_38,
      O => READ_ENABLE_READ_ENABLE_OR_1_o
    );
  READ_ENABLE_WRITE_ENABLE_AND_2_o_01 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => ENABLE_IBUF_213,
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_ENABLE_WRITE_ENABLE_AND_2_o_0_0
    );
  ENABLE_IBUF : IBUF
    port map (
      I => ENABLE,
      O => ENABLE_IBUF_213
    );
  RW_ADDRESS_6_IBUF : IBUF
    port map (
      I => RW_ADDRESS(6),
      O => RW_ADDRESS_6_IBUF_0
    );
  RW_ADDRESS_5_IBUF : IBUF
    port map (
      I => RW_ADDRESS(5),
      O => RW_ADDRESS_5_IBUF_1
    );
  RW_ADDRESS_4_IBUF : IBUF
    port map (
      I => RW_ADDRESS(4),
      O => RW_ADDRESS_4_IBUF_2
    );
  RW_ADDRESS_3_IBUF : IBUF
    port map (
      I => RW_ADDRESS(3),
      O => RW_ADDRESS_3_IBUF_3
    );
  RW_ADDRESS_2_IBUF : IBUF
    port map (
      I => RW_ADDRESS(2),
      O => RW_ADDRESS_2_IBUF_4
    );
  WRITE_DATA_31_IBUF : IBUF
    port map (
      I => WRITE_DATA(31),
      O => WRITE_DATA_31_IBUF_5
    );
  WRITE_DATA_30_IBUF : IBUF
    port map (
      I => WRITE_DATA(30),
      O => WRITE_DATA_30_IBUF_6
    );
  WRITE_DATA_29_IBUF : IBUF
    port map (
      I => WRITE_DATA(29),
      O => WRITE_DATA_29_IBUF_7
    );
  WRITE_DATA_28_IBUF : IBUF
    port map (
      I => WRITE_DATA(28),
      O => WRITE_DATA_28_IBUF_8
    );
  WRITE_DATA_27_IBUF : IBUF
    port map (
      I => WRITE_DATA(27),
      O => WRITE_DATA_27_IBUF_9
    );
  WRITE_DATA_26_IBUF : IBUF
    port map (
      I => WRITE_DATA(26),
      O => WRITE_DATA_26_IBUF_10
    );
  WRITE_DATA_25_IBUF : IBUF
    port map (
      I => WRITE_DATA(25),
      O => WRITE_DATA_25_IBUF_11
    );
  WRITE_DATA_24_IBUF : IBUF
    port map (
      I => WRITE_DATA(24),
      O => WRITE_DATA_24_IBUF_12
    );
  WRITE_DATA_23_IBUF : IBUF
    port map (
      I => WRITE_DATA(23),
      O => WRITE_DATA_23_IBUF_13
    );
  WRITE_DATA_22_IBUF : IBUF
    port map (
      I => WRITE_DATA(22),
      O => WRITE_DATA_22_IBUF_14
    );
  WRITE_DATA_21_IBUF : IBUF
    port map (
      I => WRITE_DATA(21),
      O => WRITE_DATA_21_IBUF_15
    );
  WRITE_DATA_20_IBUF : IBUF
    port map (
      I => WRITE_DATA(20),
      O => WRITE_DATA_20_IBUF_16
    );
  WRITE_DATA_19_IBUF : IBUF
    port map (
      I => WRITE_DATA(19),
      O => WRITE_DATA_19_IBUF_17
    );
  WRITE_DATA_18_IBUF : IBUF
    port map (
      I => WRITE_DATA(18),
      O => WRITE_DATA_18_IBUF_18
    );
  WRITE_DATA_17_IBUF : IBUF
    port map (
      I => WRITE_DATA(17),
      O => WRITE_DATA_17_IBUF_19
    );
  WRITE_DATA_16_IBUF : IBUF
    port map (
      I => WRITE_DATA(16),
      O => WRITE_DATA_16_IBUF_20
    );
  WRITE_DATA_15_IBUF : IBUF
    port map (
      I => WRITE_DATA(15),
      O => WRITE_DATA_15_IBUF_21
    );
  WRITE_DATA_14_IBUF : IBUF
    port map (
      I => WRITE_DATA(14),
      O => WRITE_DATA_14_IBUF_22
    );
  WRITE_DATA_13_IBUF : IBUF
    port map (
      I => WRITE_DATA(13),
      O => WRITE_DATA_13_IBUF_23
    );
  WRITE_DATA_12_IBUF : IBUF
    port map (
      I => WRITE_DATA(12),
      O => WRITE_DATA_12_IBUF_24
    );
  WRITE_DATA_11_IBUF : IBUF
    port map (
      I => WRITE_DATA(11),
      O => WRITE_DATA_11_IBUF_25
    );
  WRITE_DATA_10_IBUF : IBUF
    port map (
      I => WRITE_DATA(10),
      O => WRITE_DATA_10_IBUF_26
    );
  WRITE_DATA_9_IBUF : IBUF
    port map (
      I => WRITE_DATA(9),
      O => WRITE_DATA_9_IBUF_27
    );
  WRITE_DATA_8_IBUF : IBUF
    port map (
      I => WRITE_DATA(8),
      O => WRITE_DATA_8_IBUF_28
    );
  WRITE_DATA_7_IBUF : IBUF
    port map (
      I => WRITE_DATA(7),
      O => WRITE_DATA_7_IBUF_29
    );
  WRITE_DATA_6_IBUF : IBUF
    port map (
      I => WRITE_DATA(6),
      O => WRITE_DATA_6_IBUF_30
    );
  WRITE_DATA_5_IBUF : IBUF
    port map (
      I => WRITE_DATA(5),
      O => WRITE_DATA_5_IBUF_31
    );
  WRITE_DATA_4_IBUF : IBUF
    port map (
      I => WRITE_DATA(4),
      O => WRITE_DATA_4_IBUF_32
    );
  WRITE_DATA_3_IBUF : IBUF
    port map (
      I => WRITE_DATA(3),
      O => WRITE_DATA_3_IBUF_33
    );
  WRITE_DATA_2_IBUF : IBUF
    port map (
      I => WRITE_DATA(2),
      O => WRITE_DATA_2_IBUF_34
    );
  WRITE_DATA_1_IBUF : IBUF
    port map (
      I => WRITE_DATA(1),
      O => WRITE_DATA_1_IBUF_35
    );
  WRITE_DATA_0_IBUF : IBUF
    port map (
      I => WRITE_DATA(0),
      O => WRITE_DATA_0_IBUF_36
    );
  WRITE_ENABLE_IBUF : IBUF
    port map (
      I => WRITE_ENABLE,
      O => WRITE_ENABLE_IBUF_38
    );
  READ_ENABLE_IBUF : IBUF
    port map (
      I => READ_ENABLE,
      O => READ_ENABLE_IBUF_39
    );
  READ_DATA_31_OBUF : OBUF
    port map (
      I => READ_DATA_31_104,
      O => READ_DATA(31)
    );
  READ_DATA_30_OBUF : OBUF
    port map (
      I => READ_DATA_30_73,
      O => READ_DATA(30)
    );
  READ_DATA_29_OBUF : OBUF
    port map (
      I => READ_DATA_29_74,
      O => READ_DATA(29)
    );
  READ_DATA_28_OBUF : OBUF
    port map (
      I => READ_DATA_28_75,
      O => READ_DATA(28)
    );
  READ_DATA_27_OBUF : OBUF
    port map (
      I => READ_DATA_27_76,
      O => READ_DATA(27)
    );
  READ_DATA_26_OBUF : OBUF
    port map (
      I => READ_DATA_26_77,
      O => READ_DATA(26)
    );
  READ_DATA_25_OBUF : OBUF
    port map (
      I => READ_DATA_25_78,
      O => READ_DATA(25)
    );
  READ_DATA_24_OBUF : OBUF
    port map (
      I => READ_DATA_24_79,
      O => READ_DATA(24)
    );
  READ_DATA_23_OBUF : OBUF
    port map (
      I => READ_DATA_23_80,
      O => READ_DATA(23)
    );
  READ_DATA_22_OBUF : OBUF
    port map (
      I => READ_DATA_22_81,
      O => READ_DATA(22)
    );
  READ_DATA_21_OBUF : OBUF
    port map (
      I => READ_DATA_21_82,
      O => READ_DATA(21)
    );
  READ_DATA_20_OBUF : OBUF
    port map (
      I => READ_DATA_20_83,
      O => READ_DATA(20)
    );
  READ_DATA_19_OBUF : OBUF
    port map (
      I => READ_DATA_19_84,
      O => READ_DATA(19)
    );
  READ_DATA_18_OBUF : OBUF
    port map (
      I => READ_DATA_18_85,
      O => READ_DATA(18)
    );
  READ_DATA_17_OBUF : OBUF
    port map (
      I => READ_DATA_17_86,
      O => READ_DATA(17)
    );
  READ_DATA_16_OBUF : OBUF
    port map (
      I => READ_DATA_16_87,
      O => READ_DATA(16)
    );
  READ_DATA_15_OBUF : OBUF
    port map (
      I => READ_DATA_15_88,
      O => READ_DATA(15)
    );
  READ_DATA_14_OBUF : OBUF
    port map (
      I => READ_DATA_14_89,
      O => READ_DATA(14)
    );
  READ_DATA_13_OBUF : OBUF
    port map (
      I => READ_DATA_13_90,
      O => READ_DATA(13)
    );
  READ_DATA_12_OBUF : OBUF
    port map (
      I => READ_DATA_12_91,
      O => READ_DATA(12)
    );
  READ_DATA_11_OBUF : OBUF
    port map (
      I => READ_DATA_11_92,
      O => READ_DATA(11)
    );
  READ_DATA_10_OBUF : OBUF
    port map (
      I => READ_DATA_10_93,
      O => READ_DATA(10)
    );
  READ_DATA_9_OBUF : OBUF
    port map (
      I => READ_DATA_9_94,
      O => READ_DATA(9)
    );
  READ_DATA_8_OBUF : OBUF
    port map (
      I => READ_DATA_8_95,
      O => READ_DATA(8)
    );
  READ_DATA_7_OBUF : OBUF
    port map (
      I => READ_DATA_7_96,
      O => READ_DATA(7)
    );
  READ_DATA_6_OBUF : OBUF
    port map (
      I => READ_DATA_6_97,
      O => READ_DATA(6)
    );
  READ_DATA_5_OBUF : OBUF
    port map (
      I => READ_DATA_5_98,
      O => READ_DATA(5)
    );
  READ_DATA_4_OBUF : OBUF
    port map (
      I => READ_DATA_4_99,
      O => READ_DATA(4)
    );
  READ_DATA_3_OBUF : OBUF
    port map (
      I => READ_DATA_3_100,
      O => READ_DATA(3)
    );
  READ_DATA_2_OBUF : OBUF
    port map (
      I => READ_DATA_2_101,
      O => READ_DATA(2)
    );
  READ_DATA_1_OBUF : OBUF
    port map (
      I => READ_DATA_1_102,
      O => READ_DATA(1)
    );
  READ_DATA_0_OBUF : OBUF
    port map (
      I => READ_DATA_0_103,
      O => READ_DATA(0)
    );
  Mmux_READ_DATA_31_BUS_0032_MUX_130_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(0),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0032_MUX_130_o
    );
  Mmux_READ_DATA_31_BUS_0031_MUX_127_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(1),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0031_MUX_127_o
    );
  Mmux_READ_DATA_31_BUS_0030_MUX_124_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(2),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0030_MUX_124_o
    );
  Mmux_READ_DATA_31_BUS_0029_MUX_121_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(3),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0029_MUX_121_o
    );
  Mmux_READ_DATA_31_BUS_0028_MUX_118_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(4),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0028_MUX_118_o
    );
  Mmux_READ_DATA_31_BUS_0027_MUX_115_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(5),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0027_MUX_115_o
    );
  Mmux_READ_DATA_31_BUS_0026_MUX_112_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(6),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0026_MUX_112_o
    );
  Mmux_READ_DATA_31_BUS_0025_MUX_109_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(7),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0025_MUX_109_o
    );
  Mmux_READ_DATA_31_BUS_0024_MUX_106_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(8),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0024_MUX_106_o
    );
  Mmux_READ_DATA_31_BUS_0023_MUX_103_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(9),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0023_MUX_103_o
    );
  Mmux_READ_DATA_31_BUS_0022_MUX_100_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(10),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0022_MUX_100_o
    );
  Mmux_READ_DATA_31_BUS_0021_MUX_97_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(11),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0021_MUX_97_o
    );
  Mmux_READ_DATA_31_BUS_0020_MUX_94_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(12),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0020_MUX_94_o
    );
  Mmux_READ_DATA_31_BUS_0019_MUX_91_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(13),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0019_MUX_91_o
    );
  Mmux_READ_DATA_31_BUS_0018_MUX_88_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(14),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0018_MUX_88_o
    );
  Mmux_READ_DATA_31_BUS_0017_MUX_85_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(15),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0017_MUX_85_o
    );
  Mmux_READ_DATA_31_BUS_0016_MUX_82_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(16),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0016_MUX_82_o
    );
  Mmux_READ_DATA_31_BUS_0015_MUX_79_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(17),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0015_MUX_79_o
    );
  Mmux_READ_DATA_31_BUS_0014_MUX_76_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(18),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0014_MUX_76_o
    );
  Mmux_READ_DATA_31_BUS_0013_MUX_73_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(19),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0013_MUX_73_o
    );
  Mmux_READ_DATA_31_BUS_0012_MUX_70_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(20),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0012_MUX_70_o
    );
  Mmux_READ_DATA_31_BUS_0011_MUX_67_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(21),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0011_MUX_67_o
    );
  Mmux_READ_DATA_31_BUS_0010_MUX_64_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(22),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0010_MUX_64_o
    );
  Mmux_READ_DATA_31_BUS_0009_MUX_61_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(23),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0009_MUX_61_o
    );
  Mmux_READ_DATA_31_BUS_0008_MUX_58_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(24),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0008_MUX_58_o
    );
  Mmux_READ_DATA_31_BUS_0007_MUX_55_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(25),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0007_MUX_55_o
    );
  Mmux_READ_DATA_31_BUS_0006_MUX_52_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(26),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0006_MUX_52_o
    );
  Mmux_READ_DATA_31_BUS_0005_MUX_49_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(27),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0005_MUX_49_o
    );
  Mmux_READ_DATA_31_BUS_0004_MUX_46_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(28),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0004_MUX_46_o
    );
  Mmux_READ_DATA_31_BUS_0003_MUX_43_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(29),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0003_MUX_43_o
    );
  Mmux_READ_DATA_31_BUS_0002_MUX_40_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(30),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0002_MUX_40_o
    );
  Mmux_READ_DATA_31_BUS_0001_MUX_37_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q_n0080(31),
      I1 => READ_ENABLE_IBUF_39,
      I2 => WRITE_ENABLE_IBUF_38,
      O => READ_DATA_31_BUS_0001_MUX_37_o
    );
  ENABLE_IBUF_BUFG : BUFG
    port map (
      O => ENABLE_IBUF_BUFG_37,
      I => ENABLE_IBUF_213
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_40
    );
  CLK_inv_INV_0 : INV
    port map (
      I => CLK_BUFGP_40,
      O => CLK_inv
    );

end Structure;

