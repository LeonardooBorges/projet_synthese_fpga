LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use work.constants.all;

entity ALU is
	port (
		A  : in  signed(31 downto 0);   -- operand A
		B  : in  signed(31 downto 0);   -- operand B
		OP : in  std_logic_vector(3 downto 0); -- opcode
		Y  : out signed(31 downto 0);  -- operation result
		Z  : out std_logic -- zero
	);	
end ALU;

architecture behavioral of ALU is
begin
	process(A, B, OP) 
	variable aux_y : signed(31 downto 0);
	begin
		case OP is  -- decode the opcode and perform the operation:
			when alu_add =>  aux_y := A + B;
			when alu_sub =>  aux_y := A - B;
			when alu_srl =>  aux_y := SHIFT_RIGHT(B, TO_INTEGER(A));
			when alu_sll =>  aux_y := SHIFT_LEFT(B, TO_INTEGER(A));
			when alu_slt =>
				if A < B then
					aux_y := x"00000001";
				else
					aux_y := (others => '0');
				end if;
			when alu_and  =>  aux_y := A and B;
			when alu_or   =>  aux_y := A or B;
			when alu_xor  =>  aux_y := A xor B;
			when alu_nor  =>  aux_y := A nor B;
			when alu_mult =>  aux_y := TO_SIGNED(TO_INTEGER(A)*TO_INTEGER(B),32);
			when alu_div  =>  aux_y := TO_SIGNED(TO_INTEGER(A)/TO_INTEGER(B),32); 
			when others   =>  aux_y := A + B;
		end case;
		if aux_y = 0 then 
			Z <= '1';
		else
			Z <= '0';
		end if;
		Y <= aux_y;
  end process; 
end behavioral;