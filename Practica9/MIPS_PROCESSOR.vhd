----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:24 10/25/2020 
-- Design Name: 
-- Module Name:    MIPS_PROCESSOR - Behavioral 
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

entity MIPS_PROCESSOR is
    Port ( MIPS_P_RESET : in  STD_LOGIC;
           MIPS_P_CLK : in  STD_LOGIC;
			  DUMMY_OUT : out STD_LOGIC_VECTOR (31 downto 0);
			  LEDS_OUT : OUT  std_logic_vector(7 downto 0);
			  SWITCHES_IN : IN  std_logic_vector(7 downto 0)
			);
end MIPS_PROCESSOR;

architecture structural of MIPS_PROCESSOR is

--COMPONENTS******************************************************************************

-- PROGRAM COUNTER***************

component PROGRAM_COUNTER is
    Port ( D : in  STD_LOGIC_VECTOR (31 downto 0);
           Q : out  STD_LOGIC_VECTOR (31 downto 0);
           RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end component;


--INSTRUCTION MEMORY********************
component ROM is
    Port ( READ_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
				INSTRUCTION : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal INSTRUCTION_SIGNAL : STD_LOGIC_VECTOR(31 downto 0);

--REGISTER FILE*************************

component REG_FILE is
	port(REG_FILE_WRITEREG_SEL 		: in  STD_LOGIC_VECTOR (4 downto 0);
	REG_FILE_REGWRITE_ENABLE 			: in  STD_LOGIC;
	WRITE_DATA 								: in  STD_LOGIC_VECTOR (31 downto 0);
	CLK 										: in  STD_LOGIC;
	REG_FILE_MUX_READ_REG_1				: in  STD_LOGIC_VECTOR (4 downto 0);
	REG_FILE_MUX_READ_REG_2				: in  STD_LOGIC_VECTOR (4 downto 0);
	REG_FILE_READ_DATA_1 				: out  STD_LOGIC_VECTOR (31 downto 0);
	REG_FILE_READ_DATA_2 				: out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal READ_DATA_1_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal READ_DATA_2_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);


--CONTROL UNIT*************************

component CONTROL_UNIT is
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
end component;

signal REG_DST_SIGNAL : STD_LOGIC;
signal JUMP_SIGNAL : STD_LOGIC;
signal BRANCH_SIGNAL : STD_LOGIC;
signal MEM_READ_SIGNAL : STD_LOGIC;
signal MEM_TO_READ_SIGNAL : STD_LOGIC;
signal MEM_WRITE_SIGNAL : STD_LOGIC;
signal ALU_SRC_SIGNAL : STD_LOGIC;
signal REG_WRITE_SIGNAL : STD_LOGIC;
signal ALU_OP_SIGNAL : STD_LOGIC_VECTOR (2 downto 0);

--MUX *************************

component MUX_5_BITS is
    Port ( MUX_5_BITS_A : in  STD_LOGIC_VECTOR (4 downto 0);
           MUX_5_BITS_B : in  STD_LOGIC_VECTOR (4 downto 0);
           MUX_5_BITS_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
           MUX_5_BITS_SELECT : in  STD_LOGIC);
end component;

signal MUX_OUT_WRITE_REGISTER_SIGNAL : STD_LOGIC_VECTOR (4 downto 0);

component MUX_32_BITS is
    Port ( MUX_32_BITS_A : in  STD_LOGIC_VECTOR (31 downto 0);
           MUX_32_BITS_B : in  STD_LOGIC_VECTOR (31 downto 0);
           MUX_32_BITS_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           MUX_32_BITS_SELECT : in  STD_LOGIC);
end component;

signal MUX_OUT_ALU_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal MUX_OUT_DATA_MEMORY_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);

signal MUX_OUT_STACK_1_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal MUX_OUT_STACK_2_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal PC_OUT_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal PC_IN_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);

signal JUMP_ADDRESS_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);

--ALU CONTROL*******************

component ALU_CONTROL is
    Port ( ALU_CONTROL_JR : out  STD_LOGIC;
           ALU_CONTROL_INSTRUC : in  STD_LOGIC_VECTOR (5 downto 0);
           ALU_CONTROL_ALUOP : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_CONTROL_OUT : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

signal ALU_CONTROL_OUT_SIGNAL : STD_LOGIC_VECTOR (2 downto 0);
signal ALU_CONTROL_JR_SIGNAL : STD_LOGIC;

--SIGN EXTENDER**************************
component sign_extender is
    Port ( A_sign_extender : in  STD_LOGIC_VECTOR (15 downto 0);
           B_sign_extender : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal SIGN_EXTENDER_OUT_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);

--ALU************************************
component ALU is
    Port ( ALU_CNTRL : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_A : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_ZERO : out  STD_LOGIC;
           ALU_RESULT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal ALU_OUT_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal ALU_ZERO_SIGNAL : STD_LOGIC;

--DATA MEMORY
component RAM is
    Port ( ENABLE : in  STD_LOGIC;
           WRITE_ENABLE : in  STD_LOGIC;
           READ_ENABLE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RW_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           WRITE_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           READ_DATA : out  STD_LOGIC_VECTOR (31 downto 0);
			  LEDS : out STD_LOGIC_VECTOR (7 downto 0);
			  SWITCHES : in STD_LOGIC_VECTOR (7 downto 0));
end component;

signal DATA_MEMORY_READ_DATA_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);

--SHIFT LEFT
component shift_left_32b is
    Port ( A_shift_left_32b : in  STD_LOGIC_VECTOR (31 downto 0);
           B_shift_left_32b : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component SHIFTLEFT is
    Port ( shift_left_in : in  STD_LOGIC_VECTOR (25 downto 0);
           shift_left_out : out  STD_LOGIC_VECTOR (27 downto 0));
end component;

signal SHIFT_LEFT_32_OUT_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal SHIFT_LEFT_28_OUT_SIGNAL : STD_LOGIC_VECTOR (27 downto 0);



--ADD

component add is
    Port ( 
			  A_Adder : in  STD_LOGIC_VECTOR (31 downto 0);
           B_Adder : in  STD_LOGIC_VECTOR (31 downto 0);
           C_Adder : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal ADDER_OUT_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal ADDER_OUT_PC_PLUS_4_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);

signal CONCAT_SIGNAL : STD_LOGIC_VECTOR (31 downto 0);
signal AND_SIGNAL : STD_LOGIC;

begin

PC : PROGRAM_COUNTER PORT MAP(PC_IN_SIGNAL, PC_OUT_SIGNAL, MIPS_P_RESET, MIPS_P_CLK);


INSTRUCTION_MEMORY : ROM PORT MAP(PC_OUT_SIGNAL, INSTRUCTION_SIGNAL);

REGISTER_FILE : REG_FILE PORT MAP(MUX_OUT_WRITE_REGISTER_SIGNAL, REG_WRITE_SIGNAL, 
	MUX_OUT_DATA_MEMORY_SIGNAL, MIPS_P_CLK, 
	INSTRUCTION_SIGNAL(25 downto 21), INSTRUCTION_SIGNAL(20 downto 16), 
	READ_DATA_1_SIGNAL, READ_DATA_2_SIGNAL);

DATA_MEMORY: RAM PORT MAP(ENABLE => '0', WRITE_ENABLE => MEM_WRITE_SIGNAL , READ_ENABLE => MEM_READ_SIGNAL, CLK => MIPS_P_CLK, 
	RW_ADDRESS => ALU_OUT_SIGNAL, WRITE_DATA => READ_DATA_2_SIGNAL, READ_DATA => DATA_MEMORY_READ_DATA_SIGNAL, 
	LEDS => LEDS_OUT, SWITCHES => SWITCHES_IN);

--MUX WRITE REGISTER
MUX_WRITE_REGISTER : MUX_5_BITS PORT MAP(MUX_5_BITS_A => INSTRUCTION_SIGNAL(20 downto 16),
	MUX_5_BITS_B => INSTRUCTION_SIGNAL(15 downto 11), MUX_5_BITS_OUT => MUX_OUT_WRITE_REGISTER_SIGNAL,
	MUX_5_BITS_SELECT => REG_DST_SIGNAL );
	
MUX_ALU : MUX_32_BITS PORT MAP(MUX_32_BITS_A => READ_DATA_2_SIGNAL, MUX_32_BITS_B => SIGN_EXTENDER_OUT_SIGNAL,
	MUX_32_BITS_OUT => MUX_OUT_ALU_SIGNAL, MUX_32_BITS_SELECT => ALU_SRC_SIGNAL);

MUX_DATA_MEMORY : MUX_32_BITS PORT MAP(ALU_OUT_SIGNAL,DATA_MEMORY_READ_DATA_SIGNAL, 
	MUX_OUT_DATA_MEMORY_SIGNAL, MEM_TO_READ_SIGNAL);

---3 STACKED MUXES

AND_SIGNAL <= BRANCH_SIGNAL and ALU_ZERO_SIGNAL;
CONCAT_SIGNAL <= ADDER_OUT_PC_PLUS_4_SIGNAL(31 downto 28) & SHIFT_LEFT_28_OUT_SIGNAL;

MUX_BRANCH : MUX_32_BITS PORT MAP(MUX_32_BITS_A => ADDER_OUT_PC_PLUS_4_SIGNAL, MUX_32_BITS_B => ADDER_OUT_SIGNAL, 
	MUX_32_BITS_OUT => MUX_OUT_STACK_1_SIGNAL, MUX_32_BITS_SELECT => AND_SIGNAL);


MUX_JUMP : MUX_32_BITS PORT MAP(MUX_32_BITS_A => MUX_OUT_STACK_1_SIGNAL, 
	MUX_32_BITS_B => CONCAT_SIGNAL, 
	MUX_32_BITS_OUT => MUX_OUT_STACK_2_SIGNAL, MUX_32_BITS_SELECT => JUMP_SIGNAL);

MUX_JR : MUX_32_BITS PORT MAP(MUX_32_BITS_A => MUX_OUT_STACK_2_SIGNAL, MUX_32_BITS_B => READ_DATA_1_SIGNAL, 
	MUX_32_BITS_OUT => PC_IN_SIGNAL, MUX_32_BITS_SELECT => ALU_CONTROL_JR_SIGNAL);

--ALU CONTROL	
	
ALU_CONTROL_COMP : ALU_CONTROL PORT MAP(ALU_CONTROL_JR => ALU_CONTROL_JR_SIGNAL, ALU_CONTROL_INSTRUC => INSTRUCTION_SIGNAL(5 downto 0),
	ALU_CONTROL_ALUOP => ALU_OP_SIGNAL, ALU_CONTROL_OUT => ALU_CONTROL_OUT_SIGNAL);

--CONTROL UNIT

CONTROL_UNIT_COMP : CONTROL_UNIT PORT MAP(CONTROL_UNIT_OP_CODE => INSTRUCTION_SIGNAL(31 downto 26), 
	CONTROL_UNIT_ALUOP => ALU_OP_SIGNAL, CONTROL_UNIT_REG_DEST => REG_DST_SIGNAL, CONTROL_UNIT_JUMP => JUMP_SIGNAL, 
	CONTROL_UNIT_BRANCH => BRANCH_SIGNAL, CONTROL_UNIT_MEM_READ => MEM_READ_SIGNAL, 
	CONTROL_UNIT_MEM_TO_REG => MEM_TO_READ_SIGNAL, CONTROL_UNIT_MEM_WRITE => MEM_WRITE_SIGNAL,
	CONTROL_UNIT_ALU_SRC => ALU_SRC_SIGNAL, CONTROL_UNIT_REG_WRITE => REG_WRITE_SIGNAL);


--OPERATIONS
SHIFT_LEFT_32B_COMP : shift_left_32b PORT MAP(A_shift_left_32b => SIGN_EXTENDER_OUT_SIGNAL,
	B_shift_left_32b =>SHIFT_LEFT_32_OUT_SIGNAL);
	
SHIFT_LEFT_28B_COMP : SHIFTLEFT PORT MAP(shift_left_in => INSTRUCTION_SIGNAL(25 downto 0),
	shift_left_out =>SHIFT_LEFT_28_OUT_SIGNAL);

SIGN_EXTENDER_COMP : sign_extender PORT MAP(A_sign_extender => INSTRUCTION_SIGNAL(15 downto 0),
	B_sign_extender => SIGN_EXTENDER_OUT_SIGNAL);
	
ADD_1 : add PORT MAP(A_Adder => ADDER_OUT_PC_PLUS_4_SIGNAL,B_Adder => SHIFT_LEFT_32_OUT_SIGNAL,C_Adder => ADDER_OUT_SIGNAL);	
ADD_PC : add PORT MAP(A_Adder => x"00000004",B_Adder => PC_OUT_SIGNAL, C_Adder => ADDER_OUT_PC_PLUS_4_SIGNAL);	


ALU_COMP : ALU PORT MAP(ALU_CNTRL => ALU_CONTROL_OUT_SIGNAL, ALU_A => READ_DATA_1_SIGNAL, 
	ALU_B => MUX_OUT_ALU_SIGNAL, ALU_ZERO => ALU_ZERO_SIGNAL, ALU_RESULT => ALU_OUT_SIGNAL);

DUMMY_OUT <= PC_OUT_SIGNAL;



end structural;

