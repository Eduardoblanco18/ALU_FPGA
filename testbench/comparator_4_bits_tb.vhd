library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_4_bits_tb is
	end entity comparator_4_bits_tb;
	
architecture tb of comparator_4_bits_tb is
	signal vector_COMP: std_logic_vector (3 downto 0);
	signal signal_OVERFLOW, signal_EQU, signal_GRT, signal_LST: std_logic;
	
	begin
		uut: entity work.comparator_4_bits port map (Comp => vector_COMP, Overflow => signal_OVERFLOW, EQU => signal_EQU, GRT => signal_GRT, LST => signal_LST);
		
		process
			begin
				for i in 0 to 15 loop
					vector_COMP <= std_logic_vector(to_unsigned(i,4));
					signal_OVERFLOW <= '0';
					wait for 100ps;
					signal_OVERFLOW <= '1';
					wait for 100ps;
				end loop;
				wait;
			end process;
		end architecture;