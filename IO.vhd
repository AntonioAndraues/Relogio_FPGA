library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity IO is
	generic (
        larguraDados : natural := 8;
		  quantidadechaves: natural := 18
    );
	port
	(
	CLK : IN STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(quantidadechaves-1 DOWNTO 0);
	R_enable : IN STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);
	W_enable : IN STD_LOGIC;
	IO_enable : IN std_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(quantidadechaves-1 DOWNTO 0);
	DataIn    : OUT STD_LOGIC
	);
end entity;

architecture comportamento of IO is
	signal DataOut_IO : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);
	signal saidaDivisorGenerico50_CLK		: STD_LOGIC;
	signal saidaDivisorGenerico5_CLK		: STD_LOGIC;
	signal SaidabaseTempo : STD_LOGIC;
	signal dataIn_anterior : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);
	signal saida_registrador : STD_LOGIC;
begin
-- Instanciação do componente Divisor Genérico
		-- Componente da composição da Base de Tempo
		-- link: https://insper.blackboard.com/bbcswebdav/pid-622259-dt-content-rid-3999720_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/vhdl/_componentesVHDL.html#exemplo-de-c%C3%B3digo-para-o-divisor
	BASE_TEMPO50 : entity work.divisorGenerico 
	generic map(
	divisor => 50000000
	)
	port map
	(
		clk				=> CLK,
		saida_clk		=> saidaDivisorGenerico50_CLK
	);
	BASE_TEMPO5 : entity work.divisorGenerico 
	generic map(
	divisor => 5000000
	)
	port map
	(
		clk				=> CLK,
		saida_clk		=> saidaDivisorGenerico5_CLK
	);
	MUX_BASE_TEMPO : entity work.muxGenerico2
	generic map(
		larguraDados => 1
	)
	port map(
		entradaA_MUX(0) => saidaDivisorGenerico50_CLK,
		entradaB_MUX(0) => saidaDivisorGenerico5_CLK,
		seletor_MUX => SW(0),
		saida_MUX(0) => SaidabaseTempo
	);

	Registrador: entity work.registradorGenerico
	generic map(
		larguraDados => 1
	)
	port map(
		DIN(0) => SaidabaseTempo,
		DOUT(0)=> saida_registrador,
		ENABLE =>  SaidabaseTempo,
		CLK => CLK,
		RST => R_enable(3)
		
	);
	
		dataIn <= SW(1) when R_enable(5) = '1' else 
					 SW(0) when R_enable(4) = '1' else '0';
		LEDR(0) <= saida_registrador;
		LEDR(1) <= dataIn;
--		dataIn(0) <= SaidabaseTempo;
--		dataIn(1) <= SW(1);
--		dataIn(larguraDados-1 DOWNTO 2) <= (others => '0');

end architecture;


