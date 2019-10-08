	
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity PCounter is
    generic (
		  larguraEndereco : natural := 7
    );
    port (
       DOUT : out std_logic_vector(larguraEndereco-1 downto 0);
       JMP : in std_logic;
		 ADRRSJUMP : in std_logic_vector(larguraEndereco-1 downto 0);
       clk    : in std_logic
        );
end entity;

architecture comportamento of PCounter is    
begin
	 process(CLK)
		begin
		if (rising_edge(CLK)) then
			if(JMP) then 
				DOUT <= ADRRSJUMP;
			else
				DOUT <= STD_LOGIC_VECTOR(unsigned(DOUT) + 1);
			end if;
		end if;
        
    end process;
end architecture;