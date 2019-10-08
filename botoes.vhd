-- Design de Computadores
-- file: botoes.vhd
-- date: 25/09/2019
-- Baseado no diagrama de blocos disponivel no blackboard da disciplina
-- link: https://insper.blackboard.com/bbcswebdav/pid-622259-dt-content-rid-3999720_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/Aula-05_V.html#chaves-e-botões-1

library ieee;
use ieee.std_logic_1164.all;

entity botoes is
		generic (
         quantidadeBotoes   : natural := 3
    );
		port
    (
				habilita		: IN  STD_LOGIC;
				saidaBotoes	: OUT STD_LOGIC_VECTOR(quantidadeBotoes-1 downto 0)
    );
end entity;
