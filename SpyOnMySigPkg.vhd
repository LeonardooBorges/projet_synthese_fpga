LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

package SpyOnMySigPkg is
	type type_regmem is array (1 TO 31) of std_logic_vector(31 downto 0);
	type type_instmem is array (0 TO 31) of std_logic_vector(31 downto 0);
	type type_mem32w is array (0 TO 31) of std_logic_vector(31 downto 0);
	signal GlobalRegFile : type_regmem ; 
	signal Globalmem : type_instmem;
	signal Globalmemdata : type_mem32w;
	signal GlobalPC : std_logic_vector (31 downto 0);
	
	
signal		gl_CLOCK    :   std_logic;
signal		gl_RESET    :   std_logic;
signal		gl_OP       :  std_logic_vector(5 downto 0);  -- opcode
signal		gl_func     : std_logic_vector(5 downto 0);  -- func code
signal		gl_RegDst   :  std_logic;  -- Register destination
signal		gl_Jump     :  std_logic;
signal		gl_JumpR    :  std_logic;  -- Jump register
signal		gl_beq      :  std_logic;  -- Branch if equals
signal		gl_MemToReg :  std_logic;  -- Memory to register
signal		gl_ALUop    : std_logic_vector(3 downto 0);  -- ALU op code
signal		gl_MemWrite :  std_logic;  -- Memory write
signal		gl_ALUsrc1  :  std_logic;
signal		gl_ALUsrc2  :  std_logic;
signal		gl_RegWrite :  std_logic;  -- Register write
signal		gl_bne      : std_logic;  -- Branch if not equals
signal		gl_LoadBU   :  std_logic;  -- Load byte unsigned
signal		gl_LoadB    :  std_logic;  -- Load byte
signal		gl_storeB   :  std_logic;
signal		gl_JumpAL   :  std_logic;	-- Jump and link
signal		gl_PC_EN    :  std_logic;
	
	
end package SpyOnMySigPkg ; 
