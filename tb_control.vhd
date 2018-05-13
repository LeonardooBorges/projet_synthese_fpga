LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity tb_control is
end tb_control;

architecture test of tb_control is

	component CONTROL
		port (
			OP       : in  std_logic_vector(5 downto 0);  -- opcode
			func     : in  std_logic_vector(5 downto 0);  -- func code
			RegDst   : out std_logic;  -- Register destination
			Jump     : out std_logic;
			JumpR    : out std_logic;  -- Jump register
			BEQ      : out std_logic;  -- Branch if equals
			MemToReg : out std_logic;  -- Memory to register
			ALUop    : out std_logic_vector(3 downto 0);  -- ALU op code
			MemWrite : out std_logic;  -- Memory write
			ALUsrc1  : out std_logic;
			ALUsrc2  : out std_logic;
			RegWrite : out std_logic;  -- Register write
			WritePC  : out std_logic;
			BNEQ     : out std_logic;  -- Branch if not equals
			LoadBU   : out std_logic;  -- Load byte unsigned
			LoadB    : out std_logic;  -- Load byte
			JumpAl   : out std_logic   -- Jump and link
		);
	end component;

	-- Time between test vectors
	constant DELTA_T : time := 100 ns;

	-- control PORTS
	signal OP       : std_logic_vector(5 downto 0);  -- opcode
	signal func     : std_logic_vector(5 downto 0);  -- func code
	signal RegDst   : std_logic;  -- Register destination
	signal Jump     : std_logic;
	signal JumpR    : std_logic;  -- Jump register
	signal BEQ      : std_logic;  -- Branch if equals
	signal MemToReg : std_logic;  -- Memory to register
	signal ALUop    : std_logic_vector(3 downto 0);  -- ALU op code
	signal MemWrite : std_logic;  -- Memory write
	signal ALUsrc1  : std_logic;
	signal ALUsrc2  : std_logic;
	signal RegWrite : std_logic;  -- Register write
	signal WritePC  : std_logic;
	signal BNEQ     : std_logic;  -- Branch if not equals
	signal LoadBU   : std_logic;  -- Load byte unsigned
	signal LoadB    : std_logic;  -- Load byte
	signal JumpAl   : std_logic;   -- Jump and link
	
begin
	
	-- Portmap DUT (Design Under Test)
	dut: control port map(
		OP       => OP,
		func     => func,
		RegDst   => RegDst,
		Jump     => Jump,
		JumpR    => JumpR,
		BEQ      => BEQ,
		MemToReg => MemToReg,
		ALUop    => ALUop,
		MemWrite => MemWrite,
		ALUsrc1  => ALUsrc1,
		ALUsrc2  => ALUsrc2,
		RegWrite => RegWrite,
		WritePC  => WritePC,
		BNEQ     => BNEQ,
		LoadBU   => LoadBU,
		LoadB    => LoadB,
		JumpAl   => JumpAl
	);
	
	-- Test control
	simulation: process
		
		procedure check_code(constant op_in : in std_logic_vector(5 downto 0);
									constant func_in : in std_logic_vector(5 downto 0);
									constant res_expected : in std_logic_vector(17 downto 0)) is
			variable res : std_logic_vector(17 downto 0);
		begin
			-- Assign values to circuit inputs
			OP <= op_in;
			func <= func_in;
			
			wait for 100 ns;
			
			-- Check output
			res := RegDst & Jump & JumpR & BEQ & MemToReg & ALUop & MemWrite & ALUsrc1 & ALUsrc2 & RegWrite & WritePC & BNEQ & LoadBU & LoadB & JumpAl;
			assert res = res_expected
			report "error"
			severity error;
		end procedure check_code;
	
	begin
	
		-- Tests
		check_code("000000","000000","10-000000000100000");
		check_code("000000","000000","10-000011010100001");
		check_code("000000","000001","10-000001000100000");
		check_code("000000","000001","10-000011010100000");
		wait;
		
	end process simulation;
end test;
