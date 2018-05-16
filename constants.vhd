LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

package constants is
	-- ALU constants
	constant alu_add : std_logic_vector(3 downto 0) := "0000";
	constant alu_sub : std_logic_vector(3 downto 0) := "0001";
	constant alu_srl : std_logic_vector(3 downto 0) := "0010";
	constant alu_sll : std_logic_vector(3 downto 0) := "0011";
	constant alu_slt : std_logic_vector(3 downto 0) := "0100";
	constant alu_and : std_logic_vector(3 downto 0) := "0101";
	constant alu_or  : std_logic_vector(3 downto 0) := "0110";
	constant alu_xor : std_logic_vector(3 downto 0) := "0111";
	constant alu_nor : std_logic_vector(3 downto 0) := "1000";
	
	
	-- Control constants
	constant R_type  : std_logic_vector(5 downto 0) := "000000";
	constant c_sll   : std_logic_vector(5 downto 0) := "000000";
	constant c_srl   : std_logic_vector(5 downto 0) := "000010";
	constant c_jr    : std_logic_vector(5 downto 0) := "001000";
	constant c_add   : std_logic_vector(5 downto 0) := "100000";
	constant c_sub   : std_logic_vector(5 downto 0) := "100010";
	constant c_and   : std_logic_vector(5 downto 0) := "100100";
	constant c_or    : std_logic_vector(5 downto 0) := "100101";
	constant c_nor   : std_logic_vector(5 downto 0) := "100111";
	constant c_slt   : std_logic_vector(5 downto 0) := "101010";
	
	constant c_j     : std_logic_vector(5 downto 0) := "000010";
	constant c_jal   : std_logic_vector(5 downto 0) := "000011";
	constant c_beq   : std_logic_vector(5 downto 0) := "000100";
	constant c_bne   : std_logic_vector(5 downto 0) := "000101";
	
	constant op_imm  : std_logic_vector(2 downto 0) := "001";
	constant c_addi  : std_logic_vector(5 downto 0) := "001000";
	constant c_slti  : std_logic_vector(5 downto 0) := "001010";
	constant c_andi  : std_logic_vector(5 downto 0) := "001100";
	constant c_ori   : std_logic_vector(5 downto 0) := "001101";
	constant c_xori  : std_logic_vector(5 downto 0) := "001110";
	
	constant c_lb    : std_logic_vector(5 downto 0) := "011000";
	constant c_lw    : std_logic_vector(5 downto 0) := "011011";
	constant c_lbu   : std_logic_vector(5 downto 0) := "011100";
	constant c_sb    : std_logic_vector(5 downto 0) := "100000";
	constant c_sw    : std_logic_vector(5 downto 0) := "100011";
	
end constants;