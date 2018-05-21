LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.constants.all;

package functions_pack is
	
	function fetch_decode_assert(PC_EN,MemWrite,RegWrite : in std_logic) return std_logic;
	
	function to_string (a: std_logic_vector) return string;
	
	function match_assert(expected,observed : std_logic_vector) return boolean;
	
end functions_pack;

package body functions_pack is

	function fetch_decode_assert(PC_EN,MemWrite,RegWrite : in std_logic) return std_logic is
	begin
		
		return not (PC_EN or MemWrite or RegWrite);
		
	end fetch_decode_assert;
	
	function to_string (a: std_logic_vector) return string is
		variable b : string (1 to a'length) := (others => NUL);
		variable stri : integer := 1; 
	begin
		for i in a'range loop
			b(stri) := std_logic'image(a((i)))(2);
			stri := stri+1;
		end loop;
		return b;
	end to_string;
	
	function match_assert(expected,observed : std_logic_vector) return boolean is
	begin
		for i in expected'range loop
			if not (expected(i) = '-') then
				if not (expected(i) = observed(i)) then
					return false;
				end if;
			end if;
		end loop;
		return true;
	end match_assert;

end functions_pack;