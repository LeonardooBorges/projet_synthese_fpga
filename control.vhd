LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.constants.all;

entity CONTROL is
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
end CONTROL;

architecture behavioral of CONTROL is

begin
	process(OP, func) begin
		case OP is
			when R_type => -- R type
				case func is
					when c_sll => -- sll
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_sll;
						MemWrite <= '0';
						ALUsrc1  <= '1';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
					when c_srl => -- srl
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_srl;
						MemWrite <= '0';
						ALUsrc1  <= '1';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
					when c_jr => -- jr
						RegDst   <= '-';
						Jump     <= '1';
						JumpR    <= '1';
						BEQ      <= '-';
						MemToReg <= '-';
						ALUop    <= alu_add;
						MemWrite <= '0';
						ALUsrc1  <= '0';
						ALUsrc2  <= '0';
						RegWrite <= '0';
						WritePC  <= '0';
						BNEQ     <= '-';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '-';
					when c_add => -- add
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_add;
						MemWrite <= '0';
						ALUsrc1  <= '0';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
					when c_sub => -- sub
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_sub;
						MemWrite <= '0';
						ALUsrc1  <= '0';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
					when c_and => -- and
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_and;
						MemWrite <= '0';
						ALUsrc1  <= '0';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
					when c_or => -- or
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_or;
						MemWrite <= '0';
						ALUsrc1  <= '0';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
					when c_nor => -- nor
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_nor;
						MemWrite <= '0';
						ALUsrc1  <= '0';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
					when c_slt => -- slt 
						RegDst   <= '1';
						Jump     <= '0';
						JumpR    <= '-';
						BEQ      <= '0';
						MemToReg <= '0';
						ALUop    <= alu_slt;
						MemWrite <= '0';
						ALUsrc1  <= '0';
						ALUsrc2  <= '0';
						RegWrite <= '1';
						WritePC  <= '0';
						BNEQ     <= '0';
						LoadBU   <= '-';
						LoadB    <= '-';
						JumpAl   <= '0';
						when others => NULL;
				end case;
			when c_j => -- j
				RegDst   <= '-';
				Jump     <= '1';
				JumpR    <= '0';
				BEQ      <= '-';
				MemToReg <= '-';
				ALUop    <= (others => '-');
				MemWrite <= '0';
				ALUsrc1  <= '-';
				ALUsrc2  <= '-';
				RegWrite <= '0';
				WritePC  <= '0';
				BNEQ     <= '-';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '-';
			when c_jal => -- jal
				RegDst   <= '-';
				Jump     <= '1';
				JumpR    <= '0';
				BEQ      <= '-';
				MemToReg <= '-';
				ALUop    <= (others => '-');
				MemWrite <= '0';
				ALUsrc1  <= '-';
				ALUsrc2  <= '-';
				RegWrite <= '1';
				WritePC  <= '1';
				BNEQ     <= '-';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '1';
			when c_beq => -- beq
				RegDst   <= '-';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '1';
				MemToReg <= '-';
				ALUop    <= alu_sub;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '0';
				RegWrite <= '0';
				WritePC  <= '-';
				BNEQ     <= '0';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '-';
			when c_bne => -- bne
				RegDst   <= '-';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '-';
				ALUop    <= alu_sub;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '0';
				RegWrite <= '0';
				WritePC  <= '-';
				BNEQ     <= '1';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '-';
			when c_addi => -- addi
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '0';
				ALUop    <= alu_add;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '0';
			when c_slti => --slti
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '0';
				ALUop    <= alu_slt;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '0';
			when c_andi => -- andi
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '0';
				ALUop    <= alu_and;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '0';
			when c_ori => -- ori
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '0';
				ALUop    <= alu_or;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '0';
			when c_xori => -- xori
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '0';
				ALUop    <= alu_xor;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '0';
			when c_lb => -- lb
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '1';
				ALUop    <= alu_add;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '0';
				LoadB    <= '1';
				JumpAl   <= '0';
			when c_lw => -- lw
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '1';
				ALUop    <= alu_add;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '0';
				LoadB    <= '0';
				JumpAl   <= '0';
			when c_lbu => -- lbu
				RegDst   <= '0';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '1';
				ALUop    <= alu_add;
				MemWrite <= '0';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '1';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '1';
				LoadB    <= '1';
				JumpAl   <= '0';
			when c_sw => -- sw
				RegDst   <= '-';
				Jump     <= '0';
				JumpR    <= '-';
				BEQ      <= '0';
				MemToReg <= '-';
				ALUop    <= alu_add;
				MemWrite <= '1';
				ALUsrc1  <= '0';
				ALUsrc2  <= '1';
				RegWrite <= '0';
				WritePC  <= '0';
				BNEQ     <= '0';
				LoadBU   <= '-';
				LoadB    <= '-';
				JumpAl   <= '-';
			when others => NULL;
		end case;
	end process;
end behavioral;