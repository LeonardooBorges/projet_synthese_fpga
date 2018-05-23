LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eInstMem is
	port (
		signal ReadAddr : in std_logic_vector (6 downto 0);
		signal clk : in std_logic;
		signal Instruction31_0 : out std_logic_vector (31 downto 0)
	);
end entity eInstMem;

use work.SpyOnMySigPkg.all;

architecture aInstMem of eInstMem is
type instmem is array (0 TO 31) of std_logic_vector(31 downto 0);
signal mem : instmem := ((("00100000000010000000000000000100"),("00100000000010010000000000000101"),("00100000000010100000000000001001"),("00100001000010000000000000000001"),("00010001000010011111111111111110"),("00100001000010000000000000000001"),("00010101000010101111111111111100"),("10101100000010100000000000000000"),others=> (others=>'0'))); --here we put the code that we want to execute






begin
	process (mem)    
	begin
	for i in 0 TO 31 LOOP            
		Globalmem(i) <= mem(i);
	end LOOP;
	end process;

	process (clk)
	begin
	if rising_edge(clk) then
		Instruction31_0 <= mem(to_integer(unsigned(ReadAddr))/4);
	end if;
	end process;
end architecture aInstMem;
