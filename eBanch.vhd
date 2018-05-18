LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eBanch IS
END ENTITY eBanch;

USE WORK.SpyOnMySigPkg.ALL;

ARCHITECTURE aBanch OF eBanch IS

SIGNAL observeRegFile : type_regmem;
SIGNAL observemem : type_instmem;
SIGNAL observememdata : type_mem32w;
SIGNAL observePC : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL tb_clk, tb_rst : STD_LOGIC := '1';

--

SIGNAL		ob_CLOCK    :   std_logic;
SIGNAL		ob_RESET    :   std_logic;
SIGNAL		ob_OP       :  std_logic_vector(5 downto 0);  -- opcode
SIGNAL		ob_func     : std_logic_vector(5 downto 0);  -- func code
SIGNAL		ob_RegDst   :  std_logic;  -- Register destination
SIGNAL		ob_Jump     :  std_logic;
SIGNAL		ob_JumpR    :  std_logic;  -- Jump register
SIGNAL		ob_beq      :  std_logic;  -- Branch if equals
SIGNAL		ob_MemToReg :  std_logic;  -- Memory to register
SIGNAL		ob_ALUop    : std_logic_vector(3 downto 0);  -- ALU op code
SIGNAL		ob_MemWrite :  std_logic;  -- Memory write
SIGNAL		ob_ALUsrc1  :  std_logic;
SIGNAL		ob_ALUsrc2  :  std_logic;
SIGNAL		ob_RegWrite :  std_logic;  -- Register write
SIGNAL		ob_bne      : std_logic;  -- Branch if not equals
SIGNAL		ob_LoadBU   :  std_logic;  -- Load byte unsigned
SIGNAL		ob_LoadB    :  std_logic;  -- Load byte
SIGNAL		ob_storeB   :  std_logic;
SIGNAL		ob_JumpAL   :  std_logic;	-- Jump and link
SIGNAL		ob_PC_EN    :  std_logic;
--

COMPONENT eMicroprocessor IS
	PORT (
		SIGNAL micro_clk, micro_rst : IN STD_LOGIC
	);
END COMPONENT;
	
BEGIN
--

		ob_CLOCK    <= gl_CLOCK;
		ob_RESET   <= gl_RESET;
		ob_OP      <= gl_OP;
		ob_func    <= gl_func ;
		ob_RegDst   <= gl_RegDst;
		ob_Jump     <= gl_Jump;
		ob_JumpR    <= gl_JumpR ;
		ob_beq      <= gl_beq;
		ob_MemToReg <= gl_MemToReg ;
		ob_ALUop    <= gl_ALUop ;
		ob_MemWrite <= gl_MemWrite ;
		ob_ALUsrc1  <= gl_ALUsrc1;
		ob_ALUsrc2 <= gl_ALUsrc2;
		ob_RegWrite <= gl_RegWrite;
		ob_bne     <= gl_bne ;
		ob_LoadBU  <= gl_LoadBU ;
		ob_LoadB    <= gl_LoadB ;
		ob_storeB   <=gl_storeB ;
		ob_JumpAL  <=gl_JumpAL ;
		ob_PC_EN    <=gl_PC_EN ;

--

	tb_clk <=  '1' after 0.5 ns when tb_clk = '0' else
		'0' after 0.5 ns when tb_clk = '1';

	instMicroprocessor : eMicroprocessor
		PORT MAP(micro_clk => tb_clk, micro_rst => tb_rst);

	PROCESS (GlobalRegFile)    
	BEGIN
		FOR i IN 1 TO 31 LOOP            
			observeRegFile(i) <= GlobalRegFile(i);
		END LOOP;
	END PROCESS;
	
	PROCESS (GlobalPC)    
	BEGIN        
		observePC <= GlobalPC;
	END PROCESS;
	
	PROCESS (Globalmem)    
	BEGIN
   FOR i IN 0 TO 31 LOOP            
        observemem(i) <= Globalmem(i);
   END LOOP;
	END PROCESS;
	
	PROCESS (Globalmemdata)    
	BEGIN
   FOR i IN 0 TO 31 LOOP            
        observememdata(i) <= Globalmemdata(i);
   END LOOP;
	END PROCESS;
	
	PROCESS BEGIN
		WAIT FOR 10 ns;
		tb_rst <= '0';
	END PROCESS;
	
	
END ARCHITECTURE aBanch;