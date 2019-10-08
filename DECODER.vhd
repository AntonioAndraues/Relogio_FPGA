--------------------------------------------------------
-- Simple Microprocessor Design
--
-- Program Counter 
-- PC.vhd
--------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DECODER is
generic(
	TamanhoAddrCpu : natural := 7;
	TamanhoDataDisplay : natural := 8
);
port(	
		addr:	in std_logic_vector( TamanhoAddrCpu-1 DOWNTO 0);
		Enable: in STD_logic;
		dataDisplayContador:	out std_logic_vector(TamanhoDataDisplay-1 DOWNTO 0);
		dataIn:	out std_logic
);
end entity;

architecture comportament of DECODER is
signal teste : std_logic;

begin			
--		teste<= '1' and '1';
--		dataIN <= teste;
--		dataDisplayContador(0) <= '1' when addr = "0000000" else '0';
--		dataDisplayContador(1) <= '1' when addr = "0000100" else '0';
--		dataDisplayContador(2) <= '1' when addr = "0000010" else '0';
--		dataDisplayContador(3) <= '1' when addr = "0000001" else '0';
--		dataDisplayContador(4) <= '1' when addr = "0000010" else '0';


	
	
	dataDisplayContador(0) <= '1' when (addr = "00000000") else '0';
	dataDisplayContador(1) <= '1' when (addr = "00000100") else '0';
	dataDisplayContador(2) <= '1' when (addr = "00000101") else '0';
	dataDisplayContador(3) <= '1' when (addr = "00001001") else '0';
	dataDisplayContador(4) <= '1' when (addr = "00000001") else '0';
	dataDisplayContador(5) <= '1' when (addr = "00000110") else '0';
	dataDisplayContador(6) <= '0';
	dataDisplayContador(7) <= '0';
	
	dataIn <= '0' when (addr = "00000000") else 
	'0' when (addr = "00000001") else 
	'0' when (addr = "00000101") else '1';
	
end architecture;
