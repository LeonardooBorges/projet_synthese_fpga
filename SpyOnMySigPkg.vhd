LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

package SpyOnMySigPkg is
	type type_regmem is array (1 TO 31) of std_logic_vector(31 downto 0);
	type type_instmem is array (0 TO 31) of std_logic_vector(31 downto 0);
	type type_mem32w is array (0 TO 31) of std_logic_vector(31 downto 0);
	signal GlobalRegFile : type_regmem ; 
	signal Globalmem : type_instmem;
	signal Globalmemdata : type_mem32w;
	signal GlobalPC : std_logic_vector (31 downto 0);
	
	
end package SpyOnMySigPkg ; 
