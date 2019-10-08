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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/07/2019 16:08:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_vhd_vec_tst IS
END cpu_vhd_vec_tst;
ARCHITECTURE cpu_arch OF cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL barramentoADDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL barramentoDadosEntrada : STD_LOGIC;
SIGNAL barramentoDadosSaida : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL EntradaRom : STD_LOGIC_VECTOR(21 DOWNTO 0);
SIGNAL readEnable : STD_LOGIC;
SIGNAL SaidaPc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writeEnable : STD_LOGIC;
COMPONENT cpu
	PORT (
	barramentoADDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	barramentoDadosEntrada : IN STD_LOGIC;
	barramentoDadosSaida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK : IN STD_LOGIC;
	EntradaRom : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
	readEnable : OUT STD_LOGIC;
	SaidaPc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	writeEnable : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cpu
	PORT MAP (
-- list connections between master ports and signals
	barramentoADDR => barramentoADDR,
	barramentoDadosEntrada => barramentoDadosEntrada,
	barramentoDadosSaida => barramentoDadosSaida,
	CLK => CLK,
	EntradaRom => EntradaRom,
	readEnable => readEnable,
	SaidaPc => SaidaPc,
	writeEnable => writeEnable
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- barramentoDadosEntrada
t_prcs_barramentoDadosEntrada: PROCESS
BEGIN
	barramentoDadosEntrada <= '0';
WAIT;
END PROCESS t_prcs_barramentoDadosEntrada;
-- EntradaRom[21]
t_prcs_EntradaRom_21: PROCESS
BEGIN
	EntradaRom(21) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_21;
-- EntradaRom[20]
t_prcs_EntradaRom_20: PROCESS
BEGIN
	EntradaRom(20) <= '0';
	WAIT FOR 110000 ps;
	EntradaRom(20) <= '1';
	WAIT FOR 80000 ps;
	EntradaRom(20) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_20;
-- EntradaRom[19]
t_prcs_EntradaRom_19: PROCESS
BEGIN
	EntradaRom(19) <= '0';
	WAIT FOR 50000 ps;
	EntradaRom(19) <= '1';
	WAIT FOR 60000 ps;
	EntradaRom(19) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_19;
-- EntradaRom[18]
t_prcs_EntradaRom_18: PROCESS
BEGIN
	EntradaRom(18) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_18;
-- EntradaRom[17]
t_prcs_EntradaRom_17: PROCESS
BEGIN
	EntradaRom(17) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_17;
-- EntradaRom[16]
t_prcs_EntradaRom_16: PROCESS
BEGIN
	EntradaRom(16) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_16;
-- EntradaRom[15]
t_prcs_EntradaRom_15: PROCESS
BEGIN
	EntradaRom(15) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_15;
-- EntradaRom[14]
t_prcs_EntradaRom_14: PROCESS
BEGIN
	EntradaRom(14) <= '1';
	WAIT FOR 110000 ps;
	EntradaRom(14) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_14;
-- EntradaRom[13]
t_prcs_EntradaRom_13: PROCESS
BEGIN
	EntradaRom(13) <= '1';
	WAIT FOR 190000 ps;
	EntradaRom(13) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_13;
-- EntradaRom[12]
t_prcs_EntradaRom_12: PROCESS
BEGIN
	EntradaRom(12) <= '0';
	WAIT FOR 110000 ps;
	EntradaRom(12) <= '1';
	WAIT FOR 80000 ps;
	EntradaRom(12) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_12;
-- EntradaRom[11]
t_prcs_EntradaRom_11: PROCESS
BEGIN
	EntradaRom(11) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_11;
-- EntradaRom[10]
t_prcs_EntradaRom_10: PROCESS
BEGIN
	EntradaRom(10) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_10;
-- EntradaRom[9]
t_prcs_EntradaRom_9: PROCESS
BEGIN
	EntradaRom(9) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_9;
-- EntradaRom[8]
t_prcs_EntradaRom_8: PROCESS
BEGIN
	EntradaRom(8) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_8;
-- EntradaRom[7]
t_prcs_EntradaRom_7: PROCESS
BEGIN
	EntradaRom(7) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_7;
-- EntradaRom[6]
t_prcs_EntradaRom_6: PROCESS
BEGIN
	EntradaRom(6) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_6;
-- EntradaRom[5]
t_prcs_EntradaRom_5: PROCESS
BEGIN
	EntradaRom(5) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_5;
-- EntradaRom[4]
t_prcs_EntradaRom_4: PROCESS
BEGIN
	EntradaRom(4) <= '1';
	WAIT FOR 140000 ps;
	EntradaRom(4) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_4;
-- EntradaRom[3]
t_prcs_EntradaRom_3: PROCESS
BEGIN
	EntradaRom(3) <= '0';
	WAIT FOR 110000 ps;
	EntradaRom(3) <= '1';
	WAIT FOR 30000 ps;
	EntradaRom(3) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_3;
-- EntradaRom[2]
t_prcs_EntradaRom_2: PROCESS
BEGIN
	EntradaRom(2) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_2;
-- EntradaRom[1]
t_prcs_EntradaRom_1: PROCESS
BEGIN
	EntradaRom(1) <= '0';
	WAIT FOR 110000 ps;
	EntradaRom(1) <= '1';
	WAIT FOR 30000 ps;
	EntradaRom(1) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_1;
-- EntradaRom[0]
t_prcs_EntradaRom_0: PROCESS
BEGIN
	EntradaRom(0) <= '0';
WAIT;
END PROCESS t_prcs_EntradaRom_0;
END cpu_arch;
