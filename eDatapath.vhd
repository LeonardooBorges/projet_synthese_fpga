LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eDatapath IS
	PORT (
			SIGNAL Jmp, JmpR, BEQ, BNEQ, RegDst, Jmpal, RegWrite, MemWrite : IN STD_LOGIC;
			SIGNAL clk, AluSrc1, AluSrc2, loadb, loadbu, MemtoReg, storeb : IN STD_LOGIC;
			SIGNAL AluOP : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			SIGNAL OPcode, funct : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
END ENTITY eDatapath;

ARCHITECTURE aDatapath OF eDatapath IS
SIGNAL RegFile_WriteData, RegFile_ReadData1 : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegFile_ReadAddr1, RegFile_ReadAddr2 : STD_LOGIC_VECTOR (4 DOWNTO 0);
SIGNAL RegFile_WriteAddr : STD_LOGIC_VECTOR (4 DOWNTO 0);
SIGNAL Mem_Address, InstMem_ReadAddr : STD_LOGIC_VECTOR (9 DOWNTO 0);
SIGNAL Mem_WriteData, Mem_ReadData, RegFile_ReadData2 : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL ALU_A, ALU_B, ALU_Y : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL ALU_OP : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL ALU_Z : STD_LOGIC;
SIGNAL PC : STD_LOGIC_VECTOR (31 DOWNTO 0) := (others => '0');
SIGNAL PCplus4 : STD_LOGIC_VECTOR (31 DOWNTO 0) := x"00000004";
SIGNAL InstMem_Instruction31_0 : STD_LOGIC_VECTOR (31 DOWNTO 0);

COMPONENT eInstMem 	
	PORT (
		SIGNAL ReadAddr : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		SIGNAL clk : IN STD_LOGIC;
		SIGNAL Instruction31_0 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END COMPONENT;
	
COMPONENT eRegFile
	PORT (
		SIGNAL ReadAddr1, ReadAddr2, WriteAddr : IN INTEGER RANGE 0 TO 31;
		SIGNAL WriteData : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		SIGNAL clk, RegWrite : IN STD_LOGIC;
		SIGNAL ReadData1, ReadData2 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT eMem
	PORT (
		SIGNAL Address : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		SIGNAL WriteData : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		SIGNAL clk, MemWrite, loadb, loadbu, storeb : IN STD_LOGIC;
		SIGNAL ReadData : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ALU
port (
		A  : in  signed(31 downto 0);   -- operand A
		B  : in  signed(31 downto 0);   -- operand B
		OP : in  unsigned(3 downto 0); -- opcode
		Y  : out signed(31 downto 0);  -- operation result
		Z  : out std_logic -- zero
	);	
END COMPONENT;

BEGIN
InstMem : eInstMem
PORT MAP(clk => clk, ReadAddr => InstMem_ReadAddr, Instruction31_0 => InstMem_Instruction31_0);
RegFile : eRegFile
PORT MAP(ReadAddr1 => to_integer(unsigned(RegFile_ReadAddr1)), 
	ReadAddr2 => to_integer(unsigned(RegFile_ReadAddr2)), clk => clk,
	WriteAddr => to_integer(unsigned(RegFile_WriteAddr)), WriteData => RegFile_WriteData,
	ReadData1 => RegFile_ReadData1, ReadData2 => RegFile_ReadData2, RegWrite => RegWrite);
Mem : eMem
PORT MAP(Address => Mem_Address, WriteData => Mem_WriteData, ReadData => Mem_ReadData,
	clk => clk, MemWrite => MemWrite, loadb => loadb, loadbu => loadbu, storeb => storeb);
cALU : ALU
PORT MAP(A => signed(ALU_A), B => signed(ALU_B), std_logic_vector(Y) => ALU_Y, -- is this ok?
OP => unsigned(ALU_OP), Z => ALU_Z);

RegFile_ReadAddr1 <= InstMem_Instruction31_0(25 DOWNTO 21);
RegFile_ReadAddr2 <= InstMem_Instruction31_0(20 DOWNTO 16);
RegFile_WriteAddr <= "11111" WHEN Jmpal='1' ELSE
							InstMem_Instruction31_0(15 DOWNTO 11) WHEN RegDst='1' ELSE
							InstMem_Instruction31_0(20 DOWNTO 16);
RegFile_WriteData <= PCplus4 WHEN Jmpal='1' ELSE
	Mem_ReadData WHEN MemtoReg='1' ELSE
	ALU_Y;
							
ALU_A <= (31 DOWNTO 5 => InstMem_Instruction31_0(10)) & InstMem_Instruction31_0(10 DOWNTO 6) WHEN AluSrc1='1' ELSE
	RegFile_ReadData1;
	
ALU_B <= (31 DOWNTO 16 => InstMem_Instruction31_0(15)) & InstMem_Instruction31_0(15 DOWNTO 0) WHEN AluSrc2='1' ELSE
	RegFile_ReadData2;

Mem_Address <= ALU_Y(9 DOWNTO 0);

PROCESS (clk)
	BEGIN
	IF rising_edge(clk) THEN
		IF Jmp='1' AND JmpR='1' THEN
			PC <= ALU_Y;
		ELSIF Jmp='1' THEN
			PC <= PCplus4(31 DOWNTO 28) & InstMem_Instruction31_0(25 DOWNTO 0) & "00";
		ELSIF ((BNEQ AND NOT ALU_Z) OR (BEQ AND ALU_Z))='1' THEN
			PC <= STD_LOGIC_VECTOR(signed((31 DOWNTO 18 => InstMem_Instruction31_0(15)) & InstMem_Instruction31_0(15 DOWNTO 0) & "00")+signed(PCplus4));
		ELSE
			PC <= PCplus4;
		END IF;
		PCplus4 <= STD_LOGIC_VECTOR(unsigned(PC)+4);
	END IF;
	END PROCESS;
	OPcode <= InstMem_Instruction31_0(31 DOWNTO 26);
	funct <=  InstMem_Instruction31_0(5 DOWNTO 0);
	InstMem_ReadAddr <= PC(9 DOWNTO 0);
	
END ARCHITECTURE aDatapath;
