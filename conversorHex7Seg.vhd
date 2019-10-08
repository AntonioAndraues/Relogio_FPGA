
library IEEE;
use ieee.std_logic_1164.all;

entity conversorHex7SegUnidade is
    port
    (
        -- Input ports
        dadoHex : in  std_logic_vector(7 downto 0);
		  habilita: in std_logic;
        -- Output ports
        saida7seg : out std_logic_vector(6 downto 0)  -- := (others => '1')
    );
end entity;

architecture comportamento of conversorHex7SegUnidade is
  signal rascSaida7seg: std_logic_vector(6 downto 0);
  signal termo: integer range 0 to 15;

begin

	termo <= to_integer(unsigned(dadoHex)) REM 10;
	
   saida7seg <=    "1111111" when habilita = 0 else 
						 "1000000" when primeiro_termo= 0 else ---0
						 "1111001" when primeiro_termo=1 else ---1
						 "0100100" when primeiro_termo=2 else ---2
						 "0110000" when primeiro_termo=3 else ---3
						 "0011001" when primeiro_termo=4 else ---4
						 "0010010" when primeiro_termo=5 else ---5
						 "0000010" when primeiro_termo=6 else ---6
						 "1111000" when primeiro_termo=7 else ---7
						 "0000000" when primeiro_termo=8 else ---8
						 "0010000" when primeiro_termo=9 else ---9
						 "0001000" when primeiro_termo=10 else ---A
						 "0000011" when primeiro_termo=11 else ---B
						 "1000110" when primeiro_termo=12 else ---C
						 "0100001" when primeiro_termo=13 else ---D
						 "0000110" when primeiro_termo=14 else ---E
						 "0001110" when primeiro_termo=15 ;

end architecture;