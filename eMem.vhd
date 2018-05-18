LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eMem IS
	PORT (
		SIGNAL Address : IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		SIGNAL WriteData : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		SIGNAL clk, MemWrite, loadb, loadbu, storeb, memdata_rst : IN STD_LOGIC;
		SIGNAL ReadData : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END ENTITY eMem;

USE WORK.SpyOnMySigPkg.ALL;

ARCHITECTURE aMem OF eMem IS
TYPE mem32w IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem : mem32w := ((OTHERS => (OTHERS => '0'))); 

BEGIN

	PROCESS (mem)    
	BEGIN
   	FOR i IN 0 TO 31 LOOP            
        	Globalmemdata(i) <= mem(i);
   	END LOOP;
	END PROCESS;

	PROCESS (clk, memdata_rst)
	VARIABLE WordNumb : INTEGER RANGE 0 TO 31;
	VARIABLE ByteNumb : INTEGER RANGE 0 TO 3;
	VARIABLE tmp : INTEGER RANGE 0 TO 31;
	VARIABLE tmp2 : STD_LOGIC;
	BEGIN
		IF memdata_rst = '1' THEN
			mem <= ((OTHERS => (OTHERS => '0')));
		ELSIF rising_edge(clk) THEN
			WordNumb := to_integer(unsigned(Address))/4;
			ByteNumb := to_integer(unsigned(Address)) rem 4;
			tmp := 31-ByteNumb*8; -- Position of the first bit of the adressed byte
			tmp2 := mem(WordNumb)(tmp); -- First bit of the adressed byte
			
			IF loadb='0' THEN
				ReadData <= mem(WordNumb);
			ELSIF loadb='1' AND loadbu='1' THEN	-- Zero extends
				ReadData(31 DOWNTO 8) <= x"000000";
				ReadData(7 DOWNTO 0) <= mem(WordNumb)(tmp DOWNTO tmp-7);
			ELSIF loadb='1' AND loadbu='0' THEN	-- Sign extends
				ReadData(31 DOWNTO 8) <= (others => tmp2);
				ReadData(7 DOWNTO 0) <= mem(WordNumb)(tmp DOWNTO tmp-7);
			END IF;
			
			IF MemWrite='1' AND storeb='1' THEN
				mem(WordNumb)(tmp DOWNTO tmp-7) <= WriteData(7 DOWNTO 0);
			ELSIF MemWrite='1' THEN
				mem(WordNumb) <= WriteData;
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE aMem;
