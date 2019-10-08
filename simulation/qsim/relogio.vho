-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/07/2019 16:08:25"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	CLK : IN std_logic;
	barramentoDadosEntrada : IN std_logic;
	EntradaRom : IN std_logic_vector(21 DOWNTO 0);
	barramentoDadosSaida : OUT std_logic_vector(7 DOWNTO 0);
	barramentoADDR : OUT std_logic_vector(7 DOWNTO 0);
	SaidaPc : OUT std_logic_vector(7 DOWNTO 0);
	readEnable : OUT std_logic;
	writeEnable : OUT std_logic
	);
END cpu;

ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_barramentoDadosEntrada : std_logic;
SIGNAL ww_EntradaRom : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_barramentoDadosSaida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_barramentoADDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SaidaPc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_readEnable : std_logic;
SIGNAL ww_writeEnable : std_logic;
SIGNAL \EntradaRom[12]~input_o\ : std_logic;
SIGNAL \barramentoDadosSaida[0]~output_o\ : std_logic;
SIGNAL \barramentoDadosSaida[1]~output_o\ : std_logic;
SIGNAL \barramentoDadosSaida[2]~output_o\ : std_logic;
SIGNAL \barramentoDadosSaida[3]~output_o\ : std_logic;
SIGNAL \barramentoDadosSaida[4]~output_o\ : std_logic;
SIGNAL \barramentoDadosSaida[5]~output_o\ : std_logic;
SIGNAL \barramentoDadosSaida[6]~output_o\ : std_logic;
SIGNAL \barramentoDadosSaida[7]~output_o\ : std_logic;
SIGNAL \barramentoADDR[0]~output_o\ : std_logic;
SIGNAL \barramentoADDR[1]~output_o\ : std_logic;
SIGNAL \barramentoADDR[2]~output_o\ : std_logic;
SIGNAL \barramentoADDR[3]~output_o\ : std_logic;
SIGNAL \barramentoADDR[4]~output_o\ : std_logic;
SIGNAL \barramentoADDR[5]~output_o\ : std_logic;
SIGNAL \barramentoADDR[6]~output_o\ : std_logic;
SIGNAL \barramentoADDR[7]~output_o\ : std_logic;
SIGNAL \SaidaPc[0]~output_o\ : std_logic;
SIGNAL \SaidaPc[1]~output_o\ : std_logic;
SIGNAL \SaidaPc[2]~output_o\ : std_logic;
SIGNAL \SaidaPc[3]~output_o\ : std_logic;
SIGNAL \SaidaPc[4]~output_o\ : std_logic;
SIGNAL \SaidaPc[5]~output_o\ : std_logic;
SIGNAL \SaidaPc[6]~output_o\ : std_logic;
SIGNAL \SaidaPc[7]~output_o\ : std_logic;
SIGNAL \readEnable~output_o\ : std_logic;
SIGNAL \writeEnable~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \EntradaRom[21]~input_o\ : std_logic;
SIGNAL \EntradaRom[4]~input_o\ : std_logic;
SIGNAL \barramentoDadosEntrada~input_o\ : std_logic;
SIGNAL \EntradaRom[13]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~1_combout\ : std_logic;
SIGNAL \EntradaRom[19]~input_o\ : std_logic;
SIGNAL \EntradaRom[20]~input_o\ : std_logic;
SIGNAL \SOMADOR|Equal2~0_combout\ : std_logic;
SIGNAL \SOMADOR|Y[0]~8_combout\ : std_logic;
SIGNAL \EntradaRom[14]~input_o\ : std_logic;
SIGNAL \EntradaRom[0]~input_o\ : std_logic;
SIGNAL \EntradaRom[1]~input_o\ : std_logic;
SIGNAL \EntradaRom[2]~input_o\ : std_logic;
SIGNAL \EntradaRom[3]~input_o\ : std_logic;
SIGNAL \RAM|registrador~221_combout\ : std_logic;
SIGNAL \RAM|registrador~222_combout\ : std_logic;
SIGNAL \RAM|registrador~53_q\ : std_logic;
SIGNAL \RAM|registrador~223_combout\ : std_logic;
SIGNAL \RAM|registrador~224_combout\ : std_logic;
SIGNAL \RAM|registrador~85_q\ : std_logic;
SIGNAL \RAM|registrador~225_combout\ : std_logic;
SIGNAL \RAM|registrador~226_combout\ : std_logic;
SIGNAL \RAM|registrador~21_q\ : std_logic;
SIGNAL \RAM|registrador~141_combout\ : std_logic;
SIGNAL \RAM|registrador~227_combout\ : std_logic;
SIGNAL \RAM|registrador~228_combout\ : std_logic;
SIGNAL \RAM|registrador~117_q\ : std_logic;
SIGNAL \RAM|registrador~142_combout\ : std_logic;
SIGNAL \RAM|registrador~229_combout\ : std_logic;
SIGNAL \RAM|registrador~230_combout\ : std_logic;
SIGNAL \RAM|registrador~93_q\ : std_logic;
SIGNAL \RAM|registrador~231_combout\ : std_logic;
SIGNAL \RAM|registrador~232_combout\ : std_logic;
SIGNAL \RAM|registrador~61_q\ : std_logic;
SIGNAL \RAM|registrador~233_combout\ : std_logic;
SIGNAL \RAM|registrador~234_combout\ : std_logic;
SIGNAL \RAM|registrador~29_q\ : std_logic;
SIGNAL \RAM|registrador~143_combout\ : std_logic;
SIGNAL \RAM|registrador~235_combout\ : std_logic;
SIGNAL \RAM|registrador~236_combout\ : std_logic;
SIGNAL \RAM|registrador~125_q\ : std_logic;
SIGNAL \RAM|registrador~144_combout\ : std_logic;
SIGNAL \RAM|registrador~237_combout\ : std_logic;
SIGNAL \RAM|registrador~238_combout\ : std_logic;
SIGNAL \RAM|registrador~77_q\ : std_logic;
SIGNAL \RAM|registrador~239_combout\ : std_logic;
SIGNAL \RAM|registrador~240_combout\ : std_logic;
SIGNAL \RAM|registrador~45_q\ : std_logic;
SIGNAL \RAM|registrador~241_combout\ : std_logic;
SIGNAL \RAM|registrador~242_combout\ : std_logic;
SIGNAL \RAM|registrador~13_q\ : std_logic;
SIGNAL \RAM|registrador~145_combout\ : std_logic;
SIGNAL \RAM|registrador~243_combout\ : std_logic;
SIGNAL \RAM|registrador~244_combout\ : std_logic;
SIGNAL \RAM|registrador~109_q\ : std_logic;
SIGNAL \RAM|registrador~146_combout\ : std_logic;
SIGNAL \RAM|registrador~147_combout\ : std_logic;
SIGNAL \RAM|registrador~245_combout\ : std_logic;
SIGNAL \RAM|registrador~246_combout\ : std_logic;
SIGNAL \RAM|registrador~69_q\ : std_logic;
SIGNAL \RAM|registrador~247_combout\ : std_logic;
SIGNAL \RAM|registrador~248_combout\ : std_logic;
SIGNAL \RAM|registrador~101_q\ : std_logic;
SIGNAL \RAM|registrador~249_combout\ : std_logic;
SIGNAL \RAM|registrador~250_combout\ : std_logic;
SIGNAL \RAM|registrador~37_q\ : std_logic;
SIGNAL \RAM|registrador~148_combout\ : std_logic;
SIGNAL \RAM|registrador~251_combout\ : std_logic;
SIGNAL \RAM|registrador~252_combout\ : std_logic;
SIGNAL \RAM|registrador~133_q\ : std_logic;
SIGNAL \RAM|registrador~149_combout\ : std_logic;
SIGNAL \RAM|registrador~150_combout\ : std_logic;
SIGNAL \SOMADOR|Equal1~0_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~0_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~3_combout\ : std_logic;
SIGNAL \EntradaRom[5]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~2\ : std_logic;
SIGNAL \SOMADOR|Add0~5_combout\ : std_logic;
SIGNAL \SOMADOR|Y[1]~9_combout\ : std_logic;
SIGNAL \RAM|registrador~62_q\ : std_logic;
SIGNAL \RAM|registrador~54_q\ : std_logic;
SIGNAL \RAM|registrador~46_q\ : std_logic;
SIGNAL \RAM|registrador~151_combout\ : std_logic;
SIGNAL \RAM|registrador~70_q\ : std_logic;
SIGNAL \RAM|registrador~152_combout\ : std_logic;
SIGNAL \RAM|registrador~86_q\ : std_logic;
SIGNAL \RAM|registrador~94_q\ : std_logic;
SIGNAL \RAM|registrador~78_q\ : std_logic;
SIGNAL \RAM|registrador~153_combout\ : std_logic;
SIGNAL \RAM|registrador~102_q\ : std_logic;
SIGNAL \RAM|registrador~154_combout\ : std_logic;
SIGNAL \RAM|registrador~22_q\ : std_logic;
SIGNAL \RAM|registrador~30_q\ : std_logic;
SIGNAL \RAM|registrador~14_q\ : std_logic;
SIGNAL \RAM|registrador~155_combout\ : std_logic;
SIGNAL \RAM|registrador~38_q\ : std_logic;
SIGNAL \RAM|registrador~156_combout\ : std_logic;
SIGNAL \RAM|registrador~157_combout\ : std_logic;
SIGNAL \RAM|registrador~126_q\ : std_logic;
SIGNAL \RAM|registrador~118_q\ : std_logic;
SIGNAL \RAM|registrador~110_q\ : std_logic;
SIGNAL \RAM|registrador~158_combout\ : std_logic;
SIGNAL \RAM|registrador~134_q\ : std_logic;
SIGNAL \RAM|registrador~159_combout\ : std_logic;
SIGNAL \RAM|registrador~160_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~4_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~7_combout\ : std_logic;
SIGNAL \EntradaRom[6]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~6\ : std_logic;
SIGNAL \SOMADOR|Add0~9_combout\ : std_logic;
SIGNAL \SOMADOR|Y[2]~10_combout\ : std_logic;
SIGNAL \RAM|registrador~63_q\ : std_logic;
SIGNAL \RAM|registrador~95_q\ : std_logic;
SIGNAL \RAM|registrador~31_q\ : std_logic;
SIGNAL \RAM|registrador~161_combout\ : std_logic;
SIGNAL \RAM|registrador~127_q\ : std_logic;
SIGNAL \RAM|registrador~162_combout\ : std_logic;
SIGNAL \RAM|registrador~87_q\ : std_logic;
SIGNAL \RAM|registrador~55_q\ : std_logic;
SIGNAL \RAM|registrador~23_q\ : std_logic;
SIGNAL \RAM|registrador~163_combout\ : std_logic;
SIGNAL \RAM|registrador~119_q\ : std_logic;
SIGNAL \RAM|registrador~164_combout\ : std_logic;
SIGNAL \RAM|registrador~47_q\ : std_logic;
SIGNAL \RAM|registrador~79_q\ : std_logic;
SIGNAL \RAM|registrador~15_q\ : std_logic;
SIGNAL \RAM|registrador~165_combout\ : std_logic;
SIGNAL \RAM|registrador~111_q\ : std_logic;
SIGNAL \RAM|registrador~166_combout\ : std_logic;
SIGNAL \RAM|registrador~167_combout\ : std_logic;
SIGNAL \RAM|registrador~103_q\ : std_logic;
SIGNAL \RAM|registrador~71_q\ : std_logic;
SIGNAL \RAM|registrador~39_q\ : std_logic;
SIGNAL \RAM|registrador~168_combout\ : std_logic;
SIGNAL \RAM|registrador~135_q\ : std_logic;
SIGNAL \RAM|registrador~169_combout\ : std_logic;
SIGNAL \RAM|registrador~170_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~8_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~11_combout\ : std_logic;
SIGNAL \EntradaRom[7]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~10\ : std_logic;
SIGNAL \SOMADOR|Add0~13_combout\ : std_logic;
SIGNAL \SOMADOR|Y[3]~11_combout\ : std_logic;
SIGNAL \RAM|registrador~96_q\ : std_logic;
SIGNAL \RAM|registrador~88_q\ : std_logic;
SIGNAL \RAM|registrador~80_q\ : std_logic;
SIGNAL \RAM|registrador~171_combout\ : std_logic;
SIGNAL \RAM|registrador~104_q\ : std_logic;
SIGNAL \RAM|registrador~172_combout\ : std_logic;
SIGNAL \RAM|registrador~56_q\ : std_logic;
SIGNAL \RAM|registrador~64_q\ : std_logic;
SIGNAL \RAM|registrador~48_q\ : std_logic;
SIGNAL \RAM|registrador~173_combout\ : std_logic;
SIGNAL \RAM|registrador~72_q\ : std_logic;
SIGNAL \RAM|registrador~174_combout\ : std_logic;
SIGNAL \RAM|registrador~32_q\ : std_logic;
SIGNAL \RAM|registrador~24_q\ : std_logic;
SIGNAL \RAM|registrador~16_q\ : std_logic;
SIGNAL \RAM|registrador~175_combout\ : std_logic;
SIGNAL \RAM|registrador~40_q\ : std_logic;
SIGNAL \RAM|registrador~176_combout\ : std_logic;
SIGNAL \RAM|registrador~177_combout\ : std_logic;
SIGNAL \RAM|registrador~120_q\ : std_logic;
SIGNAL \RAM|registrador~128_q\ : std_logic;
SIGNAL \RAM|registrador~112_q\ : std_logic;
SIGNAL \RAM|registrador~178_combout\ : std_logic;
SIGNAL \RAM|registrador~136_q\ : std_logic;
SIGNAL \RAM|registrador~179_combout\ : std_logic;
SIGNAL \RAM|registrador~180_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~12_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~15_combout\ : std_logic;
SIGNAL \EntradaRom[8]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~14\ : std_logic;
SIGNAL \SOMADOR|Add0~17_combout\ : std_logic;
SIGNAL \SOMADOR|Y[4]~12_combout\ : std_logic;
SIGNAL \RAM|registrador~57_q\ : std_logic;
SIGNAL \RAM|registrador~89_q\ : std_logic;
SIGNAL \RAM|registrador~25_q\ : std_logic;
SIGNAL \RAM|registrador~181_combout\ : std_logic;
SIGNAL \RAM|registrador~121_q\ : std_logic;
SIGNAL \RAM|registrador~182_combout\ : std_logic;
SIGNAL \RAM|registrador~97_q\ : std_logic;
SIGNAL \RAM|registrador~65_q\ : std_logic;
SIGNAL \RAM|registrador~33_q\ : std_logic;
SIGNAL \RAM|registrador~183_combout\ : std_logic;
SIGNAL \RAM|registrador~129_q\ : std_logic;
SIGNAL \RAM|registrador~184_combout\ : std_logic;
SIGNAL \RAM|registrador~81_q\ : std_logic;
SIGNAL \RAM|registrador~49_q\ : std_logic;
SIGNAL \RAM|registrador~17_q\ : std_logic;
SIGNAL \RAM|registrador~185_combout\ : std_logic;
SIGNAL \RAM|registrador~113_q\ : std_logic;
SIGNAL \RAM|registrador~186_combout\ : std_logic;
SIGNAL \RAM|registrador~187_combout\ : std_logic;
SIGNAL \RAM|registrador~73_q\ : std_logic;
SIGNAL \RAM|registrador~105_q\ : std_logic;
SIGNAL \RAM|registrador~41_q\ : std_logic;
SIGNAL \RAM|registrador~188_combout\ : std_logic;
SIGNAL \RAM|registrador~137_q\ : std_logic;
SIGNAL \RAM|registrador~189_combout\ : std_logic;
SIGNAL \RAM|registrador~190_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~16_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~19_combout\ : std_logic;
SIGNAL \EntradaRom[9]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~18\ : std_logic;
SIGNAL \SOMADOR|Add0~21_combout\ : std_logic;
SIGNAL \SOMADOR|Y[5]~13_combout\ : std_logic;
SIGNAL \RAM|registrador~66_q\ : std_logic;
SIGNAL \RAM|registrador~58_q\ : std_logic;
SIGNAL \RAM|registrador~50_q\ : std_logic;
SIGNAL \RAM|registrador~191_combout\ : std_logic;
SIGNAL \RAM|registrador~74_q\ : std_logic;
SIGNAL \RAM|registrador~192_combout\ : std_logic;
SIGNAL \RAM|registrador~90_q\ : std_logic;
SIGNAL \RAM|registrador~98_q\ : std_logic;
SIGNAL \RAM|registrador~82_q\ : std_logic;
SIGNAL \RAM|registrador~193_combout\ : std_logic;
SIGNAL \RAM|registrador~106_q\ : std_logic;
SIGNAL \RAM|registrador~194_combout\ : std_logic;
SIGNAL \RAM|registrador~26_q\ : std_logic;
SIGNAL \RAM|registrador~34_q\ : std_logic;
SIGNAL \RAM|registrador~18_q\ : std_logic;
SIGNAL \RAM|registrador~195_combout\ : std_logic;
SIGNAL \RAM|registrador~42_q\ : std_logic;
SIGNAL \RAM|registrador~196_combout\ : std_logic;
SIGNAL \RAM|registrador~197_combout\ : std_logic;
SIGNAL \RAM|registrador~130_q\ : std_logic;
SIGNAL \RAM|registrador~122_q\ : std_logic;
SIGNAL \RAM|registrador~114_q\ : std_logic;
SIGNAL \RAM|registrador~198_combout\ : std_logic;
SIGNAL \RAM|registrador~138_q\ : std_logic;
SIGNAL \RAM|registrador~199_combout\ : std_logic;
SIGNAL \RAM|registrador~200_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~20_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~23_combout\ : std_logic;
SIGNAL \EntradaRom[10]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~22\ : std_logic;
SIGNAL \SOMADOR|Add0~25_combout\ : std_logic;
SIGNAL \SOMADOR|Y[6]~14_combout\ : std_logic;
SIGNAL \RAM|registrador~67_q\ : std_logic;
SIGNAL \RAM|registrador~99_q\ : std_logic;
SIGNAL \RAM|registrador~35_q\ : std_logic;
SIGNAL \RAM|registrador~201_combout\ : std_logic;
SIGNAL \RAM|registrador~131_q\ : std_logic;
SIGNAL \RAM|registrador~202_combout\ : std_logic;
SIGNAL \RAM|registrador~91_q\ : std_logic;
SIGNAL \RAM|registrador~59_q\ : std_logic;
SIGNAL \RAM|registrador~27_q\ : std_logic;
SIGNAL \RAM|registrador~203_combout\ : std_logic;
SIGNAL \RAM|registrador~123_q\ : std_logic;
SIGNAL \RAM|registrador~204_combout\ : std_logic;
SIGNAL \RAM|registrador~51_q\ : std_logic;
SIGNAL \RAM|registrador~83_q\ : std_logic;
SIGNAL \RAM|registrador~19_q\ : std_logic;
SIGNAL \RAM|registrador~205_combout\ : std_logic;
SIGNAL \RAM|registrador~115_q\ : std_logic;
SIGNAL \RAM|registrador~206_combout\ : std_logic;
SIGNAL \RAM|registrador~207_combout\ : std_logic;
SIGNAL \RAM|registrador~107_q\ : std_logic;
SIGNAL \RAM|registrador~75_q\ : std_logic;
SIGNAL \RAM|registrador~43_q\ : std_logic;
SIGNAL \RAM|registrador~208_combout\ : std_logic;
SIGNAL \RAM|registrador~139_q\ : std_logic;
SIGNAL \RAM|registrador~209_combout\ : std_logic;
SIGNAL \RAM|registrador~210_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~24_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~27_combout\ : std_logic;
SIGNAL \EntradaRom[11]~input_o\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~26\ : std_logic;
SIGNAL \SOMADOR|Add0~29_combout\ : std_logic;
SIGNAL \SOMADOR|Y[7]~15_combout\ : std_logic;
SIGNAL \RAM|registrador~100_q\ : std_logic;
SIGNAL \RAM|registrador~92_q\ : std_logic;
SIGNAL \RAM|registrador~84_q\ : std_logic;
SIGNAL \RAM|registrador~211_combout\ : std_logic;
SIGNAL \RAM|registrador~108_q\ : std_logic;
SIGNAL \RAM|registrador~212_combout\ : std_logic;
SIGNAL \RAM|registrador~60_q\ : std_logic;
SIGNAL \RAM|registrador~68_q\ : std_logic;
SIGNAL \RAM|registrador~52_q\ : std_logic;
SIGNAL \RAM|registrador~213_combout\ : std_logic;
SIGNAL \RAM|registrador~76_q\ : std_logic;
SIGNAL \RAM|registrador~214_combout\ : std_logic;
SIGNAL \RAM|registrador~36_q\ : std_logic;
SIGNAL \RAM|registrador~28_q\ : std_logic;
SIGNAL \RAM|registrador~20_q\ : std_logic;
SIGNAL \RAM|registrador~215_combout\ : std_logic;
SIGNAL \RAM|registrador~44_q\ : std_logic;
SIGNAL \RAM|registrador~216_combout\ : std_logic;
SIGNAL \RAM|registrador~217_combout\ : std_logic;
SIGNAL \RAM|registrador~124_q\ : std_logic;
SIGNAL \RAM|registrador~132_q\ : std_logic;
SIGNAL \RAM|registrador~116_q\ : std_logic;
SIGNAL \RAM|registrador~218_combout\ : std_logic;
SIGNAL \RAM|registrador~140_q\ : std_logic;
SIGNAL \RAM|registrador~219_combout\ : std_logic;
SIGNAL \RAM|registrador~220_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~28_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~31_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~8_combout\ : std_logic;
SIGNAL \EntradaRom[18]~input_o\ : std_logic;
SIGNAL \EntradaRom[17]~input_o\ : std_logic;
SIGNAL \EntradaRom[16]~input_o\ : std_logic;
SIGNAL \EntradaRom[15]~input_o\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~0_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~1_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~2_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~3_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~4_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~5_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~6_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT[0]~7_combout\ : std_logic;
SIGNAL \OR_RESULT~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~9\ : std_logic;
SIGNAL \PC|DOUT[1]~10_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~11\ : std_logic;
SIGNAL \PC|DOUT[2]~12_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~13\ : std_logic;
SIGNAL \PC|DOUT[3]~14_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~15\ : std_logic;
SIGNAL \PC|DOUT[4]~16_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~17\ : std_logic;
SIGNAL \PC|DOUT[5]~18_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~19\ : std_logic;
SIGNAL \PC|DOUT[6]~20_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~21\ : std_logic;
SIGNAL \PC|DOUT[7]~22_combout\ : std_logic;
SIGNAL \Registrador_controle|DOUT\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_EntradaRom[21]~input_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_barramentoDadosEntrada <= barramentoDadosEntrada;
ww_EntradaRom <= EntradaRom;
barramentoDadosSaida <= ww_barramentoDadosSaida;
barramentoADDR <= ww_barramentoADDR;
SaidaPc <= ww_SaidaPc;
readEnable <= ww_readEnable;
writeEnable <= ww_writeEnable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_EntradaRom[21]~input_o\ <= NOT \EntradaRom[21]~input_o\;

\barramentoDadosSaida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~3_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[0]~output_o\);

\barramentoDadosSaida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~7_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[1]~output_o\);

\barramentoDadosSaida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~11_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[2]~output_o\);

\barramentoDadosSaida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~15_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[3]~output_o\);

\barramentoDadosSaida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~19_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[4]~output_o\);

\barramentoDadosSaida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~23_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[5]~output_o\);

\barramentoDadosSaida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~27_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[6]~output_o\);

\barramentoDadosSaida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMADOR|Add0~31_combout\,
	oe => \ALT_INV_EntradaRom[21]~input_o\,
	devoe => ww_devoe,
	o => \barramentoDadosSaida[7]~output_o\);

\barramentoADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[4]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[0]~output_o\);

\barramentoADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[5]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[1]~output_o\);

\barramentoADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[6]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[2]~output_o\);

\barramentoADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[7]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[3]~output_o\);

\barramentoADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[8]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[4]~output_o\);

\barramentoADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[9]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[5]~output_o\);

\barramentoADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[10]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[6]~output_o\);

\barramentoADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EntradaRom[11]~input_o\,
	devoe => ww_devoe,
	o => \barramentoADDR[7]~output_o\);

\SaidaPc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \SaidaPc[0]~output_o\);

\SaidaPc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \SaidaPc[1]~output_o\);

\SaidaPc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \SaidaPc[2]~output_o\);

\SaidaPc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \SaidaPc[3]~output_o\);

\SaidaPc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \SaidaPc[4]~output_o\);

\SaidaPc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \SaidaPc[5]~output_o\);

\SaidaPc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \SaidaPc[6]~output_o\);

\SaidaPc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \SaidaPc[7]~output_o\);

\readEnable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readEnable~output_o\);

\writeEnable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \writeEnable~output_o\);

\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\EntradaRom[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(21),
	o => \EntradaRom[21]~input_o\);

\EntradaRom[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(4),
	o => \EntradaRom[4]~input_o\);

\barramentoDadosEntrada~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoDadosEntrada,
	o => \barramentoDadosEntrada~input_o\);

\EntradaRom[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(13),
	o => \EntradaRom[13]~input_o\);

\MUX_ULA|saida_MUX[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[0]~0_combout\ = (\EntradaRom[13]~input_o\ & (\EntradaRom[4]~input_o\)) # (!\EntradaRom[13]~input_o\ & ((\barramentoDadosEntrada~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[4]~input_o\,
	datab => \barramentoDadosEntrada~input_o\,
	datad => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[0]~0_combout\);

\SOMADOR|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~1_combout\ = (\RAM|registrador~150_combout\ & (\MUX_ULA|saida_MUX[0]~0_combout\ $ (VCC))) # (!\RAM|registrador~150_combout\ & (\MUX_ULA|saida_MUX[0]~0_combout\ & VCC))
-- \SOMADOR|Add0~2\ = CARRY((\RAM|registrador~150_combout\ & \MUX_ULA|saida_MUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~150_combout\,
	datab => \MUX_ULA|saida_MUX[0]~0_combout\,
	datad => VCC,
	combout => \SOMADOR|Add0~1_combout\,
	cout => \SOMADOR|Add0~2\);

\EntradaRom[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(19),
	o => \EntradaRom[19]~input_o\);

\EntradaRom[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(20),
	o => \EntradaRom[20]~input_o\);

\SOMADOR|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Equal2~0_combout\ = (\EntradaRom[19]~input_o\ & (!\EntradaRom[20]~input_o\ & !\EntradaRom[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[19]~input_o\,
	datac => \EntradaRom[20]~input_o\,
	datad => \EntradaRom[21]~input_o\,
	combout => \SOMADOR|Equal2~0_combout\);

\SOMADOR|Y[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[0]~8_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~0_combout\) # ((\SOMADOR|Add0~1_combout\ & \SOMADOR|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~0_combout\,
	datac => \SOMADOR|Add0~1_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Y[0]~8_combout\);

\EntradaRom[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(14),
	o => \EntradaRom[14]~input_o\);

\EntradaRom[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(0),
	o => \EntradaRom[0]~input_o\);

\EntradaRom[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(1),
	o => \EntradaRom[1]~input_o\);

\EntradaRom[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(2),
	o => \EntradaRom[2]~input_o\);

\EntradaRom[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(3),
	o => \EntradaRom[3]~input_o\);

\RAM|registrador~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~221_combout\ = (\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~221_combout\);

\RAM|registrador~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~222_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~221_combout\,
	combout => \RAM|registrador~222_combout\);

\RAM|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~53_q\);

\RAM|registrador~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~223_combout\ = (\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~223_combout\);

\RAM|registrador~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~224_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~223_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~223_combout\,
	combout => \RAM|registrador~224_combout\);

\RAM|registrador~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~85_q\);

\RAM|registrador~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~225_combout\ = (\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~225_combout\);

\RAM|registrador~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~226_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~225_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~225_combout\,
	combout => \RAM|registrador~226_combout\);

\RAM|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~21_q\);

\RAM|registrador~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~141_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~85_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~85_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~21_q\,
	combout => \RAM|registrador~141_combout\);

\RAM|registrador~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~227_combout\ = (\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~227_combout\);

\RAM|registrador~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~228_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~227_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~227_combout\,
	combout => \RAM|registrador~228_combout\);

\RAM|registrador~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~117_q\);

\RAM|registrador~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~142_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~141_combout\ & ((\RAM|registrador~117_q\))) # (!\RAM|registrador~141_combout\ & (\RAM|registrador~53_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~53_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~141_combout\,
	datad => \RAM|registrador~117_q\,
	combout => \RAM|registrador~142_combout\);

\RAM|registrador~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~229_combout\ = (!\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~229_combout\);

\RAM|registrador~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~230_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~229_combout\,
	combout => \RAM|registrador~230_combout\);

\RAM|registrador~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~93_q\);

\RAM|registrador~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~231_combout\ = (!\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~231_combout\);

\RAM|registrador~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~232_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~231_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~231_combout\,
	combout => \RAM|registrador~232_combout\);

\RAM|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~61_q\);

\RAM|registrador~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~233_combout\ = (!\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~233_combout\);

\RAM|registrador~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~234_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~233_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~233_combout\,
	combout => \RAM|registrador~234_combout\);

\RAM|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~29_q\);

\RAM|registrador~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~143_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~61_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~29_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~61_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~29_q\,
	combout => \RAM|registrador~143_combout\);

\RAM|registrador~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~235_combout\ = (!\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~235_combout\);

\RAM|registrador~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~236_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~235_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~235_combout\,
	combout => \RAM|registrador~236_combout\);

\RAM|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~125_q\);

\RAM|registrador~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~144_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~143_combout\ & ((\RAM|registrador~125_q\))) # (!\RAM|registrador~143_combout\ & (\RAM|registrador~93_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~93_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~143_combout\,
	datad => \RAM|registrador~125_q\,
	combout => \RAM|registrador~144_combout\);

\RAM|registrador~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~237_combout\ = (!\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~237_combout\);

\RAM|registrador~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~238_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~237_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~237_combout\,
	combout => \RAM|registrador~238_combout\);

\RAM|registrador~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~77_q\);

\RAM|registrador~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~239_combout\ = (!\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~239_combout\);

\RAM|registrador~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~240_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~239_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~239_combout\,
	combout => \RAM|registrador~240_combout\);

\RAM|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~45_q\);

\RAM|registrador~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~241_combout\ = (!\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~241_combout\);

\RAM|registrador~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~242_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~241_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~241_combout\,
	combout => \RAM|registrador~242_combout\);

\RAM|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~13_q\);

\RAM|registrador~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~145_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~45_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~45_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~13_q\,
	combout => \RAM|registrador~145_combout\);

\RAM|registrador~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~243_combout\ = (!\EntradaRom[0]~input_o\ & (!\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~243_combout\);

\RAM|registrador~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~244_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~243_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~243_combout\,
	combout => \RAM|registrador~244_combout\);

\RAM|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~109_q\);

\RAM|registrador~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~146_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~145_combout\ & ((\RAM|registrador~109_q\))) # (!\RAM|registrador~145_combout\ & (\RAM|registrador~77_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~77_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~145_combout\,
	datad => \RAM|registrador~109_q\,
	combout => \RAM|registrador~146_combout\);

\RAM|registrador~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~147_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~144_combout\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~144_combout\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~146_combout\,
	combout => \RAM|registrador~147_combout\);

\RAM|registrador~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~245_combout\ = (\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~245_combout\);

\RAM|registrador~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~246_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~245_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~245_combout\,
	combout => \RAM|registrador~246_combout\);

\RAM|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~69_q\);

\RAM|registrador~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~247_combout\ = (\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~247_combout\);

\RAM|registrador~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~248_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~247_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~247_combout\,
	combout => \RAM|registrador~248_combout\);

\RAM|registrador~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~101_q\);

\RAM|registrador~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~249_combout\ = (\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (!\EntradaRom[2]~input_o\ & !\EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~249_combout\);

\RAM|registrador~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~250_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~249_combout\,
	combout => \RAM|registrador~250_combout\);

\RAM|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~37_q\);

\RAM|registrador~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~148_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~101_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~37_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~101_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~37_q\,
	combout => \RAM|registrador~148_combout\);

\RAM|registrador~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~251_combout\ = (\EntradaRom[0]~input_o\ & (\EntradaRom[1]~input_o\ & (\EntradaRom[2]~input_o\ & \EntradaRom[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \EntradaRom[1]~input_o\,
	datac => \EntradaRom[2]~input_o\,
	datad => \EntradaRom[3]~input_o\,
	combout => \RAM|registrador~251_combout\);

\RAM|registrador~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~252_combout\ = (\EntradaRom[14]~input_o\ & \RAM|registrador~251_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[14]~input_o\,
	datab => \RAM|registrador~251_combout\,
	combout => \RAM|registrador~252_combout\);

\RAM|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[0]~8_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~133_q\);

\RAM|registrador~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~149_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~148_combout\ & ((\RAM|registrador~133_q\))) # (!\RAM|registrador~148_combout\ & (\RAM|registrador~69_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~69_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~148_combout\,
	datad => \RAM|registrador~133_q\,
	combout => \RAM|registrador~149_combout\);

\RAM|registrador~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~150_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~147_combout\ & ((\RAM|registrador~149_combout\))) # (!\RAM|registrador~147_combout\ & (\RAM|registrador~142_combout\)))) # (!\EntradaRom[0]~input_o\ & 
-- (((\RAM|registrador~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~142_combout\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~147_combout\,
	datad => \RAM|registrador~149_combout\,
	combout => \RAM|registrador~150_combout\);

\SOMADOR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Equal1~0_combout\ = (\EntradaRom[20]~input_o\ & (!\EntradaRom[19]~input_o\ & !\EntradaRom[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[20]~input_o\,
	datac => \EntradaRom[19]~input_o\,
	datad => \EntradaRom[21]~input_o\,
	combout => \SOMADOR|Equal1~0_combout\);

\SOMADOR|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~0_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~150_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~150_combout\,
	datab => \MUX_ULA|saida_MUX[0]~0_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~0_combout\);

\SOMADOR|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~3_combout\ = (\SOMADOR|Add0~0_combout\) # ((\SOMADOR|Add0~1_combout\ & \SOMADOR|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~0_combout\,
	datab => \SOMADOR|Add0~1_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~3_combout\);

\EntradaRom[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(5),
	o => \EntradaRom[5]~input_o\);

\MUX_ULA|saida_MUX[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[1]~1_combout\ = (\EntradaRom[5]~input_o\ & \EntradaRom[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[5]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[1]~1_combout\);

\SOMADOR|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~5_combout\ = (\RAM|registrador~160_combout\ & ((\MUX_ULA|saida_MUX[1]~1_combout\ & (\SOMADOR|Add0~2\ & VCC)) # (!\MUX_ULA|saida_MUX[1]~1_combout\ & (!\SOMADOR|Add0~2\)))) # (!\RAM|registrador~160_combout\ & ((\MUX_ULA|saida_MUX[1]~1_combout\ 
-- & (!\SOMADOR|Add0~2\)) # (!\MUX_ULA|saida_MUX[1]~1_combout\ & ((\SOMADOR|Add0~2\) # (GND)))))
-- \SOMADOR|Add0~6\ = CARRY((\RAM|registrador~160_combout\ & (!\MUX_ULA|saida_MUX[1]~1_combout\ & !\SOMADOR|Add0~2\)) # (!\RAM|registrador~160_combout\ & ((!\SOMADOR|Add0~2\) # (!\MUX_ULA|saida_MUX[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~160_combout\,
	datab => \MUX_ULA|saida_MUX[1]~1_combout\,
	datad => VCC,
	cin => \SOMADOR|Add0~2\,
	combout => \SOMADOR|Add0~5_combout\,
	cout => \SOMADOR|Add0~6\);

\SOMADOR|Y[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[1]~9_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~4_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~4_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	datad => \SOMADOR|Add0~5_combout\,
	combout => \SOMADOR|Y[1]~9_combout\);

\RAM|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~62_q\);

\RAM|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~54_q\);

\RAM|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~46_q\);

\RAM|registrador~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~151_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~54_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~54_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~46_q\,
	combout => \RAM|registrador~151_combout\);

\RAM|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~70_q\);

\RAM|registrador~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~152_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~151_combout\ & ((\RAM|registrador~70_q\))) # (!\RAM|registrador~151_combout\ & (\RAM|registrador~62_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~62_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~151_combout\,
	datad => \RAM|registrador~70_q\,
	combout => \RAM|registrador~152_combout\);

\RAM|registrador~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~86_q\);

\RAM|registrador~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~94_q\);

\RAM|registrador~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~78_q\);

\RAM|registrador~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~153_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~94_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~94_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~78_q\,
	combout => \RAM|registrador~153_combout\);

\RAM|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~102_q\);

\RAM|registrador~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~154_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~153_combout\ & ((\RAM|registrador~102_q\))) # (!\RAM|registrador~153_combout\ & (\RAM|registrador~86_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~86_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~153_combout\,
	datad => \RAM|registrador~102_q\,
	combout => \RAM|registrador~154_combout\);

\RAM|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~22_q\);

\RAM|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~30_q\);

\RAM|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~14_q\);

\RAM|registrador~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~155_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~30_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~30_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~14_q\,
	combout => \RAM|registrador~155_combout\);

\RAM|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~38_q\);

\RAM|registrador~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~156_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~155_combout\ & ((\RAM|registrador~38_q\))) # (!\RAM|registrador~155_combout\ & (\RAM|registrador~22_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~22_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~155_combout\,
	datad => \RAM|registrador~38_q\,
	combout => \RAM|registrador~156_combout\);

\RAM|registrador~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~157_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~154_combout\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~154_combout\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~156_combout\,
	combout => \RAM|registrador~157_combout\);

\RAM|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~126_q\);

\RAM|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~118_q\);

\RAM|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~110_q\);

\RAM|registrador~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~158_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~118_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~118_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~110_q\,
	combout => \RAM|registrador~158_combout\);

\RAM|registrador~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[1]~9_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~134_q\);

\RAM|registrador~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~159_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~158_combout\ & ((\RAM|registrador~134_q\))) # (!\RAM|registrador~158_combout\ & (\RAM|registrador~126_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~126_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~158_combout\,
	datad => \RAM|registrador~134_q\,
	combout => \RAM|registrador~159_combout\);

\RAM|registrador~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~160_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~157_combout\ & ((\RAM|registrador~159_combout\))) # (!\RAM|registrador~157_combout\ & (\RAM|registrador~152_combout\)))) # (!\EntradaRom[2]~input_o\ & 
-- (((\RAM|registrador~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~152_combout\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~157_combout\,
	datad => \RAM|registrador~159_combout\,
	combout => \RAM|registrador~160_combout\);

\SOMADOR|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~4_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~160_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~160_combout\,
	datab => \MUX_ULA|saida_MUX[1]~1_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~4_combout\);

\SOMADOR|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~7_combout\ = (\SOMADOR|Add0~4_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~4_combout\,
	datab => \SOMADOR|Equal2~0_combout\,
	datac => \SOMADOR|Add0~5_combout\,
	combout => \SOMADOR|Add0~7_combout\);

\EntradaRom[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(6),
	o => \EntradaRom[6]~input_o\);

\MUX_ULA|saida_MUX[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[2]~2_combout\ = (\EntradaRom[6]~input_o\ & \EntradaRom[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[6]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[2]~2_combout\);

\SOMADOR|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~9_combout\ = ((\RAM|registrador~170_combout\ $ (\MUX_ULA|saida_MUX[2]~2_combout\ $ (!\SOMADOR|Add0~6\)))) # (GND)
-- \SOMADOR|Add0~10\ = CARRY((\RAM|registrador~170_combout\ & ((\MUX_ULA|saida_MUX[2]~2_combout\) # (!\SOMADOR|Add0~6\))) # (!\RAM|registrador~170_combout\ & (\MUX_ULA|saida_MUX[2]~2_combout\ & !\SOMADOR|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~170_combout\,
	datab => \MUX_ULA|saida_MUX[2]~2_combout\,
	datad => VCC,
	cin => \SOMADOR|Add0~6\,
	combout => \SOMADOR|Add0~9_combout\,
	cout => \SOMADOR|Add0~10\);

\SOMADOR|Y[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[2]~10_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~8_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~8_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	datad => \SOMADOR|Add0~9_combout\,
	combout => \SOMADOR|Y[2]~10_combout\);

\RAM|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~63_q\);

\RAM|registrador~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~95_q\);

\RAM|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~31_q\);

\RAM|registrador~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~161_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~95_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~95_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~31_q\,
	combout => \RAM|registrador~161_combout\);

\RAM|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~127_q\);

\RAM|registrador~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~162_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~161_combout\ & ((\RAM|registrador~127_q\))) # (!\RAM|registrador~161_combout\ & (\RAM|registrador~63_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~63_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~161_combout\,
	datad => \RAM|registrador~127_q\,
	combout => \RAM|registrador~162_combout\);

\RAM|registrador~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~87_q\);

\RAM|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~55_q\);

\RAM|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~23_q\);

\RAM|registrador~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~163_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~55_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~55_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~23_q\,
	combout => \RAM|registrador~163_combout\);

\RAM|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~119_q\);

\RAM|registrador~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~164_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~163_combout\ & ((\RAM|registrador~119_q\))) # (!\RAM|registrador~163_combout\ & (\RAM|registrador~87_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~87_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~163_combout\,
	datad => \RAM|registrador~119_q\,
	combout => \RAM|registrador~164_combout\);

\RAM|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~47_q\);

\RAM|registrador~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~79_q\);

\RAM|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~15_q\);

\RAM|registrador~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~165_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~79_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~79_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~15_q\,
	combout => \RAM|registrador~165_combout\);

\RAM|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~111_q\);

\RAM|registrador~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~166_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~165_combout\ & ((\RAM|registrador~111_q\))) # (!\RAM|registrador~165_combout\ & (\RAM|registrador~47_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~47_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~165_combout\,
	datad => \RAM|registrador~111_q\,
	combout => \RAM|registrador~166_combout\);

\RAM|registrador~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~167_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~164_combout\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~164_combout\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~166_combout\,
	combout => \RAM|registrador~167_combout\);

\RAM|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~103_q\);

\RAM|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~71_q\);

\RAM|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~39_q\);

\RAM|registrador~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~168_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~71_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~39_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~71_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~39_q\,
	combout => \RAM|registrador~168_combout\);

\RAM|registrador~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[2]~10_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~135_q\);

\RAM|registrador~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~169_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~168_combout\ & ((\RAM|registrador~135_q\))) # (!\RAM|registrador~168_combout\ & (\RAM|registrador~103_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~103_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~168_combout\,
	datad => \RAM|registrador~135_q\,
	combout => \RAM|registrador~169_combout\);

\RAM|registrador~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~170_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~167_combout\ & ((\RAM|registrador~169_combout\))) # (!\RAM|registrador~167_combout\ & (\RAM|registrador~162_combout\)))) # (!\EntradaRom[1]~input_o\ & 
-- (((\RAM|registrador~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~162_combout\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~167_combout\,
	datad => \RAM|registrador~169_combout\,
	combout => \RAM|registrador~170_combout\);

\SOMADOR|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~8_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~170_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~170_combout\,
	datab => \MUX_ULA|saida_MUX[2]~2_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~8_combout\);

\SOMADOR|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~11_combout\ = (\SOMADOR|Add0~8_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~8_combout\,
	datab => \SOMADOR|Equal2~0_combout\,
	datac => \SOMADOR|Add0~9_combout\,
	combout => \SOMADOR|Add0~11_combout\);

\EntradaRom[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(7),
	o => \EntradaRom[7]~input_o\);

\MUX_ULA|saida_MUX[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[3]~3_combout\ = (\EntradaRom[7]~input_o\ & \EntradaRom[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[7]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[3]~3_combout\);

\SOMADOR|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~13_combout\ = (\RAM|registrador~180_combout\ & ((\MUX_ULA|saida_MUX[3]~3_combout\ & (\SOMADOR|Add0~10\ & VCC)) # (!\MUX_ULA|saida_MUX[3]~3_combout\ & (!\SOMADOR|Add0~10\)))) # (!\RAM|registrador~180_combout\ & 
-- ((\MUX_ULA|saida_MUX[3]~3_combout\ & (!\SOMADOR|Add0~10\)) # (!\MUX_ULA|saida_MUX[3]~3_combout\ & ((\SOMADOR|Add0~10\) # (GND)))))
-- \SOMADOR|Add0~14\ = CARRY((\RAM|registrador~180_combout\ & (!\MUX_ULA|saida_MUX[3]~3_combout\ & !\SOMADOR|Add0~10\)) # (!\RAM|registrador~180_combout\ & ((!\SOMADOR|Add0~10\) # (!\MUX_ULA|saida_MUX[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~180_combout\,
	datab => \MUX_ULA|saida_MUX[3]~3_combout\,
	datad => VCC,
	cin => \SOMADOR|Add0~10\,
	combout => \SOMADOR|Add0~13_combout\,
	cout => \SOMADOR|Add0~14\);

\SOMADOR|Y[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[3]~11_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~12_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~12_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	datad => \SOMADOR|Add0~13_combout\,
	combout => \SOMADOR|Y[3]~11_combout\);

\RAM|registrador~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~96_q\);

\RAM|registrador~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~88_q\);

\RAM|registrador~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~80_q\);

\RAM|registrador~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~171_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~88_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~88_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~80_q\,
	combout => \RAM|registrador~171_combout\);

\RAM|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~104_q\);

\RAM|registrador~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~172_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~171_combout\ & ((\RAM|registrador~104_q\))) # (!\RAM|registrador~171_combout\ & (\RAM|registrador~96_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~96_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~171_combout\,
	datad => \RAM|registrador~104_q\,
	combout => \RAM|registrador~172_combout\);

\RAM|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~56_q\);

\RAM|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~64_q\);

\RAM|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~48_q\);

\RAM|registrador~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~173_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~64_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~64_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~48_q\,
	combout => \RAM|registrador~173_combout\);

\RAM|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~72_q\);

\RAM|registrador~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~174_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~173_combout\ & ((\RAM|registrador~72_q\))) # (!\RAM|registrador~173_combout\ & (\RAM|registrador~56_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~56_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~173_combout\,
	datad => \RAM|registrador~72_q\,
	combout => \RAM|registrador~174_combout\);

\RAM|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~32_q\);

\RAM|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~24_q\);

\RAM|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~16_q\);

\RAM|registrador~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~175_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~24_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~24_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~16_q\,
	combout => \RAM|registrador~175_combout\);

\RAM|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~40_q\);

\RAM|registrador~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~176_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~175_combout\ & ((\RAM|registrador~40_q\))) # (!\RAM|registrador~175_combout\ & (\RAM|registrador~32_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~32_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~175_combout\,
	datad => \RAM|registrador~40_q\,
	combout => \RAM|registrador~176_combout\);

\RAM|registrador~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~177_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~174_combout\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~174_combout\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~176_combout\,
	combout => \RAM|registrador~177_combout\);

\RAM|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~120_q\);

\RAM|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~128_q\);

\RAM|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~112_q\);

\RAM|registrador~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~178_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~128_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~128_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~112_q\,
	combout => \RAM|registrador~178_combout\);

\RAM|registrador~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[3]~11_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~136_q\);

\RAM|registrador~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~179_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~178_combout\ & ((\RAM|registrador~136_q\))) # (!\RAM|registrador~178_combout\ & (\RAM|registrador~120_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~120_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~178_combout\,
	datad => \RAM|registrador~136_q\,
	combout => \RAM|registrador~179_combout\);

\RAM|registrador~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~180_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~177_combout\ & ((\RAM|registrador~179_combout\))) # (!\RAM|registrador~177_combout\ & (\RAM|registrador~172_combout\)))) # (!\EntradaRom[3]~input_o\ & 
-- (((\RAM|registrador~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~172_combout\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~177_combout\,
	datad => \RAM|registrador~179_combout\,
	combout => \RAM|registrador~180_combout\);

\SOMADOR|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~12_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~180_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~180_combout\,
	datab => \MUX_ULA|saida_MUX[3]~3_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~12_combout\);

\SOMADOR|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~15_combout\ = (\SOMADOR|Add0~12_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~12_combout\,
	datab => \SOMADOR|Equal2~0_combout\,
	datac => \SOMADOR|Add0~13_combout\,
	combout => \SOMADOR|Add0~15_combout\);

\EntradaRom[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(8),
	o => \EntradaRom[8]~input_o\);

\MUX_ULA|saida_MUX[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[4]~4_combout\ = (\EntradaRom[8]~input_o\ & \EntradaRom[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[8]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[4]~4_combout\);

\SOMADOR|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~17_combout\ = ((\RAM|registrador~190_combout\ $ (\MUX_ULA|saida_MUX[4]~4_combout\ $ (!\SOMADOR|Add0~14\)))) # (GND)
-- \SOMADOR|Add0~18\ = CARRY((\RAM|registrador~190_combout\ & ((\MUX_ULA|saida_MUX[4]~4_combout\) # (!\SOMADOR|Add0~14\))) # (!\RAM|registrador~190_combout\ & (\MUX_ULA|saida_MUX[4]~4_combout\ & !\SOMADOR|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~190_combout\,
	datab => \MUX_ULA|saida_MUX[4]~4_combout\,
	datad => VCC,
	cin => \SOMADOR|Add0~14\,
	combout => \SOMADOR|Add0~17_combout\,
	cout => \SOMADOR|Add0~18\);

\SOMADOR|Y[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[4]~12_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~16_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~16_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	datad => \SOMADOR|Add0~17_combout\,
	combout => \SOMADOR|Y[4]~12_combout\);

\RAM|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~57_q\);

\RAM|registrador~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~89_q\);

\RAM|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~25_q\);

\RAM|registrador~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~181_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~89_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~89_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~25_q\,
	combout => \RAM|registrador~181_combout\);

\RAM|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~121_q\);

\RAM|registrador~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~182_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~181_combout\ & ((\RAM|registrador~121_q\))) # (!\RAM|registrador~181_combout\ & (\RAM|registrador~57_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~57_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~181_combout\,
	datad => \RAM|registrador~121_q\,
	combout => \RAM|registrador~182_combout\);

\RAM|registrador~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~97_q\);

\RAM|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~65_q\);

\RAM|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~33_q\);

\RAM|registrador~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~183_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~65_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~33_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~65_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~33_q\,
	combout => \RAM|registrador~183_combout\);

\RAM|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~129_q\);

\RAM|registrador~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~184_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~183_combout\ & ((\RAM|registrador~129_q\))) # (!\RAM|registrador~183_combout\ & (\RAM|registrador~97_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~97_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~183_combout\,
	datad => \RAM|registrador~129_q\,
	combout => \RAM|registrador~184_combout\);

\RAM|registrador~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~81_q\);

\RAM|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~49_q\);

\RAM|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~17_q\);

\RAM|registrador~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~185_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~49_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~49_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~17_q\,
	combout => \RAM|registrador~185_combout\);

\RAM|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~113_q\);

\RAM|registrador~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~186_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~185_combout\ & ((\RAM|registrador~113_q\))) # (!\RAM|registrador~185_combout\ & (\RAM|registrador~81_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~81_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~185_combout\,
	datad => \RAM|registrador~113_q\,
	combout => \RAM|registrador~186_combout\);

\RAM|registrador~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~187_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~184_combout\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~184_combout\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~186_combout\,
	combout => \RAM|registrador~187_combout\);

\RAM|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~73_q\);

\RAM|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~105_q\);

\RAM|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~41_q\);

\RAM|registrador~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~188_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~105_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~105_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~41_q\,
	combout => \RAM|registrador~188_combout\);

\RAM|registrador~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[4]~12_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~137_q\);

\RAM|registrador~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~189_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~188_combout\ & ((\RAM|registrador~137_q\))) # (!\RAM|registrador~188_combout\ & (\RAM|registrador~73_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~73_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~188_combout\,
	datad => \RAM|registrador~137_q\,
	combout => \RAM|registrador~189_combout\);

\RAM|registrador~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~190_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~187_combout\ & ((\RAM|registrador~189_combout\))) # (!\RAM|registrador~187_combout\ & (\RAM|registrador~182_combout\)))) # (!\EntradaRom[0]~input_o\ & 
-- (((\RAM|registrador~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~182_combout\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~187_combout\,
	datad => \RAM|registrador~189_combout\,
	combout => \RAM|registrador~190_combout\);

\SOMADOR|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~16_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~190_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~190_combout\,
	datab => \MUX_ULA|saida_MUX[4]~4_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~16_combout\);

\SOMADOR|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~19_combout\ = (\SOMADOR|Add0~16_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~16_combout\,
	datab => \SOMADOR|Equal2~0_combout\,
	datac => \SOMADOR|Add0~17_combout\,
	combout => \SOMADOR|Add0~19_combout\);

\EntradaRom[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(9),
	o => \EntradaRom[9]~input_o\);

\MUX_ULA|saida_MUX[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[5]~5_combout\ = (\EntradaRom[9]~input_o\ & \EntradaRom[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[9]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[5]~5_combout\);

\SOMADOR|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~21_combout\ = (\RAM|registrador~200_combout\ & ((\MUX_ULA|saida_MUX[5]~5_combout\ & (\SOMADOR|Add0~18\ & VCC)) # (!\MUX_ULA|saida_MUX[5]~5_combout\ & (!\SOMADOR|Add0~18\)))) # (!\RAM|registrador~200_combout\ & 
-- ((\MUX_ULA|saida_MUX[5]~5_combout\ & (!\SOMADOR|Add0~18\)) # (!\MUX_ULA|saida_MUX[5]~5_combout\ & ((\SOMADOR|Add0~18\) # (GND)))))
-- \SOMADOR|Add0~22\ = CARRY((\RAM|registrador~200_combout\ & (!\MUX_ULA|saida_MUX[5]~5_combout\ & !\SOMADOR|Add0~18\)) # (!\RAM|registrador~200_combout\ & ((!\SOMADOR|Add0~18\) # (!\MUX_ULA|saida_MUX[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~200_combout\,
	datab => \MUX_ULA|saida_MUX[5]~5_combout\,
	datad => VCC,
	cin => \SOMADOR|Add0~18\,
	combout => \SOMADOR|Add0~21_combout\,
	cout => \SOMADOR|Add0~22\);

\SOMADOR|Y[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[5]~13_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~20_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~20_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	datad => \SOMADOR|Add0~21_combout\,
	combout => \SOMADOR|Y[5]~13_combout\);

\RAM|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~66_q\);

\RAM|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~58_q\);

\RAM|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~50_q\);

\RAM|registrador~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~191_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~58_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~58_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~50_q\,
	combout => \RAM|registrador~191_combout\);

\RAM|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~74_q\);

\RAM|registrador~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~192_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~191_combout\ & ((\RAM|registrador~74_q\))) # (!\RAM|registrador~191_combout\ & (\RAM|registrador~66_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~66_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~191_combout\,
	datad => \RAM|registrador~74_q\,
	combout => \RAM|registrador~192_combout\);

\RAM|registrador~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~90_q\);

\RAM|registrador~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~98_q\);

\RAM|registrador~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~82_q\);

\RAM|registrador~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~193_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~98_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~98_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~82_q\,
	combout => \RAM|registrador~193_combout\);

\RAM|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~106_q\);

\RAM|registrador~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~194_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~193_combout\ & ((\RAM|registrador~106_q\))) # (!\RAM|registrador~193_combout\ & (\RAM|registrador~90_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~90_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~193_combout\,
	datad => \RAM|registrador~106_q\,
	combout => \RAM|registrador~194_combout\);

\RAM|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~26_q\);

\RAM|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~34_q\);

\RAM|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~18_q\);

\RAM|registrador~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~195_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~34_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~34_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~18_q\,
	combout => \RAM|registrador~195_combout\);

\RAM|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~42_q\);

\RAM|registrador~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~196_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~195_combout\ & ((\RAM|registrador~42_q\))) # (!\RAM|registrador~195_combout\ & (\RAM|registrador~26_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~26_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~195_combout\,
	datad => \RAM|registrador~42_q\,
	combout => \RAM|registrador~196_combout\);

\RAM|registrador~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~197_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~194_combout\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~194_combout\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~196_combout\,
	combout => \RAM|registrador~197_combout\);

\RAM|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~130_q\);

\RAM|registrador~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~122_q\);

\RAM|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~114_q\);

\RAM|registrador~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~198_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~122_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~122_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~114_q\,
	combout => \RAM|registrador~198_combout\);

\RAM|registrador~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[5]~13_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~138_q\);

\RAM|registrador~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~199_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~198_combout\ & ((\RAM|registrador~138_q\))) # (!\RAM|registrador~198_combout\ & (\RAM|registrador~130_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~130_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~198_combout\,
	datad => \RAM|registrador~138_q\,
	combout => \RAM|registrador~199_combout\);

\RAM|registrador~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~200_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~197_combout\ & ((\RAM|registrador~199_combout\))) # (!\RAM|registrador~197_combout\ & (\RAM|registrador~192_combout\)))) # (!\EntradaRom[2]~input_o\ & 
-- (((\RAM|registrador~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~192_combout\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~197_combout\,
	datad => \RAM|registrador~199_combout\,
	combout => \RAM|registrador~200_combout\);

\SOMADOR|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~20_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~200_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~200_combout\,
	datab => \MUX_ULA|saida_MUX[5]~5_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~20_combout\);

\SOMADOR|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~23_combout\ = (\SOMADOR|Add0~20_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~20_combout\,
	datab => \SOMADOR|Equal2~0_combout\,
	datac => \SOMADOR|Add0~21_combout\,
	combout => \SOMADOR|Add0~23_combout\);

\EntradaRom[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(10),
	o => \EntradaRom[10]~input_o\);

\MUX_ULA|saida_MUX[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[6]~6_combout\ = (\EntradaRom[10]~input_o\ & \EntradaRom[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[10]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[6]~6_combout\);

\SOMADOR|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~25_combout\ = ((\RAM|registrador~210_combout\ $ (\MUX_ULA|saida_MUX[6]~6_combout\ $ (!\SOMADOR|Add0~22\)))) # (GND)
-- \SOMADOR|Add0~26\ = CARRY((\RAM|registrador~210_combout\ & ((\MUX_ULA|saida_MUX[6]~6_combout\) # (!\SOMADOR|Add0~22\))) # (!\RAM|registrador~210_combout\ & (\MUX_ULA|saida_MUX[6]~6_combout\ & !\SOMADOR|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~210_combout\,
	datab => \MUX_ULA|saida_MUX[6]~6_combout\,
	datad => VCC,
	cin => \SOMADOR|Add0~22\,
	combout => \SOMADOR|Add0~25_combout\,
	cout => \SOMADOR|Add0~26\);

\SOMADOR|Y[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[6]~14_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~24_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~24_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	datad => \SOMADOR|Add0~25_combout\,
	combout => \SOMADOR|Y[6]~14_combout\);

\RAM|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~67_q\);

\RAM|registrador~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~99_q\);

\RAM|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~35_q\);

\RAM|registrador~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~201_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~99_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~35_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~99_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~35_q\,
	combout => \RAM|registrador~201_combout\);

\RAM|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~131_q\);

\RAM|registrador~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~202_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~201_combout\ & ((\RAM|registrador~131_q\))) # (!\RAM|registrador~201_combout\ & (\RAM|registrador~67_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~67_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~201_combout\,
	datad => \RAM|registrador~131_q\,
	combout => \RAM|registrador~202_combout\);

\RAM|registrador~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~91_q\);

\RAM|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~59_q\);

\RAM|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~27_q\);

\RAM|registrador~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~203_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~59_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~27_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~59_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~27_q\,
	combout => \RAM|registrador~203_combout\);

\RAM|registrador~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~123_q\);

\RAM|registrador~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~204_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~203_combout\ & ((\RAM|registrador~123_q\))) # (!\RAM|registrador~203_combout\ & (\RAM|registrador~91_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~91_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~203_combout\,
	datad => \RAM|registrador~123_q\,
	combout => \RAM|registrador~204_combout\);

\RAM|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~51_q\);

\RAM|registrador~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~83_q\);

\RAM|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~19_q\);

\RAM|registrador~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~205_combout\ = (\EntradaRom[2]~input_o\ & (((\EntradaRom[3]~input_o\)))) # (!\EntradaRom[2]~input_o\ & ((\EntradaRom[3]~input_o\ & (\RAM|registrador~83_q\)) # (!\EntradaRom[3]~input_o\ & ((\RAM|registrador~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[2]~input_o\,
	datab => \RAM|registrador~83_q\,
	datac => \EntradaRom[3]~input_o\,
	datad => \RAM|registrador~19_q\,
	combout => \RAM|registrador~205_combout\);

\RAM|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~115_q\);

\RAM|registrador~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~206_combout\ = (\EntradaRom[2]~input_o\ & ((\RAM|registrador~205_combout\ & ((\RAM|registrador~115_q\))) # (!\RAM|registrador~205_combout\ & (\RAM|registrador~51_q\)))) # (!\EntradaRom[2]~input_o\ & (((\RAM|registrador~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~51_q\,
	datab => \EntradaRom[2]~input_o\,
	datac => \RAM|registrador~205_combout\,
	datad => \RAM|registrador~115_q\,
	combout => \RAM|registrador~206_combout\);

\RAM|registrador~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~207_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~204_combout\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~204_combout\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~206_combout\,
	combout => \RAM|registrador~207_combout\);

\RAM|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~107_q\);

\RAM|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~75_q\);

\RAM|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~43_q\);

\RAM|registrador~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~208_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~75_q\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~75_q\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~43_q\,
	combout => \RAM|registrador~208_combout\);

\RAM|registrador~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[6]~14_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~139_q\);

\RAM|registrador~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~209_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~208_combout\ & ((\RAM|registrador~139_q\))) # (!\RAM|registrador~208_combout\ & (\RAM|registrador~107_q\)))) # (!\EntradaRom[3]~input_o\ & (((\RAM|registrador~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~107_q\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~208_combout\,
	datad => \RAM|registrador~139_q\,
	combout => \RAM|registrador~209_combout\);

\RAM|registrador~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~210_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~207_combout\ & ((\RAM|registrador~209_combout\))) # (!\RAM|registrador~207_combout\ & (\RAM|registrador~202_combout\)))) # (!\EntradaRom[1]~input_o\ & 
-- (((\RAM|registrador~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~202_combout\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~207_combout\,
	datad => \RAM|registrador~209_combout\,
	combout => \RAM|registrador~210_combout\);

\SOMADOR|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~24_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~210_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~210_combout\,
	datab => \MUX_ULA|saida_MUX[6]~6_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~24_combout\);

\SOMADOR|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~27_combout\ = (\SOMADOR|Add0~24_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~24_combout\,
	datab => \SOMADOR|Equal2~0_combout\,
	datac => \SOMADOR|Add0~25_combout\,
	combout => \SOMADOR|Add0~27_combout\);

\EntradaRom[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(11),
	o => \EntradaRom[11]~input_o\);

\MUX_ULA|saida_MUX[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[7]~7_combout\ = (\EntradaRom[11]~input_o\ & \EntradaRom[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[11]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	combout => \MUX_ULA|saida_MUX[7]~7_combout\);

\SOMADOR|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~29_combout\ = \RAM|registrador~220_combout\ $ (\MUX_ULA|saida_MUX[7]~7_combout\ $ (\SOMADOR|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~220_combout\,
	datab => \MUX_ULA|saida_MUX[7]~7_combout\,
	cin => \SOMADOR|Add0~26\,
	combout => \SOMADOR|Add0~29_combout\);

\SOMADOR|Y[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Y[7]~15_combout\ = (\EntradaRom[21]~input_o\) # ((\SOMADOR|Add0~28_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \SOMADOR|Add0~28_combout\,
	datac => \SOMADOR|Equal2~0_combout\,
	datad => \SOMADOR|Add0~29_combout\,
	combout => \SOMADOR|Y[7]~15_combout\);

\RAM|registrador~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~100_q\);

\RAM|registrador~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~92_q\);

\RAM|registrador~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~84_q\);

\RAM|registrador~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~211_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~92_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~92_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~84_q\,
	combout => \RAM|registrador~211_combout\);

\RAM|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~108_q\);

\RAM|registrador~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~212_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~211_combout\ & ((\RAM|registrador~108_q\))) # (!\RAM|registrador~211_combout\ & (\RAM|registrador~100_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~100_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~211_combout\,
	datad => \RAM|registrador~108_q\,
	combout => \RAM|registrador~212_combout\);

\RAM|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~60_q\);

\RAM|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~68_q\);

\RAM|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~52_q\);

\RAM|registrador~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~213_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~68_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~68_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~52_q\,
	combout => \RAM|registrador~213_combout\);

\RAM|registrador~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~76_q\);

\RAM|registrador~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~214_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~213_combout\ & ((\RAM|registrador~76_q\))) # (!\RAM|registrador~213_combout\ & (\RAM|registrador~60_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~60_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~213_combout\,
	datad => \RAM|registrador~76_q\,
	combout => \RAM|registrador~214_combout\);

\RAM|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~36_q\);

\RAM|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~28_q\);

\RAM|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~20_q\);

\RAM|registrador~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~215_combout\ = (\EntradaRom[1]~input_o\ & (((\EntradaRom[0]~input_o\)))) # (!\EntradaRom[1]~input_o\ & ((\EntradaRom[0]~input_o\ & (\RAM|registrador~28_q\)) # (!\EntradaRom[0]~input_o\ & ((\RAM|registrador~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[1]~input_o\,
	datab => \RAM|registrador~28_q\,
	datac => \EntradaRom[0]~input_o\,
	datad => \RAM|registrador~20_q\,
	combout => \RAM|registrador~215_combout\);

\RAM|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~44_q\);

\RAM|registrador~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~216_combout\ = (\EntradaRom[1]~input_o\ & ((\RAM|registrador~215_combout\ & ((\RAM|registrador~44_q\))) # (!\RAM|registrador~215_combout\ & (\RAM|registrador~36_q\)))) # (!\EntradaRom[1]~input_o\ & (((\RAM|registrador~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~36_q\,
	datab => \EntradaRom[1]~input_o\,
	datac => \RAM|registrador~215_combout\,
	datad => \RAM|registrador~44_q\,
	combout => \RAM|registrador~216_combout\);

\RAM|registrador~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~217_combout\ = (\EntradaRom[3]~input_o\ & (((\EntradaRom[2]~input_o\)))) # (!\EntradaRom[3]~input_o\ & ((\EntradaRom[2]~input_o\ & (\RAM|registrador~214_combout\)) # (!\EntradaRom[2]~input_o\ & ((\RAM|registrador~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[3]~input_o\,
	datab => \RAM|registrador~214_combout\,
	datac => \EntradaRom[2]~input_o\,
	datad => \RAM|registrador~216_combout\,
	combout => \RAM|registrador~217_combout\);

\RAM|registrador~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~124_q\);

\RAM|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~132_q\);

\RAM|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~116_q\);

\RAM|registrador~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~218_combout\ = (\EntradaRom[0]~input_o\ & (((\EntradaRom[1]~input_o\)))) # (!\EntradaRom[0]~input_o\ & ((\EntradaRom[1]~input_o\ & (\RAM|registrador~132_q\)) # (!\EntradaRom[1]~input_o\ & ((\RAM|registrador~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[0]~input_o\,
	datab => \RAM|registrador~132_q\,
	datac => \EntradaRom[1]~input_o\,
	datad => \RAM|registrador~116_q\,
	combout => \RAM|registrador~218_combout\);

\RAM|registrador~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \SOMADOR|Y[7]~15_combout\,
	ena => \RAM|registrador~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|registrador~140_q\);

\RAM|registrador~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~219_combout\ = (\EntradaRom[0]~input_o\ & ((\RAM|registrador~218_combout\ & ((\RAM|registrador~140_q\))) # (!\RAM|registrador~218_combout\ & (\RAM|registrador~124_q\)))) # (!\EntradaRom[0]~input_o\ & (((\RAM|registrador~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~124_q\,
	datab => \EntradaRom[0]~input_o\,
	datac => \RAM|registrador~218_combout\,
	datad => \RAM|registrador~140_q\,
	combout => \RAM|registrador~219_combout\);

\RAM|registrador~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|registrador~220_combout\ = (\EntradaRom[3]~input_o\ & ((\RAM|registrador~217_combout\ & ((\RAM|registrador~219_combout\))) # (!\RAM|registrador~217_combout\ & (\RAM|registrador~212_combout\)))) # (!\EntradaRom[3]~input_o\ & 
-- (((\RAM|registrador~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~212_combout\,
	datab => \EntradaRom[3]~input_o\,
	datac => \RAM|registrador~217_combout\,
	datad => \RAM|registrador~219_combout\,
	combout => \RAM|registrador~220_combout\);

\SOMADOR|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~28_combout\ = (!\SOMADOR|Equal2~0_combout\ & ((\SOMADOR|Equal1~0_combout\ & (\RAM|registrador~220_combout\)) # (!\SOMADOR|Equal1~0_combout\ & ((\MUX_ULA|saida_MUX[7]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~220_combout\,
	datab => \MUX_ULA|saida_MUX[7]~7_combout\,
	datac => \SOMADOR|Equal1~0_combout\,
	datad => \SOMADOR|Equal2~0_combout\,
	combout => \SOMADOR|Add0~28_combout\);

\SOMADOR|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~31_combout\ = (\SOMADOR|Add0~28_combout\) # ((\SOMADOR|Equal2~0_combout\ & \SOMADOR|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOMADOR|Add0~28_combout\,
	datab => \SOMADOR|Equal2~0_combout\,
	datac => \SOMADOR|Add0~29_combout\,
	combout => \SOMADOR|Add0~31_combout\);

\PC|DOUT[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~8_combout\ = \PC|DOUT\(0) $ (VCC)
-- \PC|DOUT[0]~9\ = CARRY(\PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datad => VCC,
	combout => \PC|DOUT[0]~8_combout\,
	cout => \PC|DOUT[0]~9\);

\EntradaRom[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(18),
	o => \EntradaRom[18]~input_o\);

\EntradaRom[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(17),
	o => \EntradaRom[17]~input_o\);

\EntradaRom[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(16),
	o => \EntradaRom[16]~input_o\);

\EntradaRom[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(15),
	o => \EntradaRom[15]~input_o\);

\Registrador_controle|DOUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~0_combout\ = (\EntradaRom[15]~input_o\ & (\RAM|registrador~160_combout\ $ (((!\EntradaRom[13]~input_o\) # (!\EntradaRom[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[15]~input_o\,
	datab => \EntradaRom[5]~input_o\,
	datac => \EntradaRom[13]~input_o\,
	datad => \RAM|registrador~160_combout\,
	combout => \Registrador_controle|DOUT[0]~0_combout\);

\Registrador_controle|DOUT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~1_combout\ = (!\EntradaRom[20]~input_o\ & (\RAM|registrador~180_combout\ $ (((!\EntradaRom[13]~input_o\) # (!\EntradaRom[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[7]~input_o\,
	datab => \EntradaRom[13]~input_o\,
	datac => \RAM|registrador~180_combout\,
	datad => \EntradaRom[20]~input_o\,
	combout => \Registrador_controle|DOUT[0]~1_combout\);

\Registrador_controle|DOUT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~2_combout\ = (\Registrador_controle|DOUT[0]~1_combout\ & (!\EntradaRom[19]~input_o\ & (\RAM|registrador~170_combout\ $ (!\MUX_ULA|saida_MUX[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_controle|DOUT[0]~1_combout\,
	datab => \RAM|registrador~170_combout\,
	datac => \MUX_ULA|saida_MUX[2]~2_combout\,
	datad => \EntradaRom[19]~input_o\,
	combout => \Registrador_controle|DOUT[0]~2_combout\);

\Registrador_controle|DOUT[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~3_combout\ = (\Registrador_controle|DOUT[0]~0_combout\ & (\Registrador_controle|DOUT[0]~2_combout\ & (\RAM|registrador~150_combout\ $ (!\MUX_ULA|saida_MUX[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_controle|DOUT[0]~0_combout\,
	datab => \Registrador_controle|DOUT[0]~2_combout\,
	datac => \RAM|registrador~150_combout\,
	datad => \MUX_ULA|saida_MUX[0]~0_combout\,
	combout => \Registrador_controle|DOUT[0]~3_combout\);

\Registrador_controle|DOUT[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~4_combout\ = (\EntradaRom[21]~input_o\ & (\RAM|registrador~190_combout\ $ (((!\EntradaRom[13]~input_o\) # (!\EntradaRom[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[21]~input_o\,
	datab => \EntradaRom[8]~input_o\,
	datac => \EntradaRom[13]~input_o\,
	datad => \RAM|registrador~190_combout\,
	combout => \Registrador_controle|DOUT[0]~4_combout\);

\Registrador_controle|DOUT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~5_combout\ = (\RAM|registrador~210_combout\ & (\MUX_ULA|saida_MUX[6]~6_combout\ & (\RAM|registrador~220_combout\ $ (!\MUX_ULA|saida_MUX[7]~7_combout\)))) # (!\RAM|registrador~210_combout\ & (!\MUX_ULA|saida_MUX[6]~6_combout\ 
-- & (\RAM|registrador~220_combout\ $ (!\MUX_ULA|saida_MUX[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|registrador~210_combout\,
	datab => \RAM|registrador~220_combout\,
	datac => \MUX_ULA|saida_MUX[7]~7_combout\,
	datad => \MUX_ULA|saida_MUX[6]~6_combout\,
	combout => \Registrador_controle|DOUT[0]~5_combout\);

\Registrador_controle|DOUT[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~6_combout\ = (\Registrador_controle|DOUT[0]~4_combout\ & (\Registrador_controle|DOUT[0]~5_combout\ & (\RAM|registrador~200_combout\ $ (!\MUX_ULA|saida_MUX[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_controle|DOUT[0]~4_combout\,
	datab => \Registrador_controle|DOUT[0]~5_combout\,
	datac => \RAM|registrador~200_combout\,
	datad => \MUX_ULA|saida_MUX[5]~5_combout\,
	combout => \Registrador_controle|DOUT[0]~6_combout\);

\Registrador_controle|DOUT[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Registrador_controle|DOUT[0]~7_combout\ = (\Registrador_controle|DOUT[0]~3_combout\ & ((\Registrador_controle|DOUT[0]~6_combout\) # ((\Registrador_controle|DOUT\(0) & !\EntradaRom[15]~input_o\)))) # (!\Registrador_controle|DOUT[0]~3_combout\ & 
-- (((\Registrador_controle|DOUT\(0) & !\EntradaRom[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_controle|DOUT[0]~3_combout\,
	datab => \Registrador_controle|DOUT[0]~6_combout\,
	datac => \Registrador_controle|DOUT\(0),
	datad => \EntradaRom[15]~input_o\,
	combout => \Registrador_controle|DOUT[0]~7_combout\);

\Registrador_controle|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Registrador_controle|DOUT[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_controle|DOUT\(0));

\OR_RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OR_RESULT~0_combout\ = (\EntradaRom[18]~input_o\) # ((\Registrador_controle|DOUT\(0) & (\EntradaRom[17]~input_o\)) # (!\Registrador_controle|DOUT\(0) & ((\EntradaRom[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EntradaRom[18]~input_o\,
	datab => \EntradaRom[17]~input_o\,
	datac => \EntradaRom[16]~input_o\,
	datad => \Registrador_controle|DOUT\(0),
	combout => \OR_RESULT~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[0]~8_combout\,
	asdata => \EntradaRom[4]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\PC|DOUT[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~10_combout\ = (\PC|DOUT\(1) & (!\PC|DOUT[0]~9\)) # (!\PC|DOUT\(1) & ((\PC|DOUT[0]~9\) # (GND)))
-- \PC|DOUT[1]~11\ = CARRY((!\PC|DOUT[0]~9\) # (!\PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datad => VCC,
	cin => \PC|DOUT[0]~9\,
	combout => \PC|DOUT[1]~10_combout\,
	cout => \PC|DOUT[1]~11\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[1]~10_combout\,
	asdata => \EntradaRom[5]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\PC|DOUT[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~12_combout\ = (\PC|DOUT\(2) & (\PC|DOUT[1]~11\ $ (GND))) # (!\PC|DOUT\(2) & (!\PC|DOUT[1]~11\ & VCC))
-- \PC|DOUT[2]~13\ = CARRY((\PC|DOUT\(2) & !\PC|DOUT[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datad => VCC,
	cin => \PC|DOUT[1]~11\,
	combout => \PC|DOUT[2]~12_combout\,
	cout => \PC|DOUT[2]~13\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[2]~12_combout\,
	asdata => \EntradaRom[6]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\PC|DOUT[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~14_combout\ = (\PC|DOUT\(3) & (!\PC|DOUT[2]~13\)) # (!\PC|DOUT\(3) & ((\PC|DOUT[2]~13\) # (GND)))
-- \PC|DOUT[3]~15\ = CARRY((!\PC|DOUT[2]~13\) # (!\PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datad => VCC,
	cin => \PC|DOUT[2]~13\,
	combout => \PC|DOUT[3]~14_combout\,
	cout => \PC|DOUT[3]~15\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[3]~14_combout\,
	asdata => \EntradaRom[7]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\PC|DOUT[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[4]~16_combout\ = (\PC|DOUT\(4) & (\PC|DOUT[3]~15\ $ (GND))) # (!\PC|DOUT\(4) & (!\PC|DOUT[3]~15\ & VCC))
-- \PC|DOUT[4]~17\ = CARRY((\PC|DOUT\(4) & !\PC|DOUT[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(4),
	datad => VCC,
	cin => \PC|DOUT[3]~15\,
	combout => \PC|DOUT[4]~16_combout\,
	cout => \PC|DOUT[4]~17\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[4]~16_combout\,
	asdata => \EntradaRom[8]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\PC|DOUT[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[5]~18_combout\ = (\PC|DOUT\(5) & (!\PC|DOUT[4]~17\)) # (!\PC|DOUT\(5) & ((\PC|DOUT[4]~17\) # (GND)))
-- \PC|DOUT[5]~19\ = CARRY((!\PC|DOUT[4]~17\) # (!\PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(5),
	datad => VCC,
	cin => \PC|DOUT[4]~17\,
	combout => \PC|DOUT[5]~18_combout\,
	cout => \PC|DOUT[5]~19\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[5]~18_combout\,
	asdata => \EntradaRom[9]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\PC|DOUT[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[6]~20_combout\ = (\PC|DOUT\(6) & (\PC|DOUT[5]~19\ $ (GND))) # (!\PC|DOUT\(6) & (!\PC|DOUT[5]~19\ & VCC))
-- \PC|DOUT[6]~21\ = CARRY((\PC|DOUT\(6) & !\PC|DOUT[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(6),
	datad => VCC,
	cin => \PC|DOUT[5]~19\,
	combout => \PC|DOUT[6]~20_combout\,
	cout => \PC|DOUT[6]~21\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[6]~20_combout\,
	asdata => \EntradaRom[10]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\PC|DOUT[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[7]~22_combout\ = \PC|DOUT\(7) $ (\PC|DOUT[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(7),
	cin => \PC|DOUT[6]~21\,
	combout => \PC|DOUT[7]~22_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|DOUT[7]~22_combout\,
	asdata => \EntradaRom[11]~input_o\,
	sload => \OR_RESULT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\EntradaRom[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EntradaRom(12),
	o => \EntradaRom[12]~input_o\);

ww_barramentoDadosSaida(0) <= \barramentoDadosSaida[0]~output_o\;

ww_barramentoDadosSaida(1) <= \barramentoDadosSaida[1]~output_o\;

ww_barramentoDadosSaida(2) <= \barramentoDadosSaida[2]~output_o\;

ww_barramentoDadosSaida(3) <= \barramentoDadosSaida[3]~output_o\;

ww_barramentoDadosSaida(4) <= \barramentoDadosSaida[4]~output_o\;

ww_barramentoDadosSaida(5) <= \barramentoDadosSaida[5]~output_o\;

ww_barramentoDadosSaida(6) <= \barramentoDadosSaida[6]~output_o\;

ww_barramentoDadosSaida(7) <= \barramentoDadosSaida[7]~output_o\;

ww_barramentoADDR(0) <= \barramentoADDR[0]~output_o\;

ww_barramentoADDR(1) <= \barramentoADDR[1]~output_o\;

ww_barramentoADDR(2) <= \barramentoADDR[2]~output_o\;

ww_barramentoADDR(3) <= \barramentoADDR[3]~output_o\;

ww_barramentoADDR(4) <= \barramentoADDR[4]~output_o\;

ww_barramentoADDR(5) <= \barramentoADDR[5]~output_o\;

ww_barramentoADDR(6) <= \barramentoADDR[6]~output_o\;

ww_barramentoADDR(7) <= \barramentoADDR[7]~output_o\;

ww_SaidaPc(0) <= \SaidaPc[0]~output_o\;

ww_SaidaPc(1) <= \SaidaPc[1]~output_o\;

ww_SaidaPc(2) <= \SaidaPc[2]~output_o\;

ww_SaidaPc(3) <= \SaidaPc[3]~output_o\;

ww_SaidaPc(4) <= \SaidaPc[4]~output_o\;

ww_SaidaPc(5) <= \SaidaPc[5]~output_o\;

ww_SaidaPc(6) <= \SaidaPc[6]~output_o\;

ww_SaidaPc(7) <= \SaidaPc[7]~output_o\;

ww_readEnable <= \readEnable~output_o\;

ww_writeEnable <= \writeEnable~output_o\;
END structure;


