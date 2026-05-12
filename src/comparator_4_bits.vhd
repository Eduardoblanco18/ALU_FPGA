Library ieee;
use ieee.std_logic_1164.all;

entity comparator_4_bits is --criação das entradas e saídas que serão utilizadas no circuito
			port (
					Comp: in std_logic_vector (3 downto 0);
					Overflow: in std_logic;
					EQU, GRT, LST: out std_logic
					);
			end entity comparator_4_bits;
			
architecture bhv_comparator of comparator_4_bits is
	signal EQU_interno: std_logic;
	--utiliza o resultado da subtração para afirmar que A>B, A<B ou A=B e coloca a saída em seu respectivo led
		begin 
			
			EQU_interno <= NOT (Comp(0) OR Comp(1) OR Comp(2) OR Comp(3));
			
			GRT <= NOT EQU_interno AND (Overflow XNOR Comp(3));
			
			LST <= NOT EQU_interno AND (Overflow XOR Comp(3));
			
			EQU <= EQU_interno;
			
	end architecture bhv_comparator;