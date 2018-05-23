LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eBanch is
end entity eBanch;

use work.SpyOnMySigPkg.all;

architecture aBanch of eBanch is

signal observeRegFile : type_regmem;
signal observemem : type_instmem;
signal observememdata : type_mem32w;
signal observePC : std_logic_vector (31 downto 0);
signal tb_clk, tb_rst : std_logic := '1';

--

signal		ob_CLOCK    :   std_logic;
signal		ob_RESET    :   std_logic;
signal		ob_OP       :  std_logic_vector(5 downto 0);  -- opcode
signal		ob_func     : std_logic_vector(5 downto 0);  -- func code
signal		ob_RegDst   :  std_logic;  -- Register destination
signal		ob_Jump     :  std_logic;
signal		ob_JumpR    :  std_logic;  -- Jump register
signal		ob_beq      :  std_logic;  -- Branch if equals
signal		ob_MemToReg :  std_logic;  -- Memory to register
signal		ob_ALUop    : std_logic_vector(3 downto 0);  -- ALU op code
signal		ob_MemWrite :  std_logic;  -- Memory write
signal		ob_ALUsrc1  :  std_logic;
signal		ob_ALUsrc2  :  std_logic;
signal		ob_RegWrite :  std_logic;  -- Register write
signal		ob_bne      : std_logic;  -- Branch if not equals
signal		ob_LoadBU   :  std_logic;  -- Load byte unsigned
signal		ob_LoadB    :  std_logic;  -- Load byte
signal		ob_storeB   :  std_logic;
signal		ob_JumpAL   :  std_logic;	-- Jump and link
signal		ob_PC_EN    :  std_logic;
--

component eMicroprocessor is
	port (
		signal micro_clk, control_rst, regfile_rst, pc_rst, memdata_rst : in std_logic
	);
end component;
	
begin
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
		port map(micro_clk => tb_clk, control_rst => tb_rst,
		regfile_rst => tb_rst, pc_rst => tb_rst, memdata_rst => tb_rst);

	process (GlobalRegFile)    
	begin
		for i in 1 TO 31 loop            
			observeRegFile(i) <= GlobalRegFile(i);
		end loop;
	end process;
	
	process (GlobalPC)    
	begin        
		observePC <= GlobalPC;
	end process;
	
	process (Globalmem)    
	begin
   for i in 0 TO 31 loop            
        observemem(i) <= Globalmem(i);
   end loop;
	end process;
	
	process (Globalmemdata)    
	begin
   for i in 0 TO 31 loop            
        observememdata(i) <= Globalmemdata(i);
   end loop;
	end process;
	
	process begin
		wait for 3 ns;
		tb_rst <= '0';
		wait for 300 ns;
		tb_rst <= '1';
	end process;
	
	
end architecture aBanch;
