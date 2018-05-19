LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

ENTITY eRegFile is
	port (
		signal ReadAddr1, ReadAddr2, WriteAddr : in INTEGER range 0 TO 31;
		signal WriteData : in std_logic_vector (31 downto 0);
		signal clk, RegWrite, regfile_rst : in std_logic;
		signal ReadData1, ReadData2 : out std_logic_vector (31 downto 0)
	);
end ENTITY eRegFile;


use work.SpyOnMySigPkg.all;

architecture aRegfile of eRegFile is
type regmem is array (1 TO 31) of std_logic_vector(31 downto 0);
signal RegFile : regmem := ((others => (others => '0')));

begin

	process (RegFile)    
	begin
	for i in 1 TO 31 LOOP            
		GlobalRegFile(i) <= RegFile(i);
	end LOOP;
	end process;
	
	process (clk, regfile_rst)
	begin
	IF regfile_rst = '1' then
		RegFile <= ((others => (others => '0')));
	elsif rising_edge(clk) then
		IF ReadAddr1=0 then
			ReadData1 <= x"00000000";
		else
			ReadData1 <= RegFile(ReadAddr1);
		end IF;
		
		IF ReadAddr2=0 then
			ReadData2 <= x"00000000";
		else
			ReadData2 <= RegFile(ReadAddr2);
		end IF;
		
		IF RegWrite='1' and WriteAddr/=0 then
			RegFile(WriteAddr) <= WriteData;
		end IF;
	end IF;
	end process;
end architecture aRegFile;
