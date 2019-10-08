-- Design de Computadores
-- developed by Larissa Amaral
-- file: tb_relogio.vhd
-- date: 20/09/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_relogio is
  generic (
		runner_cfg 		: string;
		CLK_PERIOD		: TIME	:= 10 ns;
		MULT_BASE_TEMPO_SIZE	: 11; -- 2^11=2048 : valor mais próximo de 3600 : passar 1h/1seg
	);
end entity;

architecture tb of tb_relogio is

	component relogio is
		port
		(
			CLK : IN STD_LOGIC;
			-- BOTOES
			KEY: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			-- CHAVES
			SW : IN STD_LOGIC_VECTOR(17 downto 0);
			
			-- LEDS
			LEDR : OUT STD_LOGIC_VECTOR(17 downto 0);
			LEDG : OUT STD_LOGIC_VECTOR(7 downto 0);
			-- DISPLAYS 7 SEG
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
		);
	end component;
	
	subtype display is STD_LOGIC_VECTOR(6 DOWNTO 0);
    type displays is array(7 downto 0) of display;

	-- Sinais usados para port map
	signal CLK_s		: STD_LOGIC;
	signal KEY_s		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal HEX_s		: displays;
	signal LEDG_s		: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal SW_s, LEDR_s	: STD_LOGIC_VECTOR(17 DOWNTO 0);
	
	-- Sinais com significado conceitual de cada I/O
	signal minutos_d0, minutos_d1, horas_d0, horas_d1	: display;
	signal base_tempo	: NATURAL range 0 to 2**MULT_BASE_TEMPO_SIZE-1;
	
begin

	mapping: relogio port map
	(
		CLK		=> CLK_s,
        KEY		=> KEY_s,
        SW		=> SW_s,
		LEDR	=> LEDR_s,
		LEDG	=> LEDG_s,
		HEX0	=> HEX_s(0),
		HEX1	=> HEX_s(1),
		HEX2	=> HEX_s(2),
		HEX3	=> HEX_s(3),
		HEX4	=> HEX_s(4),
		HEX5	=> HEX_s(5),
		HEX6	=> HEX_s(6),
		HEX7	=> HEX_s(7)
	);
	
	clock: entity work.clock_generator 
	generic map (CLK_PERIOD	=> CLK_PERIOD)
	port map
	(
		clk		=> CLK_s
	);

  main : process

	procedure check
	(
		minutos_d0_exp	: natural range 0 to 9;
		minutos_d1_exp	: natural range 0 to 5;
		horas_d0_exp	: natural range 0 to 3;
		horas_d1_exp	: natural range 0 to 2;
	)	is
	begin
		variable minutos_d0_display_exp : display := std_logic_vector(to_unsigned(minutos_d0_exp, 7));
		variable minutos_d1_display_exp : display := std_logic_vector(to_unsigned(minutos_d1_exp, 7));
		variable horas_d0_display_exp : display := std_logic_vector(to_unsigned(horas_d0_exp, 7));
		variable horas_d1_display_exp : display := std_logic_vector(to_unsigned(minutos_d0_exp, 7));
		
		assert (minutos_d0 = minutos_d0_display_exp)
			report "Falha em teste - minutos D0 exp=" & integer'image(minutos_d0_exp) & 
			" act=" & integer'image(to_integer(unsigned(minutos_d0)))
			severity error;
		assert (minutos_d1 = minutos_d1_display_exp)
			report "Falha em teste - minutos D1 exp=" & integer'image(minutos_d1_exp) & 
			" act=" & integer'image(to_integer(unsigned(minutos_d1)))
			severity error;
		assert (horas_d0 = horas_d0_display_exp)
			report "Falha em teste - horas D0 exp=" & integer'image(horas_d0_exp) & 
			" act=" & integer'image(to_integer(unsigned(horas_d0)))
			severity error;
		assert (horas_d1 = horas_d1_display_exp)
			report "Falha em teste - horas D1 exp=" & integer'image(horas_d1_exp) & 
			" act=" & integer'image(to_integer(unsigned(horas_d1)))
			severity error;
	end procedure check;
	
	procedure test
	(
		base_tempo : natural range 0 to 2**MULT_BASE_TEMPO_SIZE-1
	)	is
	begin
		base_tempo <= base_tempo;
		
		for segundos_v in 0 to 59 loop
		
			check(minutos_d0_v, minutos_d1_v, horas_d0_v, horas_d1_v);
			wait for ( 1/base_tempo ) seg ;
			
			if(segundos_v = 59) then
				segundos_v := 0;
				if(minutos_d0_v = 9) then
					if(minutos_d1_v = 5) then
						if(horas_d0_v = 3 and horas_d1_v = 2) then
							horas_d0_v := 0;
							horas_d1_v := 0;
						else
							if(horas_d0_v = 9) then
								horas_d1_v := horas_d1_v + 1;
							end if;
							horas_d0_v := horas_d0_v + 1;
						end if;
					end if;
					minutos_d1_v := minutos_d1_v + 1;
				end if;
				minutos_d0_v := minutos_d0_v + 1;
			end if;
			
			count_segundos_v := count_segundos_v + 1;
			if(count_segundos_v = 3600*24) then
				segundos_v := 60; -- exit loop
			end if;
				
		end loop;
		
	end procedure check;
	
	variable count_segundos_v : natural range 0 to 3600*24 := 0;
	variable segundos_v		: natural range 0 to 60 := 0;
	variable minutos_d0_v	: natural range 0 to 9	:= 0;
	variable minutos_d1_v	: natural range 0 to 5 	:= 0;
	variable horas_d0_v		: natural range 0 to 3	:= 0;
	variable horas_d1_v		: natural range 0 to 2	:= 0;
	
  begin
  
    test_runner_setup(runner, runner_cfg);
	
	-- Mapeamento dos sinais conceituais ao sinais dos I/O's
	minutos_d0 <= HEX_s(0);
	minutos_d1 <= HEX_s(1);
	horas_d0 <= HEX_s(2);
	horas_d1 <= HEX_s(3);
	SW_s(MULT_BASE_TEMPO_SIZE downto 0)	<= std_logic_vector(to_unsigned(base_tempo,MULT_BASE_TEMPO_SIZE));


	report "----------------- Iniciando testes ----------------- ";
	
	test(1); -- teste com base tempo = 1
	
	-- configurar condição de termino do teste para passar para outra base de tempo
		
    test_runner_cleanup(runner); -- Simulacao acaba aqui

  end process;
end architecture;
