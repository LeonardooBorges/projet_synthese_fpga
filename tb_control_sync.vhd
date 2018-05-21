LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
USE work.constants.all;
USE work.functions_pack.all;

entity tb_control_sync is
end tb_control_sync;

architecture test of tb_control_sync is

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
			current_state : inout std_logic_vector(2 downto 0)
		);	
	end component;
	
	-- control PORTS
	signal CLOCK    : std_logic;
	signal RESET    : std_logic;
	signal OP       : std_logic_vector(5 downto 0);  -- opcode
	signal func     : std_logic_vector(5 downto 0);  -- func code
	signal RegDst   : std_logic;  -- Register destination
	signal Jump     : std_logic;
	signal JumpR    : std_logic;  -- Jump register
	signal beq      : std_logic;  -- Branch if equals
	signal MemToReg : std_logic;  -- Memory to register
	signal ALUop    : std_logic_vector(3 downto 0);  -- ALU op code
	signal MemWrite : std_logic;  -- Memory write
	signal ALUsrc1  : std_logic;
	signal ALUsrc2  : std_logic;
	signal RegWrite : std_logic;  -- Register write
	signal bne      : std_logic;  -- Branch if not equals
	signal LoadBU   : std_logic;  -- Load byte unsigned
	signal LoadB    : std_logic;  -- Load byte
	signal storeB   : std_logic;
	signal JumpAL   : std_logic;	-- Jump and link
	signal PC_EN    : std_logic;
	signal current_state : std_logic_vector(2 downto 0);
	
	constant CLK_PERIOD : time := 100 ns;
	
	signal sim_finished : boolean := false;
	
	-- 
	constant tb_PC_EN    : std_logic := '1';
	constant tb_MemWrite : std_logic := '1';
	constant tb_RegWrite : std_logic := '1';
	constant tb_ALUsrc1  : std_logic := '1';
	constant tb_ALUsrc2  : std_logic := '1';
	constant tb_MemToReg : std_logic := '1';
	constant tb_RegDst   : std_logic := '1';
	constant tb_JumpAL   : std_logic := '1';
	constant tb_LoadB    : std_logic := '1';
	constant tb_LoadBU   : std_logic := '1';
	constant tb_storeB   : std_logic := '1';
	constant tb_Jump     : std_logic := '1';
	constant tb_beq      : std_logic := '1';
	constant tb_bne      : std_logic := '1';
	constant tb_JumpR    : std_logic := '1';
	constant tb_ALUop    : std_logic := '1';
	
begin
	
	dut: control_sync port map(CLOCK, RESET, OP, func, RegDst, Jump, JumpR, beq, MemToReg, ALUop, MemWrite, 
										ALUsrc1, ALUsrc2, RegWrite, bne, LoadBU, LoadB, storeB, JumpAL, PC_EN, current_state);
					
	clk_generation: process
	begin
		if not sim_finished then
			CLOCK <= '1';
			wait for CLK_PERIOD/2;
			CLOCK <= '0';
			wait for CLK_PERIOD/2;
		else
			wait;
		end if;
	end process clk_generation;
					

	-- Test control
	simulation: process
	
		procedure async_reset is
		begin
			wait until rising_edge(CLOCK);
			wait for CLK_PERIOD/4;
			RESET <= '1';
			
			wait for CLK_PERIOD/2;
			RESET <= '0';
		end procedure async_reset;
		
		procedure check_code(constant test_identifier : in String;
									constant op_in : in std_logic_vector(5 downto 0);
									constant func_in : in std_logic_vector(5 downto 0);
									constant res_execute : in std_logic_vector(10 downto 0);
									constant res_write_back : in std_logic_vector(9 downto 0)) is
			variable res8 : std_logic_vector(10 downto 0);
			variable res6 : std_logic_vector(9 downto 0);
		begin
		
			-- Assign values to circuit inputs
			
			OP <= op_in;
			func <= func_in;
			
			assert fetch_decode_assert(PC_EN, MemWrite, RegWrite) = '1'
			report "Test " & test_identifier & "- error fetch " & integer'image(to_integer(unsigned(current_state)))
			severity error;
			
			wait until rising_edge(CLOCK);
			wait for CLK_PERIOD/4;
			
			assert fetch_decode_assert(PC_EN, MemWrite, RegWrite) = '1'
			report "Test " & test_identifier & " - error decode " & integer'image(to_integer(unsigned(current_state)))
			severity error;
			
			wait until rising_edge(CLOCK);
			wait for CLK_PERIOD/4;
			
			res8 := PC_EN & MemWrite & RegWrite & ALUsrc1 & ALUsrc2 & MemToReg & RegDst & JumpAL & LoadB & LoadBU & storeB;
			assert match_assert(res_execute, res8)
			report "Test " & test_identifier & "- error execute " & integer'image(to_integer(unsigned(current_state))) & lf &
					 "   " & to_string(res_execute) & " = " & to_string(res8)
			severity error;
			
			wait until rising_edge(CLOCK);
			wait for CLK_PERIOD/4;
		
			res6 := PC_EN & MemWrite & RegWrite & Jump & beq & bne & ALUsrc1 & ALUsrc2 & JumpAL & JumpR;
			assert match_assert(res_write_back, res6)
			report "Test " & test_identifier & " - error write_back " & integer'image(to_integer(unsigned(current_state))) & lf &
					 "   " & to_string(res_write_back)  & " = " & to_string(res6)
			severity error;
			
			wait until rising_edge(CLOCK);
			wait for CLK_PERIOD/4;

		end procedure check_code;
		
	begin
		
		-- execute order    : PC_EN & MemWrite & RegWrite & ALUsrc1 & ALUsrc2 & MemToReg & RegDst & JumpAL & LoadB & LoadBU & storeB;
		-- write back order : PC_EN & MemWrite & RegWrite & Jump & beq & bne & ALUsrc1 & ALUsrc2 & JumpAL & JumpR;
		
		async_reset;		
		check_code("Multiplication",      R_type, c_mult, "00100010---", "100000----");
		check_code("Division",            R_type, c_div,  "00100010---", "100000----");
		check_code("Sum",                 R_type, c_add,  "00100010---", "100000----");
		check_code("Subtraction",         R_type, c_sub,  "00100010---", "100000----");
		check_code("And bitwise",         R_type, c_and,  "00100010---", "100000----");
		check_code("Or bitwise",          R_type, c_or,   "00100010---", "100000----");
		check_code("Xor bitwise",         R_type, c_xor,  "00100010---", "100000----");
		check_code("Nor bitwise",         R_type, c_nor,  "00100010---", "100000----");
		check_code("Set less than",       R_type, c_slt,  "00100010---", "100000----");
		
		check_code("Shift left logical",  R_type, c_sll,  "00110010---", "100000----");
		check_code("Shift right logical", R_type, c_srl,  "00110010---", "100000----");
		
		
		check_code("Branch equals",       c_beq,  "------",  "000--------", "100-1000--");
		check_code("Branch not equals",   c_bne,  "------",  "000--------", "100-0100--");
		
		check_code("Store word",          c_sw,   "------",   "01001------", "100000----");
		check_code("Store byte",          c_sb,   "------",   "01001-----1", "100000----");
		
		
		sim_finished <= true;
		wait;
	end process simulation;
end test;