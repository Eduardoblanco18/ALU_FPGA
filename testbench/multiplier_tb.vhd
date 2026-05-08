library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier_tb is
	end entity multiplier_tb;
 
architecture tb of multiplier_tb is
	signal vector_A, vector_B : std_logic_vector (1 downto 0);
	signal vector_RES : std_logic_vector (3 downto 0);
	
	begin
		uut: entity work.multiplier_2_bits port map (a => vector_A, b => vector_B, Res => vector_RES);
		
		process
			begin
				for i in 0 to 3 loop
					vector_A <= std_logic_vector(to_unsigned(i,2));
						for j in 0 to 3 loop
							vector_B <= std_logic_vector(to_unsigned(j,2));
							wait for 100ps;
							end loop;
						end loop;
					wait;
				end process;
			end architecture tb;