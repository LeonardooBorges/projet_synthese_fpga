LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity ALU is
	port (
		A  : in  signed(31 downto 0);   -- operand A
		B  : in  signed(31 downto 0);   -- operand B
		OP : in  unsigned(3 downto 0); -- opcode
		Y  : out signed(31 downto 0);  -- operation result
		Z  : out std_logic -- zero
	);	
end ALU;

architecture behavioral of ALU is
signal aux_y : signed(31 downto 0);
begin
	process(A, B, OP) begin
		case OP is  -- decode the opcode and perform the operation:
			when "0000" =>  aux_y <= A + B;                     -- add
			when "0001" =>  aux_y <= A - B;                     -- subtract
			when "0010" =>  aux_y <= SHIFT_RIGHT(B, TO_INTEGER(A)); -- shift right
			when "0011" =>  aux_y <= SHIFT_LEFT(B, TO_INTEGER(A));  -- shift left
			when "0100" =>                                      -- less then
				if A < B then
					aux_y <= x"00000001";
				else
					aux_y <= (others => '0');
				end if;
			when "0101" =>  aux_y <= A and B;                  -- bitwise AND
			when "0110" =>  aux_y <= A or B;                   -- bitwise OR
			when "0111" =>  aux_y <= A xor B;                  -- bitwise XOR
			when "1000" =>  aux_y <= A nor B;                  -- bitwise NOR
			when "1001" =>  aux_y <= TO_SIGNED(TO_INTEGER(A)*TO_INTEGER(B),32);                  -- bitwise NOR
			when "1010" =>  aux_y <= A/B;                  -- bitwise NOR
			when others => NULL;
		end case;
		if aux_y = 0 then 
			Z <= '1';
		else
			Z <= '0';
		end if;
		Y <= aux_y;
  end process; 
end behavioral;