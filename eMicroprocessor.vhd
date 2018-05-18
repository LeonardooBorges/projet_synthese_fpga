LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eMicroprocessor IS
	PORT (
		SIGNAL micro_clk, control_rst, regfile_rst, pc_rst, memdata_rst : IN STD_LOGIC
	);
END ENTITY eMicroprocessor;

ARCHITECTURE aMicroprocessor OF eMicroprocessor IS
	COMPONENT eDatapath IS
	PORT (
			SIGNAL Jmp, JmpR, BEQ, BNEQ, RegDst, Jmpal, RegWrite, MemWrite : IN STD_LOGIC;
			SIGNAL clk, AluSrc1, AluSrc2, loadb, loadbu, MemtoReg, storeb, pc_en : IN STD_LOGIC;
			SIGNAL regfile_rst, pc_rst, memdata_rst : IN STD_LOGIC;
			SIGNAL AluOP : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			SIGNAL OPcode, funct : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
	END COMPONENT eDatapath;
	
	COMPONENT control_sync IS
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
	END COMPONENT control_sync;
	
	SIGNAL micro_Jmp, micro_JmpR, micro_BEQ, micro_BNEQ, micro_RegDst, micro_Jmpal : STD_LOGIC;
	SIGNAL micro_AluSrc1, micro_AluSrc2, micro_loadb, micro_loadbu : STD_LOGIC;
	SIGNAL micro_MemtoReg, micro_storeb, micro_pc_en, micro_RegWrite, micro_MemWrite : STD_LOGIC;
	SIGNAL micro_AluOP :  STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL micro_OPcode, micro_funct :  STD_LOGIC_VECTOR (5 DOWNTO 0);
	
	BEGIN
	instDapath : eDatapath
	PORT MAP(Jmp => micro_Jmp, JmpR => micro_JmpR, BEQ => micro_BEQ, BNEQ => micro_BNEQ, 
		RegDst => micro_RegDst, Jmpal => micro_Jmpal, RegWrite => micro_RegWrite, MemWrite => micro_MemWrite,
		clk => micro_clk, AluSrc1 => micro_AluSrc1, AluSrc2 => micro_AluSrc2, OPcode => micro_OPcode,
		loadb => micro_loadb, loadbu => micro_loadbu, MemtoReg => micro_MemtoReg, funct => micro_funct,
		AluOP => micro_AluOP, storeb => micro_storeb, pc_en => micro_pc_en,
		regfile_rst => regfile_rst, pc_rst => pc_rst, memdata_rst => memdata_rst);
	
	instControl : control_sync
	PORT MAP(
	CLOCK => micro_clk,RESET => control_rst,OP => micro_OPcode,func => micro_funct,RegDst => micro_RegDst,
	beq => micro_BEQ, MemToReg => micro_MemtoReg, ALUop => micro_AluOP, MemWrite => micro_MemWrite,
	ALUsrc2 => micro_AluSrc2,RegWrite => micro_RegWrite,bne => micro_BNEQ,LoadBU => micro_loadbu,
	LoadB => micro_loadb,storeB => micro_storeb,JumpAL => micro_Jmpal,PC_EN => micro_pc_en,
	ALUsrc1 => micro_AluSrc1, Jump => micro_Jmp, JumpR => micro_JmpR);
	
	
	
END ARCHITECTURE aMicroprocessor;