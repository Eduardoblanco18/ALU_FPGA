library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_4_bits_tb is
	end entity adder_4_bits_tb;

architecture tb of adder_4_bits_tb is
	signal vector_A, vector_B, vector_SOMA : std_logic_vector (3 downto 0);
	signal CIN: std_logic;
	signal COUT, OVERFLOW: std_logic;
	
	begin
		uut: entity work.adder_4_bits port map (a => vector_A, b=> vector_B, cin => CIN, soma => vector_SOMA, cout => COUT, overflow => OVERFLOW);
		
		process
			begin
				for i in 0 to 15 loop
					vector_A <= std_logic_vector(to_unsigned(i,4));
					for j in 0 to 15 loop
						vector_B <= std_logic_vector(to_unsigned(j,4));
						CIN <= '0';
						wait for 100ps;
						CIN <= '1';
						wait for 100ps;
					end loop;
				end loop;
				wait;
			end process;
		end architecture tb;