LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity ALU is
	port (
		A  : in  signed(31 downto 0);   -- operand A
		B  : in  signed(31 downto 0);   -- operand B
		OP : in  unsigned(2 downto 0); -- opcode
		Y  : out signed(31 downto 0);  -- operation result
		Z  : out std_logic -- zero
	);	
end ALU;

architecture behavioral of ALU is
signal aux_y : signed(31 downto 0);
begin
	process(A, B, OP) begin
		case OP is  -- decode the opcode and perform the operation:
			when "000" =>  aux_y <= A + B;   -- add
			when "001" =>  aux_y <= A - B;   -- subtract
			when "010" =>  aux_y <= A - 1;   -- decrement
			when "011" =>  aux_y <= A + 1;   -- increment
			when "100" =>  aux_y <= not A;   -- 1's complement
			when "101" =>  aux_y <= A and B; -- bitwise AND
			when "110" =>  aux_y <= A or B;  -- bitwise OR
			when "111" =>  aux_y <= A xor B; -- bitwise XOR
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