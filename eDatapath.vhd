LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eDatapath is
	port (
			signal Jmp, JmpR, BEQ, BNEQ, RegDst, Jmpal, RegWrite, MemWrite : in std_logic;
			signal clk, AluSrc1, AluSrc2, loadb, loadbu, MemtoReg, storeb, pc_en : in std_logic;
			signal regfile_rst, pc_rst, memdata_rst : in std_logic;
			signal AluOP : in std_logic_vector (3 downto 0);
			signal OPcode, funct : out std_logic_vector (5 downto 0)
	);
end entity eDatapath;

use work.SpyOnMySigPkg.all;

architecture aDatapath of eDatapath is
signal RegFile_WriteData, RegFile_ReadData1 : std_logic_vector (31 downto 0);
signal RegFile_ReadAddr1, RegFile_ReadAddr2 : std_logic_vector (4 downto 0);
signal RegFile_WriteAddr : std_logic_vector (4 downto 0);
signal Mem_Address, InstMem_ReadAddr : std_logic_vector (6 downto 0);
signal Mem_WriteData, Mem_ReadData, RegFile_ReadData2 : std_logic_vector (31 downto 0);
signal ALU_A, ALU_B, ALU_Y : std_logic_vector (31 downto 0);
signal ALU_OP : std_logic_vector (3 downto 0);
signal ALU_Z : std_logic;
signal PC : std_logic_vector (31 downto 0) := (others => '0');
signal PCplus4 : std_logic_vector (31 downto 0) := x"00000004";
signal InstMem_Instruction31_0 : std_logic_vector (31 downto 0);
signal RegFiletmp_ReadAddr1, RegFiletmp_ReadAddr2, RegFiletmp_WriteAddr : INTEGER range 0 TO 31;

component eInstMem 	
	port (
		signal ReadAddr : in std_logic_vector (6 downto 0);
		signal clk : in std_logic;
		signal Instruction31_0 : out std_logic_vector (31 downto 0)
	);
end component;
	
component eRegFile
	port (
		signal ReadAddr1, ReadAddr2, WriteAddr : in INTEGER range 0 TO 31;
		signal WriteData : in std_logic_vector (31 downto 0);
		signal clk, RegWrite, regfile_rst : in std_logic;
		signal ReadData1, ReadData2 : out std_logic_vector (31 downto 0)
	);
end component;

component eMem
	port (
		signal Address : in std_logic_vector (6 downto 0);
		signal WriteData : in std_logic_vector (31 downto 0);
		signal clk, MemWrite, loadb, loadbu, storeb, memdata_rst : in std_logic;
		signal ReadData : out std_logic_vector (31 downto 0)
	);
end component;

component ALU
	port (
		A  : in  signed(31 downto 0);   -- operand A
		B  : in  signed(31 downto 0);   -- operand B
		OP : in  std_logic_vector(3 downto 0); -- opcode
		Y  : out signed(31 downto 0);  -- operation result
		Z  : out std_logic -- zero
	);	
end component;

begin

process (PC) begin
	GlobalPC <= PC;
end process;

RegFiletmp_ReadAddr1 <= to_integer(unsigned(RegFile_ReadAddr1));
RegFiletmp_ReadAddr2 <= to_integer(unsigned(RegFile_ReadAddr2));
RegFiletmp_WriteAddr <= to_integer(unsigned(RegFile_WriteAddr));
InstMem : eInstMem
port map(clk => clk, ReadAddr => InstMem_ReadAddr, Instruction31_0 => InstMem_Instruction31_0);
RegFile : eRegFile
port map(ReadAddr1 => RegFiletmp_ReadAddr1, regfile_rst => regfile_rst,
	ReadAddr2 => RegFiletmp_ReadAddr2, clk => clk,
	WriteAddr => RegFiletmp_WriteAddr, WriteData => RegFile_WriteData,
	ReadData1 => RegFile_ReadData1, ReadData2 => RegFile_ReadData2, RegWrite => RegWrite);
Mem : eMem
port map(Address => Mem_Address, WriteData => Mem_WriteData, ReadData => Mem_ReadData, memdata_rst => memdata_rst,
	clk => clk, MemWrite => MemWrite, loadb => loadb, loadbu => loadbu, storeb => storeb);
cALU : ALU
port map(A => signed(ALU_A), B => signed(ALU_B), std_logic_vector(Y) => ALU_Y,
OP => ALU_OP, Z => ALU_Z);
ALU_OP <= AluOP;

RegFile_ReadAddr1 <= InstMem_Instruction31_0(25 downto 21);
RegFile_ReadAddr2 <= InstMem_Instruction31_0(20 downto 16);
RegFile_WriteAddr <= "11111" when Jmpal='1' else
							InstMem_Instruction31_0(15 downto 11) when RegDst='1' else
							InstMem_Instruction31_0(20 downto 16);
RegFile_WriteData <= PCplus4 when Jmpal='1' else
	Mem_ReadData when MemtoReg='1' else
	ALU_Y;
							
ALU_A <= (31 downto 5 => InstMem_Instruction31_0(10)) & InstMem_Instruction31_0(10 downto 6) when AluSrc1='1' else
	RegFile_ReadData1;
ALU_B <= (31 downto 16 => InstMem_Instruction31_0(15)) & InstMem_Instruction31_0(15 downto 0) when AluSrc2='1' else
	RegFile_ReadData2;

Mem_Address <= ALU_Y(6 downto 0);
Mem_WriteData <= RegFile_ReadData2;

process (clk, pc_rst)
	variable tmp : std_logic_vector (31 downto 0);
	begin
	if pc_rst = '1' then
		PC <= x"00000000";
	elsif rising_edge(clk) then
		if pc_en='1' then
			if Jmp='1' and JmpR='1' then
				PC <= ALU_Y;
			elsif Jmp='1' then
				PC <= PCplus4(31 downto 28) & InstMem_Instruction31_0(25 downto 0) & "00";
			elsif ((BNEQ and not ALU_Z) or (BEQ and ALU_Z))='1' then
				tmp := (31 downto 18 => InstMem_Instruction31_0(15)) & InstMem_Instruction31_0(15 downto 0) & "00";
				PC <= std_logic_vector( signed(tmp) + signed(PCplus4) );
			else
				PC <= PCplus4;
			end if;
		elsif pc_en='0' then
		PC <= PC;
		end if;
		PCplus4 <= std_logic_vector(unsigned(PC)+4);
	end if;
	end process;
	OPcode <= InstMem_Instruction31_0(31 downto 26);
	funct <=  InstMem_Instruction31_0(5 downto 0);
	InstMem_ReadAddr <= PC(6 downto 0);
	
end architecture aDatapath;
