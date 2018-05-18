LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eRegFile IS
	PORT (
		SIGNAL ReadAddr1, ReadAddr2, WriteAddr : IN INTEGER RANGE 0 TO 31;
		SIGNAL WriteData : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		SIGNAL clk, RegWrite, regfile_rst : IN STD_LOGIC;
		SIGNAL ReadData1, ReadData2 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END ENTITY eRegFile;


USE WORK.SpyOnMySigPkg.ALL;

ARCHITECTURE aRegfile OF eRegFile IS
TYPE regmem IS ARRAY (1 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RegFile : regmem := ((OTHERS => (OTHERS => '0')));

BEGIN

	PROCESS (RegFile)    
	BEGIN
	FOR i IN 1 TO 31 LOOP            
		GlobalRegFile(i) <= RegFile(i);
	END LOOP;
	END PROCESS;
	
	PROCESS (clk, regfile_rst)
	BEGIN
	IF regfile_rst = '1' THEN
		RegFile <= ((OTHERS => (OTHERS => '0')));
	ELSIF rising_edge(clk) THEN
		IF ReadAddr1=0 THEN
			ReadData1 <= x"00000000";
		ELSE
			ReadData1 <= RegFile(ReadAddr1);
		END IF;
		
		IF ReadAddr2=0 THEN
			ReadData2 <= x"00000000";
		ELSE
			ReadData2 <= RegFile(ReadAddr2);
		END IF;
		
		IF RegWrite='1' AND WriteAddr/=0 THEN
			RegFile(WriteAddr) <= WriteData;
		END IF;
	END IF;
	END PROCESS;
END ARCHITECTURE aRegFile;
