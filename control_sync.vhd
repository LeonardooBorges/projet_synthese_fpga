LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
USE work.constants.all;
USE work.functions_pack.all;

entity control_sync is
	port (
		CLOCK    : in  std_logic;
		RESET    : in  std_logic;
		OP       : in  std_logic_vector(5 downto 0);  -- opcode
		func     : in  std_logic_vector(5 downto 0);  -- func code
		RegDst   : out std_logic;  -- Register destination
		Jump     : out std_logic;
		JumpR    : out std_logic;  -- Jump register
		beq      : out std_logic;  -- Branch if equals
		MemToReg : out std_logic;  -- Memory to register
		ALUop    : out std_logic_vector(3 downto 0);  -- ALU op code
		MemWrite : out std_logic;  -- Memory write
		ALUsrc1  : out std_logic;
		ALUsrc2  : out std_logic;
		RegWrite : out std_logic;  -- Register write
		bne      : out std_logic;  -- Branch if not equals
		LoadBU   : out std_logic;  -- Load byte unsigned
		LoadB    : out std_logic;  -- Load byte
		storeB   : out std_logic;
		JumpAL   : out std_logic;	-- Jump and link
		PC_EN    : out std_logic;
		current_state : out std_logic_vector(2 downto 0)
	);	
end control_sync;

architecture arch of control_sync is
	type state_type is (fetch, decode, execute, memory, write_back);
	signal state : state_type;
	
begin
	process(CLOCK, RESET)
	begin
		if RESET = '1' then
			state <= fetch;
		elsif CLOCK'event and CLOCK = '1' then
			case state is
				when fetch => 
					state <= decode;
					
				when decode =>
					if OP = R_type and func = c_jr then
						state <= write_back;
					elsif OP = c_j or OP = c_jal then
						state <= write_back;
					else
						state <= execute;
					end if;
					
				when execute =>
					if OP = c_lb or OP = c_lw or OP = c_lbu then
						state <= memory;
					else
						state <= write_back;
					end if;
					
				when memory => 
					state <= write_back;
					
				when write_back => 
					state <= fetch;
					
				when others => 
					state <= fetch;					
			end case;
		end if;
	end process;
	
	process(state, OP, func)
	begin
		RegDst   <= '0';
		Jump     <= '0';
		JumpR    <= '0';
		beq      <= '0';
		MemToReg <= '0';
		ALUop    <= "0000";
		MemWrite <= '0';
		ALUsrc1  <= '0';
		ALUsrc2  <= '0';
		RegWrite <= '0';
		bne      <= '0';
		LoadBU   <= '0';
		LoadB    <= '0';
		storeB   <= '0';
		JumpAL   <= '0';
		PC_EN    <= '0';
		case state is
			when fetch =>
				current_state <= "000";
				
			when decode =>
				current_state <= "001";
				
			when execute =>
				current_state <= "010";		
				if OP = c_sb or OP = c_sw then
					MemWrite <= '1';
				end if;
				
				if OP(5 downto 3) = op_imm then
					RegWrite <= '1';
				end if;
				
				if OP = R_type then
					RegWrite <= '1';
					RegDst   <= '1';
					if func = c_sll or func = c_srl then
						ALUsrc1 <= '1';
					end if;
				elsif not (OP = c_beq or OP = c_bne) then
					ALUsrc2 <= '1';
				end if;
				
				if OP = c_lb then
					LoadB <= '1';
				end if;
				
				if OP = c_lbu then
					LoadB  <= '1';
					LoadBU <= '1';
				end if;
				
				if OP = c_sb then
					storeB <= '1';
				end if;
				
				case OP is
					when R_type =>
						case func is
							when c_sll  => ALUop <= alu_sll;
							when c_srl  => ALUop <= alu_srl;
							when c_mult => ALUop <= alu_mult;
							when c_div  => ALUop <= alu_div;
							when c_sub  => ALUop <= alu_sub;
							when c_and  => ALUop <= alu_and;
							when c_or   => ALUop <= alu_or;
							when c_xor  => ALUop <= alu_xor;
							when c_nor  => ALUop <= alu_nor;
							when c_slt  => ALUop <= alu_slt;
							when others => ALUop <= alu_add;
						end case;
					when c_andi => ALUop <= alu_and;
					when c_ori  => ALUop <= alu_or;
					when c_xori => ALUop <= alu_xor;
					when c_slti => ALUop <= alu_slt;
					when others => ALUop <= alu_add;
				end case;
				
			when memory => 
				current_state <= "011";
				RegWrite <= '1';
				MemToReg <= '1';
				
			when write_back =>
				current_state <= "100";
				PC_EN    <= '1';
				
				if (OP = R_type and func = c_jr) or OP = c_j or OP = c_jal then
					Jump <= '1';
				end if;
				
				if OP = R_type and func = c_jr then
					JumpR <= '1';
				end if;
				
				if OP = c_beq or OP = c_bne then
					ALUop   <= alu_sub; 
				end if;
				
				if OP = c_beq then
					beq <= '1';
				elsif OP = c_bne then
					bne <= '1';
				end if;
				
				if OP = c_jal then
					RegWrite <= '1';
					JumpAL <= '1';
				end if;
				
			when others =>
				current_state <= "111";
			
		end case;
	end process;
	
end arch;