-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity SOMADOR is
	generic (
        larguraDados : natural := 32;
		  FUNCSIZE : natural := 3
    );
	port
	(
		-- Input ports
		A	: in  std_logic_vector(larguraDados-1 DOWNTO 0);
		B	: in   std_logic_vector(larguraDados-1 DOWNTO 0);
		FUNC	: in std_logic_vector(FUNCSIZE-1 DOWNTO 0);

		-- Output ports
		Y	: out std_logic_vector(larguraDados-1 DOWNTO 0);
		Igual	: out std_logic
	);
end entity;



-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture sum of SOMADOR is
signal Zero_var : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);
begin

	Y <=  A when (FUNC = "000") else 
			STD_LOGIC_VECTOR(unsigned(A) + unsigned(B)) when (FUNC = "001") else 
			B when (FUNC = "010") else 
			A when (FUNC = "011") else (others => 'Z');
			
	Igual <= '1' when ((A = B) and (FUNC = "100")) else '0';
	
end architecture;


