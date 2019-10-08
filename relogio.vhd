-- Design de Computadores
-- file: relogio.vhd
-- date: 20/09/2019

library ieee;
use ieee.std_logic_1164.all;

entity relogio is
	generic (
		larguraBarramentoDados		: natural := 8;
		TamanhoEnderecamentoRom    : natural := 8;
		TamanhoRamCPU					: natural := 4;
		TamanhoAddrCpu 				: natural := 8;
		TamanhoInstru              : natural := 22;
		quantidadeLedsRed      		: natural := 18;
		quantidadeLedsGreen    		: natural := 8;
		quantidadeChaves    		: natural := 18;
		quantidadeBotoes  			: natural := 4;
		quantidadeBARRAMENTOROM    : natural := 8;
		quantidadeDisplays			: natural := 8;
		TamanhoDataDisplay			: natural := 8
    );
	port
    (
		CLOCK_50 : IN STD_LOGIC;
		-- BOTOES
        KEY: IN STD_LOGIC_VECTOR(quantidadeBotoes-1 DOWNTO 0);
		-- CHAVES
        SW : IN STD_LOGIC_VECTOR(quantidadeChaves-1 downto 0);
		  
		-- DEBUG
--		debug_ROM : OUT STD_LOGIC_VECTOR(tamanhoInstru-1 DOWNTO 0);
--		debug_Display : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--		debug_cpu_add : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--		debug_mux_a : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--		debug_ADDRS_DECODER : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--		debug_dataDisplay : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
--		debug_ula_a				  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--		debug_ula_b				  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

		
		-- LEDS
		LEDR : OUT STD_LOGIC_VECTOR(quantidadeLedsRed-1 downto 0);
		LEDG : OUT STD_LOGIC_VECTOR(quantidadeLedsGreen-1 downto 0);
		-- DISPLAYS 7 SEG
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture estrutural of relogio is

	-- Sinais de barramentos
	
	signal barramentoDadosEntrada	: STD_LOGIC;
	signal barramentoDadosSaida		: STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
	
	-- Sinais de controle RD/WR
	signal readEnable				: STD_LOGIC;
	signal writeEnable				: STD_LOGIC;

	-- Sinais de habilitacao dos componentes
	signal habilitaDisplay			: STD_LOGIC_VECTOR(quantidadeDisplays-1 DOWNTO 0);
	signal habilitaLedsRed			: STD_LOGIC;
	signal habilitaLedsGreen		: STD_LOGIC;
	signal habilitaChaves			: STD_LOGIC;
	signal habilitaBotoes			: STD_LOGIC;
	signal habilitaBaseTempo		: STD_LOGIC;

	-- Sinais auxiliares
	signal saidaPc : STD_LOGIC_VECTOR(quantidadeBARRAMENTOROM-1 DOWNTO 0);
	signal jump : STD_LOGIC;
	signal ADRRSJUMP : STD_LOGIC_VECTOR(6 DOWNTO 0);
	signal SaidaRom : STD_LOGIC_VECTOR(TamanhoInstru-1 DOWNTO 0);
	signal R_enable_IO : STD_LOGIC;
	signal W_enable_IO : STD_LOGIC;
	signal IO_enable : STD_LOGIC;
	signal CPU_OUT_ADRRES : STD_LOGIC_VECTOR(TamanhoAddrCpu-1 DOWNTO 0);
	signal Habilita_data_in : STD_LOGIC;
	signal HAB_dataDisplayContador : std_logic_vector(TamanhoDataDisplay-1 DOWNTO 0);
	

begin
	-- Instanciacao da ROM
	ROM : entity work.memoria 
	generic map(
			dataWidth => TamanhoInstru,
			addrWidth => TamanhoEnderecamentoRom
	)
	port map(
			 Endereco => saidaPC,
			 Dado => SaidaRom
	 );
	
	-- Instanciação da CPU
	CPU : entity work.cpu 
	generic map(
		larguraBarramentoDados		=> larguraBarramentoDados,
		TamanhoEnderecamentoRom		=> TamanhoEnderecamentoRom,
		TamanhoEnderecamentoRam		=>TamanhoRamCPU,
		TamanhoInstru          => TamanhoInstru
	)
	port map
	(
		clk						=> CLOCK_50,
        barramentoDadosEntrada	=> barramentoDadosEntrada,
		  EntradaRom  			=> SaidaRom,
		barramentoDadosSaida	=> barramentoDadosSaida,
		barramentoADDR 		=> CPU_OUT_ADRRES,
		SaidaPc 					=> saidaPC,
		readEnable				=> readEnable,
		writeEnable				=> writeEnable
	);
	
	-- Instanciacao do I/O 10110101001001101101110001101011
	IO : entity work.IO
		generic map(
        larguraDados => larguraBarramentoDados
		)
		port map(
		CLK => CLOCK_50,
		SW => SW,
		R_enable => HAB_dataDisplayContador,
		W_enable => W_Enable_IO, 
		IO_enable => HAB_dataDisplayContador(3) ,
		LEDR => LEDR,
		DataIn   => barramentoDadosEntrada
		
		);
	-- Instanciação de DECODER 
	 DECODER : entity work.DECODER
	 generic map(
		TamanhoAddrCpu => TamanhoAddrCpu,
		TamanhoDataDisplay => 8
	 )
	 port map(
		addr => CPU_OUT_ADRRES,
		dataDisplayContador=> HAB_dataDisplayContador,
		dataIn => habilita_data_in,
		Enable => SaidaRom(12)
	 );
	-- Instanciação do Decodificador de Endereços
		-- A entidade do decodificador fica a criterio do grupo
		-- o portmap a seguir serve como exemplo
--	DE : entity work.decodificador_enderecos
--	port map
--	(
--		endereco		=> endereco,
--		readEnable		=> readEnable,
--		writeEnable		=> writeEnable,
--		habilitaDisplay	=> habilitaDisplay,
--		habilitaLedsRed	=> habilitaLedsRed
--		-- ...
--	);

	-- Instanciação do componente Divisor Genérico
		-- Componente da composição da Base de Tempo
		-- link: https://insper.blackboard.com/bbcswebdav/pid-622259-dt-content-rid-3999720_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/vhdl/_componentesVHDL.html#exemplo-de-c%C3%B3digo-para-o-divisor

	-- Instanciação de cada Display
	DISPLAY0 : entity work.conversorHex7SegUnidade
	port map
	(
		dadoHex		=> barramentoDadosSaida,
		habilita	=> HAB_dataDisplayContador(1),
		saida7seg	=> HEX0
	);
--
	DISPLAY1 : entity work.conversorHex7SegDecimal 
	port map
	(
		dadoHex		=> barramentoDadosSaida,
		habilita	=> HAB_dataDisplayContador(1),
		saida7seg	=> HEX1
	);
	
	DISPLAY2 : entity work.conversorHex7SegUnidade 
	port map
	(
		dadoHex		=> barramentoDadosSaida,
		habilita	=> HAB_dataDisplayContador(2),
		saida7seg	=> HEX2
	);
	
	
	DISPLAY3 : entity work.conversorHex7SegDecimal 
	port map
	(
--		clk			=> CLK,
		dadoHex		=> barramentoDadosSaida,
		habilita	=> HAB_dataDisplayContador(2),
		saida7seg	=> HEX3
	);
	
	LEDG(0) <= BarramentoDadosEntrada;
	--...

	-- Instanciação dos LEDs vermelhos
--	LEDR1 : entity work.leds 
--	generic map (
--        quantidadeLeds	=> quantidadeLedsRed
--    )
--	port map
--	(
--		clk			=> CLK,
--		habilita	=> habilitaLedsRed(quantidadeLedsRed-1 DOWNTO 0),
--		saidaLeds	=> LEDR(quantidadeLedsRed-1 DOWNTO 0)
--	);
--
--	-- Instanciação dos LEDs verdes
--	LEDG : entity work.leds 
--	generic map (
--        quantidadeLeds	=> quantidadeLedsGreen
--    )
--	port map
--	(
--		clk			=> CLK,
--		habilita	=> habilitaLedsGreen(quantidadeLedsGreen-1 DOWNTO 0),
--		saidaLeds	=> LEDG(quantidadeLedsGreen-1 DOWNTO 0)
--	);
--
--	-- Instanciação das Chaves
--	CHAVES : entity work.chaves 
--	generic map (
--        quantidadeChaves	=> quantidadeChaves
--    )
--	port map
--	(
--		habilita	=> habilitaChaves(quantidadeChaves-1 DOWNTO 0),
--		saidaChaves	=> SW(quantidadeChaves-1 DOWNTO 0)
--	);
--
--	-- Instanciação dos Botões
--	BOTOES : entity work.botoes 
--	generic map (
--        quantidadeBotoes	=> quantidadeBotoes
--    )
--	port map
--	(
--		habilita	=> habilitaBotoes(quantidadeBotoes-1 DOWNTO 0),
--		saidaBotoes	=> KEY(quantidadeBotoes-1 DOWNTO 0)
--	);
--	
	
	
	-- Completar com a instanciação de demais 
	-- componentes necessários

end architecture;
