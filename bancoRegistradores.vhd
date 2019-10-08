library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 8;
        larguraEndBancoRegs : natural := 4   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
        endereco       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        dadoEscrita    : in std_logic_vector((larguraDados-1) downto 0);
        escreve        : in std_logic := '0';
        saida         : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is
	 signal zero : std_logic_vector(larguraDados-1 downto 0);
    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;


    -- Declaracao dos registrado 	 	 	res:
    shared variable registrador : memoria_t;
	  function initMemory
        return memoria_t is variable tmp : memoria_t := (others => (others => '0'));
	  begin
--	  	 zero <= "00000000";
        -- Inicializa os endereços:
        tmp(0) :=  "00001010";
        tmp(1) :=  "00000000";
		  tmp(2) :=  "00000000";
		  tmp(3) :=  "00000001";
		  tmp(4) :=  "00000000";
		  tmp(5) :=  "00000000";
		  tmp(6) :=  "00000000";
		  tmp(7) :=  "00000000";
        tmp(8) :=  "00000000";
		  tmp(9) :=  "00000000";
		  tmp(10) := "00000000";
		  tmp(11) := "00000000";
		  tmp(12) := "00000000";
		  tmp(13) := "00000001";
		  
--		  tmp(3) := x"ff_ff_ff_ff";
        return tmp;
    end initMemory;
	 
	 signal memROM : memoria_t := initMemory;
begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreve = '1') then
                registrador(to_integer(unsigned(endereco))) := dadoEscrita;
            end if;
        end if;
    end process;
        saida <= registrador(to_integer(unsigned(endereco)));
end architecture;