LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eMem IS
PORT (
		SIGNAL Address : INTEGER RANGE 0 TO 992; -- 0 to (31words*32bits-1)
		SIGNAL WriteData : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		SIGNAL clk, MemWrite : IN STD_LOGIC;
		SIGNAL ReadData : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
END ENTITY eMem;


ARCHITECTURE aMem OF eMem IS
SIGNAL mem32w : STD_LOGIC_VECTOR (0 TO 1023); -- 32 words of 32 bits = 1024 bits


BEGIN
	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			ReadData <= mem32w(Address TO Address+31);
			IF MemWrite='1' THEN
				mem32w(Address TO Address+31) <= WriteData;
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE aMem;