LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eInstMem IS
	PORT (
		SIGNAL ReadAddr : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		SIGNAL clk : IN STD_LOGIC;
		SIGNAL Instruction31_0 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END ENTITY eInstMem;



ARCHITECTURE aInstMem OF eInstMem IS
TYPE instmem IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem : instmem := ((("0010000000000001"&x"000D"),("0010000000000010"&x"0004"),("000000"&"00011"&"00001"&"00010"&"00000100000"),others=> (others=>'0'))); --here we put the code that we want to execute

BEGIN
	PROCESS (clk)
	BEGIN
	IF rising_edge(clk) THEN
		Instruction31_0 <= mem(to_integer(unsigned(ReadAddr))/4);
	END IF;
	END PROCESS;
END ARCHITECTURE aInstMem;