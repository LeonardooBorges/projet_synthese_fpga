LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eBanch is
end entity eBanch;

use work.SpyOnMySigPkg.all;

architecture aBanch of eBanch is

signal observeRegFile : type_regmem;
signal observemem : type_instmem;
signal observememdata : type_mem32w;
signal observePC : std_logic_vector (31 downto 0);
signal tb_clk, tb_rst : std_logic := '1';

component eMicroprocessor is
	port (
		signal micro_clk, control_rst, regfile_rst, pc_rst, memdata_rst : in std_logic
	);
end component;
	
begin

	tb_clk <=  '1' after 0.5 ns when tb_clk = '0' else
		'0' after 0.5 ns when tb_clk = '1';

	instMicroprocessor : eMicroprocessor
		port map(micro_clk => tb_clk, control_rst => tb_rst,
		regfile_rst => tb_rst, pc_rst => tb_rst, memdata_rst => tb_rst);

	process (GlobalRegFile)
	begin
		for i in 1 TO 31 loop            
			observeRegFile(i) <= GlobalRegFile(i);
		end loop;
	end process;
	
	process (GlobalPC)    
	begin        
		observePC <= GlobalPC;
	end process;
	
	process (Globalmem)    
	begin
   for i in 0 TO 31 loop            
        observemem(i) <= Globalmem(i);
   end loop;
	end process;
	
	process (Globalmemdata)    
	begin
   for i in 0 TO 31 loop            
        observememdata(i) <= Globalmemdata(i);
   end loop;
	end process;
	
	process begin
		wait for 3 ns;
		tb_rst <= '0';
	end process;
	
	
end architecture aBanch;
