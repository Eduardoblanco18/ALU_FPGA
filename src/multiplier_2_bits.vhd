library ieee;
use ieee.std_logic_1164.all;

entity multiplier_2_bits is --Criação das entradas e saídas que serâo utilizadas
				port (
						a, b: in std_logic_vector (1 downto 0);
						Res: out std_logic_vector (3 downto 0)
						);
			end entity multiplier_2_bits;
			
architecture bhv_multiply_2_bits of multiplier_2_bits is
	--criação do sinal que será utilizado
	signal cin: std_logic_vector (1 downto 0);
	
	begin
		--Circuito que fornece o valor do primeiro bit da multiplicação 
		Res(0) <= a(0) AND b(0);
		--Circuito que fornece o valor do segundo bit da multiplicação 
		Res(1) <= (a(0) AND b(1)) XOR (a(1) AND b(0));
		--Circuito que fornece o primeiro Carry in
		cin(0) <= (a(0) AND b(1)) AND (a(1) AND b(0));
		--Circuito que fornece o valor do terceiro bit da multiplicação 
		Res(2) <= (a(1) AND b(1)) XOR cin(0);
		--Circuito que fornece o segundo Carry in
		cin(1) <= (a(1) AND b(1)) AND cin(0);
		--Circuito que fornece o valor do quarto bit da multiplicação 
		Res(3) <= cin(1);
		
	end architecture bhv_multiply_2_bits;