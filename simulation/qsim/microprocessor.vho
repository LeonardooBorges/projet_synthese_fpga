-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/07/2018 10:01:50"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	OP : IN std_logic_vector(2 DOWNTO 0);
	Y : BUFFER std_logic_vector(31 DOWNTO 0);
	Z : BUFFER std_logic
	);
END ALU;

ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~130_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_OP[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_OP <= OP;
Y <= ww_Y;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_OP[0]~input_o\ <= NOT \OP[0]~input_o\;
\ALT_INV_OP[1]~input_o\ <= NOT \OP[1]~input_o\;
\ALT_INV_OP[2]~input_o\ <= NOT \OP[2]~input_o\;
\ALT_INV_Equal0~14_combout\ <= NOT \Equal0~14_combout\;
\ALT_INV_Equal0~13_combout\ <= NOT \Equal0~13_combout\;
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;

\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~1_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~1_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~1_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~1_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~1_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

\Y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~1_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

\Y[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

\Y[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~1_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

\Y[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~1_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

\Y[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

\Y[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

\Y[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~1_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

\Y[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

\Y[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

\Y[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

\Y[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

\Y[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

\Y[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

\Y[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

\Y[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

\Y[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

\Y[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

\Y[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

\Y[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

\Y[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

\Y[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

\Y[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

\Y[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

\Y[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

\Y[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

\Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~15_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

\OP[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

\OP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

\OP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~130_cout\ = CARRY(( (!\OP[1]~input_o\ & \OP[0]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datad => \ALT_INV_OP[0]~input_o\,
	cin => GND,
	cout => \Add0~130_cout\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( (!\OP[0]~input_o\ $ (!\B[0]~input_o\)) # (\OP[1]~input_o\) ) + ( \A[0]~input_o\ ) + ( \Add0~130_cout\ ))
-- \Add0~2\ = CARRY(( (!\OP[0]~input_o\ $ (!\B[0]~input_o\)) # (\OP[1]~input_o\) ) + ( \A[0]~input_o\ ) + ( \Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => \Add0~130_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \A[0]~input_o\ & ( \Add0~1_sumout\ & ( (!\OP[2]~input_o\) # (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[0]~input_o\)))) ) ) ) # ( !\A[0]~input_o\ & ( \Add0~1_sumout\ & ( (!\OP[2]~input_o\) # ((!\OP[1]~input_o\ & 
-- (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[0]~input_o\ & ( !\Add0~1_sumout\ & ( (\OP[2]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[0]~input_o\))))) ) ) ) # ( !\A[0]~input_o\ & ( !\Add0~1_sumout\ & ( 
-- (\OP[2]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010001000100010001010011101010111110111011101110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Mux31~0_combout\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[1]~input_o\))) ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[1]~input_o\))) ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \A[1]~input_o\ & ( (\OP[2]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[1]~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( (\OP[2]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[1]~input_o\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010001000100010001010001000000010100010001000100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	combout => \Mux30~0_combout\);

\Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ((!\OP[2]~input_o\ & \Add0~5_sumout\)) # (\Mux30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Mux30~0_combout\,
	combout => \Mux30~1_combout\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[2]~input_o\))) ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[2]~input_o\))) ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\A[2]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[2]~input_o\))))) # (\A[2]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	combout => \Mux29~0_combout\);

\Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (!\OP[2]~input_o\ & (\Add0~9_sumout\)) # (\OP[2]~input_o\ & ((\Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Mux29~0_combout\,
	combout => \Mux29~1_combout\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[3]~input_o\))) ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[3]~input_o\))) ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\A[3]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[3]~input_o\))))) # (\A[3]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	combout => \Mux28~0_combout\);

\Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (!\OP[2]~input_o\ & (\Add0~13_sumout\)) # (\OP[2]~input_o\ & ((\Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Mux28~0_combout\,
	combout => \Mux28~1_combout\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[4]~input_o\))) ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[4]~input_o\))) ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\A[4]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[4]~input_o\))))) # (\A[4]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	combout => \Mux27~0_combout\);

\Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (!\OP[2]~input_o\ & (\Add0~17_sumout\)) # (\OP[2]~input_o\ & ((\Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Mux27~0_combout\,
	combout => \Mux27~1_combout\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[5]~input_o\))) ) + ( \A[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[5]~input_o\))) ) + ( \A[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\A[5]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[5]~input_o\))))) # (\A[5]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	combout => \Mux26~0_combout\);

\Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (!\OP[2]~input_o\ & (\Add0~21_sumout\)) # (\OP[2]~input_o\ & ((\Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_Mux26~0_combout\,
	combout => \Mux26~1_combout\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[6]~input_o\))) ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[6]~input_o\))) ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\A[6]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[6]~input_o\))))) # (\A[6]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	combout => \Mux25~0_combout\);

\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (!\OP[2]~input_o\ & (\Add0~25_sumout\)) # (\OP[2]~input_o\ & ((\Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_Mux25~0_combout\,
	combout => \Mux25~1_combout\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[7]~input_o\))) ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[7]~input_o\))) ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\A[7]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[7]~input_o\))))) # (\A[7]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	combout => \Mux24~0_combout\);

\Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (!\OP[2]~input_o\ & (\Add0~29_sumout\)) # (\OP[2]~input_o\ & ((\Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Mux24~0_combout\,
	combout => \Mux24~1_combout\);

\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[8]~input_o\))) ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[8]~input_o\))) ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\A[8]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[8]~input_o\))))) # (\A[8]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	combout => \Mux23~0_combout\);

\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!\OP[2]~input_o\ & (\Add0~33_sumout\)) # (\OP[2]~input_o\ & ((\Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~1_combout\);

\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[9]~input_o\))) ) + ( \A[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[9]~input_o\))) ) + ( \A[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\A[9]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[9]~input_o\))))) # (\A[9]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	combout => \Mux22~0_combout\);

\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (!\OP[2]~input_o\ & (\Add0~37_sumout\)) # (\OP[2]~input_o\ & ((\Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~37_sumout\,
	datac => \ALT_INV_Mux22~0_combout\,
	combout => \Mux22~1_combout\);

\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[10]~input_o\))) ) + ( \A[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[10]~input_o\))) ) + ( \A[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\A[10]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[10]~input_o\))))) # (\A[10]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	combout => \Mux21~0_combout\);

\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!\OP[2]~input_o\ & (\Add0~41_sumout\)) # (\OP[2]~input_o\ & ((\Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~41_sumout\,
	datac => \ALT_INV_Mux21~0_combout\,
	combout => \Mux21~1_combout\);

\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[11]~input_o\))) ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[11]~input_o\))) ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\A[11]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[11]~input_o\))))) # (\A[11]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	combout => \Mux20~0_combout\);

\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (!\OP[2]~input_o\ & (\Add0~45_sumout\)) # (\OP[2]~input_o\ & ((\Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~45_sumout\,
	datac => \ALT_INV_Mux20~0_combout\,
	combout => \Mux20~1_combout\);

\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[12]~input_o\))) ) + ( \A[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[12]~input_o\))) ) + ( \A[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\A[12]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[12]~input_o\))))) # (\A[12]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	combout => \Mux19~0_combout\);

\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (!\OP[2]~input_o\ & (\Add0~49_sumout\)) # (\OP[2]~input_o\ & ((\Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~49_sumout\,
	datac => \ALT_INV_Mux19~0_combout\,
	combout => \Mux19~1_combout\);

\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[13]~input_o\))) ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[13]~input_o\))) ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!\A[13]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[13]~input_o\))))) # (\A[13]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	combout => \Mux18~0_combout\);

\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\OP[2]~input_o\ & (\Add0~53_sumout\)) # (\OP[2]~input_o\ & ((\Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~53_sumout\,
	datac => \ALT_INV_Mux18~0_combout\,
	combout => \Mux18~1_combout\);

\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[14]~input_o\))) ) + ( \A[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[14]~input_o\))) ) + ( \A[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\A[14]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[14]~input_o\))))) # (\A[14]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	combout => \Mux17~0_combout\);

\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (!\OP[2]~input_o\ & (\Add0~57_sumout\)) # (\OP[2]~input_o\ & ((\Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_Mux17~0_combout\,
	combout => \Mux17~1_combout\);

\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[15]~input_o\))) ) + ( \A[15]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[15]~input_o\))) ) + ( \A[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\A[15]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[15]~input_o\))))) # (\A[15]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	combout => \Mux16~0_combout\);

\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (!\OP[2]~input_o\ & (\Add0~61_sumout\)) # (\OP[2]~input_o\ & ((\Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~61_sumout\,
	datac => \ALT_INV_Mux16~0_combout\,
	combout => \Mux16~1_combout\);

\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[16]~input_o\))) ) + ( \A[16]~input_o\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[16]~input_o\))) ) + ( \A[16]~input_o\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\A[16]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[16]~input_o\))))) # (\A[16]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	combout => \Mux15~0_combout\);

\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!\OP[2]~input_o\ & (\Add0~65_sumout\)) # (\OP[2]~input_o\ & ((\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~65_sumout\,
	datac => \ALT_INV_Mux15~0_combout\,
	combout => \Mux15~1_combout\);

\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[17]~input_o\))) ) + ( \A[17]~input_o\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[17]~input_o\))) ) + ( \A[17]~input_o\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\A[17]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[17]~input_o\))))) # (\A[17]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	combout => \Mux14~0_combout\);

\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\OP[2]~input_o\ & (\Add0~69_sumout\)) # (\OP[2]~input_o\ & ((\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~69_sumout\,
	datac => \ALT_INV_Mux14~0_combout\,
	combout => \Mux14~1_combout\);

\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[18]~input_o\))) ) + ( \A[18]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[18]~input_o\))) ) + ( \A[18]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\A[18]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[18]~input_o\))))) # (\A[18]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	combout => \Mux13~0_combout\);

\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\OP[2]~input_o\ & (\Add0~73_sumout\)) # (\OP[2]~input_o\ & ((\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~73_sumout\,
	datac => \ALT_INV_Mux13~0_combout\,
	combout => \Mux13~1_combout\);

\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[19]~input_o\))) ) + ( \A[19]~input_o\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[19]~input_o\))) ) + ( \A[19]~input_o\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\A[19]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[19]~input_o\))))) # (\A[19]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	combout => \Mux12~0_combout\);

\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\OP[2]~input_o\ & (\Add0~77_sumout\)) # (\OP[2]~input_o\ & ((\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~77_sumout\,
	datac => \ALT_INV_Mux12~0_combout\,
	combout => \Mux12~1_combout\);

\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[20]~input_o\))) ) + ( \A[20]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[20]~input_o\))) ) + ( \A[20]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\A[20]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[20]~input_o\))))) # (\A[20]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	combout => \Mux11~0_combout\);

\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (!\OP[2]~input_o\ & (\Add0~81_sumout\)) # (\OP[2]~input_o\ & ((\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~81_sumout\,
	datac => \ALT_INV_Mux11~0_combout\,
	combout => \Mux11~1_combout\);

\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[21]~input_o\))) ) + ( \A[21]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[21]~input_o\))) ) + ( \A[21]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\A[21]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[21]~input_o\))))) # (\A[21]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	combout => \Mux10~0_combout\);

\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!\OP[2]~input_o\ & (\Add0~85_sumout\)) # (\OP[2]~input_o\ & ((\Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~85_sumout\,
	datac => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~1_combout\);

\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[22]~input_o\))) ) + ( \A[22]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[22]~input_o\))) ) + ( \A[22]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\A[22]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[22]~input_o\))))) # (\A[22]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	combout => \Mux9~0_combout\);

\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\OP[2]~input_o\ & (\Add0~89_sumout\)) # (\OP[2]~input_o\ & ((\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~89_sumout\,
	datac => \ALT_INV_Mux9~0_combout\,
	combout => \Mux9~1_combout\);

\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[23]~input_o\))) ) + ( \A[23]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[23]~input_o\))) ) + ( \A[23]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\A[23]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[23]~input_o\))))) # (\A[23]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	combout => \Mux8~0_combout\);

\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\OP[2]~input_o\ & (\Add0~93_sumout\)) # (\OP[2]~input_o\ & ((\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~93_sumout\,
	datac => \ALT_INV_Mux8~0_combout\,
	combout => \Mux8~1_combout\);

\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[24]~input_o\))) ) + ( \A[24]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[24]~input_o\))) ) + ( \A[24]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\A[24]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[24]~input_o\))))) # (\A[24]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	combout => \Mux7~0_combout\);

\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\OP[2]~input_o\ & (\Add0~97_sumout\)) # (\OP[2]~input_o\ & ((\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~97_sumout\,
	datac => \ALT_INV_Mux7~0_combout\,
	combout => \Mux7~1_combout\);

\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[25]~input_o\))) ) + ( \A[25]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[25]~input_o\))) ) + ( \A[25]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\A[25]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[25]~input_o\))))) # (\A[25]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\OP[2]~input_o\ & (\Add0~101_sumout\)) # (\OP[2]~input_o\ & ((\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~101_sumout\,
	datac => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~1_combout\);

\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[26]~input_o\))) ) + ( \A[26]~input_o\ ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[26]~input_o\))) ) + ( \A[26]~input_o\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\A[26]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[26]~input_o\))))) # (\A[26]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\OP[2]~input_o\ & (\Add0~105_sumout\)) # (\OP[2]~input_o\ & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~105_sumout\,
	datac => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~1_combout\);

\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[27]~input_o\))) ) + ( \A[27]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[27]~input_o\))) ) + ( \A[27]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\A[27]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[27]~input_o\))))) # (\A[27]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\OP[2]~input_o\ & (\Add0~109_sumout\)) # (\OP[2]~input_o\ & ((\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~109_sumout\,
	datac => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~1_combout\);

\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[28]~input_o\))) ) + ( \A[28]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[28]~input_o\))) ) + ( \A[28]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\A[28]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[28]~input_o\))))) # (\A[28]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\OP[2]~input_o\ & (\Add0~113_sumout\)) # (\OP[2]~input_o\ & ((\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~113_sumout\,
	datac => \ALT_INV_Mux3~0_combout\,
	combout => \Mux3~1_combout\);

\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[29]~input_o\))) ) + ( \A[29]~input_o\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[29]~input_o\))) ) + ( \A[29]~input_o\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\A[29]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[29]~input_o\))))) # (\A[29]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\OP[2]~input_o\ & (\Add0~117_sumout\)) # (\OP[2]~input_o\ & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~117_sumout\,
	datac => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~1_combout\);

\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[30]~input_o\))) ) + ( \A[30]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[30]~input_o\))) ) + ( \A[30]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\A[30]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[30]~input_o\))))) # (\A[30]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101010110100011010101011010001101010101101000110101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	combout => \Mux1~0_combout\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\OP[2]~input_o\ & (\Add0~121_sumout\)) # (\OP[2]~input_o\ & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~121_sumout\,
	datac => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~1_combout\);

\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( !\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & !\B[31]~input_o\))) ) + ( \A[31]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[1]~input_o\,
	datab => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \A[31]~input_o\ & ( \Add0~125_sumout\ & ( (!\OP[2]~input_o\) # (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[31]~input_o\)))) ) ) ) # ( !\A[31]~input_o\ & ( \Add0~125_sumout\ & ( (!\OP[2]~input_o\) # ((!\OP[1]~input_o\ & 
-- (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[31]~input_o\)))) ) ) ) # ( \A[31]~input_o\ & ( !\Add0~125_sumout\ & ( (\OP[2]~input_o\ & (!\OP[1]~input_o\ $ (((!\OP[0]~input_o\) # (!\B[31]~input_o\))))) ) ) ) # ( !\A[31]~input_o\ & ( !\Add0~125_sumout\ & ( 
-- (\OP[2]~input_o\ & ((!\OP[1]~input_o\ & (!\OP[0]~input_o\)) # (\OP[1]~input_o\ & ((\B[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010001000100010001010011101010111110111011101110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_OP[1]~input_o\,
	datac => \ALT_INV_OP[0]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Add0~125_sumout\,
	combout => \Mux0~0_combout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Mux28~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~9_sumout\ & !\Add0~13_sumout\)) ) ) # ( !\Mux28~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~9_sumout\ & ((!\Add0~13_sumout\)))) # (\OP[2]~input_o\ & (((!\Mux29~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Mux28~0_combout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Mux18~0_combout\ & ( \Equal0~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~49_sumout\ & !\Add0~53_sumout\)) ) ) ) # ( !\Mux18~0_combout\ & ( \Equal0~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~49_sumout\ & ((!\Add0~53_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux19~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~49_sumout\,
	datac => \ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Mux8~0_combout\ & ( \Equal0~1_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~89_sumout\ & !\Add0~93_sumout\)) ) ) ) # ( !\Mux8~0_combout\ & ( \Equal0~1_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~89_sumout\ & ((!\Add0~93_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux9~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~89_sumout\,
	datac => \ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Mux26~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~17_sumout\ & !\Add0~21_sumout\)) ) ) # ( !\Mux26~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~17_sumout\ & ((!\Add0~21_sumout\)))) # (\OP[2]~input_o\ & (((!\Mux27~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Mux27~0_combout\,
	datad => \ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_Mux26~0_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Mux16~0_combout\ & ( \Equal0~3_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~57_sumout\ & !\Add0~61_sumout\)) ) ) ) # ( !\Mux16~0_combout\ & ( \Equal0~3_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~57_sumout\ & ((!\Add0~61_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux17~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_Add0~61_sumout\,
	datae => \ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Mux6~0_combout\ & ( \Equal0~4_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~97_sumout\ & !\Add0~101_sumout\)) ) ) ) # ( !\Mux6~0_combout\ & ( \Equal0~4_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~97_sumout\ & ((!\Add0~101_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~97_sumout\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Add0~101_sumout\,
	datae => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Mux24~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~25_sumout\ & !\Add0~29_sumout\)) ) ) # ( !\Mux24~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~25_sumout\ & ((!\Add0~29_sumout\)))) # (\OP[2]~input_o\ & (((!\Mux25~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_Add0~29_sumout\,
	datae => \ALT_INV_Mux24~0_combout\,
	combout => \Equal0~6_combout\);

\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \Mux14~0_combout\ & ( \Equal0~6_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~65_sumout\ & !\Add0~69_sumout\)) ) ) ) # ( !\Mux14~0_combout\ & ( \Equal0~6_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~65_sumout\ & ((!\Add0~69_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux15~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~65_sumout\,
	datac => \ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_Add0~69_sumout\,
	datae => \ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \Mux4~0_combout\ & ( \Equal0~7_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~105_sumout\ & !\Add0~109_sumout\)) ) ) ) # ( !\Mux4~0_combout\ & ( \Equal0~7_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~105_sumout\ & ((!\Add0~109_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~105_sumout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_Add0~109_sumout\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~8_combout\);

\Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( \Mux22~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~33_sumout\ & !\Add0~37_sumout\)) ) ) # ( !\Mux22~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~33_sumout\ & ((!\Add0~37_sumout\)))) # (\OP[2]~input_o\ & (((!\Mux23~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Mux23~0_combout\,
	datad => \ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_Mux22~0_combout\,
	combout => \Equal0~9_combout\);

\Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( \Mux12~0_combout\ & ( \Equal0~9_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~73_sumout\ & !\Add0~77_sumout\)) ) ) ) # ( !\Mux12~0_combout\ & ( \Equal0~9_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~73_sumout\ & ((!\Add0~77_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux13~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~73_sumout\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Add0~77_sumout\,
	datae => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Equal0~9_combout\,
	combout => \Equal0~10_combout\);

\Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( \Mux2~0_combout\ & ( \Equal0~10_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~113_sumout\ & !\Add0~117_sumout\)) ) ) ) # ( !\Mux2~0_combout\ & ( \Equal0~10_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~113_sumout\ & ((!\Add0~117_sumout\)))) 
-- # (\OP[2]~input_o\ & (((!\Mux3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~113_sumout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Add0~117_sumout\,
	datae => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Equal0~10_combout\,
	combout => \Equal0~11_combout\);

\Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( !\Mux31~0_combout\ & ( !\Mux30~0_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~5_sumout\ & (!\Add0~41_sumout\))) # (\OP[2]~input_o\ & (((!\Mux21~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010110000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Mux21~0_combout\,
	datae => \ALT_INV_Mux31~0_combout\,
	dataf => \ALT_INV_Mux30~0_combout\,
	combout => \Equal0~12_combout\);

\Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( \Mux11~0_combout\ & ( \Equal0~12_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~45_sumout\ & !\Add0~81_sumout\)) ) ) ) # ( !\Mux11~0_combout\ & ( \Equal0~12_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~45_sumout\ & ((!\Add0~81_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux20~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~45_sumout\,
	datac => \ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_Add0~81_sumout\,
	datae => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal0~13_combout\);

\Equal0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = ( \Mux1~0_combout\ & ( \Equal0~13_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~85_sumout\ & !\Add0~121_sumout\)) ) ) ) # ( !\Mux1~0_combout\ & ( \Equal0~13_combout\ & ( (!\OP[2]~input_o\ & (!\Add0~85_sumout\ & ((!\Add0~121_sumout\)))) # 
-- (\OP[2]~input_o\ & (((!\Mux10~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OP[2]~input_o\,
	datab => \ALT_INV_Add0~85_sumout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_Add0~121_sumout\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Equal0~13_combout\,
	combout => \Equal0~14_combout\);

\Equal0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = ( \Equal0~11_combout\ & ( \Equal0~14_combout\ & ( (!\Mux0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~5_combout\ & \Equal0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Equal0~8_combout\,
	datae => \ALT_INV_Equal0~11_combout\,
	dataf => \ALT_INV_Equal0~14_combout\,
	combout => \Equal0~15_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Z <= \Z~output_o\;
END structure;


