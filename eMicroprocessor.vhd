LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eMicroprocessor is
	port (
		signal micro_clk, control_rst, regfile_rst, pc_rst, memdata_rst : in std_logic
	);
end entity eMicroprocessor;

architecture aMicroprocessor of eMicroprocessor is
	component eDatapath is
	port (
			signal Jmp, JmpR, BEQ, BNEQ, RegDst, Jmpal, RegWrite, MemWrite : in std_logic;
			signal clk, AluSrc1, AluSrc2, loadb, loadbu, MemtoReg, storeb, pc_en : in std_logic;
			signal regfile_rst, pc_rst, memdata_rst : in std_logic;
			signal AluOP : in std_logic_vector (3 downto 0);
			signal OPcode, funct : out std_logic_vector (5 downto 0)
	);
	end component eDatapath;
	
	component control_sync is
	port (
		CLOCK    : in  std_logic;
		RESET    : in  std_logic;
		OP       : in  std_logic_vector(5 downto 0);  -- opcode
		func     : in  std_logic_vector(5 downto 0);  -- func code
		RegDst   : inout std_logic;  -- Register destination
		Jump     : inout std_logic;
		JumpR    : inout std_logic;  -- Jump register
		beq      : inout std_logic;  -- Branch if equals
		MemToReg : inout std_logic;  -- Memory to register
		ALUop    : inout std_logic_vector(3 downto 0);  -- ALU op code
		MemWrite : inout std_logic;  -- Memory write
		ALUsrc1  : inout std_logic;
		ALUsrc2  : inout std_logic;
		RegWrite : inout std_logic;  -- Register write
		bne      : inout std_logic;  -- Branch if not equals
		LoadBU   : inout std_logic;  -- Load byte unsigned
		LoadB    : inout std_logic;  -- Load byte
		storeB   : inout std_logic;
		JumpAL   : inout std_logic;	-- Jump and link
		PC_EN    : inout std_logic;
		current_state : out std_logic_vector(2 downto 0)
	);	
	end component control_sync;
	
	signal micro_Jmp, micro_JmpR, micro_BEQ, micro_BNEQ, micro_RegDst, micro_Jmpal : std_logic;
	signal micro_AluSrc1, micro_AluSrc2, micro_loadb, micro_loadbu : std_logic;
	signal micro_MemtoReg, micro_storeb, micro_pc_en, micro_RegWrite, micro_MemWrite : std_logic;
	signal micro_AluOP :  std_logic_vector (3 downto 0);
	signal micro_OPcode, micro_funct :  std_logic_vector (5 downto 0);
	
	begin
	instDapath : eDatapath
	port map(Jmp => micro_Jmp, JmpR => micro_JmpR, BEQ => micro_BEQ, BNEQ => micro_BNEQ, 
		RegDst => micro_RegDst, Jmpal => micro_Jmpal, RegWrite => micro_RegWrite, MemWrite => micro_MemWrite,
		clk => micro_clk, AluSrc1 => micro_AluSrc1, AluSrc2 => micro_AluSrc2, OPcode => micro_OPcode,
		loadb => micro_loadb, loadbu => micro_loadbu, MemtoReg => micro_MemtoReg, funct => micro_funct,
		AluOP => micro_AluOP, storeb => micro_storeb, pc_en => micro_pc_en,
		regfile_rst => regfile_rst, pc_rst => pc_rst, memdata_rst => memdata_rst);
	
	instControl : control_sync
	port map(
	CLOCK => micro_clk,RESET => control_rst,OP => micro_OPcode,func => micro_funct,RegDst => micro_RegDst,
	beq => micro_BEQ, MemToReg => micro_MemtoReg, ALUop => micro_AluOP, MemWrite => micro_MemWrite,
	ALUsrc2 => micro_AluSrc2,RegWrite => micro_RegWrite,bne => micro_BNEQ,LoadBU => micro_loadbu,
	LoadB => micro_loadb,storeB => micro_storeb,JumpAL => micro_Jmpal,PC_EN => micro_pc_en,
	ALUsrc1 => micro_AluSrc1, Jump => micro_Jmp, JumpR => micro_JmpR);
	
	
	
end architecture aMicroprocessor;
