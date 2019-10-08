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

-- DATE "09/24/2019 14:53:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Atividade11 IS
    PORT (
	HabPc : IN std_logic;
	HabBanco : IN std_logic;
	CLK : IN std_logic;
	FUNC : IN std_logic_vector(1 DOWNTO 0);
	Endereco : IN std_logic_vector(4 DOWNTO 0);
	Saida_1 : BUFFER std_logic_vector(4 DOWNTO 0);
	Saida_2 : BUFFER std_logic_vector(4 DOWNTO 0);
	ULAout : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END Atividade11;

-- Design Ports Information
-- HabPc	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_1[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_1[1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_1[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_1[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_1[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_2[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_2[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_2[2]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_2[3]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_2[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[3]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[4]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[5]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[6]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[7]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[11]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[12]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[13]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[14]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[15]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[16]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[17]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[18]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[19]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[20]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[21]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[22]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[23]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[24]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[25]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[26]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[27]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[28]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[29]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[30]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAout[31]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabBanco	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNC[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNC[0]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Atividade11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HabPc : std_logic;
SIGNAL ww_HabBanco : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_FUNC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Endereco : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Saida_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Saida_2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ULAout : std_logic_vector(31 DOWNTO 0);
SIGNAL \HabPc~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \HabBanco~input_o\ : std_logic;
SIGNAL \ULAout[0]~output_o\ : std_logic;
SIGNAL \ULAout[1]~output_o\ : std_logic;
SIGNAL \ULAout[2]~output_o\ : std_logic;
SIGNAL \ULAout[3]~output_o\ : std_logic;
SIGNAL \ULAout[4]~output_o\ : std_logic;
SIGNAL \ULAout[5]~output_o\ : std_logic;
SIGNAL \ULAout[6]~output_o\ : std_logic;
SIGNAL \ULAout[7]~output_o\ : std_logic;
SIGNAL \ULAout[8]~output_o\ : std_logic;
SIGNAL \ULAout[9]~output_o\ : std_logic;
SIGNAL \ULAout[10]~output_o\ : std_logic;
SIGNAL \ULAout[11]~output_o\ : std_logic;
SIGNAL \ULAout[12]~output_o\ : std_logic;
SIGNAL \ULAout[13]~output_o\ : std_logic;
SIGNAL \ULAout[14]~output_o\ : std_logic;
SIGNAL \ULAout[15]~output_o\ : std_logic;
SIGNAL \ULAout[16]~output_o\ : std_logic;
SIGNAL \ULAout[17]~output_o\ : std_logic;
SIGNAL \ULAout[18]~output_o\ : std_logic;
SIGNAL \ULAout[19]~output_o\ : std_logic;
SIGNAL \ULAout[20]~output_o\ : std_logic;
SIGNAL \ULAout[21]~output_o\ : std_logic;
SIGNAL \ULAout[22]~output_o\ : std_logic;
SIGNAL \ULAout[23]~output_o\ : std_logic;
SIGNAL \ULAout[24]~output_o\ : std_logic;
SIGNAL \ULAout[25]~output_o\ : std_logic;
SIGNAL \ULAout[26]~output_o\ : std_logic;
SIGNAL \ULAout[27]~output_o\ : std_logic;
SIGNAL \ULAout[28]~output_o\ : std_logic;
SIGNAL \ULAout[29]~output_o\ : std_logic;
SIGNAL \ULAout[30]~output_o\ : std_logic;
SIGNAL \ULAout[31]~output_o\ : std_logic;
SIGNAL \Saida_1[0]~output_o\ : std_logic;
SIGNAL \Saida_1[1]~output_o\ : std_logic;
SIGNAL \Saida_1[2]~output_o\ : std_logic;
SIGNAL \Saida_1[3]~output_o\ : std_logic;
SIGNAL \Saida_1[4]~output_o\ : std_logic;
SIGNAL \Saida_2[0]~output_o\ : std_logic;
SIGNAL \Saida_2[1]~output_o\ : std_logic;
SIGNAL \Saida_2[2]~output_o\ : std_logic;
SIGNAL \Saida_2[3]~output_o\ : std_logic;
SIGNAL \Saida_2[4]~output_o\ : std_logic;
SIGNAL \FUNC[1]~input_o\ : std_logic;
SIGNAL \FUNC[0]~input_o\ : std_logic;
SIGNAL \ULA|Equal1~0_combout\ : std_logic;
SIGNAL \ULA|Add0~1_cout\ : std_logic;
SIGNAL \ULA|Add0~2_combout\ : std_logic;
SIGNAL \ULA|Add0~3\ : std_logic;
SIGNAL \ULA|Add0~4_combout\ : std_logic;
SIGNAL \ULA|Add0~5\ : std_logic;
SIGNAL \ULA|Add0~6_combout\ : std_logic;
SIGNAL \ULA|Add0~7\ : std_logic;
SIGNAL \ULA|Add0~8_combout\ : std_logic;
SIGNAL \ULA|Add0~9\ : std_logic;
SIGNAL \ULA|Add0~10_combout\ : std_logic;
SIGNAL \ULA|Add0~11\ : std_logic;
SIGNAL \ULA|Add0~12_combout\ : std_logic;
SIGNAL \ULA|Add0~13\ : std_logic;
SIGNAL \ULA|Add0~14_combout\ : std_logic;
SIGNAL \ULA|Add0~15\ : std_logic;
SIGNAL \ULA|Add0~16_combout\ : std_logic;
SIGNAL \ULA|Add0~17\ : std_logic;
SIGNAL \ULA|Add0~18_combout\ : std_logic;
SIGNAL \ULA|Add0~19\ : std_logic;
SIGNAL \ULA|Add0~20_combout\ : std_logic;
SIGNAL \ULA|Add0~21\ : std_logic;
SIGNAL \ULA|Add0~22_combout\ : std_logic;
SIGNAL \ULA|Add0~23\ : std_logic;
SIGNAL \ULA|Add0~24_combout\ : std_logic;
SIGNAL \ULA|Add0~25\ : std_logic;
SIGNAL \ULA|Add0~26_combout\ : std_logic;
SIGNAL \ULA|Add0~27\ : std_logic;
SIGNAL \ULA|Add0~28_combout\ : std_logic;
SIGNAL \ULA|Add0~29\ : std_logic;
SIGNAL \ULA|Add0~30_combout\ : std_logic;
SIGNAL \ULA|Add0~31\ : std_logic;
SIGNAL \ULA|Add0~32_combout\ : std_logic;
SIGNAL \ULA|Add0~33\ : std_logic;
SIGNAL \ULA|Add0~34_combout\ : std_logic;
SIGNAL \ULA|Add0~35\ : std_logic;
SIGNAL \ULA|Add0~36_combout\ : std_logic;
SIGNAL \ULA|Add0~37\ : std_logic;
SIGNAL \ULA|Add0~38_combout\ : std_logic;
SIGNAL \ULA|Add0~39\ : std_logic;
SIGNAL \ULA|Add0~40_combout\ : std_logic;
SIGNAL \ULA|Add0~41\ : std_logic;
SIGNAL \ULA|Add0~42_combout\ : std_logic;
SIGNAL \ULA|Add0~43\ : std_logic;
SIGNAL \ULA|Add0~44_combout\ : std_logic;
SIGNAL \ULA|Add0~45\ : std_logic;
SIGNAL \ULA|Add0~46_combout\ : std_logic;
SIGNAL \ULA|Add0~47\ : std_logic;
SIGNAL \ULA|Add0~48_combout\ : std_logic;
SIGNAL \ULA|Add0~49\ : std_logic;
SIGNAL \ULA|Add0~50_combout\ : std_logic;
SIGNAL \ULA|Add0~51\ : std_logic;
SIGNAL \ULA|Add0~52_combout\ : std_logic;
SIGNAL \ULA|Add0~53\ : std_logic;
SIGNAL \ULA|Add0~54_combout\ : std_logic;
SIGNAL \ULA|Add0~55\ : std_logic;
SIGNAL \ULA|Add0~56_combout\ : std_logic;
SIGNAL \ULA|Add0~57\ : std_logic;
SIGNAL \ULA|Add0~58_combout\ : std_logic;
SIGNAL \ULA|Add0~59\ : std_logic;
SIGNAL \ULA|Add0~60_combout\ : std_logic;
SIGNAL \ULA|Add0~61\ : std_logic;
SIGNAL \ULA|Add0~62_combout\ : std_logic;
SIGNAL \Endereco[4]~input_o\ : std_logic;
SIGNAL \Endereco[3]~input_o\ : std_logic;
SIGNAL \Endereco[2]~input_o\ : std_logic;
SIGNAL \Endereco[0]~input_o\ : std_logic;
SIGNAL \Endereco[1]~input_o\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ALT_INV_FUNC[1]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_HabPc <= HabPc;
ww_HabBanco <= HabBanco;
ww_CLK <= CLK;
ww_FUNC <= FUNC;
ww_Endereco <= Endereco;
Saida_1 <= ww_Saida_1;
Saida_2 <= ww_Saida_2;
ULAout <= ww_ULAout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_FUNC[1]~input_o\ <= NOT \FUNC[1]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X87_Y73_N9
\ULAout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[0]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\ULAout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~2_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\ULAout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~4_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\ULAout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~6_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[3]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\ULAout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~8_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[4]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\ULAout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~10_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[5]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\ULAout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~12_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\ULAout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~14_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\ULAout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~16_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[8]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\ULAout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~18_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[9]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\ULAout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~20_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[10]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\ULAout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~22_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[11]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\ULAout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~24_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[12]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\ULAout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~26_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[13]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\ULAout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~28_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[14]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\ULAout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~30_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\ULAout[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~32_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[16]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\ULAout[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~34_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[17]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\ULAout[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~36_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[18]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ULAout[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~38_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[19]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\ULAout[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~40_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[20]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\ULAout[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~42_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[21]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\ULAout[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~44_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[22]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\ULAout[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~46_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[23]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\ULAout[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~48_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[24]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\ULAout[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~50_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[25]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\ULAout[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~52_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[26]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\ULAout[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~54_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[27]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\ULAout[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~56_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[28]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\ULAout[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~58_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[29]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\ULAout[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~60_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[30]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\ULAout[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~62_combout\,
	oe => \ALT_INV_FUNC[1]~input_o\,
	devoe => ww_devoe,
	o => \ULAout[31]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Saida_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_1[0]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\Saida_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_1[1]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\Saida_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_1[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Saida_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_1[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Saida_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_1[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\Saida_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \Saida_2[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Saida_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \Saida_2[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\Saida_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_2[2]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\Saida_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_2[3]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\Saida_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida_2[4]~output_o\);

-- Location: IOIBUF_X94_Y73_N8
\FUNC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNC(1),
	o => \FUNC[1]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\FUNC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNC(0),
	o => \FUNC[0]~input_o\);

-- Location: LCCOMB_X94_Y1_N0
\ULA|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Equal1~0_combout\ = (\FUNC[0]~input_o\) # (\FUNC[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FUNC[0]~input_o\,
	datad => \FUNC[1]~input_o\,
	combout => \ULA|Equal1~0_combout\);

-- Location: LCCOMB_X86_Y2_N0
\ULA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_cout\ = CARRY(\ULA|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cout => \ULA|Add0~1_cout\);

-- Location: LCCOMB_X86_Y2_N2
\ULA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~2_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~1_cout\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~1_cout\) # (GND)))
-- \ULA|Add0~3\ = CARRY((!\ULA|Add0~1_cout\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~1_cout\,
	combout => \ULA|Add0~2_combout\,
	cout => \ULA|Add0~3\);

-- Location: LCCOMB_X86_Y2_N4
\ULA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~4_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~3\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~3\ & VCC))
-- \ULA|Add0~5\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~3\,
	combout => \ULA|Add0~4_combout\,
	cout => \ULA|Add0~5\);

-- Location: LCCOMB_X86_Y2_N6
\ULA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~6_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~5\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~5\) # (GND)))
-- \ULA|Add0~7\ = CARRY((!\ULA|Add0~5\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~5\,
	combout => \ULA|Add0~6_combout\,
	cout => \ULA|Add0~7\);

-- Location: LCCOMB_X86_Y2_N8
\ULA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~8_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~7\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~7\ & VCC))
-- \ULA|Add0~9\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~7\,
	combout => \ULA|Add0~8_combout\,
	cout => \ULA|Add0~9\);

-- Location: LCCOMB_X86_Y2_N10
\ULA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~10_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~9\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~9\) # (GND)))
-- \ULA|Add0~11\ = CARRY((!\ULA|Add0~9\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~9\,
	combout => \ULA|Add0~10_combout\,
	cout => \ULA|Add0~11\);

-- Location: LCCOMB_X86_Y2_N12
\ULA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~12_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~11\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~11\ & VCC))
-- \ULA|Add0~13\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~11\,
	combout => \ULA|Add0~12_combout\,
	cout => \ULA|Add0~13\);

-- Location: LCCOMB_X86_Y2_N14
\ULA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~14_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~13\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~13\) # (GND)))
-- \ULA|Add0~15\ = CARRY((!\ULA|Add0~13\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~13\,
	combout => \ULA|Add0~14_combout\,
	cout => \ULA|Add0~15\);

-- Location: LCCOMB_X86_Y2_N16
\ULA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~16_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~15\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~15\ & VCC))
-- \ULA|Add0~17\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~15\,
	combout => \ULA|Add0~16_combout\,
	cout => \ULA|Add0~17\);

-- Location: LCCOMB_X86_Y2_N18
\ULA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~18_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~17\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~17\) # (GND)))
-- \ULA|Add0~19\ = CARRY((!\ULA|Add0~17\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~17\,
	combout => \ULA|Add0~18_combout\,
	cout => \ULA|Add0~19\);

-- Location: LCCOMB_X86_Y2_N20
\ULA|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~20_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~19\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~19\ & VCC))
-- \ULA|Add0~21\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~19\,
	combout => \ULA|Add0~20_combout\,
	cout => \ULA|Add0~21\);

-- Location: LCCOMB_X86_Y2_N22
\ULA|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~22_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~21\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~21\) # (GND)))
-- \ULA|Add0~23\ = CARRY((!\ULA|Add0~21\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~21\,
	combout => \ULA|Add0~22_combout\,
	cout => \ULA|Add0~23\);

-- Location: LCCOMB_X86_Y2_N24
\ULA|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~24_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~23\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~23\ & VCC))
-- \ULA|Add0~25\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~23\,
	combout => \ULA|Add0~24_combout\,
	cout => \ULA|Add0~25\);

-- Location: LCCOMB_X86_Y2_N26
\ULA|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~26_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~25\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~25\) # (GND)))
-- \ULA|Add0~27\ = CARRY((!\ULA|Add0~25\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~25\,
	combout => \ULA|Add0~26_combout\,
	cout => \ULA|Add0~27\);

-- Location: LCCOMB_X86_Y2_N28
\ULA|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~28_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~27\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~27\ & VCC))
-- \ULA|Add0~29\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~27\,
	combout => \ULA|Add0~28_combout\,
	cout => \ULA|Add0~29\);

-- Location: LCCOMB_X86_Y2_N30
\ULA|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~30_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~29\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~29\) # (GND)))
-- \ULA|Add0~31\ = CARRY((!\ULA|Add0~29\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~29\,
	combout => \ULA|Add0~30_combout\,
	cout => \ULA|Add0~31\);

-- Location: LCCOMB_X86_Y1_N0
\ULA|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~32_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~31\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~31\ & VCC))
-- \ULA|Add0~33\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~31\,
	combout => \ULA|Add0~32_combout\,
	cout => \ULA|Add0~33\);

-- Location: LCCOMB_X86_Y1_N2
\ULA|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~34_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~33\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~33\) # (GND)))
-- \ULA|Add0~35\ = CARRY((!\ULA|Add0~33\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~33\,
	combout => \ULA|Add0~34_combout\,
	cout => \ULA|Add0~35\);

-- Location: LCCOMB_X86_Y1_N4
\ULA|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~36_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~35\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~35\ & VCC))
-- \ULA|Add0~37\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~35\,
	combout => \ULA|Add0~36_combout\,
	cout => \ULA|Add0~37\);

-- Location: LCCOMB_X86_Y1_N6
\ULA|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~38_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~37\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~37\) # (GND)))
-- \ULA|Add0~39\ = CARRY((!\ULA|Add0~37\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~37\,
	combout => \ULA|Add0~38_combout\,
	cout => \ULA|Add0~39\);

-- Location: LCCOMB_X86_Y1_N8
\ULA|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~40_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~39\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~39\ & VCC))
-- \ULA|Add0~41\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~39\,
	combout => \ULA|Add0~40_combout\,
	cout => \ULA|Add0~41\);

-- Location: LCCOMB_X86_Y1_N10
\ULA|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~42_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~41\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~41\) # (GND)))
-- \ULA|Add0~43\ = CARRY((!\ULA|Add0~41\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~41\,
	combout => \ULA|Add0~42_combout\,
	cout => \ULA|Add0~43\);

-- Location: LCCOMB_X86_Y1_N12
\ULA|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~44_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~43\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~43\ & VCC))
-- \ULA|Add0~45\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~43\,
	combout => \ULA|Add0~44_combout\,
	cout => \ULA|Add0~45\);

-- Location: LCCOMB_X86_Y1_N14
\ULA|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~46_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~45\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~45\) # (GND)))
-- \ULA|Add0~47\ = CARRY((!\ULA|Add0~45\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~45\,
	combout => \ULA|Add0~46_combout\,
	cout => \ULA|Add0~47\);

-- Location: LCCOMB_X86_Y1_N16
\ULA|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~48_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~47\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~47\ & VCC))
-- \ULA|Add0~49\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~47\,
	combout => \ULA|Add0~48_combout\,
	cout => \ULA|Add0~49\);

-- Location: LCCOMB_X86_Y1_N18
\ULA|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~50_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~49\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~49\) # (GND)))
-- \ULA|Add0~51\ = CARRY((!\ULA|Add0~49\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~49\,
	combout => \ULA|Add0~50_combout\,
	cout => \ULA|Add0~51\);

-- Location: LCCOMB_X86_Y1_N20
\ULA|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~52_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~51\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~51\ & VCC))
-- \ULA|Add0~53\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~51\,
	combout => \ULA|Add0~52_combout\,
	cout => \ULA|Add0~53\);

-- Location: LCCOMB_X86_Y1_N22
\ULA|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~54_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~53\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~53\) # (GND)))
-- \ULA|Add0~55\ = CARRY((!\ULA|Add0~53\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~53\,
	combout => \ULA|Add0~54_combout\,
	cout => \ULA|Add0~55\);

-- Location: LCCOMB_X86_Y1_N24
\ULA|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~56_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~55\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~55\ & VCC))
-- \ULA|Add0~57\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~55\,
	combout => \ULA|Add0~56_combout\,
	cout => \ULA|Add0~57\);

-- Location: LCCOMB_X86_Y1_N26
\ULA|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~58_combout\ = (\ULA|Equal1~0_combout\ & (!\ULA|Add0~57\)) # (!\ULA|Equal1~0_combout\ & ((\ULA|Add0~57\) # (GND)))
-- \ULA|Add0~59\ = CARRY((!\ULA|Add0~57\) # (!\ULA|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~57\,
	combout => \ULA|Add0~58_combout\,
	cout => \ULA|Add0~59\);

-- Location: LCCOMB_X86_Y1_N28
\ULA|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~60_combout\ = (\ULA|Equal1~0_combout\ & (\ULA|Add0~59\ $ (GND))) # (!\ULA|Equal1~0_combout\ & (!\ULA|Add0~59\ & VCC))
-- \ULA|Add0~61\ = CARRY((\ULA|Equal1~0_combout\ & !\ULA|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Equal1~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~59\,
	combout => \ULA|Add0~60_combout\,
	cout => \ULA|Add0~61\);

-- Location: LCCOMB_X86_Y1_N30
\ULA|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~62_combout\ = \ULA|Add0~61\ $ (\ULA|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ULA|Equal1~0_combout\,
	cin => \ULA|Add0~61\,
	combout => \ULA|Add0~62_combout\);

-- Location: IOIBUF_X0_Y45_N15
\Endereco[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(4),
	o => \Endereco[4]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\Endereco[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(3),
	o => \Endereco[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\Endereco[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(2),
	o => \Endereco[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\Endereco[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(0),
	o => \Endereco[0]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\Endereco[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(1),
	o => \Endereco[1]~input_o\);

-- Location: LCCOMB_X1_Y44_N24
\ROM|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\Endereco[3]~input_o\ & (!\Endereco[2]~input_o\ & (!\Endereco[0]~input_o\ & !\Endereco[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Endereco[3]~input_o\,
	datab => \Endereco[2]~input_o\,
	datac => \Endereco[0]~input_o\,
	datad => \Endereco[1]~input_o\,
	combout => \ROM|memROM~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\ROM|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\Endereco[4]~input_o\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Endereco[4]~input_o\,
	datad => \ROM|memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

-- Location: IOIBUF_X115_Y37_N8
\HabPc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HabPc,
	o => \HabPc~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\HabBanco~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HabBanco,
	o => \HabBanco~input_o\);

ww_Saida_1(0) <= \Saida_1[0]~output_o\;

ww_Saida_1(1) <= \Saida_1[1]~output_o\;

ww_Saida_1(2) <= \Saida_1[2]~output_o\;

ww_Saida_1(3) <= \Saida_1[3]~output_o\;

ww_Saida_1(4) <= \Saida_1[4]~output_o\;

ww_Saida_2(0) <= \Saida_2[0]~output_o\;

ww_Saida_2(1) <= \Saida_2[1]~output_o\;

ww_Saida_2(2) <= \Saida_2[2]~output_o\;

ww_Saida_2(3) <= \Saida_2[3]~output_o\;

ww_Saida_2(4) <= \Saida_2[4]~output_o\;

ww_ULAout(0) <= \ULAout[0]~output_o\;

ww_ULAout(1) <= \ULAout[1]~output_o\;

ww_ULAout(2) <= \ULAout[2]~output_o\;

ww_ULAout(3) <= \ULAout[3]~output_o\;

ww_ULAout(4) <= \ULAout[4]~output_o\;

ww_ULAout(5) <= \ULAout[5]~output_o\;

ww_ULAout(6) <= \ULAout[6]~output_o\;

ww_ULAout(7) <= \ULAout[7]~output_o\;

ww_ULAout(8) <= \ULAout[8]~output_o\;

ww_ULAout(9) <= \ULAout[9]~output_o\;

ww_ULAout(10) <= \ULAout[10]~output_o\;

ww_ULAout(11) <= \ULAout[11]~output_o\;

ww_ULAout(12) <= \ULAout[12]~output_o\;

ww_ULAout(13) <= \ULAout[13]~output_o\;

ww_ULAout(14) <= \ULAout[14]~output_o\;

ww_ULAout(15) <= \ULAout[15]~output_o\;

ww_ULAout(16) <= \ULAout[16]~output_o\;

ww_ULAout(17) <= \ULAout[17]~output_o\;

ww_ULAout(18) <= \ULAout[18]~output_o\;

ww_ULAout(19) <= \ULAout[19]~output_o\;

ww_ULAout(20) <= \ULAout[20]~output_o\;

ww_ULAout(21) <= \ULAout[21]~output_o\;

ww_ULAout(22) <= \ULAout[22]~output_o\;

ww_ULAout(23) <= \ULAout[23]~output_o\;

ww_ULAout(24) <= \ULAout[24]~output_o\;

ww_ULAout(25) <= \ULAout[25]~output_o\;

ww_ULAout(26) <= \ULAout[26]~output_o\;

ww_ULAout(27) <= \ULAout[27]~output_o\;

ww_ULAout(28) <= \ULAout[28]~output_o\;

ww_ULAout(29) <= \ULAout[29]~output_o\;

ww_ULAout(30) <= \ULAout[30]~output_o\;

ww_ULAout(31) <= \ULAout[31]~output_o\;
END structure;


