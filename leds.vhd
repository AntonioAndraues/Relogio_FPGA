-- Design de Computadores
-- developed by Larissa Amaral
-- file: leds.vhd
-- date: 25/09/2019
-- Baseado no diagrama de blocos disponivel no blackboard da disciplina
-- link: https://insper.blackboard.com/bbcswebdav/pid-622259-dt-content-rid-3999720_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/Aula-05_V.html#leds-1

library ieee;
use ieee.std_logic_1164.all;

entity leds is
	generic (
        quantidadeLeds      : natural := 2
    );
	port
    (
        clk			: IN  STD_LOGIC;
		habilita	: IN  STD_LOGIC;
		saidaLeds	: OUT STD_LOGIC_VECTOR(quantidadeLeds-1 downto 0)
    );
end entity;
