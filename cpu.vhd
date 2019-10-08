-- Design de Computadores
-- developed by Larissa Amaral
-- file: cpu.vhd
-- date: 25/09/2019

library ieee;
use ieee.std_logic_1164.all;

entity cpu is
    generic (
		larguraBarramentoDados		: natural := 8;
		Func 								: natural := 3;
		TamanhoEnderecamentoRom		: natural := 8;
		TamanhoADDR						: natural := 8;
		TamanhoEnderecamentoRam		: natural := 4;
		TamanhoDadosRam 				: natural := 8;
		TamanhoInstru              : natural := 22
		);
	port
    (
        CLK			            : IN  STD_LOGIC;
        barramentoDadosEntrada	: IN STD_LOGIC;
		  EntradaRom					: IN STD_LOGIC_VECTOR(TamanhoInstru-1 DOWNTO 0);
	     barramentoDadosSaida	: OUT STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
		  barramentoADDR 			  : OUT STD_LOGIC_VECTOR(TamanhoADDR-1 DOWNTO 0);
		  SaidaPc 					  : OUT STD_LOGIC_VECTOR(TamanhoEnderecamentoRom-1 DOWNTO 0);
        readEnable		        : OUT STD_LOGIC;
        writeEnable		        : OUT STD_LOGIC
    );
end entity;

architecture estrutural of cpu is

	-- Declaração de sinais auxiliares
	signal entradaA_MUX, entradaB_MUX, saida_MUX, EntradaA, EntradaB,SaidaUla : STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
   signal seletor_MUX : STD_LOGIC;
	signal saidaDivisorGenerico		: STD_LOGIC;
	signal saidaPc_signal : STD_LOGIC_VECTOR(TamanhoEnderecamentoRom-1 DOWNTO 0);
	signal OR_RESULT : STD_LOGIC;
	
	signal FUNCSel : STD_LOGIC_VECTOR(Func-1 DOWNTO 0);
	signal Controle_ULA : STD_LOGIC;
	signal IgualFlag : STD_LOGIC;
	signal ANDJE_RESULT : STD_LOGIC;
	signal ANDJNE_RESULT : STD_LOGIC;
	

	

	
    -- ...

begin
    -- Exemplos de instanciação de componentes

    -- Instanciação de Banco de Registradores


    -- Instanciação de Banco de Registradores
	Registrador_controle: entity work.registradorGenerico
	generic map(
		larguraDados => 1
	)
	port map(
		DIN(0) => IgualFlag,
		DOUT(0)=> Controle_ULA,
		ENABLE => EntradaRom(15),
		CLK => CLK,
		RST => '0'
		
	);
	ANDJE_RESULT <= (EntradaRom(17) AND controle_ULA);
	ANDJNE_RESULT <= (EntradaRom(16) AND NOT (controle_ULA));
	OR_RESULT <= (EntradaRom(18) OR ANDJE_RESULT OR ANDJNE_RESULT);
	-- Inicializacao do PC
   PC : entity work.PCounter
	generic map (
		larguraEndereco => TamanhoEnderecamentoRom
	)
	port map
	(
		DOUT => saidaPc_signal,
		JMP => OR_RESULT,
		ADRRSJUMP => EntradaRom(11 DOWNTO 4),
		clk => CLK
	);
	
	saidaPc	<= saidaPc_signal;
	-- Instanciação do MUX
	MUX_ULA: entity work.muxGenerico2
	generic map(
		larguraDados => larguraBarramentoDados
	)
	port map(
		entradaA_MUX => "0000000" & barramentoDadosEntrada,
						
		entradaB_MUX => EntradaRom(11 DOWNTO 4),
		seletor_MUX => EntradaRom(13),
		saida_MUX => EntradaA
	);
    -- Instanciação de Somador com Constante
    SOMADOR : entity work.SOMADOR 
    generic map (
        larguraDados    => larguraBarramentoDados
    )
	port map
	(
		A => EntradaA,
		B	=> EntradaB,
		FUNC => EntradaRom(21 DOWNTO 19),
		Y => SaidaUla,
		Igual	=> IgualFlag
    );
	
	
	 -- Instanciação da RAM 
	 RAM : entity work.bancoRegistradores
	 generic map(
		  larguraDados      => TamanhoDadosRam,
        larguraEndBancoRegs => TamanhoEnderecamentoRam   --Resulta em 2^5=32 posicoes
	 )
	 port map(
			clk => CLK,
        endereco   	=> EntradaRom(3 DOWNTO 0),
        dadoEscrita => SaidaUla,
--
        escreve     => EntradaRom(14),
        saida      => EntradaB
	 );
	 barramentoADDR <= EntradaRom(11 DOWNTO 4);
	 barramentoDadosSaida <= saidaUla;
	-- Completar com a instanciação de demais 
	-- componentes necessários

end architecture;
