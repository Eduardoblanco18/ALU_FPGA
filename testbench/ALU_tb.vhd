library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_tb is
	end entity ALU_tb;
	
architecture tb of ALU_tb is
	signal vector_e: std_logic_vector (10 downto 0);
	signal vector_LEDR: std_logic_vector (5 downto 0);
	signal vector_HEX0, vector_HEX2, vector_HEX3, vector_HEX4, vector_HEX5, vector_HEX6, vector_HEX7: std_logic_vector (6 downto 0);
	
	begin
	uut: entity work.ALU port map(SW => vector_e, LEDR => vector_LEDR, HEX0 => vector_HEX0, HEX2 => vector_HEX2, HEX3 => vector_HEX3, HEX4 => vector_HEX4, HEX5 => vector_HEX5, HEX6 => vector_HEX6, HEX7 => vector_HEX7);
		
		process
			begin
				for i in 0 to 2047 loop
					vector_e <= std_logic_vector(to_unsigned(i,11));
					wait for 100ps;
				end loop;
				wait;
			end process;
		end architecture tb;
						
