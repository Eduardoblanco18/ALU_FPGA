library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder_tb is
	end entity full_adder_tb;
 
architecture tb of full_adder_tb is
	signal vector_in: std_logic_vector (2 downto 0);
	signal SUM, COUT: std_logic;
	
	begin
		uut: entity work.full_adder port map (a => vector_in(0), b => vector_in(1), cin => vector_in(2), sum => SUM, cout => COUT);
		
		process
			begin
				for i in 0 to 7 loop
					vector_in <= std_logic_vector(to_unsigned(i,3));
					wait for 100ps;
				end loop;
				wait;
			end process;
		end architecture tb;