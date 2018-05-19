LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eMem is
	port (
		signal Address : in std_logic_vector (6 downto 0);
		signal WriteData : in std_logic_vector (31 downto 0);
		signal clk, MemWrite, loadb, loadbu, storeb, memdata_rst : in std_logic;
		signal ReadData : out std_logic_vector (31 downto 0)
	);
end entity eMem;

use work.SpyOnMySigPkg.all;

architecture aMem of eMem is
TYPE mem32w is ARRAY (0 to 31) of std_logic_vector(31 downto 0);
signal mem : mem32w := ((others => (others => '0'))); 

begin

	process (mem)    
	begin
   	for i in 0 to 31 loop            
        	Globalmemdata(i) <= mem(i);
   	end loop;
	end process;

	process (clk, memdata_rst)
	variable WordNumb : integer range 0 to 31;
	variable ByteNumb : integer range 0 to 3;
	variable tmp : integer range 0 to 31;
	variable tmp2 : std_logic;
	begin
		if memdata_rst = '1' then
			mem <= ((others => (others => '0')));
		elsif rising_edge(clk) then
			WordNumb := to_integer(unsigned(Address))/4;
			ByteNumb := to_integer(unsigned(Address)) rem 4;
			tmp := 31-ByteNumb*8; -- Position of the first bit of the adressed byte
			tmp2 := mem(WordNumb)(tmp); -- First bit of the adressed byte
			
			if loadb='0' then
				ReadData <= mem(WordNumb);
			elsif loadb='1' and loadbu='1' then	-- Zero extends
				ReadData(31 downto 8) <= x"000000";
				ReadData(7 downto 0) <= mem(WordNumb)(tmp downto tmp-7);
			elsif loadb='1' and loadbu='0' then	-- Sign extends
				ReadData(31 downto 8) <= (others => tmp2);
				ReadData(7 downto 0) <= mem(WordNumb)(tmp downto tmp-7);
			end if;
			
			if MemWrite='1' and storeb='1' then
				mem(WordNumb)(tmp downto tmp-7) <= WriteData(7 downto 0);
			elsif MemWrite='1' then
				mem(WordNumb) <= WriteData;
			end if;
		end if;
	end process;
end architecture aMem;
