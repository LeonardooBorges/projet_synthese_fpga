LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

package SpyOnMySigPkg is
	TYPE type_regmem IS ARRAY (1 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	TYPE type_instmem IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	TYPE type_mem32w IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL GlobalRegFile : type_regmem ; 
	SIGNAL Globalmem : type_instmem;
	SIGNAL Globalmemdata : type_mem32w;
	SIGNAL GlobalPC : STD_LOGIC_VECTOR (31 DOWNTO 0);
	
	
SIGNAL		gl_CLOCK    :   std_logic;
SIGNAL		gl_RESET    :   std_logic;
SIGNAL		gl_OP       :  std_logic_vector(5 downto 0);  -- opcode
SIGNAL		gl_func     : std_logic_vector(5 downto 0);  -- func code
SIGNAL		gl_RegDst   :  std_logic;  -- Register destination
SIGNAL		gl_Jump     :  std_logic;
SIGNAL		gl_JumpR    :  std_logic;  -- Jump register
SIGNAL		gl_beq      :  std_logic;  -- Branch if equals
SIGNAL		gl_MemToReg :  std_logic;  -- Memory to register
SIGNAL		gl_ALUop    : std_logic_vector(3 downto 0);  -- ALU op code
SIGNAL		gl_MemWrite :  std_logic;  -- Memory write
SIGNAL		gl_ALUsrc1  :  std_logic;
SIGNAL		gl_ALUsrc2  :  std_logic;
SIGNAL		gl_RegWrite :  std_logic;  -- Register write
SIGNAL		gl_bne      : std_logic;  -- Branch if not equals
SIGNAL		gl_LoadBU   :  std_logic;  -- Load byte unsigned
SIGNAL		gl_LoadB    :  std_logic;  -- Load byte
SIGNAL		gl_storeB   :  std_logic;
SIGNAL		gl_JumpAL   :  std_logic;	-- Jump and link
SIGNAL		gl_PC_EN    :  std_logic;
	
	
end package SpyOnMySigPkg ; 