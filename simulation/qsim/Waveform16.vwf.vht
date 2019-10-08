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
-- Generated on "10/07/2019 14:24:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          muxGenerico2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY muxGenerico2_vhd_vec_tst IS
END muxGenerico2_vhd_vec_tst;
ARCHITECTURE muxGenerico2_arch OF muxGenerico2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entradaA_MUX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entradaB_MUX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_MUX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL seletor_MUX : STD_LOGIC;
COMPONENT muxGenerico2
	PORT (
	entradaA_MUX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	entradaB_MUX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_MUX : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	seletor_MUX : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : muxGenerico2
	PORT MAP (
-- list connections between master ports and signals
	entradaA_MUX => entradaA_MUX,
	entradaB_MUX => entradaB_MUX,
	saida_MUX => saida_MUX,
	seletor_MUX => seletor_MUX
	);
-- entradaA_MUX[7]
t_prcs_entradaA_MUX_7: PROCESS
BEGIN
	entradaA_MUX(7) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_7;
-- entradaA_MUX[6]
t_prcs_entradaA_MUX_6: PROCESS
BEGIN
	entradaA_MUX(6) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_6;
-- entradaA_MUX[5]
t_prcs_entradaA_MUX_5: PROCESS
BEGIN
	entradaA_MUX(5) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_5;
-- entradaA_MUX[4]
t_prcs_entradaA_MUX_4: PROCESS
BEGIN
	entradaA_MUX(4) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_4;
-- entradaA_MUX[3]
t_prcs_entradaA_MUX_3: PROCESS
BEGIN
	entradaA_MUX(3) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_3;
-- entradaA_MUX[2]
t_prcs_entradaA_MUX_2: PROCESS
BEGIN
	entradaA_MUX(2) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_2;
-- entradaA_MUX[1]
t_prcs_entradaA_MUX_1: PROCESS
BEGIN
	entradaA_MUX(1) <= '0';
	WAIT FOR 110000 ps;
	entradaA_MUX(1) <= '1';
	WAIT FOR 50000 ps;
	entradaA_MUX(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_1;
-- entradaA_MUX[0]
t_prcs_entradaA_MUX_0: PROCESS
BEGIN
	entradaA_MUX(0) <= '0';
	WAIT FOR 60000 ps;
	entradaA_MUX(0) <= '1';
	WAIT FOR 50000 ps;
	entradaA_MUX(0) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_MUX_0;
-- entradaB_MUX[7]
t_prcs_entradaB_MUX_7: PROCESS
BEGIN
	entradaB_MUX(7) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_7;
-- entradaB_MUX[6]
t_prcs_entradaB_MUX_6: PROCESS
BEGIN
	entradaB_MUX(6) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_6;
-- entradaB_MUX[5]
t_prcs_entradaB_MUX_5: PROCESS
BEGIN
	entradaB_MUX(5) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_5;
-- entradaB_MUX[4]
t_prcs_entradaB_MUX_4: PROCESS
BEGIN
	entradaB_MUX(4) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_4;
-- entradaB_MUX[3]
t_prcs_entradaB_MUX_3: PROCESS
BEGIN
	entradaB_MUX(3) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_3;
-- entradaB_MUX[2]
t_prcs_entradaB_MUX_2: PROCESS
BEGIN
	entradaB_MUX(2) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_2;
-- entradaB_MUX[1]
t_prcs_entradaB_MUX_1: PROCESS
BEGIN
	entradaB_MUX(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_1;
-- entradaB_MUX[0]
t_prcs_entradaB_MUX_0: PROCESS
BEGIN
	entradaB_MUX(0) <= '1';
	WAIT FOR 160000 ps;
	entradaB_MUX(0) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_MUX_0;

-- seletor_MUX
t_prcs_seletor_MUX: PROCESS
BEGIN
	seletor_MUX <= '1';
	WAIT FOR 20000 ps;
	seletor_MUX <= '0';
	WAIT FOR 40000 ps;
	seletor_MUX <= '1';
	WAIT FOR 10000 ps;
	seletor_MUX <= '0';
	WAIT FOR 30000 ps;
	seletor_MUX <= '1';
	WAIT FOR 10000 ps;
	seletor_MUX <= '0';
	WAIT FOR 20000 ps;
	seletor_MUX <= '1';
	WAIT FOR 10000 ps;
	seletor_MUX <= '0';
WAIT;
END PROCESS t_prcs_seletor_MUX;
END muxGenerico2_arch;
