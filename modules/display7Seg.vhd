-- Design de Computadores
-- file: display7Seg.vhd
-- date: 25/09/2019
-- Baseado no diagrama de blocos disponivel no blackboard da disciplina
-- link: https://insper.blackboard.com/bbcswebdav/pid-622259-dt-content-rid-3999720_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/Aula-05_V.html#display-de-7-segmentos-1

library ieee;
use ieee.std_logic_1164.all;

entity display7Seg is
	port
    (
		clk			: IN STD_LOGIC;
		dadoHex		: IN  STD_LOGIC_VECTOR(3 downto 0);
		habilita	: IN  STD_LOGIC;
		saida7seg	: OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;
