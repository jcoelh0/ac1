-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "12/12/2017 17:27:11"

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

ENTITY 	mips_multi_cycle IS
    PORT (
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_CState_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_CState_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_CState_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_CState_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_CState_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ : OUT std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(4 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mips_multi_cycle;

-- Design Ports Information
-- KEY[4]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips_multi_cycle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_CState_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_CState_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_CState_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_CState_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_CState_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounceUnit|s_pulsedOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ControlUnit|DU_CState~1_combout\ : std_logic;
SIGNAL \ControlUnit|CS~38_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~2_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~3_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~4_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~5_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~6_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~7_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~8_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~9_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~10_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~3_wirecell_combout\ : std_logic;
SIGNAL \Ram|s_memory~2092_wirecell_combout\ : std_logic;
SIGNAL \KEY[4]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[0]~24_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debounceUnit|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounceUnit|s_dirtyIn~q\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[19]~68\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[20]~69_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[20]~70\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[21]~71_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[21]~72\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[22]~73_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[22]~74\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[23]~75_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~26_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~5_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~1_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~0_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~27_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~2_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~28_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~7_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~3_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~29_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~30_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[0]~25\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[1]~31_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[1]~32\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~33_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~34\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[3]~35_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[3]~36\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[4]~37_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[4]~38\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[5]~39_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[5]~40\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[6]~41_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[6]~42\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[7]~43_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[7]~44\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[8]~45_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[8]~46\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[9]~47_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[9]~48\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[10]~49_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[10]~50\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[11]~51_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[11]~52\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[12]~53_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[12]~54\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[13]~55_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[13]~56\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[14]~57_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[14]~58\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[15]~59_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[15]~60\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[16]~61_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[16]~62\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[17]~63_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[17]~64\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[18]~65_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[18]~66\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[19]~67_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~4_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~6_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~8_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~9_combout\ : std_logic;
SIGNAL \debounceUnit|Equal0~10_combout\ : std_logic;
SIGNAL \debounceUnit|s_pulsedOut~q\ : std_logic;
SIGNAL \debounceUnit|s_pulsedOut~clkctrl_outclk\ : std_logic;
SIGNAL \Ram|s_memory~132feeder_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Ram|s_memory~70feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~66feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~66_q\ : std_logic;
SIGNAL \Ram|s_memory~130feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~130_q\ : std_logic;
SIGNAL \ControlUnit|Equal3~0_combout\ : std_logic;
SIGNAL \ControlUnit|Selector9~0_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E9~q\ : std_logic;
SIGNAL \ControlUnit|Equal1~0_combout\ : std_logic;
SIGNAL \ControlUnit|CS~45_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E3~q\ : std_logic;
SIGNAL \ControlUnit|CS~43_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E4~q\ : std_logic;
SIGNAL \ControlUnit|Equal0~0_combout\ : std_logic;
SIGNAL \ControlUnit|CS~41_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E6~q\ : std_logic;
SIGNAL \ControlUnit|CS~42_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E7~q\ : std_logic;
SIGNAL \ControlUnit|WideOr9~combout\ : std_logic;
SIGNAL \ControlUnit|CS.E0~_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Ram|s_memory~55feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~55_q\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~92feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~73feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~73_q\ : std_logic;
SIGNAL \Ram|s_memory~105feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~105_q\ : std_logic;
SIGNAL \Ram|s_memory~2099_combout\ : std_logic;
SIGNAL \Ram|s_memory~2101_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \DataRegister|DataOut[21]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~38_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~68_combout\ : std_logic;
SIGNAL \ControlUnit|DU_CState~0_combout\ : std_logic;
SIGNAL \M4|DataOut[2]~29_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~38_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~68_combout\ : std_logic;
SIGNAL \InstructionRegister|DataOut[2]~feeder_combout\ : std_logic;
SIGNAL \ControlUnit|ALUSelB[0]~0_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr7~0_combout\ : std_logic;
SIGNAL \M5|DataOut[2]~42_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~69_combout\ : std_logic;
SIGNAL \M5|DataOut[1]~43_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~70_combout\ : std_logic;
SIGNAL \M5|DataOut[0]~44_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~70_combout\ : std_logic;
SIGNAL \M4|DataOut[0]~31_combout\ : std_logic;
SIGNAL \ALU|Add0~1\ : std_logic;
SIGNAL \ALU|Add0~4\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~88_combout\ : std_logic;
SIGNAL \Ram|s_memory~2102_combout\ : std_logic;
SIGNAL \Ram|s_memory~2103_combout\ : std_logic;
SIGNAL \Ram|s_memory~92_q\ : std_logic;
SIGNAL \Ram|s_memory~2116_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~39_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~39_combout\ : std_logic;
SIGNAL \M5|DataOut[31]~26_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~40_combout\ : std_logic;
SIGNAL \M5|DataOut[30]~27_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~40_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~41_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~41_combout\ : std_logic;
SIGNAL \M5|DataOut[29]~28_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~42_combout\ : std_logic;
SIGNAL \M5|DataOut[28]~29_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[65]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~43_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[65]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~43_combout\ : std_logic;
SIGNAL \M5|DataOut[27]~30_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~44_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~44_combout\ : std_logic;
SIGNAL \M5|DataOut[26]~31_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~45_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~45_combout\ : std_logic;
SIGNAL \M5|DataOut[25]~32_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~46_combout\ : std_logic;
SIGNAL \M5|DataOut[24]~33_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~46_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~47_combout\ : std_logic;
SIGNAL \M5|DataOut[23]~34_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~48_combout\ : std_logic;
SIGNAL \M5|DataOut[22]~35_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~48_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~49_combout\ : std_logic;
SIGNAL \M5|DataOut[21]~36_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~50_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~61_combout\ : std_logic;
SIGNAL \pcupdate|s_pc[17]~50_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~50_combout\ : std_logic;
SIGNAL \M5|DataOut[20]~37_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~51_combout\ : std_logic;
SIGNAL \M5|DataOut[19]~38_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~52_combout\ : std_logic;
SIGNAL \M5|DataOut[18]~39_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~52_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~53_combout\ : std_logic;
SIGNAL \M5|DataOut[17]~40_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~54_combout\ : std_logic;
SIGNAL \M5|DataOut[16]~45_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~55_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~55_combout\ : std_logic;
SIGNAL \M5|DataOut[15]~46_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~56_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~56_combout\ : std_logic;
SIGNAL \M5|DataOut[14]~47_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~57_combout\ : std_logic;
SIGNAL \M5|DataOut[13]~48_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~57_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~58_combout\ : std_logic;
SIGNAL \M5|DataOut[12]~49_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~59_combout\ : std_logic;
SIGNAL \M5|DataOut[11]~50_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~59_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~60_combout\ : std_logic;
SIGNAL \M5|DataOut[10]~51_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~61_combout\ : std_logic;
SIGNAL \M5|DataOut[9]~52_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~62_combout\ : std_logic;
SIGNAL \M5|DataOut[8]~53_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~63_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~63_combout\ : std_logic;
SIGNAL \M5|DataOut[7]~54_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~64_combout\ : std_logic;
SIGNAL \M5|DataOut[6]~55_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~63_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~65_combout\ : std_logic;
SIGNAL \M4|DataOut[5]~26_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~66_combout\ : std_logic;
SIGNAL \M5|DataOut[4]~41_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~66_combout\ : std_logic;
SIGNAL \M4|DataOut[4]~27_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~67_combout\ : std_logic;
SIGNAL \M5|DataOut[3]~57_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~67_combout\ : std_logic;
SIGNAL \M4|DataOut[3]~28_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~10\ : std_logic;
SIGNAL \ALU|Add0~13\ : std_logic;
SIGNAL \ALU|Add0~16\ : std_logic;
SIGNAL \ALU|Add0~18_combout\ : std_logic;
SIGNAL \ALU|Add0~20_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~64_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~64_combout\ : std_logic;
SIGNAL \M4|DataOut[6]~25_combout\ : std_logic;
SIGNAL \ALU|Add0~19\ : std_logic;
SIGNAL \ALU|Add0~21_combout\ : std_logic;
SIGNAL \ALU|Add0~23_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~84_combout\ : std_logic;
SIGNAL \M4|DataOut[7]~24_combout\ : std_logic;
SIGNAL \ALU|Add0~22\ : std_logic;
SIGNAL \ALU|Add0~24_combout\ : std_logic;
SIGNAL \ALU|Add0~26_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~83_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~62_combout\ : std_logic;
SIGNAL \M4|DataOut[8]~23_combout\ : std_logic;
SIGNAL \ALU|Add0~25\ : std_logic;
SIGNAL \ALU|Add0~27_combout\ : std_logic;
SIGNAL \ALU|Add0~29_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~82_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~61_combout\ : std_logic;
SIGNAL \M4|DataOut[9]~22_combout\ : std_logic;
SIGNAL \ALU|Add0~28\ : std_logic;
SIGNAL \ALU|Add0~30_combout\ : std_logic;
SIGNAL \ALU|Add0~32_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~81_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~60_combout\ : std_logic;
SIGNAL \M4|DataOut[10]~21_combout\ : std_logic;
SIGNAL \ALU|Add0~31\ : std_logic;
SIGNAL \ALU|Add0~33_combout\ : std_logic;
SIGNAL \ALU|Add0~35_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~80_combout\ : std_logic;
SIGNAL \M4|DataOut[11]~20_combout\ : std_logic;
SIGNAL \ALU|Add0~34\ : std_logic;
SIGNAL \ALU|Add0~36_combout\ : std_logic;
SIGNAL \ALU|Add0~38_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~79_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~58_combout\ : std_logic;
SIGNAL \M4|DataOut[12]~19_combout\ : std_logic;
SIGNAL \ALU|Add0~37\ : std_logic;
SIGNAL \ALU|Add0~39_combout\ : std_logic;
SIGNAL \ALU|Add0~41_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~78_combout\ : std_logic;
SIGNAL \M4|DataOut[13]~18_combout\ : std_logic;
SIGNAL \ALU|Add0~40\ : std_logic;
SIGNAL \ALU|Add0~42_combout\ : std_logic;
SIGNAL \ALU|Add0~44_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~77_combout\ : std_logic;
SIGNAL \M4|DataOut[14]~17_combout\ : std_logic;
SIGNAL \ALU|Add0~43\ : std_logic;
SIGNAL \ALU|Add0~45_combout\ : std_logic;
SIGNAL \ALU|Add0~47_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~76_combout\ : std_logic;
SIGNAL \M4|DataOut[15]~16_combout\ : std_logic;
SIGNAL \ALU|Add0~46\ : std_logic;
SIGNAL \ALU|Add0~48_combout\ : std_logic;
SIGNAL \ALU|Add0~50_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~75_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~54_combout\ : std_logic;
SIGNAL \M4|DataOut[16]~15_combout\ : std_logic;
SIGNAL \ALU|Add0~49\ : std_logic;
SIGNAL \ALU|Add0~51_combout\ : std_logic;
SIGNAL \ALU|Add0~53_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~74_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~53_combout\ : std_logic;
SIGNAL \M4|DataOut[17]~14_combout\ : std_logic;
SIGNAL \ALU|Add0~52\ : std_logic;
SIGNAL \ALU|Add0~54_combout\ : std_logic;
SIGNAL \ALU|Add0~56_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~73_combout\ : std_logic;
SIGNAL \M4|DataOut[18]~13_combout\ : std_logic;
SIGNAL \ALU|Add0~55\ : std_logic;
SIGNAL \ALU|Add0~57_combout\ : std_logic;
SIGNAL \ALU|Add0~59_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~72_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~51_combout\ : std_logic;
SIGNAL \M4|DataOut[19]~12_combout\ : std_logic;
SIGNAL \ALU|Add0~58\ : std_logic;
SIGNAL \ALU|Add0~60_combout\ : std_logic;
SIGNAL \ALU|Add0~62_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~62_combout\ : std_logic;
SIGNAL \M4|DataOut[20]~11_combout\ : std_logic;
SIGNAL \ALU|Add0~61\ : std_logic;
SIGNAL \ALU|Add0~63_combout\ : std_logic;
SIGNAL \ALU|Add0~65_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~71_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~49_combout\ : std_logic;
SIGNAL \M4|DataOut[21]~10_combout\ : std_logic;
SIGNAL \ALU|Add0~64\ : std_logic;
SIGNAL \ALU|Add0~66_combout\ : std_logic;
SIGNAL \ALU|Add0~68_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~70_combout\ : std_logic;
SIGNAL \M4|DataOut[22]~9_combout\ : std_logic;
SIGNAL \ALU|Add0~67\ : std_logic;
SIGNAL \ALU|Add0~69_combout\ : std_logic;
SIGNAL \ALU|Add0~71_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~69_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~47_combout\ : std_logic;
SIGNAL \M4|DataOut[23]~8_combout\ : std_logic;
SIGNAL \ALU|Add0~70\ : std_logic;
SIGNAL \ALU|Add0~72_combout\ : std_logic;
SIGNAL \ALU|Add0~74_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~68_combout\ : std_logic;
SIGNAL \M4|DataOut[24]~7_combout\ : std_logic;
SIGNAL \ALU|Add0~73\ : std_logic;
SIGNAL \ALU|Add0~75_combout\ : std_logic;
SIGNAL \ALU|Add0~77_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~59_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~60_combout\ : std_logic;
SIGNAL \M4|DataOut[25]~6_combout\ : std_logic;
SIGNAL \ALU|Add0~76\ : std_logic;
SIGNAL \ALU|Add0~78_combout\ : std_logic;
SIGNAL \ALU|Add0~80_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~67_combout\ : std_logic;
SIGNAL \M4|DataOut[26]~5_combout\ : std_logic;
SIGNAL \ALU|Add0~79\ : std_logic;
SIGNAL \ALU|Add0~81_combout\ : std_logic;
SIGNAL \ALU|Add0~83_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~66_combout\ : std_logic;
SIGNAL \M4|DataOut[27]~4_combout\ : std_logic;
SIGNAL \ALU|Add0~82\ : std_logic;
SIGNAL \ALU|Add0~84_combout\ : std_logic;
SIGNAL \ALU|Add0~86_combout\ : std_logic;
SIGNAL \ALUOut|DataOut[28]~feeder_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~57_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~58_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~42_combout\ : std_logic;
SIGNAL \M4|DataOut[28]~3_combout\ : std_logic;
SIGNAL \ALU|Add0~85\ : std_logic;
SIGNAL \ALU|Add0~87_combout\ : std_logic;
SIGNAL \ALU|Add0~89_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~55_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~56_combout\ : std_logic;
SIGNAL \M4|DataOut[29]~2_combout\ : std_logic;
SIGNAL \ALU|Add0~88\ : std_logic;
SIGNAL \ALU|Add0~90_combout\ : std_logic;
SIGNAL \ALU|Add0~92_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~53_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~54_combout\ : std_logic;
SIGNAL \M4|DataOut[30]~1_combout\ : std_logic;
SIGNAL \ALU|Add0~91\ : std_logic;
SIGNAL \ALU|Add0~93_combout\ : std_logic;
SIGNAL \ALU|Add0~95_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~51_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~52_combout\ : std_logic;
SIGNAL \M4|DataOut[31]~0_combout\ : std_logic;
SIGNAL \ALU|LessThan0~1_cout\ : std_logic;
SIGNAL \ALU|LessThan0~3_cout\ : std_logic;
SIGNAL \ALU|LessThan0~5_cout\ : std_logic;
SIGNAL \ALU|LessThan0~7_cout\ : std_logic;
SIGNAL \ALU|LessThan0~9_cout\ : std_logic;
SIGNAL \ALU|LessThan0~11_cout\ : std_logic;
SIGNAL \ALU|LessThan0~13_cout\ : std_logic;
SIGNAL \ALU|LessThan0~15_cout\ : std_logic;
SIGNAL \ALU|LessThan0~17_cout\ : std_logic;
SIGNAL \ALU|LessThan0~19_cout\ : std_logic;
SIGNAL \ALU|LessThan0~21_cout\ : std_logic;
SIGNAL \ALU|LessThan0~23_cout\ : std_logic;
SIGNAL \ALU|LessThan0~25_cout\ : std_logic;
SIGNAL \ALU|LessThan0~27_cout\ : std_logic;
SIGNAL \ALU|LessThan0~29_cout\ : std_logic;
SIGNAL \ALU|LessThan0~31_cout\ : std_logic;
SIGNAL \ALU|LessThan0~33_cout\ : std_logic;
SIGNAL \ALU|LessThan0~35_cout\ : std_logic;
SIGNAL \ALU|LessThan0~37_cout\ : std_logic;
SIGNAL \ALU|LessThan0~39_cout\ : std_logic;
SIGNAL \ALU|LessThan0~41_cout\ : std_logic;
SIGNAL \ALU|LessThan0~43_cout\ : std_logic;
SIGNAL \ALU|LessThan0~45_cout\ : std_logic;
SIGNAL \ALU|LessThan0~47_cout\ : std_logic;
SIGNAL \ALU|LessThan0~49_cout\ : std_logic;
SIGNAL \ALU|LessThan0~51_cout\ : std_logic;
SIGNAL \ALU|LessThan0~53_cout\ : std_logic;
SIGNAL \ALU|LessThan0~55_cout\ : std_logic;
SIGNAL \ALU|LessThan0~57_cout\ : std_logic;
SIGNAL \ALU|LessThan0~59_cout\ : std_logic;
SIGNAL \ALU|LessThan0~61_cout\ : std_logic;
SIGNAL \ALU|LessThan0~62_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~2_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~65_combout\ : std_logic;
SIGNAL \Ram|s_memory~87feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~87_q\ : std_logic;
SIGNAL \Ram|s_memory~2114_combout\ : std_logic;
SIGNAL \Ram|s_memory~119feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~119_q\ : std_logic;
SIGNAL \Ram|s_memory~2115_combout\ : std_logic;
SIGNAL \M2|DataOut[0]~0_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rs_mem|s_memory~69_combout\ : std_logic;
SIGNAL \M4|DataOut[1]~30_combout\ : std_logic;
SIGNAL \ALU|Add0~3_combout\ : std_logic;
SIGNAL \ALU|Add0~5_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~89_combout\ : std_logic;
SIGNAL \Ram|s_memory~2109_combout\ : std_logic;
SIGNAL \ControlUnit|Selector2~0_combout\ : std_logic;
SIGNAL \ControlUnit|Selector2~1_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E2~q\ : std_logic;
SIGNAL \ControlUnit|CS~44_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E5~q\ : std_logic;
SIGNAL \Ram|s_memory~2106_combout\ : std_logic;
SIGNAL \Ram|s_memory~2107_combout\ : std_logic;
SIGNAL \Ram|s_memory~70_q\ : std_logic;
SIGNAL \Ram|s_memory~134feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~134_q\ : std_logic;
SIGNAL \Ram|s_memory~2113_combout\ : std_logic;
SIGNAL \ControlUnit|CS~29_combout\ : std_logic;
SIGNAL \ControlUnit|CS~47_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E8~q\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Add0~14_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~86_combout\ : std_logic;
SIGNAL \Ram|s_memory~2100_combout\ : std_logic;
SIGNAL \Ram|s_memory~2108_combout\ : std_logic;
SIGNAL \Ram|s_memory~129feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~129_q\ : std_logic;
SIGNAL \Ram|s_memory~65feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~65_q\ : std_logic;
SIGNAL \Ram|s_memory~2112_combout\ : std_logic;
SIGNAL \ControlUnit|NS~12_combout\ : std_logic;
SIGNAL \ControlUnit|Selector1~0_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E1~q\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory~65_combout\ : std_logic;
SIGNAL \M5|DataOut[5]~56_combout\ : std_logic;
SIGNAL \ALU|Add0~15_combout\ : std_logic;
SIGNAL \ALU|Add0~17_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~85_combout\ : std_logic;
SIGNAL \Ram|s_memory~2104_combout\ : std_logic;
SIGNAL \Ram|s_memory~2105_combout\ : std_logic;
SIGNAL \Ram|s_memory~132_q\ : std_logic;
SIGNAL \Ram|s_memory~100feeder_combout\ : std_logic;
SIGNAL \Ram|s_memory~100_q\ : std_logic;
SIGNAL \Ram|s_memory~2110_combout\ : std_logic;
SIGNAL \Ram|s_memory~2111_combout\ : std_logic;
SIGNAL \ControlUnit|CS~17_combout\ : std_logic;
SIGNAL \ControlUnit|CS~46_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E11~q\ : std_logic;
SIGNAL \ControlUnit|CS~39_combout\ : std_logic;
SIGNAL \ControlUnit|CS~40_combout\ : std_logic;
SIGNAL \ControlUnit|CS.E0~q\ : std_logic;
SIGNAL \ALU|Add0~9_combout\ : std_logic;
SIGNAL \ALU|Add0~11_combout\ : std_logic;
SIGNAL \pcupdate|s_pc~87_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \displayUnit|Mux34~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux36~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux37~0_combout\ : std_logic;
SIGNAL \displayUnit|s_count[0]~31_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \displayUnit|s_count[6]~33_combout\ : std_logic;
SIGNAL \displayUnit|s_count[0]~32\ : std_logic;
SIGNAL \displayUnit|s_count[1]~34_combout\ : std_logic;
SIGNAL \displayUnit|s_count[1]~35\ : std_logic;
SIGNAL \displayUnit|s_count[2]~36_combout\ : std_logic;
SIGNAL \displayUnit|s_count[2]~37\ : std_logic;
SIGNAL \displayUnit|s_count[3]~38_combout\ : std_logic;
SIGNAL \displayUnit|s_count[3]~39\ : std_logic;
SIGNAL \displayUnit|s_count[4]~40_combout\ : std_logic;
SIGNAL \displayUnit|s_count[4]~41\ : std_logic;
SIGNAL \displayUnit|s_count[5]~42_combout\ : std_logic;
SIGNAL \displayUnit|s_count[5]~43\ : std_logic;
SIGNAL \displayUnit|s_count[6]~44_combout\ : std_logic;
SIGNAL \displayUnit|s_count[6]~45\ : std_logic;
SIGNAL \displayUnit|s_count[7]~46_combout\ : std_logic;
SIGNAL \displayUnit|s_count[7]~47\ : std_logic;
SIGNAL \displayUnit|s_count[8]~48_combout\ : std_logic;
SIGNAL \displayUnit|s_count[8]~49\ : std_logic;
SIGNAL \displayUnit|s_count[9]~50_combout\ : std_logic;
SIGNAL \displayUnit|s_count[9]~51\ : std_logic;
SIGNAL \displayUnit|s_count[10]~52_combout\ : std_logic;
SIGNAL \displayUnit|s_count[10]~53\ : std_logic;
SIGNAL \displayUnit|s_count[11]~54_combout\ : std_logic;
SIGNAL \displayUnit|s_count[11]~55\ : std_logic;
SIGNAL \displayUnit|s_count[12]~56_combout\ : std_logic;
SIGNAL \displayUnit|s_count[12]~57\ : std_logic;
SIGNAL \displayUnit|s_count[13]~58_combout\ : std_logic;
SIGNAL \displayUnit|s_count[13]~59\ : std_logic;
SIGNAL \displayUnit|s_count[14]~60_combout\ : std_logic;
SIGNAL \displayUnit|s_count[14]~61\ : std_logic;
SIGNAL \displayUnit|s_count[15]~62_combout\ : std_logic;
SIGNAL \displayUnit|s_count[15]~63\ : std_logic;
SIGNAL \displayUnit|s_count[16]~64_combout\ : std_logic;
SIGNAL \displayUnit|s_count[16]~65\ : std_logic;
SIGNAL \displayUnit|s_count[17]~66_combout\ : std_logic;
SIGNAL \displayUnit|s_count[17]~67\ : std_logic;
SIGNAL \displayUnit|s_count[18]~68_combout\ : std_logic;
SIGNAL \displayUnit|s_count[18]~69\ : std_logic;
SIGNAL \displayUnit|s_count[19]~70_combout\ : std_logic;
SIGNAL \displayUnit|s_count[19]~71\ : std_logic;
SIGNAL \displayUnit|s_count[20]~72_combout\ : std_logic;
SIGNAL \displayUnit|s_count[20]~73\ : std_logic;
SIGNAL \displayUnit|s_count[21]~74_combout\ : std_logic;
SIGNAL \displayUnit|s_count[21]~75\ : std_logic;
SIGNAL \displayUnit|s_count[22]~76_combout\ : std_logic;
SIGNAL \displayUnit|s_count[22]~77\ : std_logic;
SIGNAL \displayUnit|s_count[23]~78_combout\ : std_logic;
SIGNAL \displayUnit|s_count[23]~79\ : std_logic;
SIGNAL \displayUnit|s_count[24]~80_combout\ : std_logic;
SIGNAL \displayUnit|s_count[24]~81\ : std_logic;
SIGNAL \displayUnit|s_count[25]~82_combout\ : std_logic;
SIGNAL \displayUnit|s_count[25]~83\ : std_logic;
SIGNAL \displayUnit|s_count[26]~84_combout\ : std_logic;
SIGNAL \displayUnit|s_count[26]~85\ : std_logic;
SIGNAL \displayUnit|s_count[27]~86_combout\ : std_logic;
SIGNAL \displayUnit|s_count[27]~87\ : std_logic;
SIGNAL \displayUnit|s_count[28]~88_combout\ : std_logic;
SIGNAL \displayUnit|s_count[28]~89\ : std_logic;
SIGNAL \displayUnit|s_count[29]~90_combout\ : std_logic;
SIGNAL \displayUnit|s_count[29]~91\ : std_logic;
SIGNAL \displayUnit|s_count[30]~92_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~1_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~3_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~2_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~0_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~4_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~5_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[0]~31_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[0]~32\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[1]~33_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[1]~34\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[2]~35_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[2]~36\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[3]~37_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[3]~38\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[4]~39_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[4]~40\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[5]~41_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[5]~42\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[6]~43_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[6]~44\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[7]~45_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[7]~46\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[8]~47_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[8]~48\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[9]~49_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[9]~50\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[10]~51_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[10]~52\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[11]~53_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[11]~54\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[12]~55_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[12]~56\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[13]~57_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[13]~58\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[14]~59_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[14]~60\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[15]~61_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[15]~62\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[16]~63_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[16]~64\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[17]~65_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[17]~66\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[18]~67_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[18]~68\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[19]~69_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[19]~70\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[20]~71_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[20]~72\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[21]~73_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[21]~74\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[22]~75_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[22]~76\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[23]~77_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[23]~78\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[24]~79_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[24]~80\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[25]~81_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[25]~82\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[26]~83_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[26]~84\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[27]~85_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~7_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[27]~86\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[28]~87_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[28]~88\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[29]~89_combout\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[29]~90\ : std_logic;
SIGNAL \displayUnit|s_repeatCount[30]~91_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~8_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~5_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~2_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~0_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~1_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~3_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~4_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~6_combout\ : std_logic;
SIGNAL \displayUnit|s_thd[24]~9_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~6_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~7_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~8_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~9_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~10_combout\ : std_logic;
SIGNAL \displayUnit|Equal1~11_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \displayUnit|s_inc~0_combout\ : std_logic;
SIGNAL \displayUnit|s_inc~q\ : std_logic;
SIGNAL \displayUnit|s_dec~0_combout\ : std_logic;
SIGNAL \displayUnit|s_dec~q\ : std_logic;
SIGNAL \displayUnit|Decoder0~1_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~0_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[2][0]~q\ : std_logic;
SIGNAL \displayUnit|Decoder0~3_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~11_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[1][0]~q\ : std_logic;
SIGNAL \displayUnit|Mux5~0_combout\ : std_logic;
SIGNAL \displayUnit|Decoder0~4_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[0][0]~q\ : std_logic;
SIGNAL \displayUnit|Mux5~1_combout\ : std_logic;
SIGNAL \displayUnit|Add0~0_combout\ : std_logic;
SIGNAL \displayUnit|Decoder0~2_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~5_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[3][0]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[0][1]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~12_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[1][1]~q\ : std_logic;
SIGNAL \displayUnit|Mux4~0_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~1_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[2][1]~q\ : std_logic;
SIGNAL \displayUnit|Mux4~1_combout\ : std_logic;
SIGNAL \displayUnit|Add0~1\ : std_logic;
SIGNAL \displayUnit|Add0~2_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~6_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[3][1]~q\ : std_logic;
SIGNAL \Ram|s_memory~2087_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~16_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[1][5]~q\ : std_logic;
SIGNAL \displayUnit|Mux38~0_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[2][5]~17_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[2][5]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[0][5]~q\ : std_logic;
SIGNAL \displayUnit|Mux0~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux0~1_combout\ : std_logic;
SIGNAL \displayUnit|Add0~3\ : std_logic;
SIGNAL \displayUnit|Add0~4_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~7_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[3][2]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~13_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[1][2]~q\ : std_logic;
SIGNAL \displayUnit|Mux3~0_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[0][2]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~2_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[2][2]~q\ : std_logic;
SIGNAL \displayUnit|Mux3~1_combout\ : std_logic;
SIGNAL \displayUnit|Add0~5\ : std_logic;
SIGNAL \displayUnit|Add0~6_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~14_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[1][3]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~8_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[3][3]~q\ : std_logic;
SIGNAL \displayUnit|Mux40~0_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[0][3]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~3_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[2][3]~q\ : std_logic;
SIGNAL \displayUnit|Mux2~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux2~1_combout\ : std_logic;
SIGNAL \displayUnit|Add0~7\ : std_logic;
SIGNAL \displayUnit|Add0~8_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[0][4]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~4_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[2][4]~q\ : std_logic;
SIGNAL \displayUnit|Mux1~0_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~9_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[3][4]~q\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~15_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[1][4]~q\ : std_logic;
SIGNAL \displayUnit|Mux39~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux1~1_combout\ : std_logic;
SIGNAL \displayUnit|Add0~9\ : std_logic;
SIGNAL \displayUnit|Add0~10_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters~10_combout\ : std_logic;
SIGNAL \displayUnit|s_addrCounters[3][5]~q\ : std_logic;
SIGNAL \Ram|s_memory~2088_combout\ : std_logic;
SIGNAL \Ram|s_memory~2089_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~1062_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~72_q\ : std_logic;
SIGNAL \RegFile|modo|readData[2]~0_combout\ : std_logic;
SIGNAL \RegFile|modo|readData[2]~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux35~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux35~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux52~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux51~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux50~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux49~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux48~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux47~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux46~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux33~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux32~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux30~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux31~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux59~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux58~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux57~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux56~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux55~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux54~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux53~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux28~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux26~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux27~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux29~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux66~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux65~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux64~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux63~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux62~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux61~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux60~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux23~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux22~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux24~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux25~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux73~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux72~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux71~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux70~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux69~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux68~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux67~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux43~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux43~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux45~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux42~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux42~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux44~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux122~0_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~86_q\ : std_logic;
SIGNAL \RegFile|modo|readData[16]~2_combout\ : std_logic;
SIGNAL \displayUnit|Mux21~0_combout\ : std_logic;
SIGNAL \Ram|s_memory~2090_combout\ : std_logic;
SIGNAL \Ram|s_memory~2091_combout\ : std_logic;
SIGNAL \displayUnit|Mux21~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux20~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux19~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux18~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux80~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \displayUnit|Decoder0~0_combout\ : std_logic;
SIGNAL \displayUnit|disp4[0]~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux121~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux79~0_combout\ : std_logic;
SIGNAL \displayUnit|disp4[1]~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux120~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux78~0_combout\ : std_logic;
SIGNAL \displayUnit|disp4[2]~2_combout\ : std_logic;
SIGNAL \displayUnit|Mux119~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux77~0_combout\ : std_logic;
SIGNAL \displayUnit|disp4[3]~3_combout\ : std_logic;
SIGNAL \displayUnit|Mux76~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux118~0_combout\ : std_logic;
SIGNAL \displayUnit|disp4[4]~4_combout\ : std_logic;
SIGNAL \displayUnit|Mux75~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux117~0_combout\ : std_logic;
SIGNAL \displayUnit|disp4[5]~5_combout\ : std_logic;
SIGNAL \displayUnit|Mux74~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux116~0_combout\ : std_logic;
SIGNAL \displayUnit|disp4[6]~6_combout\ : std_logic;
SIGNAL \displayUnit|Mux41~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux41~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux115~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux15~0_combout\ : std_logic;
SIGNAL \Ram|s_memory~2092_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~91_q\ : std_logic;
SIGNAL \RegFile|modo|readData[21]~3_combout\ : std_logic;
SIGNAL \displayUnit|Mux16~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux16~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux17~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux14~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux87~0_combout\ : std_logic;
SIGNAL \displayUnit|disp5[0]~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux86~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux114~0_combout\ : std_logic;
SIGNAL \displayUnit|disp5[1]~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux85~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux113~0_combout\ : std_logic;
SIGNAL \displayUnit|disp5[2]~2_combout\ : std_logic;
SIGNAL \displayUnit|Mux112~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux84~0_combout\ : std_logic;
SIGNAL \displayUnit|disp5[3]~3_combout\ : std_logic;
SIGNAL \displayUnit|Mux111~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux83~0_combout\ : std_logic;
SIGNAL \displayUnit|disp5[4]~4_combout\ : std_logic;
SIGNAL \displayUnit|Mux82~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux110~0_combout\ : std_logic;
SIGNAL \displayUnit|disp5[5]~5_combout\ : std_logic;
SIGNAL \displayUnit|Mux109~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux81~0_combout\ : std_logic;
SIGNAL \displayUnit|disp5[6]~6_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~96_q\ : std_logic;
SIGNAL \RegFile|modo|readData[26]~4_combout\ : std_logic;
SIGNAL \displayUnit|Mux11~0_combout\ : std_logic;
SIGNAL \Ram|s_memory~2093_combout\ : std_logic;
SIGNAL \Ram|s_memory~2094_combout\ : std_logic;
SIGNAL \displayUnit|Mux11~1_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~97_q\ : std_logic;
SIGNAL \RegFile|modo|readData[27]~5_combout\ : std_logic;
SIGNAL \Ram|s_memory~2095_combout\ : std_logic;
SIGNAL \displayUnit|Mux10~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux10~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux12~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux13~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux94~0_combout\ : std_logic;
SIGNAL \displayUnit|disp6[0]~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux93~0_combout\ : std_logic;
SIGNAL \displayUnit|disp6[1]~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux92~0_combout\ : std_logic;
SIGNAL \displayUnit|disp6[2]~2_combout\ : std_logic;
SIGNAL \displayUnit|Mux91~0_combout\ : std_logic;
SIGNAL \displayUnit|disp6[3]~3_combout\ : std_logic;
SIGNAL \displayUnit|Mux90~0_combout\ : std_logic;
SIGNAL \displayUnit|disp6[4]~4_combout\ : std_logic;
SIGNAL \displayUnit|Mux89~0_combout\ : std_logic;
SIGNAL \displayUnit|disp6[5]~5_combout\ : std_logic;
SIGNAL \displayUnit|Mux88~0_combout\ : std_logic;
SIGNAL \displayUnit|disp6[6]~6_combout\ : std_logic;
SIGNAL \displayUnit|Mux6~0_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~101_q\ : std_logic;
SIGNAL \RegFile|modo|readData[31]~7_combout\ : std_logic;
SIGNAL \Ram|s_memory~2098_combout\ : std_logic;
SIGNAL \displayUnit|Mux6~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux9~0_combout\ : std_logic;
SIGNAL \RegFile|modo|s_memory~99_q\ : std_logic;
SIGNAL \RegFile|modo|readData[29]~6_combout\ : std_logic;
SIGNAL \Ram|s_memory~2096_combout\ : std_logic;
SIGNAL \Ram|s_memory~2097_combout\ : std_logic;
SIGNAL \displayUnit|Mux8~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux8~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux7~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux101~0_combout\ : std_logic;
SIGNAL \displayUnit|disp7[0]~0_combout\ : std_logic;
SIGNAL \displayUnit|Mux100~0_combout\ : std_logic;
SIGNAL \displayUnit|disp7[1]~1_combout\ : std_logic;
SIGNAL \displayUnit|Mux99~0_combout\ : std_logic;
SIGNAL \displayUnit|disp7[2]~2_combout\ : std_logic;
SIGNAL \displayUnit|Mux98~0_combout\ : std_logic;
SIGNAL \displayUnit|disp7[3]~3_combout\ : std_logic;
SIGNAL \displayUnit|Mux97~0_combout\ : std_logic;
SIGNAL \displayUnit|disp7[4]~4_combout\ : std_logic;
SIGNAL \displayUnit|Mux96~0_combout\ : std_logic;
SIGNAL \displayUnit|disp7[5]~5_combout\ : std_logic;
SIGNAL \displayUnit|Mux95~0_combout\ : std_logic;
SIGNAL \displayUnit|disp7[6]~6_combout\ : std_logic;
SIGNAL \RegFile|rt_mem|s_memory_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \pcupdate|s_pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \displayUnit|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \RegB|DataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \displayUnit|s_repeatCount\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \RegA|DataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debounceUnit|s_debounceCnt\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \InstructionRegister|DataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALUOut|DataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegFile|rs_mem|s_memory_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \DataRegister|DataOut\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \displayUnit|ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \displayUnit|ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \ControlUnit|ALT_INV_CS.E0~q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ControlUnit|ALT_INV_CS.E0~_wirecell_combout\ : std_logic;
SIGNAL \debounceUnit|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \InstructionRegister|ALT_INV_DataOut\ : std_logic_vector(21 DOWNTO 16);
SIGNAL \displayUnit|ALT_INV_disp7[6]~6_combout\ : std_logic;
SIGNAL \displayUnit|ALT_INV_Mux67~0_combout\ : std_logic;
SIGNAL \displayUnit|ALT_INV_Mux60~0_combout\ : std_logic;

BEGIN

\global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_CState_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_CState_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_CState_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_CState_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_CState_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_CState_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_CState_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_CState_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_CState_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_CState_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \DataRegister|DataOut\(31) & \~GND~combout\ & \DataRegister|DataOut\(29) & \~GND~combout\ & \DataRegister|DataOut\(27) & \DataRegister|DataOut\(26)
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \DataRegister|DataOut\(21) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \DataRegister|DataOut\(16) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \DataRegister|DataOut\(2) & \~GND~combout\ & \~GND~combout\);

\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \M2|DataOut[0]~0_combout\;

\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\(0) <= \Ram|s_memory~2116_combout\;

\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a1\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a2\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a3\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a4\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a5\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a6\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a7\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a8\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a9\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a10\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a11\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a12\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a13\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a14\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a15\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a16\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a17\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a18\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a19\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a20\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a21\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a22\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a23\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a24\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a25\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a26\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a27\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a28\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a29\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a30\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a31\ <= \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \DataRegister|DataOut\(31) & \~GND~combout\ & \DataRegister|DataOut\(29) & \~GND~combout\ & \DataRegister|DataOut\(27) & \DataRegister|DataOut\(26)
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \DataRegister|DataOut\(21) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \DataRegister|DataOut\(16) & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \DataRegister|DataOut\(2) & \~GND~combout\ & \~GND~combout\);

\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \M2|DataOut[0]~0_combout\;

\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\(0) <= \Ram|s_memory~2115_combout\;

\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a1\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a2\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a3\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a4\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a5\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a6\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a7\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a8\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a9\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a10\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a11\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a12\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a13\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a14\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a15\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a16\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a17\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a18\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a19\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a20\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a21\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a22\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a23\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a24\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a25\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a26\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a27\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a28\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a29\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a30\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a31\ <= \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\debounceUnit|s_pulsedOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \debounceUnit|s_pulsedOut~q\);
\displayUnit|ALT_INV_Mux53~0_combout\ <= NOT \displayUnit|Mux53~0_combout\;
\displayUnit|ALT_INV_Mux46~0_combout\ <= NOT \displayUnit|Mux46~0_combout\;
\ControlUnit|ALT_INV_CS.E0~q\ <= NOT \ControlUnit|CS.E0~q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ControlUnit|ALT_INV_CS.E0~_wirecell_combout\ <= NOT \ControlUnit|CS.E0~_wirecell_combout\;
\debounceUnit|ALT_INV_s_dirtyIn~q\ <= NOT \debounceUnit|s_dirtyIn~q\;
\InstructionRegister|ALT_INV_DataOut\(21) <= NOT \InstructionRegister|DataOut\(21);
\InstructionRegister|ALT_INV_DataOut\(16) <= NOT \InstructionRegister|DataOut\(16);
\displayUnit|ALT_INV_disp7[6]~6_combout\ <= NOT \displayUnit|disp7[6]~6_combout\;
\displayUnit|ALT_INV_Mux67~0_combout\ <= NOT \displayUnit|Mux67~0_combout\;
\displayUnit|ALT_INV_Mux60~0_combout\ <= NOT \displayUnit|Mux60~0_combout\;

-- Location: LCCOMB_X85_Y38_N26
\ControlUnit|DU_CState~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|DU_CState~1_combout\ = (!\ControlUnit|CS.E8~q\ & !\ControlUnit|CS.E9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datad => \ControlUnit|CS.E9~q\,
	combout => \ControlUnit|DU_CState~1_combout\);

-- Location: LCCOMB_X85_Y34_N20
\ControlUnit|CS~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~38_combout\ = (!\ControlUnit|CS.E5~q\ & !\ControlUnit|CS.E4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E5~q\,
	datad => \ControlUnit|CS.E4~q\,
	combout => \ControlUnit|CS~38_combout\);

-- Location: LCCOMB_X85_Y34_N24
\ControlUnit|DU_CState~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|DU_CState~2_combout\ = (\ControlUnit|ALUSelB[0]~0_combout\ & (\ControlUnit|CS~38_combout\ & (!\ControlUnit|CS.E3~q\ & !\ControlUnit|CS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|ALUSelB[0]~0_combout\,
	datab => \ControlUnit|CS~38_combout\,
	datac => \ControlUnit|CS.E3~q\,
	datad => \ControlUnit|CS.E2~q\,
	combout => \ControlUnit|DU_CState~2_combout\);

-- Location: LCCOMB_X85_Y38_N4
\ControlUnit|DU_CState~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|DU_CState~3_combout\ = (\ControlUnit|CS.E6~q\) # ((\ControlUnit|CS.E7~q\) # ((!\ControlUnit|DU_CState~2_combout\) # (!\ControlUnit|DU_CState~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E6~q\,
	datab => \ControlUnit|CS.E7~q\,
	datac => \ControlUnit|DU_CState~1_combout\,
	datad => \ControlUnit|DU_CState~2_combout\,
	combout => \ControlUnit|DU_CState~3_combout\);

-- Location: LCCOMB_X85_Y38_N22
\ControlUnit|DU_CState~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|DU_CState~4_combout\ = (\ControlUnit|CS.E8~q\) # ((\ControlUnit|CS.E9~q\) # (!\ControlUnit|CS.E11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|CS.E9~q\,
	combout => \ControlUnit|DU_CState~4_combout\);

-- Location: LCCOMB_X85_Y34_N12
\ControlUnit|DU_CState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|DU_CState~6_combout\ = (!\ControlUnit|CS.E3~q\ & (!\ControlUnit|CS.E1~q\ & (\ControlUnit|CS.E0~q\ & !\ControlUnit|CS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E3~q\,
	datab => \ControlUnit|CS.E1~q\,
	datac => \ControlUnit|CS.E0~q\,
	datad => \ControlUnit|CS.E2~q\,
	combout => \ControlUnit|DU_CState~6_combout\);

-- Location: LCCOMB_X85_Y34_N8
\ControlUnit|DU_CState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|DU_CState~8_combout\ = (\ControlUnit|CS.E0~q\ & ((\ControlUnit|CS.E2~q\) # (\ControlUnit|CS.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E2~q\,
	datab => \ControlUnit|CS.E0~q\,
	datac => \ControlUnit|CS.E3~q\,
	combout => \ControlUnit|DU_CState~8_combout\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux51~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux50~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux49~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux48~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux47~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|ALT_INV_Mux46~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux59~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux58~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux57~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux56~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux54~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|ALT_INV_Mux53~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux66~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux65~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux64~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux63~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux62~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux61~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|ALT_INV_Mux60~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux73~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux72~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux71~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux70~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux69~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|Mux68~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|ALT_INV_Mux67~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp4[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp4[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp4[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp4[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp4[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp4[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp4[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp5[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp5[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp5[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp5[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp5[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp5[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp5[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp6[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp6[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp6[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp6[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp6[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp6[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp6[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp7[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp7[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp7[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp7[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp7[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|disp7[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayUnit|ALT_INV_disp7[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y36_N8
\debounceUnit|s_debounceCnt[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[0]~24_combout\ = \debounceUnit|s_debounceCnt\(0) $ (VCC)
-- \debounceUnit|s_debounceCnt[0]~25\ = CARRY(\debounceUnit|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounceUnit|s_debounceCnt[0]~24_combout\,
	cout => \debounceUnit|s_debounceCnt[0]~25\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X2_Y36_N6
\debounceUnit|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \debounceUnit|s_dirtyIn~0_combout\);

-- Location: FF_X2_Y36_N7
\debounceUnit|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_dirtyIn~q\);

-- Location: LCCOMB_X2_Y35_N14
\debounceUnit|s_debounceCnt[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[19]~67_combout\ = (\debounceUnit|s_debounceCnt\(19) & (!\debounceUnit|s_debounceCnt[18]~66\)) # (!\debounceUnit|s_debounceCnt\(19) & ((\debounceUnit|s_debounceCnt[18]~66\) # (GND)))
-- \debounceUnit|s_debounceCnt[19]~68\ = CARRY((!\debounceUnit|s_debounceCnt[18]~66\) # (!\debounceUnit|s_debounceCnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[18]~66\,
	combout => \debounceUnit|s_debounceCnt[19]~67_combout\,
	cout => \debounceUnit|s_debounceCnt[19]~68\);

-- Location: LCCOMB_X2_Y35_N16
\debounceUnit|s_debounceCnt[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[20]~69_combout\ = (\debounceUnit|s_debounceCnt\(20) & (\debounceUnit|s_debounceCnt[19]~68\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(20) & (!\debounceUnit|s_debounceCnt[19]~68\ & VCC))
-- \debounceUnit|s_debounceCnt[20]~70\ = CARRY((\debounceUnit|s_debounceCnt\(20) & !\debounceUnit|s_debounceCnt[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[19]~68\,
	combout => \debounceUnit|s_debounceCnt[20]~69_combout\,
	cout => \debounceUnit|s_debounceCnt[20]~70\);

-- Location: FF_X2_Y35_N17
\debounceUnit|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[20]~69_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(20));

-- Location: LCCOMB_X2_Y35_N18
\debounceUnit|s_debounceCnt[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[21]~71_combout\ = (\debounceUnit|s_debounceCnt\(21) & (!\debounceUnit|s_debounceCnt[20]~70\)) # (!\debounceUnit|s_debounceCnt\(21) & ((\debounceUnit|s_debounceCnt[20]~70\) # (GND)))
-- \debounceUnit|s_debounceCnt[21]~72\ = CARRY((!\debounceUnit|s_debounceCnt[20]~70\) # (!\debounceUnit|s_debounceCnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[20]~70\,
	combout => \debounceUnit|s_debounceCnt[21]~71_combout\,
	cout => \debounceUnit|s_debounceCnt[21]~72\);

-- Location: FF_X2_Y35_N19
\debounceUnit|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[21]~71_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(21));

-- Location: LCCOMB_X2_Y35_N20
\debounceUnit|s_debounceCnt[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[22]~73_combout\ = (\debounceUnit|s_debounceCnt\(22) & (\debounceUnit|s_debounceCnt[21]~72\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(22) & (!\debounceUnit|s_debounceCnt[21]~72\ & VCC))
-- \debounceUnit|s_debounceCnt[22]~74\ = CARRY((\debounceUnit|s_debounceCnt\(22) & !\debounceUnit|s_debounceCnt[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(22),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[21]~72\,
	combout => \debounceUnit|s_debounceCnt[22]~73_combout\,
	cout => \debounceUnit|s_debounceCnt[22]~74\);

-- Location: FF_X2_Y35_N21
\debounceUnit|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[22]~73_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(22));

-- Location: LCCOMB_X2_Y35_N22
\debounceUnit|s_debounceCnt[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[23]~75_combout\ = \debounceUnit|s_debounceCnt\(23) $ (\debounceUnit|s_debounceCnt[22]~74\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(23),
	cin => \debounceUnit|s_debounceCnt[22]~74\,
	combout => \debounceUnit|s_debounceCnt[23]~75_combout\);

-- Location: FF_X2_Y35_N23
\debounceUnit|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[23]~75_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(23));

-- Location: LCCOMB_X1_Y36_N12
\debounceUnit|s_debounceCnt[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~26_combout\ = (\debounceUnit|s_debounceCnt\(23) & \debounceUnit|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceUnit|s_debounceCnt\(23),
	datad => \debounceUnit|s_dirtyIn~q\,
	combout => \debounceUnit|s_debounceCnt[2]~26_combout\);

-- Location: LCCOMB_X2_Y35_N28
\debounceUnit|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~5_combout\ = (!\debounceUnit|s_debounceCnt\(22) & !\debounceUnit|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(22),
	datad => \debounceUnit|s_debounceCnt\(21),
	combout => \debounceUnit|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y36_N2
\debounceUnit|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~1_combout\ = (!\debounceUnit|s_debounceCnt\(4) & (!\debounceUnit|s_debounceCnt\(6) & !\debounceUnit|s_debounceCnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(4),
	datac => \debounceUnit|s_debounceCnt\(6),
	datad => \debounceUnit|s_debounceCnt\(5),
	combout => \debounceUnit|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y36_N0
\debounceUnit|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~0_combout\ = (!\debounceUnit|s_debounceCnt\(1) & (!\debounceUnit|s_debounceCnt\(3) & (!\debounceUnit|s_debounceCnt\(0) & !\debounceUnit|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(1),
	datab => \debounceUnit|s_debounceCnt\(3),
	datac => \debounceUnit|s_debounceCnt\(0),
	datad => \debounceUnit|s_debounceCnt\(2),
	combout => \debounceUnit|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\debounceUnit|s_debounceCnt[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~27_combout\ = (\debounceUnit|s_debounceCnt\(8)) # ((\debounceUnit|s_debounceCnt\(7) & ((!\debounceUnit|Equal0~0_combout\) # (!\debounceUnit|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|Equal0~1_combout\,
	datab => \debounceUnit|s_debounceCnt\(8),
	datac => \debounceUnit|Equal0~0_combout\,
	datad => \debounceUnit|s_debounceCnt\(7),
	combout => \debounceUnit|s_debounceCnt[2]~27_combout\);

-- Location: LCCOMB_X2_Y36_N4
\debounceUnit|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~2_combout\ = (\debounceUnit|s_debounceCnt\(9) & \debounceUnit|s_debounceCnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceUnit|s_debounceCnt\(9),
	datad => \debounceUnit|s_debounceCnt\(10),
	combout => \debounceUnit|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y36_N18
\debounceUnit|s_debounceCnt[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~28_combout\ = (\debounceUnit|s_debounceCnt\(12) & ((\debounceUnit|s_debounceCnt\(11)) # ((\debounceUnit|s_debounceCnt[2]~27_combout\ & \debounceUnit|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt[2]~27_combout\,
	datab => \debounceUnit|s_debounceCnt\(12),
	datac => \debounceUnit|s_debounceCnt\(11),
	datad => \debounceUnit|Equal0~2_combout\,
	combout => \debounceUnit|s_debounceCnt[2]~28_combout\);

-- Location: LCCOMB_X2_Y35_N30
\debounceUnit|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~7_combout\ = (!\debounceUnit|s_debounceCnt\(18) & (!\debounceUnit|s_debounceCnt\(16) & !\debounceUnit|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(18),
	datac => \debounceUnit|s_debounceCnt\(16),
	datad => \debounceUnit|s_debounceCnt\(17),
	combout => \debounceUnit|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y35_N24
\debounceUnit|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~3_combout\ = (!\debounceUnit|s_debounceCnt\(14) & !\debounceUnit|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceUnit|s_debounceCnt\(14),
	datad => \debounceUnit|s_debounceCnt\(13),
	combout => \debounceUnit|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y36_N16
\debounceUnit|s_debounceCnt[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~29_combout\ = ((\debounceUnit|s_debounceCnt\(15) & ((\debounceUnit|s_debounceCnt[2]~28_combout\) # (!\debounceUnit|Equal0~3_combout\)))) # (!\debounceUnit|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(15),
	datab => \debounceUnit|s_debounceCnt[2]~28_combout\,
	datac => \debounceUnit|Equal0~7_combout\,
	datad => \debounceUnit|Equal0~3_combout\,
	combout => \debounceUnit|s_debounceCnt[2]~29_combout\);

-- Location: LCCOMB_X1_Y36_N30
\debounceUnit|s_debounceCnt[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~30_combout\ = ((\debounceUnit|Equal0~5_combout\ & ((!\debounceUnit|s_debounceCnt[2]~29_combout\) # (!\debounceUnit|Equal0~4_combout\)))) # (!\debounceUnit|s_debounceCnt[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt[2]~26_combout\,
	datab => \debounceUnit|Equal0~5_combout\,
	datac => \debounceUnit|Equal0~4_combout\,
	datad => \debounceUnit|s_debounceCnt[2]~29_combout\,
	combout => \debounceUnit|s_debounceCnt[2]~30_combout\);

-- Location: FF_X2_Y36_N9
\debounceUnit|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[0]~24_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(0));

-- Location: LCCOMB_X2_Y36_N10
\debounceUnit|s_debounceCnt[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[1]~31_combout\ = (\debounceUnit|s_debounceCnt\(1) & (!\debounceUnit|s_debounceCnt[0]~25\)) # (!\debounceUnit|s_debounceCnt\(1) & ((\debounceUnit|s_debounceCnt[0]~25\) # (GND)))
-- \debounceUnit|s_debounceCnt[1]~32\ = CARRY((!\debounceUnit|s_debounceCnt[0]~25\) # (!\debounceUnit|s_debounceCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[0]~25\,
	combout => \debounceUnit|s_debounceCnt[1]~31_combout\,
	cout => \debounceUnit|s_debounceCnt[1]~32\);

-- Location: FF_X2_Y36_N11
\debounceUnit|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[1]~31_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(1));

-- Location: LCCOMB_X2_Y36_N12
\debounceUnit|s_debounceCnt[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~33_combout\ = (\debounceUnit|s_debounceCnt\(2) & (\debounceUnit|s_debounceCnt[1]~32\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(2) & (!\debounceUnit|s_debounceCnt[1]~32\ & VCC))
-- \debounceUnit|s_debounceCnt[2]~34\ = CARRY((\debounceUnit|s_debounceCnt\(2) & !\debounceUnit|s_debounceCnt[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[1]~32\,
	combout => \debounceUnit|s_debounceCnt[2]~33_combout\,
	cout => \debounceUnit|s_debounceCnt[2]~34\);

-- Location: FF_X2_Y36_N13
\debounceUnit|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[2]~33_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(2));

-- Location: LCCOMB_X2_Y36_N14
\debounceUnit|s_debounceCnt[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[3]~35_combout\ = (\debounceUnit|s_debounceCnt\(3) & (!\debounceUnit|s_debounceCnt[2]~34\)) # (!\debounceUnit|s_debounceCnt\(3) & ((\debounceUnit|s_debounceCnt[2]~34\) # (GND)))
-- \debounceUnit|s_debounceCnt[3]~36\ = CARRY((!\debounceUnit|s_debounceCnt[2]~34\) # (!\debounceUnit|s_debounceCnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[2]~34\,
	combout => \debounceUnit|s_debounceCnt[3]~35_combout\,
	cout => \debounceUnit|s_debounceCnt[3]~36\);

-- Location: FF_X2_Y36_N15
\debounceUnit|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[3]~35_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(3));

-- Location: LCCOMB_X2_Y36_N16
\debounceUnit|s_debounceCnt[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[4]~37_combout\ = (\debounceUnit|s_debounceCnt\(4) & (\debounceUnit|s_debounceCnt[3]~36\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(4) & (!\debounceUnit|s_debounceCnt[3]~36\ & VCC))
-- \debounceUnit|s_debounceCnt[4]~38\ = CARRY((\debounceUnit|s_debounceCnt\(4) & !\debounceUnit|s_debounceCnt[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[3]~36\,
	combout => \debounceUnit|s_debounceCnt[4]~37_combout\,
	cout => \debounceUnit|s_debounceCnt[4]~38\);

-- Location: FF_X2_Y36_N17
\debounceUnit|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[4]~37_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(4));

-- Location: LCCOMB_X2_Y36_N18
\debounceUnit|s_debounceCnt[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[5]~39_combout\ = (\debounceUnit|s_debounceCnt\(5) & (!\debounceUnit|s_debounceCnt[4]~38\)) # (!\debounceUnit|s_debounceCnt\(5) & ((\debounceUnit|s_debounceCnt[4]~38\) # (GND)))
-- \debounceUnit|s_debounceCnt[5]~40\ = CARRY((!\debounceUnit|s_debounceCnt[4]~38\) # (!\debounceUnit|s_debounceCnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[4]~38\,
	combout => \debounceUnit|s_debounceCnt[5]~39_combout\,
	cout => \debounceUnit|s_debounceCnt[5]~40\);

-- Location: FF_X2_Y36_N19
\debounceUnit|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[5]~39_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(5));

-- Location: LCCOMB_X2_Y36_N20
\debounceUnit|s_debounceCnt[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[6]~41_combout\ = (\debounceUnit|s_debounceCnt\(6) & (\debounceUnit|s_debounceCnt[5]~40\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(6) & (!\debounceUnit|s_debounceCnt[5]~40\ & VCC))
-- \debounceUnit|s_debounceCnt[6]~42\ = CARRY((\debounceUnit|s_debounceCnt\(6) & !\debounceUnit|s_debounceCnt[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[5]~40\,
	combout => \debounceUnit|s_debounceCnt[6]~41_combout\,
	cout => \debounceUnit|s_debounceCnt[6]~42\);

-- Location: FF_X2_Y36_N21
\debounceUnit|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[6]~41_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(6));

-- Location: LCCOMB_X2_Y36_N22
\debounceUnit|s_debounceCnt[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[7]~43_combout\ = (\debounceUnit|s_debounceCnt\(7) & (!\debounceUnit|s_debounceCnt[6]~42\)) # (!\debounceUnit|s_debounceCnt\(7) & ((\debounceUnit|s_debounceCnt[6]~42\) # (GND)))
-- \debounceUnit|s_debounceCnt[7]~44\ = CARRY((!\debounceUnit|s_debounceCnt[6]~42\) # (!\debounceUnit|s_debounceCnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[6]~42\,
	combout => \debounceUnit|s_debounceCnt[7]~43_combout\,
	cout => \debounceUnit|s_debounceCnt[7]~44\);

-- Location: FF_X2_Y36_N23
\debounceUnit|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[7]~43_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(7));

-- Location: LCCOMB_X2_Y36_N24
\debounceUnit|s_debounceCnt[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[8]~45_combout\ = (\debounceUnit|s_debounceCnt\(8) & (\debounceUnit|s_debounceCnt[7]~44\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(8) & (!\debounceUnit|s_debounceCnt[7]~44\ & VCC))
-- \debounceUnit|s_debounceCnt[8]~46\ = CARRY((\debounceUnit|s_debounceCnt\(8) & !\debounceUnit|s_debounceCnt[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[7]~44\,
	combout => \debounceUnit|s_debounceCnt[8]~45_combout\,
	cout => \debounceUnit|s_debounceCnt[8]~46\);

-- Location: FF_X2_Y36_N25
\debounceUnit|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[8]~45_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(8));

-- Location: LCCOMB_X2_Y36_N26
\debounceUnit|s_debounceCnt[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[9]~47_combout\ = (\debounceUnit|s_debounceCnt\(9) & (!\debounceUnit|s_debounceCnt[8]~46\)) # (!\debounceUnit|s_debounceCnt\(9) & ((\debounceUnit|s_debounceCnt[8]~46\) # (GND)))
-- \debounceUnit|s_debounceCnt[9]~48\ = CARRY((!\debounceUnit|s_debounceCnt[8]~46\) # (!\debounceUnit|s_debounceCnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[8]~46\,
	combout => \debounceUnit|s_debounceCnt[9]~47_combout\,
	cout => \debounceUnit|s_debounceCnt[9]~48\);

-- Location: FF_X2_Y36_N27
\debounceUnit|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[9]~47_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(9));

-- Location: LCCOMB_X2_Y36_N28
\debounceUnit|s_debounceCnt[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[10]~49_combout\ = (\debounceUnit|s_debounceCnt\(10) & (\debounceUnit|s_debounceCnt[9]~48\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(10) & (!\debounceUnit|s_debounceCnt[9]~48\ & VCC))
-- \debounceUnit|s_debounceCnt[10]~50\ = CARRY((\debounceUnit|s_debounceCnt\(10) & !\debounceUnit|s_debounceCnt[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[9]~48\,
	combout => \debounceUnit|s_debounceCnt[10]~49_combout\,
	cout => \debounceUnit|s_debounceCnt[10]~50\);

-- Location: FF_X2_Y36_N29
\debounceUnit|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[10]~49_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(10));

-- Location: LCCOMB_X2_Y36_N30
\debounceUnit|s_debounceCnt[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[11]~51_combout\ = (\debounceUnit|s_debounceCnt\(11) & (!\debounceUnit|s_debounceCnt[10]~50\)) # (!\debounceUnit|s_debounceCnt\(11) & ((\debounceUnit|s_debounceCnt[10]~50\) # (GND)))
-- \debounceUnit|s_debounceCnt[11]~52\ = CARRY((!\debounceUnit|s_debounceCnt[10]~50\) # (!\debounceUnit|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[10]~50\,
	combout => \debounceUnit|s_debounceCnt[11]~51_combout\,
	cout => \debounceUnit|s_debounceCnt[11]~52\);

-- Location: FF_X2_Y36_N31
\debounceUnit|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[11]~51_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(11));

-- Location: LCCOMB_X2_Y35_N0
\debounceUnit|s_debounceCnt[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[12]~53_combout\ = (\debounceUnit|s_debounceCnt\(12) & (\debounceUnit|s_debounceCnt[11]~52\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(12) & (!\debounceUnit|s_debounceCnt[11]~52\ & VCC))
-- \debounceUnit|s_debounceCnt[12]~54\ = CARRY((\debounceUnit|s_debounceCnt\(12) & !\debounceUnit|s_debounceCnt[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[11]~52\,
	combout => \debounceUnit|s_debounceCnt[12]~53_combout\,
	cout => \debounceUnit|s_debounceCnt[12]~54\);

-- Location: FF_X2_Y35_N1
\debounceUnit|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[12]~53_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(12));

-- Location: LCCOMB_X2_Y35_N2
\debounceUnit|s_debounceCnt[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[13]~55_combout\ = (\debounceUnit|s_debounceCnt\(13) & (!\debounceUnit|s_debounceCnt[12]~54\)) # (!\debounceUnit|s_debounceCnt\(13) & ((\debounceUnit|s_debounceCnt[12]~54\) # (GND)))
-- \debounceUnit|s_debounceCnt[13]~56\ = CARRY((!\debounceUnit|s_debounceCnt[12]~54\) # (!\debounceUnit|s_debounceCnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[12]~54\,
	combout => \debounceUnit|s_debounceCnt[13]~55_combout\,
	cout => \debounceUnit|s_debounceCnt[13]~56\);

-- Location: FF_X2_Y35_N3
\debounceUnit|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[13]~55_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(13));

-- Location: LCCOMB_X2_Y35_N4
\debounceUnit|s_debounceCnt[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[14]~57_combout\ = (\debounceUnit|s_debounceCnt\(14) & (\debounceUnit|s_debounceCnt[13]~56\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(14) & (!\debounceUnit|s_debounceCnt[13]~56\ & VCC))
-- \debounceUnit|s_debounceCnt[14]~58\ = CARRY((\debounceUnit|s_debounceCnt\(14) & !\debounceUnit|s_debounceCnt[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[13]~56\,
	combout => \debounceUnit|s_debounceCnt[14]~57_combout\,
	cout => \debounceUnit|s_debounceCnt[14]~58\);

-- Location: FF_X2_Y35_N5
\debounceUnit|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[14]~57_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(14));

-- Location: LCCOMB_X2_Y35_N6
\debounceUnit|s_debounceCnt[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[15]~59_combout\ = (\debounceUnit|s_debounceCnt\(15) & (!\debounceUnit|s_debounceCnt[14]~58\)) # (!\debounceUnit|s_debounceCnt\(15) & ((\debounceUnit|s_debounceCnt[14]~58\) # (GND)))
-- \debounceUnit|s_debounceCnt[15]~60\ = CARRY((!\debounceUnit|s_debounceCnt[14]~58\) # (!\debounceUnit|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[14]~58\,
	combout => \debounceUnit|s_debounceCnt[15]~59_combout\,
	cout => \debounceUnit|s_debounceCnt[15]~60\);

-- Location: FF_X2_Y35_N7
\debounceUnit|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[15]~59_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(15));

-- Location: LCCOMB_X2_Y35_N8
\debounceUnit|s_debounceCnt[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[16]~61_combout\ = (\debounceUnit|s_debounceCnt\(16) & (\debounceUnit|s_debounceCnt[15]~60\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(16) & (!\debounceUnit|s_debounceCnt[15]~60\ & VCC))
-- \debounceUnit|s_debounceCnt[16]~62\ = CARRY((\debounceUnit|s_debounceCnt\(16) & !\debounceUnit|s_debounceCnt[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[15]~60\,
	combout => \debounceUnit|s_debounceCnt[16]~61_combout\,
	cout => \debounceUnit|s_debounceCnt[16]~62\);

-- Location: FF_X2_Y35_N9
\debounceUnit|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[16]~61_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(16));

-- Location: LCCOMB_X2_Y35_N10
\debounceUnit|s_debounceCnt[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[17]~63_combout\ = (\debounceUnit|s_debounceCnt\(17) & (!\debounceUnit|s_debounceCnt[16]~62\)) # (!\debounceUnit|s_debounceCnt\(17) & ((\debounceUnit|s_debounceCnt[16]~62\) # (GND)))
-- \debounceUnit|s_debounceCnt[17]~64\ = CARRY((!\debounceUnit|s_debounceCnt[16]~62\) # (!\debounceUnit|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[16]~62\,
	combout => \debounceUnit|s_debounceCnt[17]~63_combout\,
	cout => \debounceUnit|s_debounceCnt[17]~64\);

-- Location: FF_X2_Y35_N11
\debounceUnit|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[17]~63_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(17));

-- Location: LCCOMB_X2_Y35_N12
\debounceUnit|s_debounceCnt[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[18]~65_combout\ = (\debounceUnit|s_debounceCnt\(18) & (\debounceUnit|s_debounceCnt[17]~64\ $ (GND))) # (!\debounceUnit|s_debounceCnt\(18) & (!\debounceUnit|s_debounceCnt[17]~64\ & VCC))
-- \debounceUnit|s_debounceCnt[18]~66\ = CARRY((\debounceUnit|s_debounceCnt\(18) & !\debounceUnit|s_debounceCnt[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounceUnit|s_debounceCnt[17]~64\,
	combout => \debounceUnit|s_debounceCnt[18]~65_combout\,
	cout => \debounceUnit|s_debounceCnt[18]~66\);

-- Location: FF_X2_Y35_N13
\debounceUnit|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[18]~65_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(18));

-- Location: FF_X2_Y35_N15
\debounceUnit|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[19]~67_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	ena => \debounceUnit|s_debounceCnt[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(19));

-- Location: LCCOMB_X2_Y35_N26
\debounceUnit|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~4_combout\ = (\debounceUnit|s_debounceCnt\(19) & \debounceUnit|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceUnit|s_debounceCnt\(19),
	datad => \debounceUnit|s_debounceCnt\(20),
	combout => \debounceUnit|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y36_N6
\debounceUnit|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~6_combout\ = (\debounceUnit|Equal0~4_combout\ & (\debounceUnit|Equal0~3_combout\ & (\debounceUnit|Equal0~5_combout\ & \debounceUnit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|Equal0~4_combout\,
	datab => \debounceUnit|Equal0~3_combout\,
	datac => \debounceUnit|Equal0~5_combout\,
	datad => \debounceUnit|Equal0~2_combout\,
	combout => \debounceUnit|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y36_N24
\debounceUnit|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~8_combout\ = (\debounceUnit|s_debounceCnt\(15) & (\debounceUnit|s_debounceCnt\(12) & (!\debounceUnit|s_debounceCnt\(11) & !\debounceUnit|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(15),
	datab => \debounceUnit|s_debounceCnt\(12),
	datac => \debounceUnit|s_debounceCnt\(11),
	datad => \debounceUnit|s_debounceCnt\(8),
	combout => \debounceUnit|Equal0~8_combout\);

-- Location: LCCOMB_X1_Y36_N22
\debounceUnit|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~9_combout\ = (\debounceUnit|Equal0~7_combout\ & (\debounceUnit|Equal0~8_combout\ & (\debounceUnit|s_debounceCnt\(23) & \debounceUnit|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|Equal0~7_combout\,
	datab => \debounceUnit|Equal0~8_combout\,
	datac => \debounceUnit|s_debounceCnt\(23),
	datad => \debounceUnit|s_debounceCnt\(7),
	combout => \debounceUnit|Equal0~9_combout\);

-- Location: LCCOMB_X1_Y36_N14
\debounceUnit|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Equal0~10_combout\ = (\debounceUnit|Equal0~6_combout\ & (\debounceUnit|Equal0~0_combout\ & (\debounceUnit|Equal0~9_combout\ & \debounceUnit|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|Equal0~6_combout\,
	datab => \debounceUnit|Equal0~0_combout\,
	datac => \debounceUnit|Equal0~9_combout\,
	datad => \debounceUnit|Equal0~1_combout\,
	combout => \debounceUnit|Equal0~10_combout\);

-- Location: FF_X1_Y36_N15
\debounceUnit|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \debounceUnit|Equal0~10_combout\,
	sclr => \debounceUnit|ALT_INV_s_dirtyIn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_pulsedOut~q\);

-- Location: CLKCTRL_G3
\debounceUnit|s_pulsedOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \debounceUnit|s_pulsedOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \debounceUnit|s_pulsedOut~clkctrl_outclk\);

-- Location: LCCOMB_X86_Y35_N22
\Ram|s_memory~132feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~132feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~132feeder_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X88_Y34_N6
\Ram|s_memory~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~70feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~70feeder_combout\);

-- Location: LCCOMB_X88_Y34_N20
\Ram|s_memory~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~66feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~66feeder_combout\);

-- Location: FF_X88_Y34_N21
\Ram|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~66feeder_combout\,
	ena => \Ram|s_memory~2107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~66_q\);

-- Location: LCCOMB_X87_Y34_N16
\Ram|s_memory~130feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~130feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~130feeder_combout\);

-- Location: FF_X87_Y34_N17
\Ram|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~130feeder_combout\,
	ena => \Ram|s_memory~2105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~130_q\);

-- Location: LCCOMB_X86_Y34_N10
\ControlUnit|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Equal3~0_combout\ = (!\InstructionRegister|DataOut\(26) & (!\InstructionRegister|DataOut\(31) & (!\InstructionRegister|DataOut\(27) & \InstructionRegister|DataOut\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(26),
	datab => \InstructionRegister|DataOut\(31),
	datac => \InstructionRegister|DataOut\(27),
	datad => \InstructionRegister|DataOut\(29),
	combout => \ControlUnit|Equal3~0_combout\);

-- Location: LCCOMB_X87_Y38_N4
\ControlUnit|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector9~0_combout\ = (\ControlUnit|CS.E8~q\) # ((\ControlUnit|CS.E2~q\ & \ControlUnit|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \ControlUnit|Equal3~0_combout\,
	combout => \ControlUnit|Selector9~0_combout\);

-- Location: FF_X87_Y38_N5
\ControlUnit|CS.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|Selector9~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E9~q\);

-- Location: LCCOMB_X86_Y34_N18
\ControlUnit|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Equal1~0_combout\ = (\InstructionRegister|DataOut\(26) & (\InstructionRegister|DataOut\(31) & \InstructionRegister|DataOut\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(26),
	datab => \InstructionRegister|DataOut\(31),
	datad => \InstructionRegister|DataOut\(27),
	combout => \ControlUnit|Equal1~0_combout\);

-- Location: LCCOMB_X85_Y34_N30
\ControlUnit|CS~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~45_combout\ = (\ControlUnit|CS.E2~q\ & (\ControlUnit|Equal1~0_combout\ & (\KEY[1]~input_o\ & !\InstructionRegister|DataOut\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E2~q\,
	datab => \ControlUnit|Equal1~0_combout\,
	datac => \KEY[1]~input_o\,
	datad => \InstructionRegister|DataOut\(29),
	combout => \ControlUnit|CS~45_combout\);

-- Location: FF_X85_Y34_N31
\ControlUnit|CS.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E3~q\);

-- Location: LCCOMB_X85_Y34_N16
\ControlUnit|CS~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~43_combout\ = (\ControlUnit|CS.E3~q\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E3~q\,
	datac => \KEY[1]~input_o\,
	combout => \ControlUnit|CS~43_combout\);

-- Location: FF_X85_Y34_N17
\ControlUnit|CS.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E4~q\);

-- Location: LCCOMB_X86_Y34_N22
\ControlUnit|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Equal0~0_combout\ = (!\InstructionRegister|DataOut\(27) & (!\InstructionRegister|DataOut\(31) & (!\InstructionRegister|DataOut\(26) & !\InstructionRegister|DataOut\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(27),
	datab => \InstructionRegister|DataOut\(31),
	datac => \InstructionRegister|DataOut\(26),
	datad => \InstructionRegister|DataOut\(29),
	combout => \ControlUnit|Equal0~0_combout\);

-- Location: LCCOMB_X85_Y34_N4
\ControlUnit|CS~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~41_combout\ = (\ControlUnit|CS.E1~q\ & (\KEY[1]~input_o\ & \ControlUnit|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E1~q\,
	datac => \KEY[1]~input_o\,
	datad => \ControlUnit|Equal0~0_combout\,
	combout => \ControlUnit|CS~41_combout\);

-- Location: FF_X85_Y34_N5
\ControlUnit|CS.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E6~q\);

-- Location: LCCOMB_X85_Y38_N16
\ControlUnit|CS~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~42_combout\ = (\KEY[1]~input_o\ & \ControlUnit|CS.E6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \ControlUnit|CS.E6~q\,
	combout => \ControlUnit|CS~42_combout\);

-- Location: FF_X85_Y38_N17
\ControlUnit|CS.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E7~q\);

-- Location: LCCOMB_X85_Y38_N30
\ControlUnit|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr9~combout\ = (\ControlUnit|CS.E9~q\) # ((\ControlUnit|CS.E4~q\) # (\ControlUnit|CS.E7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E9~q\,
	datab => \ControlUnit|CS.E4~q\,
	datad => \ControlUnit|CS.E7~q\,
	combout => \ControlUnit|WideOr9~combout\);

-- Location: LCCOMB_X85_Y38_N28
\ControlUnit|CS.E0~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS.E0~_wirecell_combout\ = !\ControlUnit|CS.E0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ControlUnit|CS.E0~q\,
	combout => \ControlUnit|CS.E0~_wirecell_combout\);

-- Location: LCCOMB_X77_Y37_N8
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X88_Y34_N0
\Ram|s_memory~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~55feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~55feeder_combout\);

-- Location: FF_X88_Y34_N1
\Ram|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~55feeder_combout\,
	ena => \Ram|s_memory~2107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~55_q\);

-- Location: LCCOMB_X82_Y35_N18
\RegFile|rs_mem|s_memory_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X82_Y35_N19
\RegFile|rs_mem|s_memory_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(74));

-- Location: FF_X87_Y34_N21
\DataRegister|DataOut[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~2113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataRegister|DataOut\(31));

-- Location: LCCOMB_X82_Y35_N24
\RegFile|rs_mem|s_memory_rtl_0_bypass[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[73]~feeder_combout\ = \DataRegister|DataOut\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataRegister|DataOut\(31),
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[73]~feeder_combout\);

-- Location: FF_X82_Y35_N25
\RegFile|rs_mem|s_memory_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(73));

-- Location: LCCOMB_X87_Y35_N4
\Ram|s_memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~92feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~92feeder_combout\);

-- Location: LCCOMB_X87_Y35_N24
\Ram|s_memory~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~73feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~73feeder_combout\);

-- Location: FF_X87_Y35_N25
\Ram|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~73feeder_combout\,
	ena => \Ram|s_memory~2103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~73_q\);

-- Location: LCCOMB_X86_Y35_N24
\Ram|s_memory~105feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~105feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~105feeder_combout\);

-- Location: FF_X86_Y35_N25
\Ram|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~105feeder_combout\,
	ena => \Ram|s_memory~2105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~105_q\);

-- Location: LCCOMB_X86_Y35_N12
\Ram|s_memory~2099\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2099_combout\ = (\pcupdate|s_pc\(1) & (((!\pcupdate|s_pc\(0) & !\Ram|s_memory~105_q\)))) # (!\pcupdate|s_pc\(1) & (!\Ram|s_memory~73_q\ & (\pcupdate|s_pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(1),
	datab => \Ram|s_memory~73_q\,
	datac => \pcupdate|s_pc\(0),
	datad => \Ram|s_memory~105_q\,
	combout => \Ram|s_memory~2099_combout\);

-- Location: LCCOMB_X84_Y35_N24
\Ram|s_memory~2101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2101_combout\ = (\Ram|s_memory~2099_combout\ & \Ram|s_memory~2100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~2099_combout\,
	datad => \Ram|s_memory~2100_combout\,
	combout => \Ram|s_memory~2101_combout\);

-- Location: FF_X84_Y35_N25
\DataRegister|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~2101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataRegister|DataOut\(2));

-- Location: LCCOMB_X82_Y36_N22
\RegFile|rs_mem|s_memory_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[15]~feeder_combout\ = \DataRegister|DataOut\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataRegister|DataOut\(2),
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X82_Y36_N23
\RegFile|rs_mem|s_memory_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(15));

-- Location: LCCOMB_X82_Y36_N24
\RegFile|rs_mem|s_memory_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X82_Y36_N25
\RegFile|rs_mem|s_memory_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(16));

-- Location: LCCOMB_X77_Y37_N18
\~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: FF_X85_Y37_N7
\DataRegister|DataOut[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2115_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataRegister|DataOut\(16));

-- Location: LCCOMB_X84_Y38_N6
\DataRegister|DataOut[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataRegister|DataOut[21]~feeder_combout\ = \Ram|s_memory~2116_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ram|s_memory~2116_combout\,
	combout => \DataRegister|DataOut[21]~feeder_combout\);

-- Location: FF_X84_Y38_N7
\DataRegister|DataOut[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \DataRegister|DataOut[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataRegister|DataOut\(21));

-- Location: FF_X87_Y34_N1
\DataRegister|DataOut[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~2112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataRegister|DataOut\(26));

-- Location: FF_X87_Y34_N11
\DataRegister|DataOut[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~2109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataRegister|DataOut\(27));

-- Location: FF_X86_Y34_N5
\DataRegister|DataOut[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~2111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataRegister|DataOut\(29));

-- Location: M9K_X78_Y36_N0
\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips_multi_cycle.ram0_DP_Memory_b382653a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RegFile:RegFile|DP_Memory:rs_mem|altsyncram:s_memory_rtl_0|altsyncram_ejj1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 1,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ControlUnit|WideOr9~combout\,
	portbre => VCC,
	portbaddrstall => \ControlUnit|ALT_INV_CS.E0~_wirecell_combout\,
	clk0 => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	portadatain => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X85_Y38_N31
\RegFile|rs_mem|s_memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(0));

-- Location: FF_X85_Y38_N19
\RegFile|rs_mem|s_memory_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2116_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(2));

-- Location: FF_X85_Y38_N25
\RegFile|rs_mem|s_memory_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \M2|DataOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(1));

-- Location: LCCOMB_X85_Y38_N18
\RegFile|rs_mem|s_memory~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~38_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(0) & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(2) $ (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(0),
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(2),
	datad => \RegFile|rs_mem|s_memory_rtl_0_bypass\(1),
	combout => \RegFile|rs_mem|s_memory~38_combout\);

-- Location: LCCOMB_X82_Y36_N2
\RegFile|rs_mem|s_memory~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~68_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(16) & ((\RegFile|rs_mem|s_memory~38_combout\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(15))) # (!\RegFile|rs_mem|s_memory~38_combout\ & 
-- ((\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a2\))))) # (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(16) & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(15),
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(16),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a2\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~68_combout\);

-- Location: FF_X85_Y36_N19
\InstructionRegister|DataOut[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2116_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstructionRegister|DataOut\(21));

-- Location: FF_X82_Y36_N3
\RegA|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~68_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(2));

-- Location: LCCOMB_X85_Y38_N20
\ControlUnit|DU_CState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|DU_CState~0_combout\ = (!\ControlUnit|CS.E6~q\ & (!\ControlUnit|CS.E2~q\ & !\ControlUnit|CS.E8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E6~q\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \ControlUnit|CS.E8~q\,
	combout => \ControlUnit|DU_CState~0_combout\);

-- Location: LCCOMB_X87_Y37_N12
\M4|DataOut[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[2]~29_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(2)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(2),
	datac => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(2),
	combout => \M4|DataOut[2]~29_combout\);

-- Location: LCCOMB_X82_Y37_N30
\RegFile|rt_mem|s_memory_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X82_Y37_N31
\RegFile|rt_mem|s_memory_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(16));

-- Location: M9K_X78_Y38_N0
\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips_multi_cycle.ram0_DP_Memory_b382653a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RegFile:RegFile|DP_Memory:rt_mem|altsyncram:s_memory_rtl_0|altsyncram_ejj1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 1,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ControlUnit|WideOr9~combout\,
	portbre => VCC,
	portbaddrstall => \ControlUnit|ALT_INV_CS.E0~_wirecell_combout\,
	clk0 => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	portadatain => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X86_Y34_N29
\RegFile|rt_mem|s_memory_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \M2|DataOut[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(1));

-- Location: FF_X86_Y34_N7
\RegFile|rt_mem|s_memory_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2115_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(2));

-- Location: FF_X86_Y34_N19
\RegFile|rt_mem|s_memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \ControlUnit|WideOr9~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(0));

-- Location: LCCOMB_X86_Y34_N6
\RegFile|rt_mem|s_memory~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~38_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(0) & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(1) $ (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(1),
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(2),
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(0),
	combout => \RegFile|rt_mem|s_memory~38_combout\);

-- Location: LCCOMB_X82_Y37_N20
\RegFile|rt_mem|s_memory_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[15]~feeder_combout\ = \DataRegister|DataOut\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataRegister|DataOut\(2),
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X82_Y37_N21
\RegFile|rt_mem|s_memory_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(15));

-- Location: LCCOMB_X82_Y37_N6
\RegFile|rt_mem|s_memory~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~68_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(16) & ((\RegFile|rt_mem|s_memory~38_combout\ & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(15)))) # (!\RegFile|rt_mem|s_memory~38_combout\ & 
-- (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a2\)))) # (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(16) & (((\RegFile|rt_mem|s_memory_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(16),
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a2\,
	datac => \RegFile|rt_mem|s_memory~38_combout\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(15),
	combout => \RegFile|rt_mem|s_memory~68_combout\);

-- Location: FF_X82_Y37_N7
\RegB|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~68_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(2));

-- Location: LCCOMB_X84_Y37_N2
\InstructionRegister|DataOut[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionRegister|DataOut[2]~feeder_combout\ = \Ram|s_memory~2101_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ram|s_memory~2101_combout\,
	combout => \InstructionRegister|DataOut[2]~feeder_combout\);

-- Location: FF_X84_Y37_N3
\InstructionRegister|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \InstructionRegister|DataOut[2]~feeder_combout\,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstructionRegister|DataOut\(2));

-- Location: LCCOMB_X84_Y37_N8
\ControlUnit|ALUSelB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|ALUSelB[0]~0_combout\ = (\ControlUnit|CS.E0~q\ & !\ControlUnit|CS.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datac => \ControlUnit|CS.E1~q\,
	combout => \ControlUnit|ALUSelB[0]~0_combout\);

-- Location: LCCOMB_X84_Y37_N24
\ControlUnit|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr7~0_combout\ = (\ControlUnit|CS.E2~q\) # ((\ControlUnit|CS.E1~q\) # (\ControlUnit|CS.E8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E2~q\,
	datac => \ControlUnit|CS.E1~q\,
	datad => \ControlUnit|CS.E8~q\,
	combout => \ControlUnit|WideOr7~0_combout\);

-- Location: LCCOMB_X84_Y37_N6
\M5|DataOut[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[2]~42_combout\ = (\ControlUnit|ALUSelB[0]~0_combout\ & ((\ControlUnit|WideOr7~0_combout\ & ((\InstructionRegister|DataOut\(2)))) # (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(2))))) # (!\ControlUnit|ALUSelB[0]~0_combout\ & 
-- (((!\ControlUnit|WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|DataOut\(2),
	datab => \InstructionRegister|DataOut\(2),
	datac => \ControlUnit|ALUSelB[0]~0_combout\,
	datad => \ControlUnit|WideOr7~0_combout\,
	combout => \M5|DataOut[2]~42_combout\);

-- Location: LCCOMB_X79_Y38_N12
\RegFile|rt_mem|s_memory_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X79_Y38_N13
\RegFile|rt_mem|s_memory_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(14));

-- Location: LCCOMB_X79_Y38_N6
\RegFile|rt_mem|s_memory~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~69_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(14) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a1\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(14),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a1\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~69_combout\);

-- Location: FF_X79_Y38_N7
\RegB|DataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~69_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(1));

-- Location: LCCOMB_X83_Y37_N26
\M5|DataOut[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[1]~43_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(1) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(1),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[1]~43_combout\);

-- Location: LCCOMB_X84_Y38_N28
\RegFile|rt_mem|s_memory_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X84_Y38_N29
\RegFile|rt_mem|s_memory_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(12));

-- Location: LCCOMB_X84_Y38_N4
\RegFile|rt_mem|s_memory~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~70_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(12) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(12),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~70_combout\);

-- Location: FF_X84_Y38_N5
\RegB|DataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~70_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(0));

-- Location: LCCOMB_X84_Y37_N0
\M5|DataOut[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[0]~44_combout\ = (\ControlUnit|CS.E0~q\ & (!\ControlUnit|WideOr7~0_combout\ & (!\ControlUnit|CS.E1~q\ & \RegB|DataOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \ControlUnit|CS.E1~q\,
	datad => \RegB|DataOut\(0),
	combout => \M5|DataOut[0]~44_combout\);

-- Location: LCCOMB_X82_Y36_N4
\RegFile|rs_mem|s_memory_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X82_Y36_N5
\RegFile|rs_mem|s_memory_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(12));

-- Location: LCCOMB_X82_Y36_N6
\RegFile|rs_mem|s_memory~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~70_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(12) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(12),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~70_combout\);

-- Location: FF_X82_Y36_N7
\RegA|DataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~70_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(0));

-- Location: LCCOMB_X87_Y37_N14
\M4|DataOut[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[0]~31_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(0)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegA|DataOut\(0),
	datac => \pcupdate|s_pc\(0),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[0]~31_combout\);

-- Location: LCCOMB_X86_Y37_N0
\ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = (\M5|DataOut[0]~44_combout\ & (\M4|DataOut[0]~31_combout\ $ (VCC))) # (!\M5|DataOut[0]~44_combout\ & (\M4|DataOut[0]~31_combout\ & VCC))
-- \ALU|Add0~1\ = CARRY((\M5|DataOut[0]~44_combout\ & \M4|DataOut[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[0]~44_combout\,
	datab => \M4|DataOut[0]~31_combout\,
	datad => VCC,
	combout => \ALU|Add0~0_combout\,
	cout => \ALU|Add0~1\);

-- Location: LCCOMB_X86_Y37_N2
\ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~3_combout\ = (\M4|DataOut[1]~30_combout\ & ((\M5|DataOut[1]~43_combout\ & (\ALU|Add0~1\ & VCC)) # (!\M5|DataOut[1]~43_combout\ & (!\ALU|Add0~1\)))) # (!\M4|DataOut[1]~30_combout\ & ((\M5|DataOut[1]~43_combout\ & (!\ALU|Add0~1\)) # 
-- (!\M5|DataOut[1]~43_combout\ & ((\ALU|Add0~1\) # (GND)))))
-- \ALU|Add0~4\ = CARRY((\M4|DataOut[1]~30_combout\ & (!\M5|DataOut[1]~43_combout\ & !\ALU|Add0~1\)) # (!\M4|DataOut[1]~30_combout\ & ((!\ALU|Add0~1\) # (!\M5|DataOut[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[1]~30_combout\,
	datab => \M5|DataOut[1]~43_combout\,
	datad => VCC,
	cin => \ALU|Add0~1\,
	combout => \ALU|Add0~3_combout\,
	cout => \ALU|Add0~4\);

-- Location: LCCOMB_X86_Y37_N4
\ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = ((\M4|DataOut[2]~29_combout\ $ (\M5|DataOut[2]~42_combout\ $ (!\ALU|Add0~4\)))) # (GND)
-- \ALU|Add0~7\ = CARRY((\M4|DataOut[2]~29_combout\ & ((\M5|DataOut[2]~42_combout\) # (!\ALU|Add0~4\))) # (!\M4|DataOut[2]~29_combout\ & (\M5|DataOut[2]~42_combout\ & !\ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[2]~29_combout\,
	datab => \M5|DataOut[2]~42_combout\,
	datad => VCC,
	cin => \ALU|Add0~4\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X88_Y37_N8
\ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~6_combout\,
	combout => \ALU|Add0~8_combout\);

-- Location: LCCOMB_X89_Y34_N20
\pcupdate|s_pc~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~88_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(2))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(2),
	datad => \ALU|Add0~8_combout\,
	combout => \pcupdate|s_pc~88_combout\);

-- Location: FF_X89_Y34_N21
\pcupdate|s_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~88_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(2));

-- Location: LCCOMB_X89_Y34_N28
\Ram|s_memory~2102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2102_combout\ = (!\pcupdate|s_pc\(1) & (!\pcupdate|s_pc\(2) & (!\pcupdate|s_pc\(3) & \pcupdate|s_pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(1),
	datab => \pcupdate|s_pc\(2),
	datac => \pcupdate|s_pc\(3),
	datad => \pcupdate|s_pc\(0),
	combout => \Ram|s_memory~2102_combout\);

-- Location: LCCOMB_X89_Y34_N22
\Ram|s_memory~2103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2103_combout\ = (!\pcupdate|s_pc\(5) & (\Ram|s_memory~2102_combout\ & (!\pcupdate|s_pc\(4) & \ControlUnit|CS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(5),
	datab => \Ram|s_memory~2102_combout\,
	datac => \pcupdate|s_pc\(4),
	datad => \ControlUnit|CS.E5~q\,
	combout => \Ram|s_memory~2103_combout\);

-- Location: FF_X87_Y35_N5
\Ram|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~92feeder_combout\,
	ena => \Ram|s_memory~2103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~92_q\);

-- Location: LCCOMB_X86_Y35_N20
\Ram|s_memory~2116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2116_combout\ = (!\pcupdate|s_pc\(1) & (\pcupdate|s_pc\(0) & (\Ram|s_memory~2100_combout\ & !\Ram|s_memory~92_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(1),
	datab => \pcupdate|s_pc\(0),
	datac => \Ram|s_memory~2100_combout\,
	datad => \Ram|s_memory~92_q\,
	combout => \Ram|s_memory~2116_combout\);

-- Location: LCCOMB_X82_Y35_N0
\RegFile|rs_mem|s_memory~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~39_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(74) & ((\RegFile|rs_mem|s_memory~38_combout\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(73))) # (!\RegFile|rs_mem|s_memory~38_combout\ & 
-- ((\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a31\))))) # (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(74) & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(74),
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(73),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a31\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~39_combout\);

-- Location: FF_X82_Y35_N1
\RegA|DataOut[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~39_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(31));

-- Location: LCCOMB_X86_Y38_N30
\RegFile|rt_mem|s_memory_rtl_0_bypass[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[73]~feeder_combout\ = \DataRegister|DataOut\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataRegister|DataOut\(31),
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[73]~feeder_combout\);

-- Location: FF_X86_Y38_N31
\RegFile|rt_mem|s_memory_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(73));

-- Location: LCCOMB_X86_Y38_N16
\RegFile|rt_mem|s_memory_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X86_Y38_N17
\RegFile|rt_mem|s_memory_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(74));

-- Location: LCCOMB_X86_Y38_N24
\RegFile|rt_mem|s_memory~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~39_combout\ = (\RegFile|rt_mem|s_memory~38_combout\ & (((\RegFile|rt_mem|s_memory_rtl_0_bypass\(73))))) # (!\RegFile|rt_mem|s_memory~38_combout\ & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(74) & 
-- (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a31\)) # (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(74) & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a31\,
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(73),
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(74),
	combout => \RegFile|rt_mem|s_memory~39_combout\);

-- Location: FF_X86_Y38_N25
\RegB|DataOut[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~39_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(31));

-- Location: LCCOMB_X85_Y38_N10
\M5|DataOut[31]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[31]~26_combout\ = (!\ControlUnit|CS.E8~q\ & (!\ControlUnit|CS.E2~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & \RegB|DataOut\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|CS.E2~q\,
	datac => \ControlUnit|ALUSelB[0]~0_combout\,
	datad => \RegB|DataOut\(31),
	combout => \M5|DataOut[31]~26_combout\);

-- Location: LCCOMB_X86_Y38_N10
\RegFile|rt_mem|s_memory_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X86_Y38_N11
\RegFile|rt_mem|s_memory_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(72));

-- Location: LCCOMB_X86_Y38_N26
\RegFile|rt_mem|s_memory~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~40_combout\ = (!\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a30\ & \RegFile|rt_mem|s_memory_rtl_0_bypass\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a30\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(72),
	combout => \RegFile|rt_mem|s_memory~40_combout\);

-- Location: FF_X86_Y38_N27
\RegB|DataOut[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~40_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(30));

-- Location: LCCOMB_X84_Y37_N18
\M5|DataOut[30]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[30]~27_combout\ = (!\ControlUnit|CS.E2~q\ & (\RegB|DataOut\(30) & (\ControlUnit|ALUSelB[0]~0_combout\ & !\ControlUnit|CS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E2~q\,
	datab => \RegB|DataOut\(30),
	datac => \ControlUnit|ALUSelB[0]~0_combout\,
	datad => \ControlUnit|CS.E8~q\,
	combout => \M5|DataOut[30]~27_combout\);

-- Location: LCCOMB_X84_Y36_N6
\RegFile|rs_mem|s_memory_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X84_Y36_N7
\RegFile|rs_mem|s_memory_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(72));

-- Location: LCCOMB_X84_Y36_N0
\RegFile|rs_mem|s_memory~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~40_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a30\ & (!\RegFile|rs_mem|s_memory~38_combout\ & \RegFile|rs_mem|s_memory_rtl_0_bypass\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a30\,
	datab => \RegFile|rs_mem|s_memory~38_combout\,
	datad => \RegFile|rs_mem|s_memory_rtl_0_bypass\(72),
	combout => \RegFile|rs_mem|s_memory~40_combout\);

-- Location: FF_X84_Y36_N1
\RegA|DataOut[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~40_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(30));

-- Location: LCCOMB_X79_Y36_N18
\RegFile|rs_mem|s_memory_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X79_Y36_N19
\RegFile|rs_mem|s_memory_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(70));

-- Location: LCCOMB_X79_Y36_N16
\RegFile|rs_mem|s_memory_rtl_0_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[69]~feeder_combout\ = \DataRegister|DataOut\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataRegister|DataOut\(29),
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[69]~feeder_combout\);

-- Location: FF_X79_Y36_N17
\RegFile|rs_mem|s_memory_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(69));

-- Location: LCCOMB_X79_Y36_N24
\RegFile|rs_mem|s_memory~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~41_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(70) & ((\RegFile|rs_mem|s_memory~38_combout\ & ((\RegFile|rs_mem|s_memory_rtl_0_bypass\(69)))) # (!\RegFile|rs_mem|s_memory~38_combout\ & 
-- (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a29\)))) # (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(70) & (((\RegFile|rs_mem|s_memory_rtl_0_bypass\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a29\,
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(70),
	datac => \RegFile|rs_mem|s_memory~38_combout\,
	datad => \RegFile|rs_mem|s_memory_rtl_0_bypass\(69),
	combout => \RegFile|rs_mem|s_memory~41_combout\);

-- Location: FF_X79_Y36_N25
\RegA|DataOut[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~41_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(29));

-- Location: FF_X86_Y34_N27
\RegFile|rt_mem|s_memory_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(69));

-- Location: LCCOMB_X86_Y38_N20
\RegFile|rt_mem|s_memory_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X86_Y38_N21
\RegFile|rt_mem|s_memory_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(70));

-- Location: LCCOMB_X86_Y38_N12
\RegFile|rt_mem|s_memory~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~41_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(70) & ((\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(69))) # (!\RegFile|rt_mem|s_memory~38_combout\ & 
-- ((\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a29\))))) # (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(70) & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(69),
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(70),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a29\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~41_combout\);

-- Location: FF_X86_Y38_N13
\RegB|DataOut[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~41_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(29));

-- Location: LCCOMB_X87_Y38_N14
\M5|DataOut[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[29]~28_combout\ = (!\ControlUnit|CS.E8~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & (!\ControlUnit|CS.E2~q\ & \RegB|DataOut\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|ALUSelB[0]~0_combout\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \RegB|DataOut\(29),
	combout => \M5|DataOut[29]~28_combout\);

-- Location: LCCOMB_X86_Y38_N6
\RegFile|rt_mem|s_memory_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X86_Y38_N7
\RegFile|rt_mem|s_memory_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(68));

-- Location: LCCOMB_X86_Y38_N14
\RegFile|rt_mem|s_memory~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~42_combout\ = (!\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a28\ & \RegFile|rt_mem|s_memory_rtl_0_bypass\(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a28\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(68),
	combout => \RegFile|rt_mem|s_memory~42_combout\);

-- Location: FF_X86_Y38_N15
\RegB|DataOut[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~42_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(28));

-- Location: LCCOMB_X87_Y38_N8
\M5|DataOut[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[28]~29_combout\ = (!\ControlUnit|CS.E8~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & (!\ControlUnit|CS.E2~q\ & \RegB|DataOut\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|ALUSelB[0]~0_combout\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \RegB|DataOut\(28),
	combout => \M5|DataOut[28]~29_combout\);

-- Location: LCCOMB_X82_Y36_N26
\RegFile|rs_mem|s_memory_rtl_0_bypass[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[65]~feeder_combout\ = \DataRegister|DataOut\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataRegister|DataOut\(27),
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[65]~feeder_combout\);

-- Location: FF_X82_Y36_N27
\RegFile|rs_mem|s_memory_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(65));

-- Location: LCCOMB_X82_Y36_N20
\RegFile|rs_mem|s_memory_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X82_Y36_N21
\RegFile|rs_mem|s_memory_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(66));

-- Location: LCCOMB_X82_Y36_N0
\RegFile|rs_mem|s_memory~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~43_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(66) & ((\RegFile|rs_mem|s_memory~38_combout\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(65))) # (!\RegFile|rs_mem|s_memory~38_combout\ & 
-- ((\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a27\))))) # (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(66) & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(65),
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(66),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a27\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~43_combout\);

-- Location: FF_X82_Y36_N1
\RegA|DataOut[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~43_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(27));

-- Location: LCCOMB_X86_Y38_N0
\RegFile|rt_mem|s_memory_rtl_0_bypass[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[65]~feeder_combout\ = \DataRegister|DataOut\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataRegister|DataOut\(27),
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[65]~feeder_combout\);

-- Location: FF_X86_Y38_N1
\RegFile|rt_mem|s_memory_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(65));

-- Location: LCCOMB_X86_Y38_N18
\RegFile|rt_mem|s_memory_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X86_Y38_N19
\RegFile|rt_mem|s_memory_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(66));

-- Location: LCCOMB_X86_Y38_N8
\RegFile|rt_mem|s_memory~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~43_combout\ = (\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(65))) # (!\RegFile|rt_mem|s_memory~38_combout\ & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(66) & 
-- ((\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a27\))) # (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(66) & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(65),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a27\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(66),
	combout => \RegFile|rt_mem|s_memory~43_combout\);

-- Location: FF_X86_Y38_N9
\RegB|DataOut[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~43_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(27));

-- Location: LCCOMB_X87_Y38_N18
\M5|DataOut[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[27]~30_combout\ = (!\ControlUnit|CS.E8~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & (!\ControlUnit|CS.E2~q\ & \RegB|DataOut\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|ALUSelB[0]~0_combout\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \RegB|DataOut\(27),
	combout => \M5|DataOut[27]~30_combout\);

-- Location: LCCOMB_X82_Y35_N20
\RegFile|rs_mem|s_memory_rtl_0_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[63]~feeder_combout\ = \DataRegister|DataOut\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataRegister|DataOut\(26),
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[63]~feeder_combout\);

-- Location: FF_X82_Y35_N21
\RegFile|rs_mem|s_memory_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(63));

-- Location: LCCOMB_X82_Y35_N22
\RegFile|rs_mem|s_memory_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X82_Y35_N23
\RegFile|rs_mem|s_memory_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(64));

-- Location: LCCOMB_X82_Y35_N2
\RegFile|rs_mem|s_memory~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~44_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(64) & ((\RegFile|rs_mem|s_memory~38_combout\ & ((\RegFile|rs_mem|s_memory_rtl_0_bypass\(63)))) # (!\RegFile|rs_mem|s_memory~38_combout\ & 
-- (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a26\)))) # (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(64) & (((\RegFile|rs_mem|s_memory_rtl_0_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a26\,
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(63),
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(64),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~44_combout\);

-- Location: FF_X82_Y35_N3
\RegA|DataOut[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~44_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(26));

-- Location: LCCOMB_X86_Y38_N28
\RegFile|rt_mem|s_memory_rtl_0_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[63]~feeder_combout\ = \DataRegister|DataOut\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataRegister|DataOut\(26),
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[63]~feeder_combout\);

-- Location: FF_X86_Y38_N29
\RegFile|rt_mem|s_memory_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(63));

-- Location: LCCOMB_X86_Y38_N22
\RegFile|rt_mem|s_memory_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X86_Y38_N23
\RegFile|rt_mem|s_memory_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(64));

-- Location: LCCOMB_X86_Y38_N2
\RegFile|rt_mem|s_memory~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~44_combout\ = (\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(63))) # (!\RegFile|rt_mem|s_memory~38_combout\ & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(64) & 
-- ((\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a26\))) # (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(64) & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(63),
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(64),
	datad => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a26\,
	combout => \RegFile|rt_mem|s_memory~44_combout\);

-- Location: FF_X86_Y38_N3
\RegB|DataOut[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~44_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(26));

-- Location: LCCOMB_X87_Y38_N28
\M5|DataOut[26]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[26]~31_combout\ = (!\ControlUnit|CS.E8~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & (!\ControlUnit|CS.E2~q\ & \RegB|DataOut\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|ALUSelB[0]~0_combout\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \RegB|DataOut\(26),
	combout => \M5|DataOut[26]~31_combout\);

-- Location: LCCOMB_X79_Y36_N14
\RegFile|rs_mem|s_memory_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X79_Y36_N15
\RegFile|rs_mem|s_memory_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(62));

-- Location: LCCOMB_X79_Y36_N4
\RegFile|rs_mem|s_memory~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~45_combout\ = (!\RegFile|rs_mem|s_memory~38_combout\ & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a25\ & \RegFile|rs_mem|s_memory_rtl_0_bypass\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory~38_combout\,
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a25\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(62),
	combout => \RegFile|rs_mem|s_memory~45_combout\);

-- Location: FF_X79_Y36_N5
\RegA|DataOut[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~45_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(25));

-- Location: LCCOMB_X89_Y38_N16
\RegFile|rt_mem|s_memory_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X89_Y38_N17
\RegFile|rt_mem|s_memory_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(62));

-- Location: LCCOMB_X86_Y38_N4
\RegFile|rt_mem|s_memory~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~45_combout\ = (!\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a25\ & \RegFile|rt_mem|s_memory_rtl_0_bypass\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a25\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(62),
	combout => \RegFile|rt_mem|s_memory~45_combout\);

-- Location: FF_X86_Y38_N5
\RegB|DataOut[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~45_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(25));

-- Location: LCCOMB_X87_Y38_N6
\M5|DataOut[25]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[25]~32_combout\ = (!\ControlUnit|CS.E8~q\ & (!\ControlUnit|CS.E2~q\ & (\RegB|DataOut\(25) & \ControlUnit|ALUSelB[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|CS.E2~q\,
	datac => \RegB|DataOut\(25),
	datad => \ControlUnit|ALUSelB[0]~0_combout\,
	combout => \M5|DataOut[25]~32_combout\);

-- Location: LCCOMB_X84_Y38_N14
\RegFile|rt_mem|s_memory_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X84_Y38_N15
\RegFile|rt_mem|s_memory_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(60));

-- Location: LCCOMB_X84_Y38_N0
\RegFile|rt_mem|s_memory~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~46_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a24\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(60) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a24\,
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(60),
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~46_combout\);

-- Location: FF_X84_Y38_N1
\RegB|DataOut[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~46_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(24));

-- Location: LCCOMB_X84_Y37_N4
\M5|DataOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[24]~33_combout\ = (!\ControlUnit|CS.E2~q\ & (\RegB|DataOut\(24) & (\ControlUnit|ALUSelB[0]~0_combout\ & !\ControlUnit|CS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E2~q\,
	datab => \RegB|DataOut\(24),
	datac => \ControlUnit|ALUSelB[0]~0_combout\,
	datad => \ControlUnit|CS.E8~q\,
	combout => \M5|DataOut[24]~33_combout\);

-- Location: LCCOMB_X79_Y36_N8
\RegFile|rs_mem|s_memory_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X79_Y36_N9
\RegFile|rs_mem|s_memory_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(60));

-- Location: LCCOMB_X79_Y36_N30
\RegFile|rs_mem|s_memory~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~46_combout\ = (!\RegFile|rs_mem|s_memory~38_combout\ & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a24\ & \RegFile|rs_mem|s_memory_rtl_0_bypass\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory~38_combout\,
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a24\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(60),
	combout => \RegFile|rs_mem|s_memory~46_combout\);

-- Location: FF_X79_Y36_N31
\RegA|DataOut[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~46_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(24));

-- Location: LCCOMB_X84_Y38_N16
\RegFile|rt_mem|s_memory_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X84_Y38_N17
\RegFile|rt_mem|s_memory_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(58));

-- Location: LCCOMB_X84_Y38_N10
\RegFile|rt_mem|s_memory~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~47_combout\ = (!\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a23\ & \RegFile|rt_mem|s_memory_rtl_0_bypass\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a23\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(58),
	combout => \RegFile|rt_mem|s_memory~47_combout\);

-- Location: FF_X84_Y38_N11
\RegB|DataOut[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~47_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(23));

-- Location: LCCOMB_X87_Y38_N16
\M5|DataOut[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[23]~34_combout\ = (!\ControlUnit|CS.E8~q\ & (\RegB|DataOut\(23) & (!\ControlUnit|CS.E2~q\ & \ControlUnit|ALUSelB[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \RegB|DataOut\(23),
	datac => \ControlUnit|CS.E2~q\,
	datad => \ControlUnit|ALUSelB[0]~0_combout\,
	combout => \M5|DataOut[23]~34_combout\);

-- Location: LCCOMB_X84_Y38_N2
\RegFile|rt_mem|s_memory_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X84_Y38_N3
\RegFile|rt_mem|s_memory_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(56));

-- Location: LCCOMB_X84_Y38_N12
\RegFile|rt_mem|s_memory~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~48_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(56) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a22\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(56),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a22\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~48_combout\);

-- Location: FF_X84_Y38_N13
\RegB|DataOut[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~48_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(22));

-- Location: LCCOMB_X85_Y38_N14
\M5|DataOut[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[22]~35_combout\ = (\RegB|DataOut\(22) & (!\ControlUnit|CS.E2~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & !\ControlUnit|CS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|DataOut\(22),
	datab => \ControlUnit|CS.E2~q\,
	datac => \ControlUnit|ALUSelB[0]~0_combout\,
	datad => \ControlUnit|CS.E8~q\,
	combout => \M5|DataOut[22]~35_combout\);

-- Location: LCCOMB_X84_Y36_N8
\RegFile|rs_mem|s_memory_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X84_Y36_N9
\RegFile|rs_mem|s_memory_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(56));

-- Location: LCCOMB_X84_Y36_N18
\RegFile|rs_mem|s_memory~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~48_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a22\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(56) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a22\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(56),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~48_combout\);

-- Location: FF_X84_Y36_N19
\RegA|DataOut[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~48_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(22));

-- Location: LCCOMB_X84_Y38_N22
\RegFile|rt_mem|s_memory_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X84_Y38_N23
\RegFile|rt_mem|s_memory_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(54));

-- Location: LCCOMB_X84_Y38_N20
\RegFile|rt_mem|s_memory_rtl_0_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[53]~feeder_combout\ = \DataRegister|DataOut\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataRegister|DataOut\(21),
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[53]~feeder_combout\);

-- Location: FF_X84_Y38_N21
\RegFile|rt_mem|s_memory_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(53));

-- Location: LCCOMB_X84_Y38_N30
\RegFile|rt_mem|s_memory~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~49_combout\ = (\RegFile|rt_mem|s_memory~38_combout\ & (((\RegFile|rt_mem|s_memory_rtl_0_bypass\(53))))) # (!\RegFile|rt_mem|s_memory~38_combout\ & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(54) & 
-- (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a21\)) # (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(54) & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a21\,
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(54),
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(53),
	combout => \RegFile|rt_mem|s_memory~49_combout\);

-- Location: FF_X84_Y38_N31
\RegB|DataOut[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~49_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(21));

-- Location: LCCOMB_X84_Y37_N22
\M5|DataOut[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[21]~36_combout\ = (!\ControlUnit|CS.E2~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & (\RegB|DataOut\(21) & !\ControlUnit|CS.E8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E2~q\,
	datab => \ControlUnit|ALUSelB[0]~0_combout\,
	datac => \RegB|DataOut\(21),
	datad => \ControlUnit|CS.E8~q\,
	combout => \M5|DataOut[21]~36_combout\);

-- Location: LCCOMB_X84_Y36_N26
\RegFile|rs_mem|s_memory_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X84_Y36_N27
\RegFile|rs_mem|s_memory_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(52));

-- Location: LCCOMB_X84_Y36_N28
\RegFile|rs_mem|s_memory~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~50_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(52) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a20\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(52),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a20\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~50_combout\);

-- Location: FF_X84_Y36_N29
\RegA|DataOut[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~50_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(20));

-- Location: LCCOMB_X85_Y33_N10
\pcupdate|s_pc~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~61_combout\ = (\ControlUnit|CS.E11~q\) # ((\pcupdate|s_pc\(20) & \ControlUnit|CS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(20),
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~61_combout\);

-- Location: LCCOMB_X85_Y33_N18
\pcupdate|s_pc[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc[17]~50_combout\ = (\ControlUnit|CS.E11~q\) # (!\ControlUnit|CS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc[17]~50_combout\);

-- Location: LCCOMB_X80_Y38_N24
\RegFile|rt_mem|s_memory_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X80_Y38_N25
\RegFile|rt_mem|s_memory_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(52));

-- Location: LCCOMB_X79_Y38_N8
\RegFile|rt_mem|s_memory~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~50_combout\ = (!\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a20\ & \RegFile|rt_mem|s_memory_rtl_0_bypass\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a20\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(52),
	combout => \RegFile|rt_mem|s_memory~50_combout\);

-- Location: FF_X79_Y38_N9
\RegB|DataOut[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~50_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(20));

-- Location: LCCOMB_X87_Y38_N10
\M5|DataOut[20]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[20]~37_combout\ = (\RegB|DataOut\(20) & (!\ControlUnit|CS.E2~q\ & (!\ControlUnit|CS.E8~q\ & \ControlUnit|ALUSelB[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|DataOut\(20),
	datab => \ControlUnit|CS.E2~q\,
	datac => \ControlUnit|CS.E8~q\,
	datad => \ControlUnit|ALUSelB[0]~0_combout\,
	combout => \M5|DataOut[20]~37_combout\);

-- Location: LCCOMB_X84_Y38_N8
\RegFile|rt_mem|s_memory_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X84_Y38_N9
\RegFile|rt_mem|s_memory_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(50));

-- Location: LCCOMB_X84_Y38_N24
\RegFile|rt_mem|s_memory~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~51_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a19\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(50) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a19\,
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(50),
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~51_combout\);

-- Location: FF_X84_Y38_N25
\RegB|DataOut[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~51_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(19));

-- Location: LCCOMB_X85_Y34_N22
\M5|DataOut[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[19]~38_combout\ = (\ControlUnit|ALUSelB[0]~0_combout\ & (!\ControlUnit|CS.E8~q\ & (\RegB|DataOut\(19) & !\ControlUnit|CS.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|ALUSelB[0]~0_combout\,
	datab => \ControlUnit|CS.E8~q\,
	datac => \RegB|DataOut\(19),
	datad => \ControlUnit|CS.E2~q\,
	combout => \M5|DataOut[19]~38_combout\);

-- Location: LCCOMB_X84_Y38_N18
\RegFile|rt_mem|s_memory_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X84_Y38_N19
\RegFile|rt_mem|s_memory_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(48));

-- Location: LCCOMB_X84_Y38_N26
\RegFile|rt_mem|s_memory~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~52_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a18\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(48) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a18\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(48),
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~52_combout\);

-- Location: FF_X84_Y38_N27
\RegB|DataOut[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~52_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(18));

-- Location: LCCOMB_X87_Y38_N20
\M5|DataOut[18]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[18]~39_combout\ = (!\ControlUnit|CS.E8~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & (!\ControlUnit|CS.E2~q\ & \RegB|DataOut\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|ALUSelB[0]~0_combout\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \RegB|DataOut\(18),
	combout => \M5|DataOut[18]~39_combout\);

-- Location: LCCOMB_X79_Y36_N12
\RegFile|rs_mem|s_memory_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X79_Y36_N13
\RegFile|rs_mem|s_memory_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(48));

-- Location: LCCOMB_X79_Y36_N26
\RegFile|rs_mem|s_memory~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~52_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a18\ & (!\RegFile|rs_mem|s_memory~38_combout\ & \RegFile|rs_mem|s_memory_rtl_0_bypass\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a18\,
	datac => \RegFile|rs_mem|s_memory~38_combout\,
	datad => \RegFile|rs_mem|s_memory_rtl_0_bypass\(48),
	combout => \RegFile|rs_mem|s_memory~52_combout\);

-- Location: FF_X79_Y36_N27
\RegA|DataOut[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~52_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(18));

-- Location: LCCOMB_X79_Y38_N0
\RegFile|rt_mem|s_memory_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X79_Y38_N1
\RegFile|rt_mem|s_memory_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(46));

-- Location: LCCOMB_X79_Y38_N2
\RegFile|rt_mem|s_memory~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~53_combout\ = (!\RegFile|rt_mem|s_memory~38_combout\ & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a17\ & \RegFile|rt_mem|s_memory_rtl_0_bypass\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory~38_combout\,
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a17\,
	datad => \RegFile|rt_mem|s_memory_rtl_0_bypass\(46),
	combout => \RegFile|rt_mem|s_memory~53_combout\);

-- Location: FF_X79_Y38_N3
\RegB|DataOut[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~53_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(17));

-- Location: LCCOMB_X87_Y38_N22
\M5|DataOut[17]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[17]~40_combout\ = (!\ControlUnit|CS.E8~q\ & (\ControlUnit|ALUSelB[0]~0_combout\ & (!\ControlUnit|CS.E2~q\ & \RegB|DataOut\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|ALUSelB[0]~0_combout\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \RegB|DataOut\(17),
	combout => \M5|DataOut[17]~40_combout\);

-- Location: LCCOMB_X79_Y38_N20
\RegFile|rt_mem|s_memory_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X79_Y38_N21
\RegFile|rt_mem|s_memory_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(44));

-- Location: LCCOMB_X79_Y38_N26
\RegFile|rt_mem|s_memory_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[43]~feeder_combout\ = \DataRegister|DataOut\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataRegister|DataOut\(16),
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X79_Y38_N27
\RegFile|rt_mem|s_memory_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(43));

-- Location: LCCOMB_X79_Y38_N28
\RegFile|rt_mem|s_memory~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~54_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(44) & ((\RegFile|rt_mem|s_memory~38_combout\ & ((\RegFile|rt_mem|s_memory_rtl_0_bypass\(43)))) # (!\RegFile|rt_mem|s_memory~38_combout\ & 
-- (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a16\)))) # (!\RegFile|rt_mem|s_memory_rtl_0_bypass\(44) & (((\RegFile|rt_mem|s_memory_rtl_0_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a16\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(44),
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(43),
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~54_combout\);

-- Location: FF_X79_Y38_N29
\RegB|DataOut[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~54_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(16));

-- Location: LCCOMB_X83_Y37_N6
\M5|DataOut[16]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[16]~45_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(16) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(16),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[16]~45_combout\);

-- Location: LCCOMB_X81_Y36_N18
\RegFile|rs_mem|s_memory_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X81_Y36_N19
\RegFile|rs_mem|s_memory_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(42));

-- Location: LCCOMB_X81_Y36_N4
\RegFile|rs_mem|s_memory~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~55_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a15\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(42) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a15\,
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(42),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~55_combout\);

-- Location: FF_X81_Y36_N5
\RegA|DataOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~55_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(15));

-- Location: LCCOMB_X80_Y38_N18
\RegFile|rt_mem|s_memory_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X80_Y38_N19
\RegFile|rt_mem|s_memory_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(42));

-- Location: LCCOMB_X79_Y38_N30
\RegFile|rt_mem|s_memory~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~55_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(42) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a15\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(42),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a15\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~55_combout\);

-- Location: FF_X79_Y38_N31
\RegB|DataOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~55_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(15));

-- Location: LCCOMB_X83_Y37_N16
\M5|DataOut[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[15]~46_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(15) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(15),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[15]~46_combout\);

-- Location: LCCOMB_X81_Y36_N28
\RegFile|rs_mem|s_memory_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X81_Y36_N29
\RegFile|rs_mem|s_memory_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(40));

-- Location: LCCOMB_X81_Y36_N6
\RegFile|rs_mem|s_memory~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~56_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a14\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(40) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a14\,
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(40),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~56_combout\);

-- Location: FF_X81_Y36_N7
\RegA|DataOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~56_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(14));

-- Location: LCCOMB_X79_Y38_N14
\RegFile|rt_mem|s_memory_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X79_Y38_N15
\RegFile|rt_mem|s_memory_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(40));

-- Location: LCCOMB_X79_Y38_N16
\RegFile|rt_mem|s_memory~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~56_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a14\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(40) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a14\,
	datac => \RegFile|rt_mem|s_memory_rtl_0_bypass\(40),
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~56_combout\);

-- Location: FF_X79_Y38_N17
\RegB|DataOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~56_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(14));

-- Location: LCCOMB_X83_Y37_N18
\M5|DataOut[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[14]~47_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(14) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(14),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[14]~47_combout\);

-- Location: LCCOMB_X79_Y37_N12
\RegFile|rt_mem|s_memory_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X79_Y37_N13
\RegFile|rt_mem|s_memory_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(38));

-- Location: LCCOMB_X79_Y37_N8
\RegFile|rt_mem|s_memory~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~57_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(38) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a13\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(38),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a13\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~57_combout\);

-- Location: FF_X79_Y37_N9
\RegB|DataOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~57_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(13));

-- Location: LCCOMB_X83_Y37_N28
\M5|DataOut[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[13]~48_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(13) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(13),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[13]~48_combout\);

-- Location: LCCOMB_X81_Y36_N30
\RegFile|rs_mem|s_memory_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X81_Y36_N31
\RegFile|rs_mem|s_memory_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(38));

-- Location: LCCOMB_X81_Y36_N24
\RegFile|rs_mem|s_memory~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~57_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a13\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(38) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a13\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(38),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~57_combout\);

-- Location: FF_X81_Y36_N25
\RegA|DataOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~57_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(13));

-- Location: LCCOMB_X79_Y38_N24
\RegFile|rt_mem|s_memory_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X79_Y38_N25
\RegFile|rt_mem|s_memory_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(36));

-- Location: LCCOMB_X79_Y38_N18
\RegFile|rt_mem|s_memory~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~58_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(36) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a12\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(36),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a12\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~58_combout\);

-- Location: FF_X79_Y38_N19
\RegB|DataOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~58_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(12));

-- Location: LCCOMB_X83_Y37_N14
\M5|DataOut[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[12]~49_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(12) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(12),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[12]~49_combout\);

-- Location: LCCOMB_X79_Y38_N10
\RegFile|rt_mem|s_memory_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X79_Y38_N11
\RegFile|rt_mem|s_memory_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(34));

-- Location: LCCOMB_X79_Y38_N4
\RegFile|rt_mem|s_memory~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~59_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(34) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a11\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(34),
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a11\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~59_combout\);

-- Location: FF_X79_Y38_N5
\RegB|DataOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~59_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(11));

-- Location: LCCOMB_X83_Y37_N0
\M5|DataOut[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[11]~50_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(11) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(11),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[11]~50_combout\);

-- Location: LCCOMB_X81_Y36_N16
\RegFile|rs_mem|s_memory_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X81_Y36_N17
\RegFile|rs_mem|s_memory_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(34));

-- Location: LCCOMB_X81_Y36_N2
\RegFile|rs_mem|s_memory~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~59_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a11\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(34) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a11\,
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(34),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~59_combout\);

-- Location: FF_X81_Y36_N3
\RegA|DataOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~59_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(11));

-- Location: LCCOMB_X82_Y37_N8
\RegFile|rt_mem|s_memory_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X82_Y37_N9
\RegFile|rt_mem|s_memory_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(32));

-- Location: LCCOMB_X82_Y37_N16
\RegFile|rt_mem|s_memory~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~60_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a10\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(32) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a10\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(32),
	datac => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~60_combout\);

-- Location: FF_X82_Y37_N17
\RegB|DataOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~60_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(10));

-- Location: LCCOMB_X83_Y37_N10
\M5|DataOut[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[10]~51_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(10) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(10),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[10]~51_combout\);

-- Location: LCCOMB_X81_Y37_N8
\RegFile|rt_mem|s_memory_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X81_Y37_N9
\RegFile|rt_mem|s_memory_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(30));

-- Location: LCCOMB_X82_Y37_N26
\RegFile|rt_mem|s_memory~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~61_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(30) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a9\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(30),
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a9\,
	datac => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~61_combout\);

-- Location: FF_X82_Y37_N27
\RegB|DataOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~61_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(9));

-- Location: LCCOMB_X83_Y37_N4
\M5|DataOut[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[9]~52_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(9) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(9),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[9]~52_combout\);

-- Location: LCCOMB_X82_Y37_N10
\RegFile|rt_mem|s_memory_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X82_Y37_N11
\RegFile|rt_mem|s_memory_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(28));

-- Location: LCCOMB_X82_Y37_N4
\RegFile|rt_mem|s_memory~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~62_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(28) & (!\RegFile|rt_mem|s_memory~38_combout\ & \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(28),
	datab => \RegFile|rt_mem|s_memory~38_combout\,
	datac => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a8\,
	combout => \RegFile|rt_mem|s_memory~62_combout\);

-- Location: FF_X82_Y37_N5
\RegB|DataOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~62_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(8));

-- Location: LCCOMB_X83_Y37_N22
\M5|DataOut[8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[8]~53_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(8) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(8),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[8]~53_combout\);

-- Location: LCCOMB_X84_Y36_N22
\RegFile|rs_mem|s_memory_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X84_Y36_N23
\RegFile|rs_mem|s_memory_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(26));

-- Location: LCCOMB_X84_Y36_N16
\RegFile|rs_mem|s_memory~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~63_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a7\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(26) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a7\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(26),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~63_combout\);

-- Location: FF_X84_Y36_N17
\RegA|DataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~63_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(7));

-- Location: LCCOMB_X82_Y37_N28
\RegFile|rt_mem|s_memory_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X82_Y37_N29
\RegFile|rt_mem|s_memory_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(26));

-- Location: LCCOMB_X82_Y37_N14
\RegFile|rt_mem|s_memory~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~63_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a7\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(26) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a7\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(26),
	datac => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~63_combout\);

-- Location: FF_X82_Y37_N15
\RegB|DataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~63_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(7));

-- Location: LCCOMB_X83_Y37_N24
\M5|DataOut[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[7]~54_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(7) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(7),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[7]~54_combout\);

-- Location: LCCOMB_X82_Y37_N22
\RegFile|rt_mem|s_memory_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X82_Y37_N23
\RegFile|rt_mem|s_memory_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(24));

-- Location: LCCOMB_X82_Y37_N24
\RegFile|rt_mem|s_memory~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~64_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(24) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a6\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(24),
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a6\,
	datac => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~64_combout\);

-- Location: FF_X82_Y37_N25
\RegB|DataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~64_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(6));

-- Location: LCCOMB_X83_Y37_N2
\M5|DataOut[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[6]~55_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\RegB|DataOut\(6) & \ControlUnit|CS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \RegB|DataOut\(6),
	datad => \ControlUnit|CS.E0~q\,
	combout => \M5|DataOut[6]~55_combout\);

-- Location: LCCOMB_X85_Y33_N28
\pcupdate|s_pc~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~63_combout\ = (\ControlUnit|CS.E11~q\) # ((\pcupdate|s_pc\(6) & \ControlUnit|CS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(6),
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~63_combout\);

-- Location: LCCOMB_X82_Y35_N16
\RegFile|rs_mem|s_memory_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X82_Y35_N17
\RegFile|rs_mem|s_memory_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(22));

-- Location: LCCOMB_X82_Y35_N12
\RegFile|rs_mem|s_memory~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~65_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(22) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a5\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(22),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a5\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~65_combout\);

-- Location: FF_X82_Y35_N13
\RegA|DataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~65_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(5));

-- Location: LCCOMB_X83_Y35_N2
\M4|DataOut[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[5]~26_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(5)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(5),
	datab => \pcupdate|s_pc\(5),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[5]~26_combout\);

-- Location: LCCOMB_X82_Y37_N18
\RegFile|rt_mem|s_memory_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X82_Y37_N19
\RegFile|rt_mem|s_memory_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(20));

-- Location: LCCOMB_X82_Y37_N12
\RegFile|rt_mem|s_memory~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~66_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a4\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(20) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a4\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(20),
	datac => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~66_combout\);

-- Location: FF_X82_Y37_N13
\RegB|DataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~66_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(4));

-- Location: LCCOMB_X84_Y37_N12
\M5|DataOut[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[4]~41_combout\ = (\ControlUnit|ALUSelB[0]~0_combout\ & (\RegB|DataOut\(4) & ((!\ControlUnit|WideOr7~0_combout\)))) # (!\ControlUnit|ALUSelB[0]~0_combout\ & (((\InstructionRegister|DataOut\(2) & \ControlUnit|WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|DataOut\(4),
	datab => \InstructionRegister|DataOut\(2),
	datac => \ControlUnit|ALUSelB[0]~0_combout\,
	datad => \ControlUnit|WideOr7~0_combout\,
	combout => \M5|DataOut[4]~41_combout\);

-- Location: LCCOMB_X82_Y35_N10
\RegFile|rs_mem|s_memory_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X82_Y35_N11
\RegFile|rs_mem|s_memory_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(20));

-- Location: LCCOMB_X82_Y35_N6
\RegFile|rs_mem|s_memory~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~66_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(20) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a4\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(20),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a4\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~66_combout\);

-- Location: FF_X82_Y35_N7
\RegA|DataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~66_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(4));

-- Location: LCCOMB_X87_Y37_N24
\M4|DataOut[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[4]~27_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(4)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|DU_CState~0_combout\,
	datac => \RegA|DataOut\(4),
	datad => \pcupdate|s_pc\(4),
	combout => \M4|DataOut[4]~27_combout\);

-- Location: LCCOMB_X79_Y37_N6
\RegFile|rt_mem|s_memory_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X79_Y37_N7
\RegFile|rt_mem|s_memory_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(18));

-- Location: LCCOMB_X79_Y37_N26
\RegFile|rt_mem|s_memory~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~67_combout\ = (\RegFile|rt_mem|s_memory_rtl_0_bypass\(18) & (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a3\ & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0_bypass\(18),
	datab => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a3\,
	datad => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~67_combout\);

-- Location: FF_X79_Y37_N27
\RegB|DataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~67_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(3));

-- Location: LCCOMB_X83_Y37_N30
\M5|DataOut[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[3]~57_combout\ = (!\ControlUnit|CS.E1~q\ & (!\ControlUnit|WideOr7~0_combout\ & (\ControlUnit|CS.E0~q\ & \RegB|DataOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|WideOr7~0_combout\,
	datac => \ControlUnit|CS.E0~q\,
	datad => \RegB|DataOut\(3),
	combout => \M5|DataOut[3]~57_combout\);

-- Location: LCCOMB_X79_Y35_N12
\RegFile|rs_mem|s_memory_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X79_Y35_N13
\RegFile|rs_mem|s_memory_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(18));

-- Location: LCCOMB_X79_Y35_N0
\RegFile|rs_mem|s_memory~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~67_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(18) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a3\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(18),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a3\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~67_combout\);

-- Location: FF_X79_Y35_N1
\RegA|DataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~67_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(3));

-- Location: LCCOMB_X87_Y37_N2
\M4|DataOut[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[3]~28_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(3)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(3),
	datac => \pcupdate|s_pc\(3),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[3]~28_combout\);

-- Location: LCCOMB_X86_Y37_N6
\ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_combout\ = (\M5|DataOut[3]~57_combout\ & ((\M4|DataOut[3]~28_combout\ & (\ALU|Add0~7\ & VCC)) # (!\M4|DataOut[3]~28_combout\ & (!\ALU|Add0~7\)))) # (!\M5|DataOut[3]~57_combout\ & ((\M4|DataOut[3]~28_combout\ & (!\ALU|Add0~7\)) # 
-- (!\M4|DataOut[3]~28_combout\ & ((\ALU|Add0~7\) # (GND)))))
-- \ALU|Add0~10\ = CARRY((\M5|DataOut[3]~57_combout\ & (!\M4|DataOut[3]~28_combout\ & !\ALU|Add0~7\)) # (!\M5|DataOut[3]~57_combout\ & ((!\ALU|Add0~7\) # (!\M4|DataOut[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[3]~57_combout\,
	datab => \M4|DataOut[3]~28_combout\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~9_combout\,
	cout => \ALU|Add0~10\);

-- Location: LCCOMB_X86_Y37_N8
\ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = ((\M5|DataOut[4]~41_combout\ $ (\M4|DataOut[4]~27_combout\ $ (!\ALU|Add0~10\)))) # (GND)
-- \ALU|Add0~13\ = CARRY((\M5|DataOut[4]~41_combout\ & ((\M4|DataOut[4]~27_combout\) # (!\ALU|Add0~10\))) # (!\M5|DataOut[4]~41_combout\ & (\M4|DataOut[4]~27_combout\ & !\ALU|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[4]~41_combout\,
	datab => \M4|DataOut[4]~27_combout\,
	datad => VCC,
	cin => \ALU|Add0~10\,
	combout => \ALU|Add0~12_combout\,
	cout => \ALU|Add0~13\);

-- Location: LCCOMB_X86_Y37_N10
\ALU|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~15_combout\ = (\M5|DataOut[5]~56_combout\ & ((\M4|DataOut[5]~26_combout\ & (\ALU|Add0~13\ & VCC)) # (!\M4|DataOut[5]~26_combout\ & (!\ALU|Add0~13\)))) # (!\M5|DataOut[5]~56_combout\ & ((\M4|DataOut[5]~26_combout\ & (!\ALU|Add0~13\)) # 
-- (!\M4|DataOut[5]~26_combout\ & ((\ALU|Add0~13\) # (GND)))))
-- \ALU|Add0~16\ = CARRY((\M5|DataOut[5]~56_combout\ & (!\M4|DataOut[5]~26_combout\ & !\ALU|Add0~13\)) # (!\M5|DataOut[5]~56_combout\ & ((!\ALU|Add0~13\) # (!\M4|DataOut[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[5]~56_combout\,
	datab => \M4|DataOut[5]~26_combout\,
	datad => VCC,
	cin => \ALU|Add0~13\,
	combout => \ALU|Add0~15_combout\,
	cout => \ALU|Add0~16\);

-- Location: LCCOMB_X86_Y37_N12
\ALU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~18_combout\ = ((\M5|DataOut[6]~55_combout\ $ (\M4|DataOut[6]~25_combout\ $ (!\ALU|Add0~16\)))) # (GND)
-- \ALU|Add0~19\ = CARRY((\M5|DataOut[6]~55_combout\ & ((\M4|DataOut[6]~25_combout\) # (!\ALU|Add0~16\))) # (!\M5|DataOut[6]~55_combout\ & (\M4|DataOut[6]~25_combout\ & !\ALU|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[6]~55_combout\,
	datab => \M4|DataOut[6]~25_combout\,
	datad => VCC,
	cin => \ALU|Add0~16\,
	combout => \ALU|Add0~18_combout\,
	cout => \ALU|Add0~19\);

-- Location: LCCOMB_X86_Y33_N24
\ALU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~20_combout\ = (\ALU|Add0~18_combout\ & !\ControlUnit|CS.E8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add0~18_combout\,
	datac => \ControlUnit|CS.E8~q\,
	combout => \ALU|Add0~20_combout\);

-- Location: LCCOMB_X85_Y33_N24
\pcupdate|s_pc~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~64_combout\ = (\pcupdate|s_pc[17]~50_combout\ & ((\pcupdate|s_pc~63_combout\ & (\InstructionRegister|DataOut\(2))) # (!\pcupdate|s_pc~63_combout\ & ((\ALU|Add0~20_combout\))))) # (!\pcupdate|s_pc[17]~50_combout\ & 
-- (((\pcupdate|s_pc~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(2),
	datab => \pcupdate|s_pc[17]~50_combout\,
	datac => \pcupdate|s_pc~63_combout\,
	datad => \ALU|Add0~20_combout\,
	combout => \pcupdate|s_pc~64_combout\);

-- Location: FF_X85_Y33_N25
\pcupdate|s_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~64_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(6));

-- Location: LCCOMB_X79_Y35_N10
\RegFile|rs_mem|s_memory_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X79_Y35_N11
\RegFile|rs_mem|s_memory_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(24));

-- Location: LCCOMB_X79_Y35_N14
\RegFile|rs_mem|s_memory~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~64_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(24) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a6\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(24),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a6\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~64_combout\);

-- Location: FF_X79_Y35_N15
\RegA|DataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~64_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(6));

-- Location: LCCOMB_X85_Y33_N16
\M4|DataOut[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[6]~25_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(6))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(6),
	datac => \RegA|DataOut\(6),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[6]~25_combout\);

-- Location: LCCOMB_X86_Y37_N14
\ALU|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~21_combout\ = (\M4|DataOut[7]~24_combout\ & ((\M5|DataOut[7]~54_combout\ & (\ALU|Add0~19\ & VCC)) # (!\M5|DataOut[7]~54_combout\ & (!\ALU|Add0~19\)))) # (!\M4|DataOut[7]~24_combout\ & ((\M5|DataOut[7]~54_combout\ & (!\ALU|Add0~19\)) # 
-- (!\M5|DataOut[7]~54_combout\ & ((\ALU|Add0~19\) # (GND)))))
-- \ALU|Add0~22\ = CARRY((\M4|DataOut[7]~24_combout\ & (!\M5|DataOut[7]~54_combout\ & !\ALU|Add0~19\)) # (!\M4|DataOut[7]~24_combout\ & ((!\ALU|Add0~19\) # (!\M5|DataOut[7]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[7]~24_combout\,
	datab => \M5|DataOut[7]~54_combout\,
	datad => VCC,
	cin => \ALU|Add0~19\,
	combout => \ALU|Add0~21_combout\,
	cout => \ALU|Add0~22\);

-- Location: LCCOMB_X87_Y37_N10
\ALU|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~23_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~21_combout\,
	combout => \ALU|Add0~23_combout\);

-- Location: LCCOMB_X92_Y33_N24
\pcupdate|s_pc~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~84_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(7))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(7),
	datad => \ALU|Add0~23_combout\,
	combout => \pcupdate|s_pc~84_combout\);

-- Location: FF_X92_Y33_N25
\pcupdate|s_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~84_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(7));

-- Location: LCCOMB_X85_Y33_N14
\M4|DataOut[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[7]~24_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(7)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegA|DataOut\(7),
	datac => \pcupdate|s_pc\(7),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[7]~24_combout\);

-- Location: LCCOMB_X86_Y37_N16
\ALU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~24_combout\ = ((\M5|DataOut[8]~53_combout\ $ (\M4|DataOut[8]~23_combout\ $ (!\ALU|Add0~22\)))) # (GND)
-- \ALU|Add0~25\ = CARRY((\M5|DataOut[8]~53_combout\ & ((\M4|DataOut[8]~23_combout\) # (!\ALU|Add0~22\))) # (!\M5|DataOut[8]~53_combout\ & (\M4|DataOut[8]~23_combout\ & !\ALU|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[8]~53_combout\,
	datab => \M4|DataOut[8]~23_combout\,
	datad => VCC,
	cin => \ALU|Add0~22\,
	combout => \ALU|Add0~24_combout\,
	cout => \ALU|Add0~25\);

-- Location: LCCOMB_X85_Y35_N8
\ALU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~26_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~24_combout\,
	combout => \ALU|Add0~26_combout\);

-- Location: LCCOMB_X85_Y35_N30
\pcupdate|s_pc~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~83_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(8)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ALU|Add0~26_combout\,
	datac => \pcupdate|s_pc\(8),
	datad => \ControlUnit|CS.E11~q\,
	combout => \pcupdate|s_pc~83_combout\);

-- Location: FF_X85_Y35_N31
\pcupdate|s_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~83_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(8));

-- Location: LCCOMB_X79_Y35_N8
\RegFile|rs_mem|s_memory_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X79_Y35_N9
\RegFile|rs_mem|s_memory_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(28));

-- Location: LCCOMB_X79_Y35_N4
\RegFile|rs_mem|s_memory~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~62_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a8\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(28) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a8\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(28),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~62_combout\);

-- Location: FF_X79_Y35_N5
\RegA|DataOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~62_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(8));

-- Location: LCCOMB_X85_Y35_N22
\M4|DataOut[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[8]~23_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(8))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(8),
	datac => \RegA|DataOut\(8),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[8]~23_combout\);

-- Location: LCCOMB_X86_Y37_N18
\ALU|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~27_combout\ = (\M4|DataOut[9]~22_combout\ & ((\M5|DataOut[9]~52_combout\ & (\ALU|Add0~25\ & VCC)) # (!\M5|DataOut[9]~52_combout\ & (!\ALU|Add0~25\)))) # (!\M4|DataOut[9]~22_combout\ & ((\M5|DataOut[9]~52_combout\ & (!\ALU|Add0~25\)) # 
-- (!\M5|DataOut[9]~52_combout\ & ((\ALU|Add0~25\) # (GND)))))
-- \ALU|Add0~28\ = CARRY((\M4|DataOut[9]~22_combout\ & (!\M5|DataOut[9]~52_combout\ & !\ALU|Add0~25\)) # (!\M4|DataOut[9]~22_combout\ & ((!\ALU|Add0~25\) # (!\M5|DataOut[9]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[9]~22_combout\,
	datab => \M5|DataOut[9]~52_combout\,
	datad => VCC,
	cin => \ALU|Add0~25\,
	combout => \ALU|Add0~27_combout\,
	cout => \ALU|Add0~28\);

-- Location: LCCOMB_X85_Y35_N12
\ALU|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~29_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~27_combout\,
	combout => \ALU|Add0~29_combout\);

-- Location: LCCOMB_X85_Y35_N28
\pcupdate|s_pc~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~82_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(9))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(9),
	datad => \ALU|Add0~29_combout\,
	combout => \pcupdate|s_pc~82_combout\);

-- Location: FF_X85_Y35_N29
\pcupdate|s_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~82_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(9));

-- Location: LCCOMB_X79_Y35_N22
\RegFile|rs_mem|s_memory_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X79_Y35_N23
\RegFile|rs_mem|s_memory_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(30));

-- Location: LCCOMB_X79_Y35_N26
\RegFile|rs_mem|s_memory~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~61_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a9\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(30) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a9\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(30),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~61_combout\);

-- Location: FF_X79_Y35_N27
\RegA|DataOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~61_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(9));

-- Location: LCCOMB_X85_Y35_N4
\M4|DataOut[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[9]~22_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(9))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|DU_CState~0_combout\,
	datab => \pcupdate|s_pc\(9),
	datad => \RegA|DataOut\(9),
	combout => \M4|DataOut[9]~22_combout\);

-- Location: LCCOMB_X86_Y37_N20
\ALU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~30_combout\ = ((\M5|DataOut[10]~51_combout\ $ (\M4|DataOut[10]~21_combout\ $ (!\ALU|Add0~28\)))) # (GND)
-- \ALU|Add0~31\ = CARRY((\M5|DataOut[10]~51_combout\ & ((\M4|DataOut[10]~21_combout\) # (!\ALU|Add0~28\))) # (!\M5|DataOut[10]~51_combout\ & (\M4|DataOut[10]~21_combout\ & !\ALU|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[10]~51_combout\,
	datab => \M4|DataOut[10]~21_combout\,
	datad => VCC,
	cin => \ALU|Add0~28\,
	combout => \ALU|Add0~30_combout\,
	cout => \ALU|Add0~31\);

-- Location: LCCOMB_X85_Y35_N0
\ALU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~32_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~30_combout\,
	combout => \ALU|Add0~32_combout\);

-- Location: LCCOMB_X85_Y35_N10
\pcupdate|s_pc~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~81_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(10))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(10),
	datad => \ALU|Add0~32_combout\,
	combout => \pcupdate|s_pc~81_combout\);

-- Location: FF_X85_Y35_N11
\pcupdate|s_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~81_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(10));

-- Location: LCCOMB_X79_Y35_N20
\RegFile|rs_mem|s_memory_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X79_Y35_N21
\RegFile|rs_mem|s_memory_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(32));

-- Location: LCCOMB_X79_Y35_N24
\RegFile|rs_mem|s_memory~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~60_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(32) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a10\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(32),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a10\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~60_combout\);

-- Location: FF_X79_Y35_N25
\RegA|DataOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~60_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(10));

-- Location: LCCOMB_X85_Y35_N18
\M4|DataOut[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[10]~21_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(10))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(10),
	datab => \RegA|DataOut\(10),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[10]~21_combout\);

-- Location: LCCOMB_X86_Y37_N22
\ALU|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~33_combout\ = (\M5|DataOut[11]~50_combout\ & ((\M4|DataOut[11]~20_combout\ & (\ALU|Add0~31\ & VCC)) # (!\M4|DataOut[11]~20_combout\ & (!\ALU|Add0~31\)))) # (!\M5|DataOut[11]~50_combout\ & ((\M4|DataOut[11]~20_combout\ & (!\ALU|Add0~31\)) # 
-- (!\M4|DataOut[11]~20_combout\ & ((\ALU|Add0~31\) # (GND)))))
-- \ALU|Add0~34\ = CARRY((\M5|DataOut[11]~50_combout\ & (!\M4|DataOut[11]~20_combout\ & !\ALU|Add0~31\)) # (!\M5|DataOut[11]~50_combout\ & ((!\ALU|Add0~31\) # (!\M4|DataOut[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[11]~50_combout\,
	datab => \M4|DataOut[11]~20_combout\,
	datad => VCC,
	cin => \ALU|Add0~31\,
	combout => \ALU|Add0~33_combout\,
	cout => \ALU|Add0~34\);

-- Location: LCCOMB_X85_Y35_N20
\ALU|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~35_combout\ = (\ALU|Add0~33_combout\ & !\ControlUnit|CS.E8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add0~33_combout\,
	datac => \ControlUnit|CS.E8~q\,
	combout => \ALU|Add0~35_combout\);

-- Location: LCCOMB_X85_Y35_N16
\pcupdate|s_pc~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~80_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(11))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(11),
	datad => \ALU|Add0~35_combout\,
	combout => \pcupdate|s_pc~80_combout\);

-- Location: FF_X85_Y35_N17
\pcupdate|s_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~80_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(11));

-- Location: LCCOMB_X85_Y35_N24
\M4|DataOut[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[11]~20_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(11)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|DU_CState~0_combout\,
	datab => \RegA|DataOut\(11),
	datad => \pcupdate|s_pc\(11),
	combout => \M4|DataOut[11]~20_combout\);

-- Location: LCCOMB_X86_Y37_N24
\ALU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~36_combout\ = ((\M5|DataOut[12]~49_combout\ $ (\M4|DataOut[12]~19_combout\ $ (!\ALU|Add0~34\)))) # (GND)
-- \ALU|Add0~37\ = CARRY((\M5|DataOut[12]~49_combout\ & ((\M4|DataOut[12]~19_combout\) # (!\ALU|Add0~34\))) # (!\M5|DataOut[12]~49_combout\ & (\M4|DataOut[12]~19_combout\ & !\ALU|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[12]~49_combout\,
	datab => \M4|DataOut[12]~19_combout\,
	datad => VCC,
	cin => \ALU|Add0~34\,
	combout => \ALU|Add0~36_combout\,
	cout => \ALU|Add0~37\);

-- Location: LCCOMB_X87_Y36_N8
\ALU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~38_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~36_combout\,
	combout => \ALU|Add0~38_combout\);

-- Location: LCCOMB_X88_Y36_N30
\pcupdate|s_pc~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~79_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(12))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(12),
	datad => \ALU|Add0~38_combout\,
	combout => \pcupdate|s_pc~79_combout\);

-- Location: FF_X88_Y36_N31
\pcupdate|s_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~79_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(12));

-- Location: LCCOMB_X79_Y35_N2
\RegFile|rs_mem|s_memory_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X79_Y35_N3
\RegFile|rs_mem|s_memory_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(36));

-- Location: LCCOMB_X79_Y36_N22
\RegFile|rs_mem|s_memory~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~58_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(36) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a12\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(36),
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a12\,
	datac => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~58_combout\);

-- Location: FF_X79_Y36_N23
\RegA|DataOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~58_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(12));

-- Location: LCCOMB_X88_Y36_N8
\M4|DataOut[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[12]~19_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(12))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|DU_CState~0_combout\,
	datac => \pcupdate|s_pc\(12),
	datad => \RegA|DataOut\(12),
	combout => \M4|DataOut[12]~19_combout\);

-- Location: LCCOMB_X86_Y37_N26
\ALU|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~39_combout\ = (\M5|DataOut[13]~48_combout\ & ((\M4|DataOut[13]~18_combout\ & (\ALU|Add0~37\ & VCC)) # (!\M4|DataOut[13]~18_combout\ & (!\ALU|Add0~37\)))) # (!\M5|DataOut[13]~48_combout\ & ((\M4|DataOut[13]~18_combout\ & (!\ALU|Add0~37\)) # 
-- (!\M4|DataOut[13]~18_combout\ & ((\ALU|Add0~37\) # (GND)))))
-- \ALU|Add0~40\ = CARRY((\M5|DataOut[13]~48_combout\ & (!\M4|DataOut[13]~18_combout\ & !\ALU|Add0~37\)) # (!\M5|DataOut[13]~48_combout\ & ((!\ALU|Add0~37\) # (!\M4|DataOut[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[13]~48_combout\,
	datab => \M4|DataOut[13]~18_combout\,
	datad => VCC,
	cin => \ALU|Add0~37\,
	combout => \ALU|Add0~39_combout\,
	cout => \ALU|Add0~40\);

-- Location: LCCOMB_X87_Y37_N28
\ALU|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~41_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~39_combout\,
	combout => \ALU|Add0~41_combout\);

-- Location: LCCOMB_X88_Y36_N12
\pcupdate|s_pc~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~78_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(13)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ALU|Add0~41_combout\,
	datac => \pcupdate|s_pc\(13),
	datad => \ControlUnit|CS.E11~q\,
	combout => \pcupdate|s_pc~78_combout\);

-- Location: FF_X88_Y36_N13
\pcupdate|s_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~78_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(13));

-- Location: LCCOMB_X88_Y36_N6
\M4|DataOut[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[13]~18_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(13)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|DU_CState~0_combout\,
	datac => \RegA|DataOut\(13),
	datad => \pcupdate|s_pc\(13),
	combout => \M4|DataOut[13]~18_combout\);

-- Location: LCCOMB_X86_Y37_N28
\ALU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~42_combout\ = ((\M4|DataOut[14]~17_combout\ $ (\M5|DataOut[14]~47_combout\ $ (!\ALU|Add0~40\)))) # (GND)
-- \ALU|Add0~43\ = CARRY((\M4|DataOut[14]~17_combout\ & ((\M5|DataOut[14]~47_combout\) # (!\ALU|Add0~40\))) # (!\M4|DataOut[14]~17_combout\ & (\M5|DataOut[14]~47_combout\ & !\ALU|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[14]~17_combout\,
	datab => \M5|DataOut[14]~47_combout\,
	datad => VCC,
	cin => \ALU|Add0~40\,
	combout => \ALU|Add0~42_combout\,
	cout => \ALU|Add0~43\);

-- Location: LCCOMB_X87_Y37_N6
\ALU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~44_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~42_combout\,
	combout => \ALU|Add0~44_combout\);

-- Location: LCCOMB_X88_Y36_N10
\pcupdate|s_pc~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~77_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(14))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(14),
	datad => \ALU|Add0~44_combout\,
	combout => \pcupdate|s_pc~77_combout\);

-- Location: FF_X88_Y36_N11
\pcupdate|s_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~77_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(14));

-- Location: LCCOMB_X88_Y36_N4
\M4|DataOut[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[14]~17_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(14)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(14),
	datab => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(14),
	combout => \M4|DataOut[14]~17_combout\);

-- Location: LCCOMB_X86_Y37_N30
\ALU|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~45_combout\ = (\M4|DataOut[15]~16_combout\ & ((\M5|DataOut[15]~46_combout\ & (\ALU|Add0~43\ & VCC)) # (!\M5|DataOut[15]~46_combout\ & (!\ALU|Add0~43\)))) # (!\M4|DataOut[15]~16_combout\ & ((\M5|DataOut[15]~46_combout\ & (!\ALU|Add0~43\)) # 
-- (!\M5|DataOut[15]~46_combout\ & ((\ALU|Add0~43\) # (GND)))))
-- \ALU|Add0~46\ = CARRY((\M4|DataOut[15]~16_combout\ & (!\M5|DataOut[15]~46_combout\ & !\ALU|Add0~43\)) # (!\M4|DataOut[15]~16_combout\ & ((!\ALU|Add0~43\) # (!\M5|DataOut[15]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[15]~16_combout\,
	datab => \M5|DataOut[15]~46_combout\,
	datad => VCC,
	cin => \ALU|Add0~43\,
	combout => \ALU|Add0~45_combout\,
	cout => \ALU|Add0~46\);

-- Location: LCCOMB_X87_Y37_N16
\ALU|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~47_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~45_combout\,
	combout => \ALU|Add0~47_combout\);

-- Location: LCCOMB_X88_Y36_N0
\pcupdate|s_pc~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~76_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(15)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ALU|Add0~47_combout\,
	datac => \pcupdate|s_pc\(15),
	datad => \ControlUnit|CS.E11~q\,
	combout => \pcupdate|s_pc~76_combout\);

-- Location: FF_X88_Y36_N1
\pcupdate|s_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~76_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(15));

-- Location: LCCOMB_X88_Y36_N26
\M4|DataOut[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[15]~16_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(15)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(15),
	datab => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(15),
	combout => \M4|DataOut[15]~16_combout\);

-- Location: LCCOMB_X86_Y36_N0
\ALU|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~48_combout\ = ((\M4|DataOut[16]~15_combout\ $ (\M5|DataOut[16]~45_combout\ $ (!\ALU|Add0~46\)))) # (GND)
-- \ALU|Add0~49\ = CARRY((\M4|DataOut[16]~15_combout\ & ((\M5|DataOut[16]~45_combout\) # (!\ALU|Add0~46\))) # (!\M4|DataOut[16]~15_combout\ & (\M5|DataOut[16]~45_combout\ & !\ALU|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[16]~15_combout\,
	datab => \M5|DataOut[16]~45_combout\,
	datad => VCC,
	cin => \ALU|Add0~46\,
	combout => \ALU|Add0~48_combout\,
	cout => \ALU|Add0~49\);

-- Location: LCCOMB_X83_Y36_N22
\ALU|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~50_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~48_combout\,
	combout => \ALU|Add0~50_combout\);

-- Location: LCCOMB_X83_Y36_N30
\pcupdate|s_pc~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~75_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(16)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~50_combout\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(16),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~75_combout\);

-- Location: FF_X83_Y36_N31
\pcupdate|s_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~75_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(16));

-- Location: LCCOMB_X79_Y36_N6
\RegFile|rs_mem|s_memory_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X79_Y36_N7
\RegFile|rs_mem|s_memory_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(44));

-- Location: LCCOMB_X82_Y34_N2
\RegFile|rs_mem|s_memory_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[43]~feeder_combout\ = \DataRegister|DataOut\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataRegister|DataOut\(16),
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X82_Y34_N3
\RegFile|rs_mem|s_memory_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(43));

-- Location: LCCOMB_X79_Y36_N28
\RegFile|rs_mem|s_memory~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~54_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(44) & ((\RegFile|rs_mem|s_memory~38_combout\ & ((\RegFile|rs_mem|s_memory_rtl_0_bypass\(43)))) # (!\RegFile|rs_mem|s_memory~38_combout\ & 
-- (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a16\)))) # (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(44) & (((\RegFile|rs_mem|s_memory_rtl_0_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(44),
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a16\,
	datac => \RegFile|rs_mem|s_memory~38_combout\,
	datad => \RegFile|rs_mem|s_memory_rtl_0_bypass\(43),
	combout => \RegFile|rs_mem|s_memory~54_combout\);

-- Location: FF_X79_Y36_N29
\RegA|DataOut[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~54_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(16));

-- Location: LCCOMB_X83_Y36_N28
\M4|DataOut[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[16]~15_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(16))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(16),
	datac => \RegA|DataOut\(16),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[16]~15_combout\);

-- Location: LCCOMB_X86_Y36_N2
\ALU|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~51_combout\ = (\M4|DataOut[17]~14_combout\ & ((\M5|DataOut[17]~40_combout\ & (\ALU|Add0~49\ & VCC)) # (!\M5|DataOut[17]~40_combout\ & (!\ALU|Add0~49\)))) # (!\M4|DataOut[17]~14_combout\ & ((\M5|DataOut[17]~40_combout\ & (!\ALU|Add0~49\)) # 
-- (!\M5|DataOut[17]~40_combout\ & ((\ALU|Add0~49\) # (GND)))))
-- \ALU|Add0~52\ = CARRY((\M4|DataOut[17]~14_combout\ & (!\M5|DataOut[17]~40_combout\ & !\ALU|Add0~49\)) # (!\M4|DataOut[17]~14_combout\ & ((!\ALU|Add0~49\) # (!\M5|DataOut[17]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[17]~14_combout\,
	datab => \M5|DataOut[17]~40_combout\,
	datad => VCC,
	cin => \ALU|Add0~49\,
	combout => \ALU|Add0~51_combout\,
	cout => \ALU|Add0~52\);

-- Location: LCCOMB_X83_Y36_N4
\ALU|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~53_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~51_combout\,
	combout => \ALU|Add0~53_combout\);

-- Location: LCCOMB_X83_Y36_N12
\pcupdate|s_pc~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~74_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(17)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~53_combout\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(17),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~74_combout\);

-- Location: FF_X83_Y36_N13
\pcupdate|s_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~74_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(17));

-- Location: LCCOMB_X84_Y36_N4
\RegFile|rs_mem|s_memory_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X84_Y36_N5
\RegFile|rs_mem|s_memory_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(46));

-- Location: LCCOMB_X84_Y36_N30
\RegFile|rs_mem|s_memory~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~53_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(46) & (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a17\ & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(46),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a17\,
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~53_combout\);

-- Location: FF_X84_Y36_N31
\RegA|DataOut[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~53_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(17));

-- Location: LCCOMB_X84_Y36_N12
\M4|DataOut[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[17]~14_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(17))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(17),
	datac => \RegA|DataOut\(17),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[17]~14_combout\);

-- Location: LCCOMB_X86_Y36_N4
\ALU|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~54_combout\ = ((\M5|DataOut[18]~39_combout\ $ (\M4|DataOut[18]~13_combout\ $ (!\ALU|Add0~52\)))) # (GND)
-- \ALU|Add0~55\ = CARRY((\M5|DataOut[18]~39_combout\ & ((\M4|DataOut[18]~13_combout\) # (!\ALU|Add0~52\))) # (!\M5|DataOut[18]~39_combout\ & (\M4|DataOut[18]~13_combout\ & !\ALU|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[18]~39_combout\,
	datab => \M4|DataOut[18]~13_combout\,
	datad => VCC,
	cin => \ALU|Add0~52\,
	combout => \ALU|Add0~54_combout\,
	cout => \ALU|Add0~55\);

-- Location: LCCOMB_X83_Y36_N16
\ALU|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~56_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~54_combout\,
	combout => \ALU|Add0~56_combout\);

-- Location: LCCOMB_X83_Y36_N26
\pcupdate|s_pc~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~73_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(18)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~56_combout\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(18),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~73_combout\);

-- Location: FF_X83_Y36_N27
\pcupdate|s_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~73_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(18));

-- Location: LCCOMB_X83_Y36_N18
\M4|DataOut[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[18]~13_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(18)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegA|DataOut\(18),
	datac => \pcupdate|s_pc\(18),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[18]~13_combout\);

-- Location: LCCOMB_X86_Y36_N6
\ALU|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~57_combout\ = (\M4|DataOut[19]~12_combout\ & ((\M5|DataOut[19]~38_combout\ & (\ALU|Add0~55\ & VCC)) # (!\M5|DataOut[19]~38_combout\ & (!\ALU|Add0~55\)))) # (!\M4|DataOut[19]~12_combout\ & ((\M5|DataOut[19]~38_combout\ & (!\ALU|Add0~55\)) # 
-- (!\M5|DataOut[19]~38_combout\ & ((\ALU|Add0~55\) # (GND)))))
-- \ALU|Add0~58\ = CARRY((\M4|DataOut[19]~12_combout\ & (!\M5|DataOut[19]~38_combout\ & !\ALU|Add0~55\)) # (!\M4|DataOut[19]~12_combout\ & ((!\ALU|Add0~55\) # (!\M5|DataOut[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[19]~12_combout\,
	datab => \M5|DataOut[19]~38_combout\,
	datad => VCC,
	cin => \ALU|Add0~55\,
	combout => \ALU|Add0~57_combout\,
	cout => \ALU|Add0~58\);

-- Location: LCCOMB_X83_Y36_N20
\ALU|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~59_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~57_combout\,
	combout => \ALU|Add0~59_combout\);

-- Location: LCCOMB_X83_Y36_N0
\pcupdate|s_pc~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~72_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(19)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~59_combout\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(19),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~72_combout\);

-- Location: FF_X83_Y36_N1
\pcupdate|s_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~72_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(19));

-- Location: LCCOMB_X81_Y36_N0
\RegFile|rs_mem|s_memory_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X81_Y36_N1
\RegFile|rs_mem|s_memory_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(50));

-- Location: LCCOMB_X81_Y36_N10
\RegFile|rs_mem|s_memory~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~51_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a19\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(50) & !\RegFile|rs_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a19\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(50),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~51_combout\);

-- Location: FF_X81_Y36_N11
\RegA|DataOut[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~51_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(19));

-- Location: LCCOMB_X84_Y36_N10
\M4|DataOut[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[19]~12_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(19))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(19),
	datac => \RegA|DataOut\(19),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[19]~12_combout\);

-- Location: LCCOMB_X86_Y36_N8
\ALU|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~60_combout\ = ((\M4|DataOut[20]~11_combout\ $ (\M5|DataOut[20]~37_combout\ $ (!\ALU|Add0~58\)))) # (GND)
-- \ALU|Add0~61\ = CARRY((\M4|DataOut[20]~11_combout\ & ((\M5|DataOut[20]~37_combout\) # (!\ALU|Add0~58\))) # (!\M4|DataOut[20]~11_combout\ & (\M5|DataOut[20]~37_combout\ & !\ALU|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[20]~11_combout\,
	datab => \M5|DataOut[20]~37_combout\,
	datad => VCC,
	cin => \ALU|Add0~58\,
	combout => \ALU|Add0~60_combout\,
	cout => \ALU|Add0~61\);

-- Location: LCCOMB_X86_Y32_N0
\ALU|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~62_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~60_combout\,
	combout => \ALU|Add0~62_combout\);

-- Location: LCCOMB_X85_Y33_N6
\pcupdate|s_pc~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~62_combout\ = (\pcupdate|s_pc~61_combout\ & (((\InstructionRegister|DataOut\(16))) # (!\pcupdate|s_pc[17]~50_combout\))) # (!\pcupdate|s_pc~61_combout\ & (\pcupdate|s_pc[17]~50_combout\ & (\ALU|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc~61_combout\,
	datab => \pcupdate|s_pc[17]~50_combout\,
	datac => \ALU|Add0~62_combout\,
	datad => \InstructionRegister|DataOut\(16),
	combout => \pcupdate|s_pc~62_combout\);

-- Location: FF_X85_Y33_N7
\pcupdate|s_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~62_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(20));

-- Location: LCCOMB_X84_Y36_N24
\M4|DataOut[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[20]~11_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(20)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegA|DataOut\(20),
	datac => \pcupdate|s_pc\(20),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[20]~11_combout\);

-- Location: LCCOMB_X86_Y36_N10
\ALU|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~63_combout\ = (\M4|DataOut[21]~10_combout\ & ((\M5|DataOut[21]~36_combout\ & (\ALU|Add0~61\ & VCC)) # (!\M5|DataOut[21]~36_combout\ & (!\ALU|Add0~61\)))) # (!\M4|DataOut[21]~10_combout\ & ((\M5|DataOut[21]~36_combout\ & (!\ALU|Add0~61\)) # 
-- (!\M5|DataOut[21]~36_combout\ & ((\ALU|Add0~61\) # (GND)))))
-- \ALU|Add0~64\ = CARRY((\M4|DataOut[21]~10_combout\ & (!\M5|DataOut[21]~36_combout\ & !\ALU|Add0~61\)) # (!\M4|DataOut[21]~10_combout\ & ((!\ALU|Add0~61\) # (!\M5|DataOut[21]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[21]~10_combout\,
	datab => \M5|DataOut[21]~36_combout\,
	datad => VCC,
	cin => \ALU|Add0~61\,
	combout => \ALU|Add0~63_combout\,
	cout => \ALU|Add0~64\);

-- Location: LCCOMB_X87_Y36_N10
\ALU|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~65_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~63_combout\,
	combout => \ALU|Add0~65_combout\);

-- Location: LCCOMB_X87_Y36_N2
\pcupdate|s_pc~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~71_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(21))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(21),
	datad => \ALU|Add0~65_combout\,
	combout => \pcupdate|s_pc~71_combout\);

-- Location: FF_X87_Y36_N3
\pcupdate|s_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~71_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(21));

-- Location: LCCOMB_X81_Y36_N12
\RegFile|rs_mem|s_memory_rtl_0_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[53]~feeder_combout\ = \DataRegister|DataOut\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataRegister|DataOut\(21),
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[53]~feeder_combout\);

-- Location: FF_X81_Y36_N13
\RegFile|rs_mem|s_memory_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(53));

-- Location: LCCOMB_X81_Y36_N22
\RegFile|rs_mem|s_memory_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X81_Y36_N23
\RegFile|rs_mem|s_memory_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(54));

-- Location: LCCOMB_X81_Y36_N8
\RegFile|rs_mem|s_memory~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~49_combout\ = (\RegFile|rs_mem|s_memory_rtl_0_bypass\(54) & ((\RegFile|rs_mem|s_memory~38_combout\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(53))) # (!\RegFile|rs_mem|s_memory~38_combout\ & 
-- ((\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a21\))))) # (!\RegFile|rs_mem|s_memory_rtl_0_bypass\(54) & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0_bypass\(53),
	datab => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a21\,
	datac => \RegFile|rs_mem|s_memory_rtl_0_bypass\(54),
	datad => \RegFile|rs_mem|s_memory~38_combout\,
	combout => \RegFile|rs_mem|s_memory~49_combout\);

-- Location: FF_X81_Y36_N9
\RegA|DataOut[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~49_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(21));

-- Location: LCCOMB_X88_Y36_N24
\M4|DataOut[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[21]~10_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(21))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc\(21),
	datac => \RegA|DataOut\(21),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[21]~10_combout\);

-- Location: LCCOMB_X86_Y36_N12
\ALU|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~66_combout\ = ((\M5|DataOut[22]~35_combout\ $ (\M4|DataOut[22]~9_combout\ $ (!\ALU|Add0~64\)))) # (GND)
-- \ALU|Add0~67\ = CARRY((\M5|DataOut[22]~35_combout\ & ((\M4|DataOut[22]~9_combout\) # (!\ALU|Add0~64\))) # (!\M5|DataOut[22]~35_combout\ & (\M4|DataOut[22]~9_combout\ & !\ALU|Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[22]~35_combout\,
	datab => \M4|DataOut[22]~9_combout\,
	datad => VCC,
	cin => \ALU|Add0~64\,
	combout => \ALU|Add0~66_combout\,
	cout => \ALU|Add0~67\);

-- Location: LCCOMB_X87_Y36_N6
\ALU|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~68_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~66_combout\,
	combout => \ALU|Add0~68_combout\);

-- Location: LCCOMB_X87_Y36_N16
\pcupdate|s_pc~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~70_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(22))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(22),
	datad => \ALU|Add0~68_combout\,
	combout => \pcupdate|s_pc~70_combout\);

-- Location: FF_X87_Y36_N17
\pcupdate|s_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~70_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(22));

-- Location: LCCOMB_X84_Y36_N14
\M4|DataOut[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[22]~9_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(22)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|DU_CState~0_combout\,
	datab => \RegA|DataOut\(22),
	datad => \pcupdate|s_pc\(22),
	combout => \M4|DataOut[22]~9_combout\);

-- Location: LCCOMB_X86_Y36_N14
\ALU|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~69_combout\ = (\M5|DataOut[23]~34_combout\ & ((\M4|DataOut[23]~8_combout\ & (\ALU|Add0~67\ & VCC)) # (!\M4|DataOut[23]~8_combout\ & (!\ALU|Add0~67\)))) # (!\M5|DataOut[23]~34_combout\ & ((\M4|DataOut[23]~8_combout\ & (!\ALU|Add0~67\)) # 
-- (!\M4|DataOut[23]~8_combout\ & ((\ALU|Add0~67\) # (GND)))))
-- \ALU|Add0~70\ = CARRY((\M5|DataOut[23]~34_combout\ & (!\M4|DataOut[23]~8_combout\ & !\ALU|Add0~67\)) # (!\M5|DataOut[23]~34_combout\ & ((!\ALU|Add0~67\) # (!\M4|DataOut[23]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[23]~34_combout\,
	datab => \M4|DataOut[23]~8_combout\,
	datad => VCC,
	cin => \ALU|Add0~67\,
	combout => \ALU|Add0~69_combout\,
	cout => \ALU|Add0~70\);

-- Location: LCCOMB_X86_Y32_N16
\ALU|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~71_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~69_combout\,
	combout => \ALU|Add0~71_combout\);

-- Location: LCCOMB_X87_Y36_N30
\pcupdate|s_pc~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~69_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(23))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(23),
	datad => \ALU|Add0~71_combout\,
	combout => \pcupdate|s_pc~69_combout\);

-- Location: FF_X87_Y36_N31
\pcupdate|s_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~69_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(23));

-- Location: LCCOMB_X79_Y36_N10
\RegFile|rs_mem|s_memory_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X79_Y36_N11
\RegFile|rs_mem|s_memory_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(58));

-- Location: LCCOMB_X79_Y36_N0
\RegFile|rs_mem|s_memory~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~47_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a23\ & (!\RegFile|rs_mem|s_memory~38_combout\ & \RegFile|rs_mem|s_memory_rtl_0_bypass\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a23\,
	datac => \RegFile|rs_mem|s_memory~38_combout\,
	datad => \RegFile|rs_mem|s_memory_rtl_0_bypass\(58),
	combout => \RegFile|rs_mem|s_memory~47_combout\);

-- Location: FF_X79_Y36_N1
\RegA|DataOut[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~47_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(23));

-- Location: LCCOMB_X87_Y36_N14
\M4|DataOut[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[23]~8_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(23))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(23),
	datac => \RegA|DataOut\(23),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[23]~8_combout\);

-- Location: LCCOMB_X86_Y36_N16
\ALU|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~72_combout\ = ((\M5|DataOut[24]~33_combout\ $ (\M4|DataOut[24]~7_combout\ $ (!\ALU|Add0~70\)))) # (GND)
-- \ALU|Add0~73\ = CARRY((\M5|DataOut[24]~33_combout\ & ((\M4|DataOut[24]~7_combout\) # (!\ALU|Add0~70\))) # (!\M5|DataOut[24]~33_combout\ & (\M4|DataOut[24]~7_combout\ & !\ALU|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[24]~33_combout\,
	datab => \M4|DataOut[24]~7_combout\,
	datad => VCC,
	cin => \ALU|Add0~70\,
	combout => \ALU|Add0~72_combout\,
	cout => \ALU|Add0~73\);

-- Location: LCCOMB_X87_Y36_N0
\ALU|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~74_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~72_combout\,
	combout => \ALU|Add0~74_combout\);

-- Location: LCCOMB_X87_Y36_N28
\pcupdate|s_pc~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~68_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(24))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(24),
	datad => \ALU|Add0~74_combout\,
	combout => \pcupdate|s_pc~68_combout\);

-- Location: FF_X87_Y36_N29
\pcupdate|s_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~68_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(24));

-- Location: LCCOMB_X87_Y36_N4
\M4|DataOut[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[24]~7_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(24)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|DU_CState~0_combout\,
	datac => \RegA|DataOut\(24),
	datad => \pcupdate|s_pc\(24),
	combout => \M4|DataOut[24]~7_combout\);

-- Location: LCCOMB_X86_Y36_N18
\ALU|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~75_combout\ = (\M4|DataOut[25]~6_combout\ & ((\M5|DataOut[25]~32_combout\ & (\ALU|Add0~73\ & VCC)) # (!\M5|DataOut[25]~32_combout\ & (!\ALU|Add0~73\)))) # (!\M4|DataOut[25]~6_combout\ & ((\M5|DataOut[25]~32_combout\ & (!\ALU|Add0~73\)) # 
-- (!\M5|DataOut[25]~32_combout\ & ((\ALU|Add0~73\) # (GND)))))
-- \ALU|Add0~76\ = CARRY((\M4|DataOut[25]~6_combout\ & (!\M5|DataOut[25]~32_combout\ & !\ALU|Add0~73\)) # (!\M4|DataOut[25]~6_combout\ & ((!\ALU|Add0~73\) # (!\M5|DataOut[25]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[25]~6_combout\,
	datab => \M5|DataOut[25]~32_combout\,
	datad => VCC,
	cin => \ALU|Add0~73\,
	combout => \ALU|Add0~75_combout\,
	cout => \ALU|Add0~76\);

-- Location: LCCOMB_X86_Y32_N10
\ALU|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~77_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~75_combout\,
	combout => \ALU|Add0~77_combout\);

-- Location: LCCOMB_X85_Y33_N0
\pcupdate|s_pc~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~59_combout\ = (\ControlUnit|CS.E11~q\) # ((\pcupdate|s_pc\(25) & \ControlUnit|CS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(25),
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~59_combout\);

-- Location: LCCOMB_X85_Y33_N12
\pcupdate|s_pc~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~60_combout\ = (\pcupdate|s_pc~59_combout\ & (((\InstructionRegister|DataOut\(21)) # (!\pcupdate|s_pc[17]~50_combout\)))) # (!\pcupdate|s_pc~59_combout\ & (\ALU|Add0~77_combout\ & ((\pcupdate|s_pc[17]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~77_combout\,
	datab => \pcupdate|s_pc~59_combout\,
	datac => \InstructionRegister|DataOut\(21),
	datad => \pcupdate|s_pc[17]~50_combout\,
	combout => \pcupdate|s_pc~60_combout\);

-- Location: FF_X85_Y33_N13
\pcupdate|s_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~60_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(25));

-- Location: LCCOMB_X85_Y33_N4
\M4|DataOut[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[25]~6_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(25)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(25),
	datac => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(25),
	combout => \M4|DataOut[25]~6_combout\);

-- Location: LCCOMB_X86_Y36_N20
\ALU|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~78_combout\ = ((\M4|DataOut[26]~5_combout\ $ (\M5|DataOut[26]~31_combout\ $ (!\ALU|Add0~76\)))) # (GND)
-- \ALU|Add0~79\ = CARRY((\M4|DataOut[26]~5_combout\ & ((\M5|DataOut[26]~31_combout\) # (!\ALU|Add0~76\))) # (!\M4|DataOut[26]~5_combout\ & (\M5|DataOut[26]~31_combout\ & !\ALU|Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[26]~5_combout\,
	datab => \M5|DataOut[26]~31_combout\,
	datad => VCC,
	cin => \ALU|Add0~76\,
	combout => \ALU|Add0~78_combout\,
	cout => \ALU|Add0~79\);

-- Location: LCCOMB_X87_Y37_N26
\ALU|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~80_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~78_combout\,
	combout => \ALU|Add0~80_combout\);

-- Location: LCCOMB_X87_Y36_N26
\pcupdate|s_pc~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~67_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(26)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ALU|Add0~80_combout\,
	datac => \pcupdate|s_pc\(26),
	datad => \ControlUnit|CS.E11~q\,
	combout => \pcupdate|s_pc~67_combout\);

-- Location: FF_X87_Y36_N27
\pcupdate|s_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~67_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(26));

-- Location: LCCOMB_X83_Y35_N0
\M4|DataOut[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[26]~5_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(26)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(26),
	datac => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(26),
	combout => \M4|DataOut[26]~5_combout\);

-- Location: LCCOMB_X86_Y36_N22
\ALU|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~81_combout\ = (\M4|DataOut[27]~4_combout\ & ((\M5|DataOut[27]~30_combout\ & (\ALU|Add0~79\ & VCC)) # (!\M5|DataOut[27]~30_combout\ & (!\ALU|Add0~79\)))) # (!\M4|DataOut[27]~4_combout\ & ((\M5|DataOut[27]~30_combout\ & (!\ALU|Add0~79\)) # 
-- (!\M5|DataOut[27]~30_combout\ & ((\ALU|Add0~79\) # (GND)))))
-- \ALU|Add0~82\ = CARRY((\M4|DataOut[27]~4_combout\ & (!\M5|DataOut[27]~30_combout\ & !\ALU|Add0~79\)) # (!\M4|DataOut[27]~4_combout\ & ((!\ALU|Add0~79\) # (!\M5|DataOut[27]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[27]~4_combout\,
	datab => \M5|DataOut[27]~30_combout\,
	datad => VCC,
	cin => \ALU|Add0~79\,
	combout => \ALU|Add0~81_combout\,
	cout => \ALU|Add0~82\);

-- Location: LCCOMB_X87_Y36_N20
\ALU|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~83_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~81_combout\,
	combout => \ALU|Add0~83_combout\);

-- Location: LCCOMB_X87_Y36_N24
\pcupdate|s_pc~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~66_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(27))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(27),
	datad => \ALU|Add0~83_combout\,
	combout => \pcupdate|s_pc~66_combout\);

-- Location: FF_X87_Y36_N25
\pcupdate|s_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~66_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(27));

-- Location: LCCOMB_X82_Y36_N8
\M4|DataOut[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[27]~4_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(27)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegA|DataOut\(27),
	datac => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(27),
	combout => \M4|DataOut[27]~4_combout\);

-- Location: LCCOMB_X86_Y36_N24
\ALU|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~84_combout\ = ((\M4|DataOut[28]~3_combout\ $ (\M5|DataOut[28]~29_combout\ $ (!\ALU|Add0~82\)))) # (GND)
-- \ALU|Add0~85\ = CARRY((\M4|DataOut[28]~3_combout\ & ((\M5|DataOut[28]~29_combout\) # (!\ALU|Add0~82\))) # (!\M4|DataOut[28]~3_combout\ & (\M5|DataOut[28]~29_combout\ & !\ALU|Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[28]~3_combout\,
	datab => \M5|DataOut[28]~29_combout\,
	datad => VCC,
	cin => \ALU|Add0~82\,
	combout => \ALU|Add0~84_combout\,
	cout => \ALU|Add0~85\);

-- Location: LCCOMB_X83_Y33_N24
\ALU|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~86_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~84_combout\,
	combout => \ALU|Add0~86_combout\);

-- Location: LCCOMB_X85_Y33_N20
\ALUOut|DataOut[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOut|DataOut[28]~feeder_combout\ = \ALU|Add0~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU|Add0~86_combout\,
	combout => \ALUOut|DataOut[28]~feeder_combout\);

-- Location: FF_X85_Y33_N21
\ALUOut|DataOut[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ALUOut|DataOut[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut|DataOut\(28));

-- Location: LCCOMB_X85_Y33_N30
\pcupdate|s_pc~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~57_combout\ = (!\ControlUnit|CS.E0~q\ & ((\ControlUnit|CS.E11~q\ & ((\ALUOut|DataOut\(28)))) # (!\ControlUnit|CS.E11~q\ & (\ALU|Add0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~86_combout\,
	datab => \ALUOut|DataOut\(28),
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~57_combout\);

-- Location: LCCOMB_X85_Y33_N26
\pcupdate|s_pc~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~58_combout\ = (\pcupdate|s_pc~57_combout\) # ((\pcupdate|s_pc\(28) & \ControlUnit|CS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc~57_combout\,
	datac => \pcupdate|s_pc\(28),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~58_combout\);

-- Location: FF_X85_Y33_N27
\pcupdate|s_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~58_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(28));

-- Location: LCCOMB_X79_Y36_N20
\RegFile|rs_mem|s_memory_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X79_Y36_N21
\RegFile|rs_mem|s_memory_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(68));

-- Location: LCCOMB_X79_Y36_N2
\RegFile|rs_mem|s_memory~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~42_combout\ = (!\RegFile|rs_mem|s_memory~38_combout\ & (\RegFile|rs_mem|s_memory_rtl_0_bypass\(68) & \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory~38_combout\,
	datab => \RegFile|rs_mem|s_memory_rtl_0_bypass\(68),
	datac => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a28\,
	combout => \RegFile|rs_mem|s_memory~42_combout\);

-- Location: FF_X79_Y36_N3
\RegA|DataOut[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~42_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(28));

-- Location: LCCOMB_X85_Y33_N2
\M4|DataOut[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[28]~3_combout\ = (\ControlUnit|DU_CState~0_combout\ & (\pcupdate|s_pc\(28))) # (!\ControlUnit|DU_CState~0_combout\ & ((\RegA|DataOut\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(28),
	datab => \ControlUnit|DU_CState~0_combout\,
	datac => \RegA|DataOut\(28),
	combout => \M4|DataOut[28]~3_combout\);

-- Location: LCCOMB_X86_Y36_N26
\ALU|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~87_combout\ = (\M4|DataOut[29]~2_combout\ & ((\M5|DataOut[29]~28_combout\ & (\ALU|Add0~85\ & VCC)) # (!\M5|DataOut[29]~28_combout\ & (!\ALU|Add0~85\)))) # (!\M4|DataOut[29]~2_combout\ & ((\M5|DataOut[29]~28_combout\ & (!\ALU|Add0~85\)) # 
-- (!\M5|DataOut[29]~28_combout\ & ((\ALU|Add0~85\) # (GND)))))
-- \ALU|Add0~88\ = CARRY((\M4|DataOut[29]~2_combout\ & (!\M5|DataOut[29]~28_combout\ & !\ALU|Add0~85\)) # (!\M4|DataOut[29]~2_combout\ & ((!\ALU|Add0~85\) # (!\M5|DataOut[29]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[29]~2_combout\,
	datab => \M5|DataOut[29]~28_combout\,
	datad => VCC,
	cin => \ALU|Add0~85\,
	combout => \ALU|Add0~87_combout\,
	cout => \ALU|Add0~88\);

-- Location: LCCOMB_X86_Y34_N20
\ALU|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~89_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E8~q\,
	datac => \ALU|Add0~87_combout\,
	combout => \ALU|Add0~89_combout\);

-- Location: FF_X86_Y34_N25
\ALUOut|DataOut[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \ALU|Add0~89_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut|DataOut\(29));

-- Location: LCCOMB_X85_Y34_N28
\pcupdate|s_pc~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~55_combout\ = (!\ControlUnit|CS.E0~q\ & ((\ControlUnit|CS.E11~q\ & ((\ALUOut|DataOut\(29)))) # (!\ControlUnit|CS.E11~q\ & (\ALU|Add0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~89_combout\,
	datab => \ControlUnit|CS.E0~q\,
	datac => \ControlUnit|CS.E11~q\,
	datad => \ALUOut|DataOut\(29),
	combout => \pcupdate|s_pc~55_combout\);

-- Location: LCCOMB_X85_Y33_N8
\pcupdate|s_pc~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~56_combout\ = (\pcupdate|s_pc~55_combout\) # ((\pcupdate|s_pc\(29) & \ControlUnit|CS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdate|s_pc~55_combout\,
	datac => \pcupdate|s_pc\(29),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~56_combout\);

-- Location: FF_X85_Y33_N9
\pcupdate|s_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~56_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(29));

-- Location: LCCOMB_X84_Y36_N20
\M4|DataOut[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[29]~2_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(29)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegA|DataOut\(29),
	datac => \pcupdate|s_pc\(29),
	datad => \ControlUnit|DU_CState~0_combout\,
	combout => \M4|DataOut[29]~2_combout\);

-- Location: LCCOMB_X86_Y36_N28
\ALU|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~90_combout\ = ((\M5|DataOut[30]~27_combout\ $ (\M4|DataOut[30]~1_combout\ $ (!\ALU|Add0~88\)))) # (GND)
-- \ALU|Add0~91\ = CARRY((\M5|DataOut[30]~27_combout\ & ((\M4|DataOut[30]~1_combout\) # (!\ALU|Add0~88\))) # (!\M5|DataOut[30]~27_combout\ & (\M4|DataOut[30]~1_combout\ & !\ALU|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[30]~27_combout\,
	datab => \M4|DataOut[30]~1_combout\,
	datad => VCC,
	cin => \ALU|Add0~88\,
	combout => \ALU|Add0~90_combout\,
	cout => \ALU|Add0~91\);

-- Location: LCCOMB_X87_Y38_N0
\ALU|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~92_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~90_combout\,
	combout => \ALU|Add0~92_combout\);

-- Location: FF_X87_Y38_N1
\ALUOut|DataOut[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ALU|Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut|DataOut\(30));

-- Location: LCCOMB_X87_Y38_N30
\pcupdate|s_pc~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~53_combout\ = (!\ControlUnit|CS.E0~q\ & ((\ControlUnit|CS.E11~q\ & (\ALUOut|DataOut\(30))) # (!\ControlUnit|CS.E11~q\ & ((\ALU|Add0~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ALUOut|DataOut\(30),
	datac => \ALU|Add0~92_combout\,
	datad => \ControlUnit|CS.E11~q\,
	combout => \pcupdate|s_pc~53_combout\);

-- Location: LCCOMB_X87_Y38_N2
\pcupdate|s_pc~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~54_combout\ = (\pcupdate|s_pc~53_combout\) # ((\pcupdate|s_pc\(30) & \ControlUnit|CS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc~53_combout\,
	datac => \pcupdate|s_pc\(30),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~54_combout\);

-- Location: FF_X87_Y38_N3
\pcupdate|s_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~54_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(30));

-- Location: LCCOMB_X84_Y36_N2
\M4|DataOut[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[30]~1_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(30)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|DU_CState~0_combout\,
	datab => \RegA|DataOut\(30),
	datad => \pcupdate|s_pc\(30),
	combout => \M4|DataOut[30]~1_combout\);

-- Location: LCCOMB_X86_Y36_N30
\ALU|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~93_combout\ = \M4|DataOut[31]~0_combout\ $ (\ALU|Add0~91\ $ (\M5|DataOut[31]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[31]~0_combout\,
	datad => \M5|DataOut[31]~26_combout\,
	cin => \ALU|Add0~91\,
	combout => \ALU|Add0~93_combout\);

-- Location: LCCOMB_X87_Y38_N26
\ALU|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~95_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~93_combout\,
	combout => \ALU|Add0~95_combout\);

-- Location: FF_X87_Y38_N27
\ALUOut|DataOut[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ALU|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALUOut|DataOut\(31));

-- Location: LCCOMB_X87_Y38_N12
\pcupdate|s_pc~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~51_combout\ = (\ControlUnit|CS.E11~q\ & (((\ALUOut|DataOut\(31))))) # (!\ControlUnit|CS.E11~q\ & (!\ControlUnit|CS.E8~q\ & ((\ALU|Add0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E8~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \ALUOut|DataOut\(31),
	datad => \ALU|Add0~93_combout\,
	combout => \pcupdate|s_pc~51_combout\);

-- Location: LCCOMB_X87_Y38_N24
\pcupdate|s_pc~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~52_combout\ = (\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(31))) # (!\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datac => \pcupdate|s_pc\(31),
	datad => \pcupdate|s_pc~51_combout\,
	combout => \pcupdate|s_pc~52_combout\);

-- Location: FF_X87_Y38_N25
\pcupdate|s_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~52_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(31));

-- Location: LCCOMB_X83_Y36_N8
\M4|DataOut[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[31]~0_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(31)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegA|DataOut\(31),
	datac => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(31),
	combout => \M4|DataOut[31]~0_combout\);

-- Location: LCCOMB_X85_Y37_N0
\ALU|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~1_cout\ = CARRY((\M5|DataOut[0]~44_combout\ & !\M4|DataOut[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[0]~44_combout\,
	datab => \M4|DataOut[0]~31_combout\,
	datad => VCC,
	cout => \ALU|LessThan0~1_cout\);

-- Location: LCCOMB_X85_Y37_N2
\ALU|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~3_cout\ = CARRY((\M5|DataOut[1]~43_combout\ & (\M4|DataOut[1]~30_combout\ & !\ALU|LessThan0~1_cout\)) # (!\M5|DataOut[1]~43_combout\ & ((\M4|DataOut[1]~30_combout\) # (!\ALU|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[1]~43_combout\,
	datab => \M4|DataOut[1]~30_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~1_cout\,
	cout => \ALU|LessThan0~3_cout\);

-- Location: LCCOMB_X85_Y37_N4
\ALU|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~5_cout\ = CARRY((\M4|DataOut[2]~29_combout\ & (\M5|DataOut[2]~42_combout\ & !\ALU|LessThan0~3_cout\)) # (!\M4|DataOut[2]~29_combout\ & ((\M5|DataOut[2]~42_combout\) # (!\ALU|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[2]~29_combout\,
	datab => \M5|DataOut[2]~42_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~3_cout\,
	cout => \ALU|LessThan0~5_cout\);

-- Location: LCCOMB_X85_Y37_N6
\ALU|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~7_cout\ = CARRY((\M5|DataOut[3]~57_combout\ & (\M4|DataOut[3]~28_combout\ & !\ALU|LessThan0~5_cout\)) # (!\M5|DataOut[3]~57_combout\ & ((\M4|DataOut[3]~28_combout\) # (!\ALU|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[3]~57_combout\,
	datab => \M4|DataOut[3]~28_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~5_cout\,
	cout => \ALU|LessThan0~7_cout\);

-- Location: LCCOMB_X85_Y37_N8
\ALU|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~9_cout\ = CARRY((\M5|DataOut[4]~41_combout\ & ((!\ALU|LessThan0~7_cout\) # (!\M4|DataOut[4]~27_combout\))) # (!\M5|DataOut[4]~41_combout\ & (!\M4|DataOut[4]~27_combout\ & !\ALU|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[4]~41_combout\,
	datab => \M4|DataOut[4]~27_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~7_cout\,
	cout => \ALU|LessThan0~9_cout\);

-- Location: LCCOMB_X85_Y37_N10
\ALU|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~11_cout\ = CARRY((\M5|DataOut[5]~56_combout\ & (\M4|DataOut[5]~26_combout\ & !\ALU|LessThan0~9_cout\)) # (!\M5|DataOut[5]~56_combout\ & ((\M4|DataOut[5]~26_combout\) # (!\ALU|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[5]~56_combout\,
	datab => \M4|DataOut[5]~26_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~9_cout\,
	cout => \ALU|LessThan0~11_cout\);

-- Location: LCCOMB_X85_Y37_N12
\ALU|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~13_cout\ = CARRY((\M5|DataOut[6]~55_combout\ & ((!\ALU|LessThan0~11_cout\) # (!\M4|DataOut[6]~25_combout\))) # (!\M5|DataOut[6]~55_combout\ & (!\M4|DataOut[6]~25_combout\ & !\ALU|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[6]~55_combout\,
	datab => \M4|DataOut[6]~25_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~11_cout\,
	cout => \ALU|LessThan0~13_cout\);

-- Location: LCCOMB_X85_Y37_N14
\ALU|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~15_cout\ = CARRY((\M5|DataOut[7]~54_combout\ & (\M4|DataOut[7]~24_combout\ & !\ALU|LessThan0~13_cout\)) # (!\M5|DataOut[7]~54_combout\ & ((\M4|DataOut[7]~24_combout\) # (!\ALU|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[7]~54_combout\,
	datab => \M4|DataOut[7]~24_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~13_cout\,
	cout => \ALU|LessThan0~15_cout\);

-- Location: LCCOMB_X85_Y37_N16
\ALU|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~17_cout\ = CARRY((\M5|DataOut[8]~53_combout\ & ((!\ALU|LessThan0~15_cout\) # (!\M4|DataOut[8]~23_combout\))) # (!\M5|DataOut[8]~53_combout\ & (!\M4|DataOut[8]~23_combout\ & !\ALU|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[8]~53_combout\,
	datab => \M4|DataOut[8]~23_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~15_cout\,
	cout => \ALU|LessThan0~17_cout\);

-- Location: LCCOMB_X85_Y37_N18
\ALU|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~19_cout\ = CARRY((\M4|DataOut[9]~22_combout\ & ((!\ALU|LessThan0~17_cout\) # (!\M5|DataOut[9]~52_combout\))) # (!\M4|DataOut[9]~22_combout\ & (!\M5|DataOut[9]~52_combout\ & !\ALU|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[9]~22_combout\,
	datab => \M5|DataOut[9]~52_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~17_cout\,
	cout => \ALU|LessThan0~19_cout\);

-- Location: LCCOMB_X85_Y37_N20
\ALU|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~21_cout\ = CARRY((\M5|DataOut[10]~51_combout\ & ((!\ALU|LessThan0~19_cout\) # (!\M4|DataOut[10]~21_combout\))) # (!\M5|DataOut[10]~51_combout\ & (!\M4|DataOut[10]~21_combout\ & !\ALU|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[10]~51_combout\,
	datab => \M4|DataOut[10]~21_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~19_cout\,
	cout => \ALU|LessThan0~21_cout\);

-- Location: LCCOMB_X85_Y37_N22
\ALU|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~23_cout\ = CARRY((\M5|DataOut[11]~50_combout\ & (\M4|DataOut[11]~20_combout\ & !\ALU|LessThan0~21_cout\)) # (!\M5|DataOut[11]~50_combout\ & ((\M4|DataOut[11]~20_combout\) # (!\ALU|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[11]~50_combout\,
	datab => \M4|DataOut[11]~20_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~21_cout\,
	cout => \ALU|LessThan0~23_cout\);

-- Location: LCCOMB_X85_Y37_N24
\ALU|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~25_cout\ = CARRY((\M5|DataOut[12]~49_combout\ & ((!\ALU|LessThan0~23_cout\) # (!\M4|DataOut[12]~19_combout\))) # (!\M5|DataOut[12]~49_combout\ & (!\M4|DataOut[12]~19_combout\ & !\ALU|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[12]~49_combout\,
	datab => \M4|DataOut[12]~19_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~23_cout\,
	cout => \ALU|LessThan0~25_cout\);

-- Location: LCCOMB_X85_Y37_N26
\ALU|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~27_cout\ = CARRY((\M4|DataOut[13]~18_combout\ & ((!\ALU|LessThan0~25_cout\) # (!\M5|DataOut[13]~48_combout\))) # (!\M4|DataOut[13]~18_combout\ & (!\M5|DataOut[13]~48_combout\ & !\ALU|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[13]~18_combout\,
	datab => \M5|DataOut[13]~48_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~25_cout\,
	cout => \ALU|LessThan0~27_cout\);

-- Location: LCCOMB_X85_Y37_N28
\ALU|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~29_cout\ = CARRY((\M5|DataOut[14]~47_combout\ & ((!\ALU|LessThan0~27_cout\) # (!\M4|DataOut[14]~17_combout\))) # (!\M5|DataOut[14]~47_combout\ & (!\M4|DataOut[14]~17_combout\ & !\ALU|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[14]~47_combout\,
	datab => \M4|DataOut[14]~17_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~27_cout\,
	cout => \ALU|LessThan0~29_cout\);

-- Location: LCCOMB_X85_Y37_N30
\ALU|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~31_cout\ = CARRY((\M5|DataOut[15]~46_combout\ & (\M4|DataOut[15]~16_combout\ & !\ALU|LessThan0~29_cout\)) # (!\M5|DataOut[15]~46_combout\ & ((\M4|DataOut[15]~16_combout\) # (!\ALU|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[15]~46_combout\,
	datab => \M4|DataOut[15]~16_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~29_cout\,
	cout => \ALU|LessThan0~31_cout\);

-- Location: LCCOMB_X85_Y36_N0
\ALU|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~33_cout\ = CARRY((\M5|DataOut[16]~45_combout\ & ((!\ALU|LessThan0~31_cout\) # (!\M4|DataOut[16]~15_combout\))) # (!\M5|DataOut[16]~45_combout\ & (!\M4|DataOut[16]~15_combout\ & !\ALU|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[16]~45_combout\,
	datab => \M4|DataOut[16]~15_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~31_cout\,
	cout => \ALU|LessThan0~33_cout\);

-- Location: LCCOMB_X85_Y36_N2
\ALU|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~35_cout\ = CARRY((\M4|DataOut[17]~14_combout\ & ((!\ALU|LessThan0~33_cout\) # (!\M5|DataOut[17]~40_combout\))) # (!\M4|DataOut[17]~14_combout\ & (!\M5|DataOut[17]~40_combout\ & !\ALU|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[17]~14_combout\,
	datab => \M5|DataOut[17]~40_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~33_cout\,
	cout => \ALU|LessThan0~35_cout\);

-- Location: LCCOMB_X85_Y36_N4
\ALU|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~37_cout\ = CARRY((\M5|DataOut[18]~39_combout\ & ((!\ALU|LessThan0~35_cout\) # (!\M4|DataOut[18]~13_combout\))) # (!\M5|DataOut[18]~39_combout\ & (!\M4|DataOut[18]~13_combout\ & !\ALU|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[18]~39_combout\,
	datab => \M4|DataOut[18]~13_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~35_cout\,
	cout => \ALU|LessThan0~37_cout\);

-- Location: LCCOMB_X85_Y36_N6
\ALU|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~39_cout\ = CARRY((\M5|DataOut[19]~38_combout\ & (\M4|DataOut[19]~12_combout\ & !\ALU|LessThan0~37_cout\)) # (!\M5|DataOut[19]~38_combout\ & ((\M4|DataOut[19]~12_combout\) # (!\ALU|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[19]~38_combout\,
	datab => \M4|DataOut[19]~12_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~37_cout\,
	cout => \ALU|LessThan0~39_cout\);

-- Location: LCCOMB_X85_Y36_N8
\ALU|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~41_cout\ = CARRY((\M5|DataOut[20]~37_combout\ & ((!\ALU|LessThan0~39_cout\) # (!\M4|DataOut[20]~11_combout\))) # (!\M5|DataOut[20]~37_combout\ & (!\M4|DataOut[20]~11_combout\ & !\ALU|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[20]~37_combout\,
	datab => \M4|DataOut[20]~11_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~39_cout\,
	cout => \ALU|LessThan0~41_cout\);

-- Location: LCCOMB_X85_Y36_N10
\ALU|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~43_cout\ = CARRY((\M5|DataOut[21]~36_combout\ & (\M4|DataOut[21]~10_combout\ & !\ALU|LessThan0~41_cout\)) # (!\M5|DataOut[21]~36_combout\ & ((\M4|DataOut[21]~10_combout\) # (!\ALU|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[21]~36_combout\,
	datab => \M4|DataOut[21]~10_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~41_cout\,
	cout => \ALU|LessThan0~43_cout\);

-- Location: LCCOMB_X85_Y36_N12
\ALU|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~45_cout\ = CARRY((\M4|DataOut[22]~9_combout\ & (\M5|DataOut[22]~35_combout\ & !\ALU|LessThan0~43_cout\)) # (!\M4|DataOut[22]~9_combout\ & ((\M5|DataOut[22]~35_combout\) # (!\ALU|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[22]~9_combout\,
	datab => \M5|DataOut[22]~35_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~43_cout\,
	cout => \ALU|LessThan0~45_cout\);

-- Location: LCCOMB_X85_Y36_N14
\ALU|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~47_cout\ = CARRY((\M5|DataOut[23]~34_combout\ & (\M4|DataOut[23]~8_combout\ & !\ALU|LessThan0~45_cout\)) # (!\M5|DataOut[23]~34_combout\ & ((\M4|DataOut[23]~8_combout\) # (!\ALU|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[23]~34_combout\,
	datab => \M4|DataOut[23]~8_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~45_cout\,
	cout => \ALU|LessThan0~47_cout\);

-- Location: LCCOMB_X85_Y36_N16
\ALU|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~49_cout\ = CARRY((\M5|DataOut[24]~33_combout\ & ((!\ALU|LessThan0~47_cout\) # (!\M4|DataOut[24]~7_combout\))) # (!\M5|DataOut[24]~33_combout\ & (!\M4|DataOut[24]~7_combout\ & !\ALU|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[24]~33_combout\,
	datab => \M4|DataOut[24]~7_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~47_cout\,
	cout => \ALU|LessThan0~49_cout\);

-- Location: LCCOMB_X85_Y36_N18
\ALU|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~51_cout\ = CARRY((\M4|DataOut[25]~6_combout\ & ((!\ALU|LessThan0~49_cout\) # (!\M5|DataOut[25]~32_combout\))) # (!\M4|DataOut[25]~6_combout\ & (!\M5|DataOut[25]~32_combout\ & !\ALU|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[25]~6_combout\,
	datab => \M5|DataOut[25]~32_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~49_cout\,
	cout => \ALU|LessThan0~51_cout\);

-- Location: LCCOMB_X85_Y36_N20
\ALU|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~53_cout\ = CARRY((\M5|DataOut[26]~31_combout\ & ((!\ALU|LessThan0~51_cout\) # (!\M4|DataOut[26]~5_combout\))) # (!\M5|DataOut[26]~31_combout\ & (!\M4|DataOut[26]~5_combout\ & !\ALU|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[26]~31_combout\,
	datab => \M4|DataOut[26]~5_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~51_cout\,
	cout => \ALU|LessThan0~53_cout\);

-- Location: LCCOMB_X85_Y36_N22
\ALU|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~55_cout\ = CARRY((\M4|DataOut[27]~4_combout\ & ((!\ALU|LessThan0~53_cout\) # (!\M5|DataOut[27]~30_combout\))) # (!\M4|DataOut[27]~4_combout\ & (!\M5|DataOut[27]~30_combout\ & !\ALU|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M4|DataOut[27]~4_combout\,
	datab => \M5|DataOut[27]~30_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~53_cout\,
	cout => \ALU|LessThan0~55_cout\);

-- Location: LCCOMB_X85_Y36_N24
\ALU|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~57_cout\ = CARRY((\M5|DataOut[28]~29_combout\ & ((!\ALU|LessThan0~55_cout\) # (!\M4|DataOut[28]~3_combout\))) # (!\M5|DataOut[28]~29_combout\ & (!\M4|DataOut[28]~3_combout\ & !\ALU|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[28]~29_combout\,
	datab => \M4|DataOut[28]~3_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~55_cout\,
	cout => \ALU|LessThan0~57_cout\);

-- Location: LCCOMB_X85_Y36_N26
\ALU|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~59_cout\ = CARRY((\M5|DataOut[29]~28_combout\ & (\M4|DataOut[29]~2_combout\ & !\ALU|LessThan0~57_cout\)) # (!\M5|DataOut[29]~28_combout\ & ((\M4|DataOut[29]~2_combout\) # (!\ALU|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[29]~28_combout\,
	datab => \M4|DataOut[29]~2_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~57_cout\,
	cout => \ALU|LessThan0~59_cout\);

-- Location: LCCOMB_X85_Y36_N28
\ALU|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~61_cout\ = CARRY((\M5|DataOut[30]~27_combout\ & ((!\ALU|LessThan0~59_cout\) # (!\M4|DataOut[30]~1_combout\))) # (!\M5|DataOut[30]~27_combout\ & (!\M4|DataOut[30]~1_combout\ & !\ALU|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M5|DataOut[30]~27_combout\,
	datab => \M4|DataOut[30]~1_combout\,
	datad => VCC,
	cin => \ALU|LessThan0~59_cout\,
	cout => \ALU|LessThan0~61_cout\);

-- Location: LCCOMB_X85_Y36_N30
\ALU|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|LessThan0~62_combout\ = (\M4|DataOut[31]~0_combout\ & ((\ALU|LessThan0~61_cout\) # (!\M5|DataOut[31]~26_combout\))) # (!\M4|DataOut[31]~0_combout\ & (\ALU|LessThan0~61_cout\ & !\M5|DataOut[31]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M4|DataOut[31]~0_combout\,
	datad => \M5|DataOut[31]~26_combout\,
	cin => \ALU|LessThan0~61_cout\,
	combout => \ALU|LessThan0~62_combout\);

-- Location: LCCOMB_X88_Y37_N16
\ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_combout\ = (\ControlUnit|CS.E8~q\ & (\ALU|LessThan0~62_combout\)) # (!\ControlUnit|CS.E8~q\ & ((\ALU|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E8~q\,
	datac => \ALU|LessThan0~62_combout\,
	datad => \ALU|Add0~0_combout\,
	combout => \ALU|Add0~2_combout\);

-- Location: LCCOMB_X89_Y34_N8
\pcupdate|s_pc~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~65_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(0))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(0),
	datad => \ALU|Add0~2_combout\,
	combout => \pcupdate|s_pc~65_combout\);

-- Location: FF_X89_Y34_N9
\pcupdate|s_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~65_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(0));

-- Location: LCCOMB_X87_Y35_N18
\Ram|s_memory~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~87feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~87feeder_combout\);

-- Location: FF_X87_Y35_N19
\Ram|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~87feeder_combout\,
	ena => \Ram|s_memory~2103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~87_q\);

-- Location: LCCOMB_X86_Y35_N8
\Ram|s_memory~2114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2114_combout\ = (\pcupdate|s_pc\(1) & (((\pcupdate|s_pc\(0))))) # (!\pcupdate|s_pc\(1) & ((\pcupdate|s_pc\(0) & ((\Ram|s_memory~87_q\))) # (!\pcupdate|s_pc\(0) & (\Ram|s_memory~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(1),
	datab => \Ram|s_memory~55_q\,
	datac => \pcupdate|s_pc\(0),
	datad => \Ram|s_memory~87_q\,
	combout => \Ram|s_memory~2114_combout\);

-- Location: LCCOMB_X86_Y35_N6
\Ram|s_memory~119feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~119feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~119feeder_combout\);

-- Location: FF_X86_Y35_N7
\Ram|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~119feeder_combout\,
	ena => \Ram|s_memory~2105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~119_q\);

-- Location: LCCOMB_X86_Y35_N10
\Ram|s_memory~2115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2115_combout\ = (\Ram|s_memory~2100_combout\ & (!\Ram|s_memory~2114_combout\ & ((!\Ram|s_memory~119_q\) # (!\pcupdate|s_pc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~2100_combout\,
	datab => \Ram|s_memory~2114_combout\,
	datac => \pcupdate|s_pc\(1),
	datad => \Ram|s_memory~119_q\,
	combout => \Ram|s_memory~2115_combout\);

-- Location: FF_X85_Y38_N13
\InstructionRegister|DataOut[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2115_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstructionRegister|DataOut\(16));

-- Location: LCCOMB_X85_Y38_N24
\M2|DataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \M2|DataOut[0]~0_combout\ = (!\ControlUnit|CS.E7~q\ & \InstructionRegister|DataOut\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E7~q\,
	datad => \InstructionRegister|DataOut\(16),
	combout => \M2|DataOut[0]~0_combout\);

-- Location: LCCOMB_X82_Y36_N10
\RegFile|rs_mem|s_memory_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rs_mem|s_memory_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X82_Y36_N11
\RegFile|rs_mem|s_memory_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rs_mem|s_memory_rtl_0_bypass\(14));

-- Location: LCCOMB_X82_Y36_N12
\RegFile|rs_mem|s_memory~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rs_mem|s_memory~69_combout\ = (\RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a1\ & (!\RegFile|rs_mem|s_memory~38_combout\ & \RegFile|rs_mem|s_memory_rtl_0_bypass\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rs_mem|s_memory_rtl_0|auto_generated|ram_block1a1\,
	datac => \RegFile|rs_mem|s_memory~38_combout\,
	datad => \RegFile|rs_mem|s_memory_rtl_0_bypass\(14),
	combout => \RegFile|rs_mem|s_memory~69_combout\);

-- Location: FF_X82_Y36_N13
\RegA|DataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rs_mem|s_memory~69_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|DataOut\(1));

-- Location: LCCOMB_X83_Y37_N8
\M4|DataOut[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \M4|DataOut[1]~30_combout\ = (\ControlUnit|DU_CState~0_combout\ & ((\pcupdate|s_pc\(1)))) # (!\ControlUnit|DU_CState~0_combout\ & (\RegA|DataOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|DataOut\(1),
	datab => \ControlUnit|DU_CState~0_combout\,
	datad => \pcupdate|s_pc\(1),
	combout => \M4|DataOut[1]~30_combout\);

-- Location: LCCOMB_X88_Y37_N20
\ALU|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~5_combout\ = (\ALU|Add0~3_combout\ & !\ControlUnit|CS.E8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add0~3_combout\,
	datac => \ControlUnit|CS.E8~q\,
	combout => \ALU|Add0~5_combout\);

-- Location: LCCOMB_X89_Y34_N6
\pcupdate|s_pc~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~89_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & ((\pcupdate|s_pc\(1)))) # (!\ControlUnit|CS.E0~q\ & (\ALU|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~5_combout\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(1),
	datad => \ControlUnit|CS.E0~q\,
	combout => \pcupdate|s_pc~89_combout\);

-- Location: FF_X89_Y34_N7
\pcupdate|s_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~89_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(1));

-- Location: LCCOMB_X87_Y34_N10
\Ram|s_memory~2109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2109_combout\ = (\Ram|s_memory~2108_combout\ & ((\pcupdate|s_pc\(1) & ((!\Ram|s_memory~130_q\))) # (!\pcupdate|s_pc\(1) & (!\Ram|s_memory~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~66_q\,
	datab => \Ram|s_memory~130_q\,
	datac => \Ram|s_memory~2108_combout\,
	datad => \pcupdate|s_pc\(1),
	combout => \Ram|s_memory~2109_combout\);

-- Location: FF_X86_Y34_N11
\InstructionRegister|DataOut[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2109_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstructionRegister|DataOut\(27));

-- Location: LCCOMB_X86_Y34_N8
\ControlUnit|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector2~0_combout\ = (\InstructionRegister|DataOut\(26) & (((!\InstructionRegister|DataOut\(27)) # (!\InstructionRegister|DataOut\(31))))) # (!\InstructionRegister|DataOut\(26) & (((\InstructionRegister|DataOut\(31)) # 
-- (\InstructionRegister|DataOut\(27))) # (!\InstructionRegister|DataOut\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(26),
	datab => \InstructionRegister|DataOut\(29),
	datac => \InstructionRegister|DataOut\(31),
	datad => \InstructionRegister|DataOut\(27),
	combout => \ControlUnit|Selector2~0_combout\);

-- Location: LCCOMB_X85_Y34_N10
\ControlUnit|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector2~1_combout\ = (\ControlUnit|Selector2~0_combout\ & (((\ControlUnit|CS.E2~q\)))) # (!\ControlUnit|Selector2~0_combout\ & (\ControlUnit|CS.E1~q\ & ((!\ControlUnit|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|Selector2~0_combout\,
	datac => \ControlUnit|CS.E2~q\,
	datad => \ControlUnit|Equal0~0_combout\,
	combout => \ControlUnit|Selector2~1_combout\);

-- Location: FF_X85_Y34_N11
\ControlUnit|CS.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|Selector2~1_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E2~q\);

-- Location: LCCOMB_X85_Y34_N26
\ControlUnit|CS~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~44_combout\ = (\ControlUnit|CS.E2~q\ & (\ControlUnit|Equal1~0_combout\ & (\KEY[1]~input_o\ & \InstructionRegister|DataOut\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E2~q\,
	datab => \ControlUnit|Equal1~0_combout\,
	datac => \KEY[1]~input_o\,
	datad => \InstructionRegister|DataOut\(29),
	combout => \ControlUnit|CS~44_combout\);

-- Location: FF_X85_Y34_N27
\ControlUnit|CS.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E5~q\);

-- Location: LCCOMB_X89_Y34_N12
\Ram|s_memory~2106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2106_combout\ = (!\pcupdate|s_pc\(1) & (!\pcupdate|s_pc\(2) & (!\pcupdate|s_pc\(3) & !\pcupdate|s_pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(1),
	datab => \pcupdate|s_pc\(2),
	datac => \pcupdate|s_pc\(3),
	datad => \pcupdate|s_pc\(0),
	combout => \Ram|s_memory~2106_combout\);

-- Location: LCCOMB_X89_Y34_N30
\Ram|s_memory~2107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2107_combout\ = (!\pcupdate|s_pc\(4) & (\ControlUnit|CS.E5~q\ & (!\pcupdate|s_pc\(5) & \Ram|s_memory~2106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(4),
	datab => \ControlUnit|CS.E5~q\,
	datac => \pcupdate|s_pc\(5),
	datad => \Ram|s_memory~2106_combout\,
	combout => \Ram|s_memory~2107_combout\);

-- Location: FF_X88_Y34_N7
\Ram|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~70feeder_combout\,
	ena => \Ram|s_memory~2107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~70_q\);

-- Location: LCCOMB_X87_Y34_N12
\Ram|s_memory~134feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~134feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~134feeder_combout\);

-- Location: FF_X87_Y34_N13
\Ram|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~134feeder_combout\,
	ena => \Ram|s_memory~2105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~134_q\);

-- Location: LCCOMB_X87_Y34_N20
\Ram|s_memory~2113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2113_combout\ = (\Ram|s_memory~2108_combout\ & ((\pcupdate|s_pc\(1) & ((!\Ram|s_memory~134_q\))) # (!\pcupdate|s_pc\(1) & (!\Ram|s_memory~70_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~70_q\,
	datab => \Ram|s_memory~134_q\,
	datac => \Ram|s_memory~2108_combout\,
	datad => \pcupdate|s_pc\(1),
	combout => \Ram|s_memory~2113_combout\);

-- Location: FF_X86_Y34_N9
\InstructionRegister|DataOut[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2113_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstructionRegister|DataOut\(31));

-- Location: LCCOMB_X85_Y34_N14
\ControlUnit|CS~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~29_combout\ = (\ControlUnit|CS.E1~q\ & (\KEY[1]~input_o\ & !\InstructionRegister|DataOut\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E1~q\,
	datac => \KEY[1]~input_o\,
	datad => \InstructionRegister|DataOut\(31),
	combout => \ControlUnit|CS~29_combout\);

-- Location: LCCOMB_X86_Y34_N16
\ControlUnit|CS~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~47_combout\ = (\ControlUnit|CS~29_combout\ & (\InstructionRegister|DataOut\(29) & (!\InstructionRegister|DataOut\(26) & \InstructionRegister|DataOut\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS~29_combout\,
	datab => \InstructionRegister|DataOut\(29),
	datac => \InstructionRegister|DataOut\(26),
	datad => \InstructionRegister|DataOut\(27),
	combout => \ControlUnit|CS~47_combout\);

-- Location: FF_X86_Y34_N17
\ControlUnit|CS.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E8~q\);

-- Location: LCCOMB_X87_Y37_N8
\ALU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~14_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~12_combout\,
	combout => \ALU|Add0~14_combout\);

-- Location: LCCOMB_X92_Y33_N4
\pcupdate|s_pc~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~86_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(4))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(4),
	datad => \ALU|Add0~14_combout\,
	combout => \pcupdate|s_pc~86_combout\);

-- Location: FF_X92_Y33_N5
\pcupdate|s_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~86_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(4));

-- Location: LCCOMB_X89_Y34_N18
\Ram|s_memory~2100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2100_combout\ = (!\pcupdate|s_pc\(4) & (!\pcupdate|s_pc\(2) & (!\pcupdate|s_pc\(5) & !\pcupdate|s_pc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(4),
	datab => \pcupdate|s_pc\(2),
	datac => \pcupdate|s_pc\(5),
	datad => \pcupdate|s_pc\(3),
	combout => \Ram|s_memory~2100_combout\);

-- Location: LCCOMB_X87_Y34_N22
\Ram|s_memory~2108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2108_combout\ = (\Ram|s_memory~2100_combout\ & !\pcupdate|s_pc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ram|s_memory~2100_combout\,
	datad => \pcupdate|s_pc\(0),
	combout => \Ram|s_memory~2108_combout\);

-- Location: LCCOMB_X87_Y34_N18
\Ram|s_memory~129feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~129feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~129feeder_combout\);

-- Location: FF_X87_Y34_N19
\Ram|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~129feeder_combout\,
	ena => \Ram|s_memory~2105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~129_q\);

-- Location: LCCOMB_X88_Y34_N18
\Ram|s_memory~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~65feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~65feeder_combout\);

-- Location: FF_X88_Y34_N19
\Ram|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~65feeder_combout\,
	ena => \Ram|s_memory~2107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~65_q\);

-- Location: LCCOMB_X87_Y34_N0
\Ram|s_memory~2112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2112_combout\ = (\Ram|s_memory~2108_combout\ & ((\pcupdate|s_pc\(1) & (!\Ram|s_memory~129_q\)) # (!\pcupdate|s_pc\(1) & ((!\Ram|s_memory~65_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~2108_combout\,
	datab => \Ram|s_memory~129_q\,
	datac => \Ram|s_memory~65_q\,
	datad => \pcupdate|s_pc\(1),
	combout => \Ram|s_memory~2112_combout\);

-- Location: FF_X86_Y34_N23
\InstructionRegister|DataOut[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2112_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstructionRegister|DataOut\(26));

-- Location: LCCOMB_X86_Y34_N12
\ControlUnit|NS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|NS~12_combout\ = (\InstructionRegister|DataOut\(26) & (\InstructionRegister|DataOut\(31) & ((\InstructionRegister|DataOut\(27))))) # (!\InstructionRegister|DataOut\(26) & (!\InstructionRegister|DataOut\(31) & 
-- ((\InstructionRegister|DataOut\(29)) # (\InstructionRegister|DataOut\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(26),
	datab => \InstructionRegister|DataOut\(31),
	datac => \InstructionRegister|DataOut\(29),
	datad => \InstructionRegister|DataOut\(27),
	combout => \ControlUnit|NS~12_combout\);

-- Location: LCCOMB_X85_Y34_N0
\ControlUnit|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Selector1~0_combout\ = ((!\ControlUnit|NS~12_combout\ & (\ControlUnit|CS.E1~q\ & !\ControlUnit|Equal0~0_combout\))) # (!\ControlUnit|CS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|NS~12_combout\,
	datac => \ControlUnit|CS.E1~q\,
	datad => \ControlUnit|Equal0~0_combout\,
	combout => \ControlUnit|Selector1~0_combout\);

-- Location: FF_X85_Y34_N1
\ControlUnit|CS.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|Selector1~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E1~q\);

-- Location: LCCOMB_X82_Y37_N0
\RegFile|rt_mem|s_memory_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RegFile|rt_mem|s_memory_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X82_Y37_N1
\RegFile|rt_mem|s_memory_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|rt_mem|s_memory_rtl_0_bypass\(22));

-- Location: LCCOMB_X82_Y37_N2
\RegFile|rt_mem|s_memory~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|rt_mem|s_memory~65_combout\ = (\RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a5\ & (\RegFile|rt_mem|s_memory_rtl_0_bypass\(22) & !\RegFile|rt_mem|s_memory~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|rt_mem|s_memory_rtl_0|auto_generated|ram_block1a5\,
	datab => \RegFile|rt_mem|s_memory_rtl_0_bypass\(22),
	datac => \RegFile|rt_mem|s_memory~38_combout\,
	combout => \RegFile|rt_mem|s_memory~65_combout\);

-- Location: FF_X82_Y37_N3
\RegB|DataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \RegFile|rt_mem|s_memory~65_combout\,
	sclr => \InstructionRegister|ALT_INV_DataOut\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|DataOut\(5));

-- Location: LCCOMB_X83_Y37_N12
\M5|DataOut[5]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \M5|DataOut[5]~56_combout\ = (!\ControlUnit|CS.E1~q\ & (\ControlUnit|CS.E0~q\ & (\RegB|DataOut\(5) & !\ControlUnit|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E1~q\,
	datab => \ControlUnit|CS.E0~q\,
	datac => \RegB|DataOut\(5),
	datad => \ControlUnit|WideOr7~0_combout\,
	combout => \M5|DataOut[5]~56_combout\);

-- Location: LCCOMB_X92_Y33_N0
\ALU|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~17_combout\ = (\ALU|Add0~15_combout\ & !\ControlUnit|CS.E8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add0~15_combout\,
	datac => \ControlUnit|CS.E8~q\,
	combout => \ALU|Add0~17_combout\);

-- Location: LCCOMB_X92_Y33_N2
\pcupdate|s_pc~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~85_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(5))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(5),
	datad => \ALU|Add0~17_combout\,
	combout => \pcupdate|s_pc~85_combout\);

-- Location: FF_X92_Y33_N3
\pcupdate|s_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~85_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(5));

-- Location: LCCOMB_X89_Y34_N24
\Ram|s_memory~2104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2104_combout\ = (\pcupdate|s_pc\(1) & (!\pcupdate|s_pc\(2) & (!\pcupdate|s_pc\(3) & !\pcupdate|s_pc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(1),
	datab => \pcupdate|s_pc\(2),
	datac => \pcupdate|s_pc\(3),
	datad => \pcupdate|s_pc\(0),
	combout => \Ram|s_memory~2104_combout\);

-- Location: LCCOMB_X89_Y34_N26
\Ram|s_memory~2105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2105_combout\ = (!\pcupdate|s_pc\(5) & (\Ram|s_memory~2104_combout\ & (!\pcupdate|s_pc\(4) & \ControlUnit|CS.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(5),
	datab => \Ram|s_memory~2104_combout\,
	datac => \pcupdate|s_pc\(4),
	datad => \ControlUnit|CS.E5~q\,
	combout => \Ram|s_memory~2105_combout\);

-- Location: FF_X86_Y35_N23
\Ram|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~132feeder_combout\,
	ena => \Ram|s_memory~2105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~132_q\);

-- Location: LCCOMB_X87_Y35_N6
\Ram|s_memory~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~100feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Ram|s_memory~100feeder_combout\);

-- Location: FF_X87_Y35_N7
\Ram|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \Ram|s_memory~100feeder_combout\,
	ena => \Ram|s_memory~2103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ram|s_memory~100_q\);

-- Location: LCCOMB_X86_Y35_N30
\Ram|s_memory~2110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2110_combout\ = (\pcupdate|s_pc\(0) & (((!\pcupdate|s_pc\(1) & !\Ram|s_memory~100_q\)))) # (!\pcupdate|s_pc\(0) & (!\Ram|s_memory~132_q\ & (\pcupdate|s_pc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~132_q\,
	datab => \pcupdate|s_pc\(0),
	datac => \pcupdate|s_pc\(1),
	datad => \Ram|s_memory~100_q\,
	combout => \Ram|s_memory~2110_combout\);

-- Location: LCCOMB_X86_Y34_N4
\Ram|s_memory~2111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2111_combout\ = (\Ram|s_memory~2110_combout\ & \Ram|s_memory~2100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ram|s_memory~2110_combout\,
	datad => \Ram|s_memory~2100_combout\,
	combout => \Ram|s_memory~2111_combout\);

-- Location: FF_X86_Y34_N13
\InstructionRegister|DataOut[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \Ram|s_memory~2111_combout\,
	sload => VCC,
	ena => \ControlUnit|ALT_INV_CS.E0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstructionRegister|DataOut\(29));

-- Location: LCCOMB_X86_Y34_N24
\ControlUnit|CS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~17_combout\ = (!\InstructionRegister|DataOut\(26) & (!\InstructionRegister|DataOut\(31) & \InstructionRegister|DataOut\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(26),
	datab => \InstructionRegister|DataOut\(31),
	datad => \InstructionRegister|DataOut\(27),
	combout => \ControlUnit|CS~17_combout\);

-- Location: LCCOMB_X85_Y34_N2
\ControlUnit|CS~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~46_combout\ = (!\InstructionRegister|DataOut\(29) & (\ControlUnit|CS.E1~q\ & (\KEY[1]~input_o\ & \ControlUnit|CS~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionRegister|DataOut\(29),
	datab => \ControlUnit|CS.E1~q\,
	datac => \KEY[1]~input_o\,
	datad => \ControlUnit|CS~17_combout\,
	combout => \ControlUnit|CS~46_combout\);

-- Location: FF_X85_Y34_N3
\ControlUnit|CS.E11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E11~q\);

-- Location: LCCOMB_X85_Y38_N2
\ControlUnit|CS~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~39_combout\ = (\ControlUnit|CS.E9~q\) # ((\ControlUnit|CS.E4~q\) # ((\ControlUnit|CS.E5~q\) # (\ControlUnit|CS.E7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E9~q\,
	datab => \ControlUnit|CS.E4~q\,
	datac => \ControlUnit|CS.E5~q\,
	datad => \ControlUnit|CS.E7~q\,
	combout => \ControlUnit|CS~39_combout\);

-- Location: LCCOMB_X85_Y38_N0
\ControlUnit|CS~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|CS~40_combout\ = (!\ControlUnit|CS.E11~q\ & (\KEY[1]~input_o\ & !\ControlUnit|CS~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlUnit|CS.E11~q\,
	datac => \KEY[1]~input_o\,
	datad => \ControlUnit|CS~39_combout\,
	combout => \ControlUnit|CS~40_combout\);

-- Location: FF_X85_Y38_N1
\ControlUnit|CS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \ControlUnit|CS~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlUnit|CS.E0~q\);

-- Location: LCCOMB_X88_Y37_N28
\ALU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~11_combout\ = (!\ControlUnit|CS.E8~q\ & \ALU|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|CS.E8~q\,
	datad => \ALU|Add0~9_combout\,
	combout => \ALU|Add0~11_combout\);

-- Location: LCCOMB_X89_Y34_N10
\pcupdate|s_pc~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdate|s_pc~87_combout\ = (!\ControlUnit|CS.E11~q\ & ((\ControlUnit|CS.E0~q\ & (\pcupdate|s_pc\(3))) # (!\ControlUnit|CS.E0~q\ & ((\ALU|Add0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|CS.E11~q\,
	datac => \pcupdate|s_pc\(3),
	datad => \ALU|Add0~11_combout\,
	combout => \pcupdate|s_pc~87_combout\);

-- Location: FF_X89_Y34_N11
\pcupdate|s_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdate|s_pc~87_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdate|s_pc\(3));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X88_Y37_N30
\displayUnit|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux34~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~11_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(3),
	datab => \ALU|Add0~11_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux34~0_combout\);

-- Location: LCCOMB_X88_Y37_N6
\displayUnit|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux36~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~5_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdate|s_pc\(1),
	datac => \SW[0]~input_o\,
	datad => \ALU|Add0~5_combout\,
	combout => \displayUnit|Mux36~0_combout\);

-- Location: LCCOMB_X88_Y37_N26
\displayUnit|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux37~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~2_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(0),
	datab => \ALU|Add0~2_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux37~0_combout\);

-- Location: LCCOMB_X97_Y37_N2
\displayUnit|s_count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[0]~31_combout\ = \displayUnit|s_count\(0) $ (VCC)
-- \displayUnit|s_count[0]~32\ = CARRY(\displayUnit|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(0),
	datad => VCC,
	combout => \displayUnit|s_count[0]~31_combout\,
	cout => \displayUnit|s_count[0]~32\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X98_Y36_N28
\displayUnit|s_count[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[6]~33_combout\ = (\displayUnit|Equal1~11_combout\) # (\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Equal1~11_combout\,
	datac => \KEY[3]~input_o\,
	combout => \displayUnit|s_count[6]~33_combout\);

-- Location: FF_X97_Y37_N3
\displayUnit|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[0]~31_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(0));

-- Location: LCCOMB_X97_Y37_N4
\displayUnit|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[1]~34_combout\ = (\displayUnit|s_count\(1) & (!\displayUnit|s_count[0]~32\)) # (!\displayUnit|s_count\(1) & ((\displayUnit|s_count[0]~32\) # (GND)))
-- \displayUnit|s_count[1]~35\ = CARRY((!\displayUnit|s_count[0]~32\) # (!\displayUnit|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(1),
	datad => VCC,
	cin => \displayUnit|s_count[0]~32\,
	combout => \displayUnit|s_count[1]~34_combout\,
	cout => \displayUnit|s_count[1]~35\);

-- Location: FF_X97_Y37_N5
\displayUnit|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[1]~34_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(1));

-- Location: LCCOMB_X97_Y37_N6
\displayUnit|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[2]~36_combout\ = (\displayUnit|s_count\(2) & (\displayUnit|s_count[1]~35\ $ (GND))) # (!\displayUnit|s_count\(2) & (!\displayUnit|s_count[1]~35\ & VCC))
-- \displayUnit|s_count[2]~37\ = CARRY((\displayUnit|s_count\(2) & !\displayUnit|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(2),
	datad => VCC,
	cin => \displayUnit|s_count[1]~35\,
	combout => \displayUnit|s_count[2]~36_combout\,
	cout => \displayUnit|s_count[2]~37\);

-- Location: FF_X97_Y37_N7
\displayUnit|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[2]~36_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(2));

-- Location: LCCOMB_X97_Y37_N8
\displayUnit|s_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[3]~38_combout\ = (\displayUnit|s_count\(3) & (!\displayUnit|s_count[2]~37\)) # (!\displayUnit|s_count\(3) & ((\displayUnit|s_count[2]~37\) # (GND)))
-- \displayUnit|s_count[3]~39\ = CARRY((!\displayUnit|s_count[2]~37\) # (!\displayUnit|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(3),
	datad => VCC,
	cin => \displayUnit|s_count[2]~37\,
	combout => \displayUnit|s_count[3]~38_combout\,
	cout => \displayUnit|s_count[3]~39\);

-- Location: FF_X97_Y37_N9
\displayUnit|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[3]~38_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(3));

-- Location: LCCOMB_X97_Y37_N10
\displayUnit|s_count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[4]~40_combout\ = (\displayUnit|s_count\(4) & (\displayUnit|s_count[3]~39\ $ (GND))) # (!\displayUnit|s_count\(4) & (!\displayUnit|s_count[3]~39\ & VCC))
-- \displayUnit|s_count[4]~41\ = CARRY((\displayUnit|s_count\(4) & !\displayUnit|s_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(4),
	datad => VCC,
	cin => \displayUnit|s_count[3]~39\,
	combout => \displayUnit|s_count[4]~40_combout\,
	cout => \displayUnit|s_count[4]~41\);

-- Location: FF_X97_Y37_N11
\displayUnit|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[4]~40_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(4));

-- Location: LCCOMB_X97_Y37_N12
\displayUnit|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[5]~42_combout\ = (\displayUnit|s_count\(5) & (!\displayUnit|s_count[4]~41\)) # (!\displayUnit|s_count\(5) & ((\displayUnit|s_count[4]~41\) # (GND)))
-- \displayUnit|s_count[5]~43\ = CARRY((!\displayUnit|s_count[4]~41\) # (!\displayUnit|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(5),
	datad => VCC,
	cin => \displayUnit|s_count[4]~41\,
	combout => \displayUnit|s_count[5]~42_combout\,
	cout => \displayUnit|s_count[5]~43\);

-- Location: FF_X97_Y37_N13
\displayUnit|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[5]~42_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(5));

-- Location: LCCOMB_X97_Y37_N14
\displayUnit|s_count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[6]~44_combout\ = (\displayUnit|s_count\(6) & (\displayUnit|s_count[5]~43\ $ (GND))) # (!\displayUnit|s_count\(6) & (!\displayUnit|s_count[5]~43\ & VCC))
-- \displayUnit|s_count[6]~45\ = CARRY((\displayUnit|s_count\(6) & !\displayUnit|s_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(6),
	datad => VCC,
	cin => \displayUnit|s_count[5]~43\,
	combout => \displayUnit|s_count[6]~44_combout\,
	cout => \displayUnit|s_count[6]~45\);

-- Location: FF_X97_Y37_N15
\displayUnit|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[6]~44_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(6));

-- Location: LCCOMB_X97_Y37_N16
\displayUnit|s_count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[7]~46_combout\ = (\displayUnit|s_count\(7) & (!\displayUnit|s_count[6]~45\)) # (!\displayUnit|s_count\(7) & ((\displayUnit|s_count[6]~45\) # (GND)))
-- \displayUnit|s_count[7]~47\ = CARRY((!\displayUnit|s_count[6]~45\) # (!\displayUnit|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(7),
	datad => VCC,
	cin => \displayUnit|s_count[6]~45\,
	combout => \displayUnit|s_count[7]~46_combout\,
	cout => \displayUnit|s_count[7]~47\);

-- Location: FF_X97_Y37_N17
\displayUnit|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[7]~46_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(7));

-- Location: LCCOMB_X97_Y37_N18
\displayUnit|s_count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[8]~48_combout\ = (\displayUnit|s_count\(8) & (\displayUnit|s_count[7]~47\ $ (GND))) # (!\displayUnit|s_count\(8) & (!\displayUnit|s_count[7]~47\ & VCC))
-- \displayUnit|s_count[8]~49\ = CARRY((\displayUnit|s_count\(8) & !\displayUnit|s_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(8),
	datad => VCC,
	cin => \displayUnit|s_count[7]~47\,
	combout => \displayUnit|s_count[8]~48_combout\,
	cout => \displayUnit|s_count[8]~49\);

-- Location: FF_X97_Y37_N19
\displayUnit|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[8]~48_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(8));

-- Location: LCCOMB_X97_Y37_N20
\displayUnit|s_count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[9]~50_combout\ = (\displayUnit|s_count\(9) & (!\displayUnit|s_count[8]~49\)) # (!\displayUnit|s_count\(9) & ((\displayUnit|s_count[8]~49\) # (GND)))
-- \displayUnit|s_count[9]~51\ = CARRY((!\displayUnit|s_count[8]~49\) # (!\displayUnit|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(9),
	datad => VCC,
	cin => \displayUnit|s_count[8]~49\,
	combout => \displayUnit|s_count[9]~50_combout\,
	cout => \displayUnit|s_count[9]~51\);

-- Location: FF_X97_Y37_N21
\displayUnit|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[9]~50_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(9));

-- Location: LCCOMB_X97_Y37_N22
\displayUnit|s_count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[10]~52_combout\ = (\displayUnit|s_count\(10) & (\displayUnit|s_count[9]~51\ $ (GND))) # (!\displayUnit|s_count\(10) & (!\displayUnit|s_count[9]~51\ & VCC))
-- \displayUnit|s_count[10]~53\ = CARRY((\displayUnit|s_count\(10) & !\displayUnit|s_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(10),
	datad => VCC,
	cin => \displayUnit|s_count[9]~51\,
	combout => \displayUnit|s_count[10]~52_combout\,
	cout => \displayUnit|s_count[10]~53\);

-- Location: FF_X97_Y37_N23
\displayUnit|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[10]~52_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(10));

-- Location: LCCOMB_X97_Y37_N24
\displayUnit|s_count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[11]~54_combout\ = (\displayUnit|s_count\(11) & (!\displayUnit|s_count[10]~53\)) # (!\displayUnit|s_count\(11) & ((\displayUnit|s_count[10]~53\) # (GND)))
-- \displayUnit|s_count[11]~55\ = CARRY((!\displayUnit|s_count[10]~53\) # (!\displayUnit|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(11),
	datad => VCC,
	cin => \displayUnit|s_count[10]~53\,
	combout => \displayUnit|s_count[11]~54_combout\,
	cout => \displayUnit|s_count[11]~55\);

-- Location: FF_X97_Y37_N25
\displayUnit|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[11]~54_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(11));

-- Location: LCCOMB_X97_Y37_N26
\displayUnit|s_count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[12]~56_combout\ = (\displayUnit|s_count\(12) & (\displayUnit|s_count[11]~55\ $ (GND))) # (!\displayUnit|s_count\(12) & (!\displayUnit|s_count[11]~55\ & VCC))
-- \displayUnit|s_count[12]~57\ = CARRY((\displayUnit|s_count\(12) & !\displayUnit|s_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(12),
	datad => VCC,
	cin => \displayUnit|s_count[11]~55\,
	combout => \displayUnit|s_count[12]~56_combout\,
	cout => \displayUnit|s_count[12]~57\);

-- Location: FF_X97_Y37_N27
\displayUnit|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[12]~56_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(12));

-- Location: LCCOMB_X97_Y37_N28
\displayUnit|s_count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[13]~58_combout\ = (\displayUnit|s_count\(13) & (!\displayUnit|s_count[12]~57\)) # (!\displayUnit|s_count\(13) & ((\displayUnit|s_count[12]~57\) # (GND)))
-- \displayUnit|s_count[13]~59\ = CARRY((!\displayUnit|s_count[12]~57\) # (!\displayUnit|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(13),
	datad => VCC,
	cin => \displayUnit|s_count[12]~57\,
	combout => \displayUnit|s_count[13]~58_combout\,
	cout => \displayUnit|s_count[13]~59\);

-- Location: FF_X97_Y37_N29
\displayUnit|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[13]~58_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(13));

-- Location: LCCOMB_X97_Y37_N30
\displayUnit|s_count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[14]~60_combout\ = (\displayUnit|s_count\(14) & (\displayUnit|s_count[13]~59\ $ (GND))) # (!\displayUnit|s_count\(14) & (!\displayUnit|s_count[13]~59\ & VCC))
-- \displayUnit|s_count[14]~61\ = CARRY((\displayUnit|s_count\(14) & !\displayUnit|s_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(14),
	datad => VCC,
	cin => \displayUnit|s_count[13]~59\,
	combout => \displayUnit|s_count[14]~60_combout\,
	cout => \displayUnit|s_count[14]~61\);

-- Location: FF_X97_Y37_N31
\displayUnit|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[14]~60_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(14));

-- Location: LCCOMB_X97_Y36_N0
\displayUnit|s_count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[15]~62_combout\ = (\displayUnit|s_count\(15) & (!\displayUnit|s_count[14]~61\)) # (!\displayUnit|s_count\(15) & ((\displayUnit|s_count[14]~61\) # (GND)))
-- \displayUnit|s_count[15]~63\ = CARRY((!\displayUnit|s_count[14]~61\) # (!\displayUnit|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(15),
	datad => VCC,
	cin => \displayUnit|s_count[14]~61\,
	combout => \displayUnit|s_count[15]~62_combout\,
	cout => \displayUnit|s_count[15]~63\);

-- Location: FF_X97_Y36_N1
\displayUnit|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[15]~62_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(15));

-- Location: LCCOMB_X97_Y36_N2
\displayUnit|s_count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[16]~64_combout\ = (\displayUnit|s_count\(16) & (\displayUnit|s_count[15]~63\ $ (GND))) # (!\displayUnit|s_count\(16) & (!\displayUnit|s_count[15]~63\ & VCC))
-- \displayUnit|s_count[16]~65\ = CARRY((\displayUnit|s_count\(16) & !\displayUnit|s_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(16),
	datad => VCC,
	cin => \displayUnit|s_count[15]~63\,
	combout => \displayUnit|s_count[16]~64_combout\,
	cout => \displayUnit|s_count[16]~65\);

-- Location: FF_X97_Y36_N3
\displayUnit|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[16]~64_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(16));

-- Location: LCCOMB_X97_Y36_N4
\displayUnit|s_count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[17]~66_combout\ = (\displayUnit|s_count\(17) & (!\displayUnit|s_count[16]~65\)) # (!\displayUnit|s_count\(17) & ((\displayUnit|s_count[16]~65\) # (GND)))
-- \displayUnit|s_count[17]~67\ = CARRY((!\displayUnit|s_count[16]~65\) # (!\displayUnit|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(17),
	datad => VCC,
	cin => \displayUnit|s_count[16]~65\,
	combout => \displayUnit|s_count[17]~66_combout\,
	cout => \displayUnit|s_count[17]~67\);

-- Location: FF_X97_Y36_N5
\displayUnit|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[17]~66_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(17));

-- Location: LCCOMB_X97_Y36_N6
\displayUnit|s_count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[18]~68_combout\ = (\displayUnit|s_count\(18) & (\displayUnit|s_count[17]~67\ $ (GND))) # (!\displayUnit|s_count\(18) & (!\displayUnit|s_count[17]~67\ & VCC))
-- \displayUnit|s_count[18]~69\ = CARRY((\displayUnit|s_count\(18) & !\displayUnit|s_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(18),
	datad => VCC,
	cin => \displayUnit|s_count[17]~67\,
	combout => \displayUnit|s_count[18]~68_combout\,
	cout => \displayUnit|s_count[18]~69\);

-- Location: FF_X97_Y36_N7
\displayUnit|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[18]~68_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(18));

-- Location: LCCOMB_X97_Y36_N8
\displayUnit|s_count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[19]~70_combout\ = (\displayUnit|s_count\(19) & (!\displayUnit|s_count[18]~69\)) # (!\displayUnit|s_count\(19) & ((\displayUnit|s_count[18]~69\) # (GND)))
-- \displayUnit|s_count[19]~71\ = CARRY((!\displayUnit|s_count[18]~69\) # (!\displayUnit|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(19),
	datad => VCC,
	cin => \displayUnit|s_count[18]~69\,
	combout => \displayUnit|s_count[19]~70_combout\,
	cout => \displayUnit|s_count[19]~71\);

-- Location: FF_X97_Y36_N9
\displayUnit|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[19]~70_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(19));

-- Location: LCCOMB_X97_Y36_N10
\displayUnit|s_count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[20]~72_combout\ = (\displayUnit|s_count\(20) & (\displayUnit|s_count[19]~71\ $ (GND))) # (!\displayUnit|s_count\(20) & (!\displayUnit|s_count[19]~71\ & VCC))
-- \displayUnit|s_count[20]~73\ = CARRY((\displayUnit|s_count\(20) & !\displayUnit|s_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(20),
	datad => VCC,
	cin => \displayUnit|s_count[19]~71\,
	combout => \displayUnit|s_count[20]~72_combout\,
	cout => \displayUnit|s_count[20]~73\);

-- Location: FF_X97_Y36_N11
\displayUnit|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[20]~72_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(20));

-- Location: LCCOMB_X97_Y36_N12
\displayUnit|s_count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[21]~74_combout\ = (\displayUnit|s_count\(21) & (!\displayUnit|s_count[20]~73\)) # (!\displayUnit|s_count\(21) & ((\displayUnit|s_count[20]~73\) # (GND)))
-- \displayUnit|s_count[21]~75\ = CARRY((!\displayUnit|s_count[20]~73\) # (!\displayUnit|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(21),
	datad => VCC,
	cin => \displayUnit|s_count[20]~73\,
	combout => \displayUnit|s_count[21]~74_combout\,
	cout => \displayUnit|s_count[21]~75\);

-- Location: FF_X97_Y36_N13
\displayUnit|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[21]~74_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(21));

-- Location: LCCOMB_X97_Y36_N14
\displayUnit|s_count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[22]~76_combout\ = (\displayUnit|s_count\(22) & (\displayUnit|s_count[21]~75\ $ (GND))) # (!\displayUnit|s_count\(22) & (!\displayUnit|s_count[21]~75\ & VCC))
-- \displayUnit|s_count[22]~77\ = CARRY((\displayUnit|s_count\(22) & !\displayUnit|s_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(22),
	datad => VCC,
	cin => \displayUnit|s_count[21]~75\,
	combout => \displayUnit|s_count[22]~76_combout\,
	cout => \displayUnit|s_count[22]~77\);

-- Location: FF_X97_Y36_N15
\displayUnit|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[22]~76_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(22));

-- Location: LCCOMB_X97_Y36_N16
\displayUnit|s_count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[23]~78_combout\ = (\displayUnit|s_count\(23) & (!\displayUnit|s_count[22]~77\)) # (!\displayUnit|s_count\(23) & ((\displayUnit|s_count[22]~77\) # (GND)))
-- \displayUnit|s_count[23]~79\ = CARRY((!\displayUnit|s_count[22]~77\) # (!\displayUnit|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(23),
	datad => VCC,
	cin => \displayUnit|s_count[22]~77\,
	combout => \displayUnit|s_count[23]~78_combout\,
	cout => \displayUnit|s_count[23]~79\);

-- Location: FF_X97_Y36_N17
\displayUnit|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[23]~78_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(23));

-- Location: LCCOMB_X97_Y36_N18
\displayUnit|s_count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[24]~80_combout\ = (\displayUnit|s_count\(24) & (\displayUnit|s_count[23]~79\ $ (GND))) # (!\displayUnit|s_count\(24) & (!\displayUnit|s_count[23]~79\ & VCC))
-- \displayUnit|s_count[24]~81\ = CARRY((\displayUnit|s_count\(24) & !\displayUnit|s_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(24),
	datad => VCC,
	cin => \displayUnit|s_count[23]~79\,
	combout => \displayUnit|s_count[24]~80_combout\,
	cout => \displayUnit|s_count[24]~81\);

-- Location: FF_X97_Y36_N19
\displayUnit|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[24]~80_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(24));

-- Location: LCCOMB_X97_Y36_N20
\displayUnit|s_count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[25]~82_combout\ = (\displayUnit|s_count\(25) & (!\displayUnit|s_count[24]~81\)) # (!\displayUnit|s_count\(25) & ((\displayUnit|s_count[24]~81\) # (GND)))
-- \displayUnit|s_count[25]~83\ = CARRY((!\displayUnit|s_count[24]~81\) # (!\displayUnit|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(25),
	datad => VCC,
	cin => \displayUnit|s_count[24]~81\,
	combout => \displayUnit|s_count[25]~82_combout\,
	cout => \displayUnit|s_count[25]~83\);

-- Location: FF_X97_Y36_N21
\displayUnit|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[25]~82_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(25));

-- Location: LCCOMB_X97_Y36_N22
\displayUnit|s_count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[26]~84_combout\ = (\displayUnit|s_count\(26) & (\displayUnit|s_count[25]~83\ $ (GND))) # (!\displayUnit|s_count\(26) & (!\displayUnit|s_count[25]~83\ & VCC))
-- \displayUnit|s_count[26]~85\ = CARRY((\displayUnit|s_count\(26) & !\displayUnit|s_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(26),
	datad => VCC,
	cin => \displayUnit|s_count[25]~83\,
	combout => \displayUnit|s_count[26]~84_combout\,
	cout => \displayUnit|s_count[26]~85\);

-- Location: FF_X97_Y36_N23
\displayUnit|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[26]~84_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(26));

-- Location: LCCOMB_X97_Y36_N24
\displayUnit|s_count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[27]~86_combout\ = (\displayUnit|s_count\(27) & (!\displayUnit|s_count[26]~85\)) # (!\displayUnit|s_count\(27) & ((\displayUnit|s_count[26]~85\) # (GND)))
-- \displayUnit|s_count[27]~87\ = CARRY((!\displayUnit|s_count[26]~85\) # (!\displayUnit|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(27),
	datad => VCC,
	cin => \displayUnit|s_count[26]~85\,
	combout => \displayUnit|s_count[27]~86_combout\,
	cout => \displayUnit|s_count[27]~87\);

-- Location: FF_X97_Y36_N25
\displayUnit|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[27]~86_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(27));

-- Location: LCCOMB_X97_Y36_N26
\displayUnit|s_count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[28]~88_combout\ = (\displayUnit|s_count\(28) & (\displayUnit|s_count[27]~87\ $ (GND))) # (!\displayUnit|s_count\(28) & (!\displayUnit|s_count[27]~87\ & VCC))
-- \displayUnit|s_count[28]~89\ = CARRY((\displayUnit|s_count\(28) & !\displayUnit|s_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(28),
	datad => VCC,
	cin => \displayUnit|s_count[27]~87\,
	combout => \displayUnit|s_count[28]~88_combout\,
	cout => \displayUnit|s_count[28]~89\);

-- Location: FF_X97_Y36_N27
\displayUnit|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[28]~88_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(28));

-- Location: LCCOMB_X97_Y36_N28
\displayUnit|s_count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[29]~90_combout\ = (\displayUnit|s_count\(29) & (!\displayUnit|s_count[28]~89\)) # (!\displayUnit|s_count\(29) & ((\displayUnit|s_count[28]~89\) # (GND)))
-- \displayUnit|s_count[29]~91\ = CARRY((!\displayUnit|s_count[28]~89\) # (!\displayUnit|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_count\(29),
	datad => VCC,
	cin => \displayUnit|s_count[28]~89\,
	combout => \displayUnit|s_count[29]~90_combout\,
	cout => \displayUnit|s_count[29]~91\);

-- Location: FF_X97_Y36_N29
\displayUnit|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[29]~90_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(29));

-- Location: LCCOMB_X97_Y36_N30
\displayUnit|s_count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_count[30]~92_combout\ = \displayUnit|s_count\(30) $ (!\displayUnit|s_count[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(30),
	cin => \displayUnit|s_count[29]~91\,
	combout => \displayUnit|s_count[30]~92_combout\);

-- Location: FF_X97_Y36_N31
\displayUnit|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_count[30]~92_combout\,
	sclr => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_count\(30));

-- Location: LCCOMB_X98_Y37_N10
\displayUnit|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~1_combout\ = (!\displayUnit|s_count\(5) & (\displayUnit|s_count\(8) & (!\displayUnit|s_count\(7) & !\displayUnit|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(5),
	datab => \displayUnit|s_count\(8),
	datac => \displayUnit|s_count\(7),
	datad => \displayUnit|s_count\(4),
	combout => \displayUnit|Equal1~1_combout\);

-- Location: LCCOMB_X98_Y36_N4
\displayUnit|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~3_combout\ = (!\displayUnit|s_count\(25) & (!\displayUnit|s_count\(27) & (!\displayUnit|s_count\(23) & !\displayUnit|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(25),
	datab => \displayUnit|s_count\(27),
	datac => \displayUnit|s_count\(23),
	datad => \displayUnit|s_count\(26),
	combout => \displayUnit|Equal1~3_combout\);

-- Location: LCCOMB_X97_Y37_N0
\displayUnit|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~2_combout\ = (!\displayUnit|s_count\(17) & (!\displayUnit|s_count\(15) & (!\displayUnit|s_count\(12) & \displayUnit|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(17),
	datab => \displayUnit|s_count\(15),
	datac => \displayUnit|s_count\(12),
	datad => \displayUnit|s_count\(11),
	combout => \displayUnit|Equal1~2_combout\);

-- Location: LCCOMB_X98_Y37_N24
\displayUnit|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~0_combout\ = (!\displayUnit|s_count\(3) & (!\displayUnit|s_count\(2) & (!\displayUnit|s_count\(1) & !\displayUnit|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(3),
	datab => \displayUnit|s_count\(2),
	datac => \displayUnit|s_count\(1),
	datad => \displayUnit|s_count\(0),
	combout => \displayUnit|Equal1~0_combout\);

-- Location: LCCOMB_X98_Y37_N20
\displayUnit|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~4_combout\ = (\displayUnit|Equal1~1_combout\ & (\displayUnit|Equal1~3_combout\ & (\displayUnit|Equal1~2_combout\ & \displayUnit|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Equal1~1_combout\,
	datab => \displayUnit|Equal1~3_combout\,
	datac => \displayUnit|Equal1~2_combout\,
	datad => \displayUnit|Equal1~0_combout\,
	combout => \displayUnit|Equal1~4_combout\);

-- Location: LCCOMB_X98_Y36_N6
\displayUnit|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~5_combout\ = (!\displayUnit|s_count\(30) & (!\displayUnit|s_count\(29) & (!\displayUnit|s_count\(28) & \displayUnit|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(30),
	datab => \displayUnit|s_count\(29),
	datac => \displayUnit|s_count\(28),
	datad => \displayUnit|Equal1~4_combout\,
	combout => \displayUnit|Equal1~5_combout\);

-- Location: LCCOMB_X100_Y38_N2
\displayUnit|s_repeatCount[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[0]~31_combout\ = \displayUnit|s_repeatCount\(0) $ (VCC)
-- \displayUnit|s_repeatCount[0]~32\ = CARRY(\displayUnit|s_repeatCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(0),
	datad => VCC,
	combout => \displayUnit|s_repeatCount[0]~31_combout\,
	cout => \displayUnit|s_repeatCount[0]~32\);

-- Location: FF_X100_Y38_N3
\displayUnit|s_repeatCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[0]~31_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(0));

-- Location: LCCOMB_X100_Y38_N4
\displayUnit|s_repeatCount[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[1]~33_combout\ = (\displayUnit|s_repeatCount\(1) & (!\displayUnit|s_repeatCount[0]~32\)) # (!\displayUnit|s_repeatCount\(1) & ((\displayUnit|s_repeatCount[0]~32\) # (GND)))
-- \displayUnit|s_repeatCount[1]~34\ = CARRY((!\displayUnit|s_repeatCount[0]~32\) # (!\displayUnit|s_repeatCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(1),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[0]~32\,
	combout => \displayUnit|s_repeatCount[1]~33_combout\,
	cout => \displayUnit|s_repeatCount[1]~34\);

-- Location: FF_X100_Y38_N5
\displayUnit|s_repeatCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[1]~33_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(1));

-- Location: LCCOMB_X100_Y38_N6
\displayUnit|s_repeatCount[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[2]~35_combout\ = (\displayUnit|s_repeatCount\(2) & (\displayUnit|s_repeatCount[1]~34\ $ (GND))) # (!\displayUnit|s_repeatCount\(2) & (!\displayUnit|s_repeatCount[1]~34\ & VCC))
-- \displayUnit|s_repeatCount[2]~36\ = CARRY((\displayUnit|s_repeatCount\(2) & !\displayUnit|s_repeatCount[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(2),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[1]~34\,
	combout => \displayUnit|s_repeatCount[2]~35_combout\,
	cout => \displayUnit|s_repeatCount[2]~36\);

-- Location: FF_X100_Y38_N7
\displayUnit|s_repeatCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[2]~35_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(2));

-- Location: LCCOMB_X100_Y38_N8
\displayUnit|s_repeatCount[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[3]~37_combout\ = (\displayUnit|s_repeatCount\(3) & (!\displayUnit|s_repeatCount[2]~36\)) # (!\displayUnit|s_repeatCount\(3) & ((\displayUnit|s_repeatCount[2]~36\) # (GND)))
-- \displayUnit|s_repeatCount[3]~38\ = CARRY((!\displayUnit|s_repeatCount[2]~36\) # (!\displayUnit|s_repeatCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(3),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[2]~36\,
	combout => \displayUnit|s_repeatCount[3]~37_combout\,
	cout => \displayUnit|s_repeatCount[3]~38\);

-- Location: FF_X100_Y38_N9
\displayUnit|s_repeatCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[3]~37_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(3));

-- Location: LCCOMB_X100_Y38_N10
\displayUnit|s_repeatCount[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[4]~39_combout\ = (\displayUnit|s_repeatCount\(4) & (\displayUnit|s_repeatCount[3]~38\ $ (GND))) # (!\displayUnit|s_repeatCount\(4) & (!\displayUnit|s_repeatCount[3]~38\ & VCC))
-- \displayUnit|s_repeatCount[4]~40\ = CARRY((\displayUnit|s_repeatCount\(4) & !\displayUnit|s_repeatCount[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(4),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[3]~38\,
	combout => \displayUnit|s_repeatCount[4]~39_combout\,
	cout => \displayUnit|s_repeatCount[4]~40\);

-- Location: FF_X100_Y38_N11
\displayUnit|s_repeatCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[4]~39_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(4));

-- Location: LCCOMB_X100_Y38_N12
\displayUnit|s_repeatCount[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[5]~41_combout\ = (\displayUnit|s_repeatCount\(5) & (!\displayUnit|s_repeatCount[4]~40\)) # (!\displayUnit|s_repeatCount\(5) & ((\displayUnit|s_repeatCount[4]~40\) # (GND)))
-- \displayUnit|s_repeatCount[5]~42\ = CARRY((!\displayUnit|s_repeatCount[4]~40\) # (!\displayUnit|s_repeatCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(5),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[4]~40\,
	combout => \displayUnit|s_repeatCount[5]~41_combout\,
	cout => \displayUnit|s_repeatCount[5]~42\);

-- Location: FF_X100_Y38_N13
\displayUnit|s_repeatCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[5]~41_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(5));

-- Location: LCCOMB_X100_Y38_N14
\displayUnit|s_repeatCount[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[6]~43_combout\ = (\displayUnit|s_repeatCount\(6) & (\displayUnit|s_repeatCount[5]~42\ $ (GND))) # (!\displayUnit|s_repeatCount\(6) & (!\displayUnit|s_repeatCount[5]~42\ & VCC))
-- \displayUnit|s_repeatCount[6]~44\ = CARRY((\displayUnit|s_repeatCount\(6) & !\displayUnit|s_repeatCount[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(6),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[5]~42\,
	combout => \displayUnit|s_repeatCount[6]~43_combout\,
	cout => \displayUnit|s_repeatCount[6]~44\);

-- Location: FF_X100_Y38_N15
\displayUnit|s_repeatCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[6]~43_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(6));

-- Location: LCCOMB_X100_Y38_N16
\displayUnit|s_repeatCount[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[7]~45_combout\ = (\displayUnit|s_repeatCount\(7) & (!\displayUnit|s_repeatCount[6]~44\)) # (!\displayUnit|s_repeatCount\(7) & ((\displayUnit|s_repeatCount[6]~44\) # (GND)))
-- \displayUnit|s_repeatCount[7]~46\ = CARRY((!\displayUnit|s_repeatCount[6]~44\) # (!\displayUnit|s_repeatCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(7),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[6]~44\,
	combout => \displayUnit|s_repeatCount[7]~45_combout\,
	cout => \displayUnit|s_repeatCount[7]~46\);

-- Location: FF_X100_Y38_N17
\displayUnit|s_repeatCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[7]~45_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(7));

-- Location: LCCOMB_X100_Y38_N18
\displayUnit|s_repeatCount[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[8]~47_combout\ = (\displayUnit|s_repeatCount\(8) & (\displayUnit|s_repeatCount[7]~46\ $ (GND))) # (!\displayUnit|s_repeatCount\(8) & (!\displayUnit|s_repeatCount[7]~46\ & VCC))
-- \displayUnit|s_repeatCount[8]~48\ = CARRY((\displayUnit|s_repeatCount\(8) & !\displayUnit|s_repeatCount[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(8),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[7]~46\,
	combout => \displayUnit|s_repeatCount[8]~47_combout\,
	cout => \displayUnit|s_repeatCount[8]~48\);

-- Location: FF_X100_Y38_N19
\displayUnit|s_repeatCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[8]~47_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(8));

-- Location: LCCOMB_X100_Y38_N20
\displayUnit|s_repeatCount[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[9]~49_combout\ = (\displayUnit|s_repeatCount\(9) & (!\displayUnit|s_repeatCount[8]~48\)) # (!\displayUnit|s_repeatCount\(9) & ((\displayUnit|s_repeatCount[8]~48\) # (GND)))
-- \displayUnit|s_repeatCount[9]~50\ = CARRY((!\displayUnit|s_repeatCount[8]~48\) # (!\displayUnit|s_repeatCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(9),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[8]~48\,
	combout => \displayUnit|s_repeatCount[9]~49_combout\,
	cout => \displayUnit|s_repeatCount[9]~50\);

-- Location: FF_X100_Y38_N21
\displayUnit|s_repeatCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[9]~49_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(9));

-- Location: LCCOMB_X100_Y38_N22
\displayUnit|s_repeatCount[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[10]~51_combout\ = (\displayUnit|s_repeatCount\(10) & (\displayUnit|s_repeatCount[9]~50\ $ (GND))) # (!\displayUnit|s_repeatCount\(10) & (!\displayUnit|s_repeatCount[9]~50\ & VCC))
-- \displayUnit|s_repeatCount[10]~52\ = CARRY((\displayUnit|s_repeatCount\(10) & !\displayUnit|s_repeatCount[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(10),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[9]~50\,
	combout => \displayUnit|s_repeatCount[10]~51_combout\,
	cout => \displayUnit|s_repeatCount[10]~52\);

-- Location: FF_X100_Y38_N23
\displayUnit|s_repeatCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[10]~51_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(10));

-- Location: LCCOMB_X100_Y38_N24
\displayUnit|s_repeatCount[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[11]~53_combout\ = (\displayUnit|s_repeatCount\(11) & (!\displayUnit|s_repeatCount[10]~52\)) # (!\displayUnit|s_repeatCount\(11) & ((\displayUnit|s_repeatCount[10]~52\) # (GND)))
-- \displayUnit|s_repeatCount[11]~54\ = CARRY((!\displayUnit|s_repeatCount[10]~52\) # (!\displayUnit|s_repeatCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(11),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[10]~52\,
	combout => \displayUnit|s_repeatCount[11]~53_combout\,
	cout => \displayUnit|s_repeatCount[11]~54\);

-- Location: FF_X100_Y38_N25
\displayUnit|s_repeatCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[11]~53_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(11));

-- Location: LCCOMB_X100_Y38_N26
\displayUnit|s_repeatCount[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[12]~55_combout\ = (\displayUnit|s_repeatCount\(12) & (\displayUnit|s_repeatCount[11]~54\ $ (GND))) # (!\displayUnit|s_repeatCount\(12) & (!\displayUnit|s_repeatCount[11]~54\ & VCC))
-- \displayUnit|s_repeatCount[12]~56\ = CARRY((\displayUnit|s_repeatCount\(12) & !\displayUnit|s_repeatCount[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(12),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[11]~54\,
	combout => \displayUnit|s_repeatCount[12]~55_combout\,
	cout => \displayUnit|s_repeatCount[12]~56\);

-- Location: FF_X100_Y38_N27
\displayUnit|s_repeatCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[12]~55_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(12));

-- Location: LCCOMB_X100_Y38_N28
\displayUnit|s_repeatCount[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[13]~57_combout\ = (\displayUnit|s_repeatCount\(13) & (!\displayUnit|s_repeatCount[12]~56\)) # (!\displayUnit|s_repeatCount\(13) & ((\displayUnit|s_repeatCount[12]~56\) # (GND)))
-- \displayUnit|s_repeatCount[13]~58\ = CARRY((!\displayUnit|s_repeatCount[12]~56\) # (!\displayUnit|s_repeatCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(13),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[12]~56\,
	combout => \displayUnit|s_repeatCount[13]~57_combout\,
	cout => \displayUnit|s_repeatCount[13]~58\);

-- Location: FF_X100_Y38_N29
\displayUnit|s_repeatCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[13]~57_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(13));

-- Location: LCCOMB_X100_Y38_N30
\displayUnit|s_repeatCount[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[14]~59_combout\ = (\displayUnit|s_repeatCount\(14) & (\displayUnit|s_repeatCount[13]~58\ $ (GND))) # (!\displayUnit|s_repeatCount\(14) & (!\displayUnit|s_repeatCount[13]~58\ & VCC))
-- \displayUnit|s_repeatCount[14]~60\ = CARRY((\displayUnit|s_repeatCount\(14) & !\displayUnit|s_repeatCount[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(14),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[13]~58\,
	combout => \displayUnit|s_repeatCount[14]~59_combout\,
	cout => \displayUnit|s_repeatCount[14]~60\);

-- Location: FF_X100_Y38_N31
\displayUnit|s_repeatCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[14]~59_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(14));

-- Location: LCCOMB_X100_Y37_N0
\displayUnit|s_repeatCount[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[15]~61_combout\ = (\displayUnit|s_repeatCount\(15) & (!\displayUnit|s_repeatCount[14]~60\)) # (!\displayUnit|s_repeatCount\(15) & ((\displayUnit|s_repeatCount[14]~60\) # (GND)))
-- \displayUnit|s_repeatCount[15]~62\ = CARRY((!\displayUnit|s_repeatCount[14]~60\) # (!\displayUnit|s_repeatCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(15),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[14]~60\,
	combout => \displayUnit|s_repeatCount[15]~61_combout\,
	cout => \displayUnit|s_repeatCount[15]~62\);

-- Location: FF_X100_Y37_N1
\displayUnit|s_repeatCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[15]~61_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(15));

-- Location: LCCOMB_X100_Y37_N2
\displayUnit|s_repeatCount[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[16]~63_combout\ = (\displayUnit|s_repeatCount\(16) & (\displayUnit|s_repeatCount[15]~62\ $ (GND))) # (!\displayUnit|s_repeatCount\(16) & (!\displayUnit|s_repeatCount[15]~62\ & VCC))
-- \displayUnit|s_repeatCount[16]~64\ = CARRY((\displayUnit|s_repeatCount\(16) & !\displayUnit|s_repeatCount[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(16),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[15]~62\,
	combout => \displayUnit|s_repeatCount[16]~63_combout\,
	cout => \displayUnit|s_repeatCount[16]~64\);

-- Location: FF_X100_Y37_N3
\displayUnit|s_repeatCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[16]~63_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(16));

-- Location: LCCOMB_X100_Y37_N4
\displayUnit|s_repeatCount[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[17]~65_combout\ = (\displayUnit|s_repeatCount\(17) & (!\displayUnit|s_repeatCount[16]~64\)) # (!\displayUnit|s_repeatCount\(17) & ((\displayUnit|s_repeatCount[16]~64\) # (GND)))
-- \displayUnit|s_repeatCount[17]~66\ = CARRY((!\displayUnit|s_repeatCount[16]~64\) # (!\displayUnit|s_repeatCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(17),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[16]~64\,
	combout => \displayUnit|s_repeatCount[17]~65_combout\,
	cout => \displayUnit|s_repeatCount[17]~66\);

-- Location: FF_X100_Y37_N5
\displayUnit|s_repeatCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[17]~65_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(17));

-- Location: LCCOMB_X100_Y37_N6
\displayUnit|s_repeatCount[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[18]~67_combout\ = (\displayUnit|s_repeatCount\(18) & (\displayUnit|s_repeatCount[17]~66\ $ (GND))) # (!\displayUnit|s_repeatCount\(18) & (!\displayUnit|s_repeatCount[17]~66\ & VCC))
-- \displayUnit|s_repeatCount[18]~68\ = CARRY((\displayUnit|s_repeatCount\(18) & !\displayUnit|s_repeatCount[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(18),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[17]~66\,
	combout => \displayUnit|s_repeatCount[18]~67_combout\,
	cout => \displayUnit|s_repeatCount[18]~68\);

-- Location: FF_X100_Y37_N7
\displayUnit|s_repeatCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[18]~67_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(18));

-- Location: LCCOMB_X100_Y37_N8
\displayUnit|s_repeatCount[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[19]~69_combout\ = (\displayUnit|s_repeatCount\(19) & (!\displayUnit|s_repeatCount[18]~68\)) # (!\displayUnit|s_repeatCount\(19) & ((\displayUnit|s_repeatCount[18]~68\) # (GND)))
-- \displayUnit|s_repeatCount[19]~70\ = CARRY((!\displayUnit|s_repeatCount[18]~68\) # (!\displayUnit|s_repeatCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(19),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[18]~68\,
	combout => \displayUnit|s_repeatCount[19]~69_combout\,
	cout => \displayUnit|s_repeatCount[19]~70\);

-- Location: FF_X100_Y37_N9
\displayUnit|s_repeatCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[19]~69_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(19));

-- Location: LCCOMB_X100_Y37_N10
\displayUnit|s_repeatCount[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[20]~71_combout\ = (\displayUnit|s_repeatCount\(20) & (\displayUnit|s_repeatCount[19]~70\ $ (GND))) # (!\displayUnit|s_repeatCount\(20) & (!\displayUnit|s_repeatCount[19]~70\ & VCC))
-- \displayUnit|s_repeatCount[20]~72\ = CARRY((\displayUnit|s_repeatCount\(20) & !\displayUnit|s_repeatCount[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(20),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[19]~70\,
	combout => \displayUnit|s_repeatCount[20]~71_combout\,
	cout => \displayUnit|s_repeatCount[20]~72\);

-- Location: FF_X100_Y37_N11
\displayUnit|s_repeatCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[20]~71_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(20));

-- Location: LCCOMB_X100_Y37_N12
\displayUnit|s_repeatCount[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[21]~73_combout\ = (\displayUnit|s_repeatCount\(21) & (!\displayUnit|s_repeatCount[20]~72\)) # (!\displayUnit|s_repeatCount\(21) & ((\displayUnit|s_repeatCount[20]~72\) # (GND)))
-- \displayUnit|s_repeatCount[21]~74\ = CARRY((!\displayUnit|s_repeatCount[20]~72\) # (!\displayUnit|s_repeatCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(21),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[20]~72\,
	combout => \displayUnit|s_repeatCount[21]~73_combout\,
	cout => \displayUnit|s_repeatCount[21]~74\);

-- Location: FF_X100_Y37_N13
\displayUnit|s_repeatCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[21]~73_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(21));

-- Location: LCCOMB_X100_Y37_N14
\displayUnit|s_repeatCount[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[22]~75_combout\ = (\displayUnit|s_repeatCount\(22) & (\displayUnit|s_repeatCount[21]~74\ $ (GND))) # (!\displayUnit|s_repeatCount\(22) & (!\displayUnit|s_repeatCount[21]~74\ & VCC))
-- \displayUnit|s_repeatCount[22]~76\ = CARRY((\displayUnit|s_repeatCount\(22) & !\displayUnit|s_repeatCount[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(22),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[21]~74\,
	combout => \displayUnit|s_repeatCount[22]~75_combout\,
	cout => \displayUnit|s_repeatCount[22]~76\);

-- Location: FF_X100_Y37_N15
\displayUnit|s_repeatCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[22]~75_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(22));

-- Location: LCCOMB_X100_Y37_N16
\displayUnit|s_repeatCount[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[23]~77_combout\ = (\displayUnit|s_repeatCount\(23) & (!\displayUnit|s_repeatCount[22]~76\)) # (!\displayUnit|s_repeatCount\(23) & ((\displayUnit|s_repeatCount[22]~76\) # (GND)))
-- \displayUnit|s_repeatCount[23]~78\ = CARRY((!\displayUnit|s_repeatCount[22]~76\) # (!\displayUnit|s_repeatCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(23),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[22]~76\,
	combout => \displayUnit|s_repeatCount[23]~77_combout\,
	cout => \displayUnit|s_repeatCount[23]~78\);

-- Location: FF_X100_Y37_N17
\displayUnit|s_repeatCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[23]~77_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(23));

-- Location: LCCOMB_X100_Y37_N18
\displayUnit|s_repeatCount[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[24]~79_combout\ = (\displayUnit|s_repeatCount\(24) & (\displayUnit|s_repeatCount[23]~78\ $ (GND))) # (!\displayUnit|s_repeatCount\(24) & (!\displayUnit|s_repeatCount[23]~78\ & VCC))
-- \displayUnit|s_repeatCount[24]~80\ = CARRY((\displayUnit|s_repeatCount\(24) & !\displayUnit|s_repeatCount[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(24),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[23]~78\,
	combout => \displayUnit|s_repeatCount[24]~79_combout\,
	cout => \displayUnit|s_repeatCount[24]~80\);

-- Location: FF_X100_Y37_N19
\displayUnit|s_repeatCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[24]~79_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(24));

-- Location: LCCOMB_X100_Y37_N20
\displayUnit|s_repeatCount[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[25]~81_combout\ = (\displayUnit|s_repeatCount\(25) & (!\displayUnit|s_repeatCount[24]~80\)) # (!\displayUnit|s_repeatCount\(25) & ((\displayUnit|s_repeatCount[24]~80\) # (GND)))
-- \displayUnit|s_repeatCount[25]~82\ = CARRY((!\displayUnit|s_repeatCount[24]~80\) # (!\displayUnit|s_repeatCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(25),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[24]~80\,
	combout => \displayUnit|s_repeatCount[25]~81_combout\,
	cout => \displayUnit|s_repeatCount[25]~82\);

-- Location: FF_X100_Y37_N21
\displayUnit|s_repeatCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[25]~81_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(25));

-- Location: LCCOMB_X100_Y37_N22
\displayUnit|s_repeatCount[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[26]~83_combout\ = (\displayUnit|s_repeatCount\(26) & (\displayUnit|s_repeatCount[25]~82\ $ (GND))) # (!\displayUnit|s_repeatCount\(26) & (!\displayUnit|s_repeatCount[25]~82\ & VCC))
-- \displayUnit|s_repeatCount[26]~84\ = CARRY((\displayUnit|s_repeatCount\(26) & !\displayUnit|s_repeatCount[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(26),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[25]~82\,
	combout => \displayUnit|s_repeatCount[26]~83_combout\,
	cout => \displayUnit|s_repeatCount[26]~84\);

-- Location: FF_X100_Y37_N23
\displayUnit|s_repeatCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[26]~83_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(26));

-- Location: LCCOMB_X100_Y37_N24
\displayUnit|s_repeatCount[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[27]~85_combout\ = (\displayUnit|s_repeatCount\(27) & (!\displayUnit|s_repeatCount[26]~84\)) # (!\displayUnit|s_repeatCount\(27) & ((\displayUnit|s_repeatCount[26]~84\) # (GND)))
-- \displayUnit|s_repeatCount[27]~86\ = CARRY((!\displayUnit|s_repeatCount[26]~84\) # (!\displayUnit|s_repeatCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(27),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[26]~84\,
	combout => \displayUnit|s_repeatCount[27]~85_combout\,
	cout => \displayUnit|s_repeatCount[27]~86\);

-- Location: FF_X100_Y37_N25
\displayUnit|s_repeatCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[27]~85_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(27));

-- Location: LCCOMB_X99_Y37_N12
\displayUnit|s_thd[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~7_combout\ = (\displayUnit|s_repeatCount\(27)) # ((\displayUnit|s_repeatCount\(26)) # ((\displayUnit|s_repeatCount\(25)) # (\displayUnit|s_repeatCount\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(27),
	datab => \displayUnit|s_repeatCount\(26),
	datac => \displayUnit|s_repeatCount\(25),
	datad => \displayUnit|s_repeatCount\(24),
	combout => \displayUnit|s_thd[24]~7_combout\);

-- Location: LCCOMB_X100_Y37_N26
\displayUnit|s_repeatCount[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[28]~87_combout\ = (\displayUnit|s_repeatCount\(28) & (\displayUnit|s_repeatCount[27]~86\ $ (GND))) # (!\displayUnit|s_repeatCount\(28) & (!\displayUnit|s_repeatCount[27]~86\ & VCC))
-- \displayUnit|s_repeatCount[28]~88\ = CARRY((\displayUnit|s_repeatCount\(28) & !\displayUnit|s_repeatCount[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(28),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[27]~86\,
	combout => \displayUnit|s_repeatCount[28]~87_combout\,
	cout => \displayUnit|s_repeatCount[28]~88\);

-- Location: FF_X100_Y37_N27
\displayUnit|s_repeatCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[28]~87_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(28));

-- Location: LCCOMB_X100_Y37_N28
\displayUnit|s_repeatCount[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[29]~89_combout\ = (\displayUnit|s_repeatCount\(29) & (!\displayUnit|s_repeatCount[28]~88\)) # (!\displayUnit|s_repeatCount\(29) & ((\displayUnit|s_repeatCount[28]~88\) # (GND)))
-- \displayUnit|s_repeatCount[29]~90\ = CARRY((!\displayUnit|s_repeatCount[28]~88\) # (!\displayUnit|s_repeatCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_repeatCount\(29),
	datad => VCC,
	cin => \displayUnit|s_repeatCount[28]~88\,
	combout => \displayUnit|s_repeatCount[29]~89_combout\,
	cout => \displayUnit|s_repeatCount[29]~90\);

-- Location: FF_X100_Y37_N29
\displayUnit|s_repeatCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[29]~89_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(29));

-- Location: LCCOMB_X100_Y37_N30
\displayUnit|s_repeatCount[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_repeatCount[30]~91_combout\ = \displayUnit|s_repeatCount\(30) $ (!\displayUnit|s_repeatCount[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(30),
	cin => \displayUnit|s_repeatCount[29]~90\,
	combout => \displayUnit|s_repeatCount[30]~91_combout\);

-- Location: FF_X100_Y37_N31
\displayUnit|s_repeatCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_repeatCount[30]~91_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displayUnit|s_count[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_repeatCount\(30));

-- Location: LCCOMB_X99_Y37_N6
\displayUnit|s_thd[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~8_combout\ = (\displayUnit|s_thd[24]~7_combout\) # ((\displayUnit|s_repeatCount\(29)) # ((\displayUnit|s_repeatCount\(30)) # (\displayUnit|s_repeatCount\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_thd[24]~7_combout\,
	datab => \displayUnit|s_repeatCount\(29),
	datac => \displayUnit|s_repeatCount\(30),
	datad => \displayUnit|s_repeatCount\(28),
	combout => \displayUnit|s_thd[24]~8_combout\);

-- Location: LCCOMB_X99_Y37_N24
\displayUnit|s_thd[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~5_combout\ = (\displayUnit|s_repeatCount\(17)) # ((\displayUnit|s_repeatCount\(18)) # ((\displayUnit|s_repeatCount\(19)) # (\displayUnit|s_repeatCount\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(17),
	datab => \displayUnit|s_repeatCount\(18),
	datac => \displayUnit|s_repeatCount\(19),
	datad => \displayUnit|s_repeatCount\(16),
	combout => \displayUnit|s_thd[24]~5_combout\);

-- Location: LCCOMB_X99_Y38_N10
\displayUnit|s_thd[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~2_combout\ = (\displayUnit|s_repeatCount\(11)) # ((\displayUnit|s_repeatCount\(10)) # ((\displayUnit|s_repeatCount\(9)) # (\displayUnit|s_repeatCount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(11),
	datab => \displayUnit|s_repeatCount\(10),
	datac => \displayUnit|s_repeatCount\(9),
	datad => \displayUnit|s_repeatCount\(8),
	combout => \displayUnit|s_thd[24]~2_combout\);

-- Location: LCCOMB_X99_Y38_N24
\displayUnit|s_thd[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~0_combout\ = (\displayUnit|s_repeatCount\(3)) # (\displayUnit|s_repeatCount\(2) $ (((!\displayUnit|s_repeatCount\(1) & !\displayUnit|s_repeatCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(1),
	datab => \displayUnit|s_repeatCount\(2),
	datac => \displayUnit|s_repeatCount\(3),
	datad => \displayUnit|s_repeatCount\(0),
	combout => \displayUnit|s_thd[24]~0_combout\);

-- Location: LCCOMB_X100_Y38_N0
\displayUnit|s_thd[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~1_combout\ = (\displayUnit|s_repeatCount\(5)) # ((\displayUnit|s_repeatCount\(7)) # ((\displayUnit|s_repeatCount\(6)) # (\displayUnit|s_repeatCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(5),
	datab => \displayUnit|s_repeatCount\(7),
	datac => \displayUnit|s_repeatCount\(6),
	datad => \displayUnit|s_repeatCount\(4),
	combout => \displayUnit|s_thd[24]~1_combout\);

-- Location: LCCOMB_X99_Y38_N12
\displayUnit|s_thd[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~3_combout\ = (\displayUnit|s_repeatCount\(12)) # ((\displayUnit|s_repeatCount\(15)) # ((\displayUnit|s_repeatCount\(14)) # (\displayUnit|s_repeatCount\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(12),
	datab => \displayUnit|s_repeatCount\(15),
	datac => \displayUnit|s_repeatCount\(14),
	datad => \displayUnit|s_repeatCount\(13),
	combout => \displayUnit|s_thd[24]~3_combout\);

-- Location: LCCOMB_X99_Y38_N30
\displayUnit|s_thd[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~4_combout\ = (\displayUnit|s_thd[24]~2_combout\) # ((\displayUnit|s_thd[24]~0_combout\) # ((\displayUnit|s_thd[24]~1_combout\) # (\displayUnit|s_thd[24]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_thd[24]~2_combout\,
	datab => \displayUnit|s_thd[24]~0_combout\,
	datac => \displayUnit|s_thd[24]~1_combout\,
	datad => \displayUnit|s_thd[24]~3_combout\,
	combout => \displayUnit|s_thd[24]~4_combout\);

-- Location: LCCOMB_X99_Y37_N10
\displayUnit|s_thd[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~6_combout\ = (\displayUnit|s_repeatCount\(22)) # ((\displayUnit|s_repeatCount\(21)) # ((\displayUnit|s_repeatCount\(20)) # (\displayUnit|s_repeatCount\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_repeatCount\(22),
	datab => \displayUnit|s_repeatCount\(21),
	datac => \displayUnit|s_repeatCount\(20),
	datad => \displayUnit|s_repeatCount\(23),
	combout => \displayUnit|s_thd[24]~6_combout\);

-- Location: LCCOMB_X99_Y37_N16
\displayUnit|s_thd[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_thd[24]~9_combout\ = (\displayUnit|s_thd[24]~8_combout\) # ((\displayUnit|s_thd[24]~5_combout\) # ((\displayUnit|s_thd[24]~4_combout\) # (\displayUnit|s_thd[24]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_thd[24]~8_combout\,
	datab => \displayUnit|s_thd[24]~5_combout\,
	datac => \displayUnit|s_thd[24]~4_combout\,
	datad => \displayUnit|s_thd[24]~6_combout\,
	combout => \displayUnit|s_thd[24]~9_combout\);

-- Location: LCCOMB_X98_Y36_N0
\displayUnit|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~6_combout\ = (\displayUnit|Equal1~5_combout\ & ((\displayUnit|s_count\(24) & (!\displayUnit|s_count\(22) & !\displayUnit|s_thd[24]~9_combout\)) # (!\displayUnit|s_count\(24) & (\displayUnit|s_count\(22) & 
-- \displayUnit|s_thd[24]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Equal1~5_combout\,
	datab => \displayUnit|s_count\(24),
	datac => \displayUnit|s_count\(22),
	datad => \displayUnit|s_thd[24]~9_combout\,
	combout => \displayUnit|Equal1~6_combout\);

-- Location: LCCOMB_X98_Y36_N10
\displayUnit|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~7_combout\ = (\displayUnit|Equal1~6_combout\ & ((\displayUnit|s_count\(21) & (\displayUnit|s_count\(20) & !\displayUnit|s_thd[24]~9_combout\)) # (!\displayUnit|s_count\(21) & (!\displayUnit|s_count\(20) & 
-- \displayUnit|s_thd[24]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(21),
	datab => \displayUnit|Equal1~6_combout\,
	datac => \displayUnit|s_count\(20),
	datad => \displayUnit|s_thd[24]~9_combout\,
	combout => \displayUnit|Equal1~7_combout\);

-- Location: LCCOMB_X98_Y36_N20
\displayUnit|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~8_combout\ = (\displayUnit|s_count\(19) & (!\displayUnit|s_count\(10) & !\displayUnit|s_count\(13))) # (!\displayUnit|s_count\(19) & (\displayUnit|s_count\(10) & \displayUnit|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(19),
	datac => \displayUnit|s_count\(10),
	datad => \displayUnit|s_count\(13),
	combout => \displayUnit|Equal1~8_combout\);

-- Location: LCCOMB_X98_Y36_N22
\displayUnit|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~9_combout\ = (\displayUnit|s_count\(9) & (!\displayUnit|s_count\(16) & (\displayUnit|s_count\(6) & \displayUnit|s_count\(14)))) # (!\displayUnit|s_count\(9) & (\displayUnit|s_count\(16) & (!\displayUnit|s_count\(6) & 
-- !\displayUnit|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(9),
	datab => \displayUnit|s_count\(16),
	datac => \displayUnit|s_count\(6),
	datad => \displayUnit|s_count\(14),
	combout => \displayUnit|Equal1~9_combout\);

-- Location: LCCOMB_X98_Y36_N16
\displayUnit|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~10_combout\ = (\displayUnit|s_count\(6) & (\displayUnit|s_count\(18) & (!\displayUnit|s_count\(10) & \displayUnit|s_thd[24]~9_combout\))) # (!\displayUnit|s_count\(6) & (!\displayUnit|s_count\(18) & (\displayUnit|s_count\(10) & 
-- !\displayUnit|s_thd[24]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_count\(6),
	datab => \displayUnit|s_count\(18),
	datac => \displayUnit|s_count\(10),
	datad => \displayUnit|s_thd[24]~9_combout\,
	combout => \displayUnit|Equal1~10_combout\);

-- Location: LCCOMB_X98_Y36_N18
\displayUnit|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Equal1~11_combout\ = (\displayUnit|Equal1~7_combout\ & (\displayUnit|Equal1~8_combout\ & (\displayUnit|Equal1~9_combout\ & \displayUnit|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Equal1~7_combout\,
	datab => \displayUnit|Equal1~8_combout\,
	datac => \displayUnit|Equal1~9_combout\,
	datad => \displayUnit|Equal1~10_combout\,
	combout => \displayUnit|Equal1~11_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X98_Y36_N26
\displayUnit|s_inc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_inc~0_combout\ = (\displayUnit|Equal1~11_combout\ & (!\KEY[3]~input_o\ & \KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Equal1~11_combout\,
	datac => \KEY[3]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \displayUnit|s_inc~0_combout\);

-- Location: FF_X98_Y36_N27
\displayUnit|s_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_inc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_inc~q\);

-- Location: LCCOMB_X98_Y36_N24
\displayUnit|s_dec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_dec~0_combout\ = (\displayUnit|Equal1~11_combout\ & (!\KEY[3]~input_o\ & !\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Equal1~11_combout\,
	datac => \KEY[3]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \displayUnit|s_dec~0_combout\);

-- Location: FF_X98_Y36_N25
\displayUnit|s_dec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_dec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_dec~q\);

-- Location: LCCOMB_X88_Y31_N30
\displayUnit|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Decoder0~1_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\displayUnit|s_inc~q\) # (\displayUnit|s_dec~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_dec~q\,
	combout => \displayUnit|Decoder0~1_combout\);

-- Location: LCCOMB_X88_Y31_N0
\displayUnit|s_addrCounters~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~0_combout\ = (\displayUnit|Decoder0~1_combout\ & (\displayUnit|Add0~0_combout\)) # (!\displayUnit|Decoder0~1_combout\ & ((\displayUnit|s_addrCounters[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Decoder0~1_combout\,
	datab => \displayUnit|Add0~0_combout\,
	datac => \displayUnit|s_addrCounters[2][0]~q\,
	combout => \displayUnit|s_addrCounters~0_combout\);

-- Location: FF_X88_Y31_N1
\displayUnit|s_addrCounters[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[2][0]~q\);

-- Location: LCCOMB_X88_Y31_N4
\displayUnit|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Decoder0~3_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ & ((\displayUnit|s_inc~q\) # (\displayUnit|s_dec~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_dec~q\,
	combout => \displayUnit|Decoder0~3_combout\);

-- Location: LCCOMB_X87_Y34_N4
\displayUnit|s_addrCounters~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~11_combout\ = (\displayUnit|Decoder0~3_combout\ & (\displayUnit|Add0~0_combout\)) # (!\displayUnit|Decoder0~3_combout\ & ((\displayUnit|s_addrCounters[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Add0~0_combout\,
	datac => \displayUnit|s_addrCounters[1][0]~q\,
	datad => \displayUnit|Decoder0~3_combout\,
	combout => \displayUnit|s_addrCounters~11_combout\);

-- Location: FF_X87_Y34_N5
\displayUnit|s_addrCounters[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[1][0]~q\);

-- Location: LCCOMB_X89_Y31_N16
\displayUnit|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux5~0_combout\ = (\SW[1]~input_o\ & (((\displayUnit|s_addrCounters[3][0]~q\) # (!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\displayUnit|s_addrCounters[1][0]~q\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|s_addrCounters[1][0]~q\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[3][0]~q\,
	combout => \displayUnit|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y31_N6
\displayUnit|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Decoder0~4_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\displayUnit|s_inc~q\) # (\displayUnit|s_dec~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_dec~q\,
	combout => \displayUnit|Decoder0~4_combout\);

-- Location: FF_X88_Y31_N15
\displayUnit|s_addrCounters[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|Add0~0_combout\,
	ena => \displayUnit|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[0][0]~q\);

-- Location: LCCOMB_X89_Y31_N10
\displayUnit|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux5~1_combout\ = (\displayUnit|Mux5~0_combout\ & ((\displayUnit|s_addrCounters[2][0]~q\) # ((\SW[0]~input_o\)))) # (!\displayUnit|Mux5~0_combout\ & (((!\SW[0]~input_o\ & \displayUnit|s_addrCounters[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[2][0]~q\,
	datab => \displayUnit|Mux5~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[0][0]~q\,
	combout => \displayUnit|Mux5~1_combout\);

-- Location: LCCOMB_X88_Y31_N14
\displayUnit|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Add0~0_combout\ = \displayUnit|Mux5~1_combout\ $ (VCC)
-- \displayUnit|Add0~1\ = CARRY(\displayUnit|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Mux5~1_combout\,
	datad => VCC,
	combout => \displayUnit|Add0~0_combout\,
	cout => \displayUnit|Add0~1\);

-- Location: LCCOMB_X88_Y31_N12
\displayUnit|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Decoder0~2_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & ((\displayUnit|s_inc~q\) # (\displayUnit|s_dec~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_dec~q\,
	combout => \displayUnit|Decoder0~2_combout\);

-- Location: LCCOMB_X87_Y34_N24
\displayUnit|s_addrCounters~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~5_combout\ = (\displayUnit|Decoder0~2_combout\ & (\displayUnit|Add0~0_combout\)) # (!\displayUnit|Decoder0~2_combout\ & ((\displayUnit|s_addrCounters[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Add0~0_combout\,
	datac => \displayUnit|s_addrCounters[3][0]~q\,
	datad => \displayUnit|Decoder0~2_combout\,
	combout => \displayUnit|s_addrCounters~5_combout\);

-- Location: FF_X87_Y34_N25
\displayUnit|s_addrCounters[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[3][0]~q\);

-- Location: FF_X88_Y31_N17
\displayUnit|s_addrCounters[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|Add0~2_combout\,
	ena => \displayUnit|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[0][1]~q\);

-- Location: LCCOMB_X87_Y34_N6
\displayUnit|s_addrCounters~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~12_combout\ = (\displayUnit|Decoder0~3_combout\ & (\displayUnit|Add0~2_combout\)) # (!\displayUnit|Decoder0~3_combout\ & ((\displayUnit|s_addrCounters[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Add0~2_combout\,
	datac => \displayUnit|s_addrCounters[1][1]~q\,
	datad => \displayUnit|Decoder0~3_combout\,
	combout => \displayUnit|s_addrCounters~12_combout\);

-- Location: FF_X87_Y34_N7
\displayUnit|s_addrCounters[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[1][1]~q\);

-- Location: LCCOMB_X89_Y31_N28
\displayUnit|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux4~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[3][1]~q\))) # (!\SW[1]~input_o\ & (\displayUnit|s_addrCounters[1][1]~q\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[1][1]~q\,
	datab => \displayUnit|s_addrCounters[3][1]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y31_N2
\displayUnit|s_addrCounters~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~1_combout\ = (\displayUnit|Decoder0~1_combout\ & ((\displayUnit|Add0~2_combout\))) # (!\displayUnit|Decoder0~1_combout\ & (\displayUnit|s_addrCounters[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Decoder0~1_combout\,
	datac => \displayUnit|s_addrCounters[2][1]~q\,
	datad => \displayUnit|Add0~2_combout\,
	combout => \displayUnit|s_addrCounters~1_combout\);

-- Location: FF_X88_Y31_N3
\displayUnit|s_addrCounters[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[2][1]~q\);

-- Location: LCCOMB_X89_Y31_N14
\displayUnit|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux4~1_combout\ = (\displayUnit|Mux4~0_combout\ & (((\SW[0]~input_o\) # (\displayUnit|s_addrCounters[2][1]~q\)))) # (!\displayUnit|Mux4~0_combout\ & (\displayUnit|s_addrCounters[0][1]~q\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[0][1]~q\,
	datab => \displayUnit|Mux4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[2][1]~q\,
	combout => \displayUnit|Mux4~1_combout\);

-- Location: LCCOMB_X88_Y31_N16
\displayUnit|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Add0~2_combout\ = (\displayUnit|s_inc~q\ & ((\displayUnit|Mux4~1_combout\ & (!\displayUnit|Add0~1\)) # (!\displayUnit|Mux4~1_combout\ & ((\displayUnit|Add0~1\) # (GND))))) # (!\displayUnit|s_inc~q\ & ((\displayUnit|Mux4~1_combout\ & 
-- (\displayUnit|Add0~1\ & VCC)) # (!\displayUnit|Mux4~1_combout\ & (!\displayUnit|Add0~1\))))
-- \displayUnit|Add0~3\ = CARRY((\displayUnit|s_inc~q\ & ((!\displayUnit|Add0~1\) # (!\displayUnit|Mux4~1_combout\))) # (!\displayUnit|s_inc~q\ & (!\displayUnit|Mux4~1_combout\ & !\displayUnit|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \displayUnit|Mux4~1_combout\,
	datad => VCC,
	cin => \displayUnit|Add0~1\,
	combout => \displayUnit|Add0~2_combout\,
	cout => \displayUnit|Add0~3\);

-- Location: LCCOMB_X87_Y34_N2
\displayUnit|s_addrCounters~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~6_combout\ = (\displayUnit|Decoder0~2_combout\ & ((\displayUnit|Add0~2_combout\))) # (!\displayUnit|Decoder0~2_combout\ & (\displayUnit|s_addrCounters[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Decoder0~2_combout\,
	datac => \displayUnit|s_addrCounters[3][1]~q\,
	datad => \displayUnit|Add0~2_combout\,
	combout => \displayUnit|s_addrCounters~6_combout\);

-- Location: FF_X87_Y34_N3
\displayUnit|s_addrCounters[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[3][1]~q\);

-- Location: LCCOMB_X86_Y35_N26
\Ram|s_memory~2087\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2087_combout\ = (\displayUnit|s_addrCounters[3][0]~q\ & (!\displayUnit|s_addrCounters[3][1]~q\ & ((!\Ram|s_memory~73_q\)))) # (!\displayUnit|s_addrCounters[3][0]~q\ & (\displayUnit|s_addrCounters[3][1]~q\ & (!\Ram|s_memory~105_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[3][0]~q\,
	datab => \displayUnit|s_addrCounters[3][1]~q\,
	datac => \Ram|s_memory~105_q\,
	datad => \Ram|s_memory~73_q\,
	combout => \Ram|s_memory~2087_combout\);

-- Location: LCCOMB_X91_Y31_N2
\displayUnit|s_addrCounters~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~16_combout\ = (\displayUnit|Decoder0~3_combout\ & (\displayUnit|Add0~10_combout\)) # (!\displayUnit|Decoder0~3_combout\ & ((\displayUnit|s_addrCounters[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Add0~10_combout\,
	datab => \displayUnit|Decoder0~3_combout\,
	datac => \displayUnit|s_addrCounters[1][5]~q\,
	combout => \displayUnit|s_addrCounters~16_combout\);

-- Location: FF_X91_Y31_N3
\displayUnit|s_addrCounters[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[1][5]~q\);

-- Location: LCCOMB_X91_Y31_N4
\displayUnit|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux38~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displayUnit|s_addrCounters[3][5]~q\)) # (!\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[3][5]~q\,
	datab => \displayUnit|s_addrCounters[1][5]~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux38~0_combout\);

-- Location: LCCOMB_X88_Y31_N26
\displayUnit|s_addrCounters[2][5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters[2][5]~17_combout\ = (\displayUnit|Decoder0~1_combout\ & ((\displayUnit|Add0~10_combout\))) # (!\displayUnit|Decoder0~1_combout\ & (\displayUnit|s_addrCounters[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Decoder0~1_combout\,
	datac => \displayUnit|s_addrCounters[2][5]~q\,
	datad => \displayUnit|Add0~10_combout\,
	combout => \displayUnit|s_addrCounters[2][5]~17_combout\);

-- Location: FF_X88_Y31_N27
\displayUnit|s_addrCounters[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters[2][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[2][5]~q\);

-- Location: FF_X88_Y31_N25
\displayUnit|s_addrCounters[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|Add0~10_combout\,
	ena => \displayUnit|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[0][5]~q\);

-- Location: LCCOMB_X89_Y31_N4
\displayUnit|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux0~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displayUnit|s_addrCounters[2][5]~q\)) # (!\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[2][5]~q\,
	datab => \displayUnit|s_addrCounters[0][5]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux0~0_combout\);

-- Location: LCCOMB_X89_Y31_N22
\displayUnit|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux0~1_combout\ = (\displayUnit|Mux38~0_combout\) # (\displayUnit|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux0~0_combout\,
	combout => \displayUnit|Mux0~1_combout\);

-- Location: LCCOMB_X88_Y31_N18
\displayUnit|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Add0~4_combout\ = ((\displayUnit|s_inc~q\ $ (\displayUnit|Mux3~1_combout\ $ (\displayUnit|Add0~3\)))) # (GND)
-- \displayUnit|Add0~5\ = CARRY((\displayUnit|s_inc~q\ & (\displayUnit|Mux3~1_combout\ & !\displayUnit|Add0~3\)) # (!\displayUnit|s_inc~q\ & ((\displayUnit|Mux3~1_combout\) # (!\displayUnit|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \displayUnit|Mux3~1_combout\,
	datad => VCC,
	cin => \displayUnit|Add0~3\,
	combout => \displayUnit|Add0~4_combout\,
	cout => \displayUnit|Add0~5\);

-- Location: LCCOMB_X91_Y31_N16
\displayUnit|s_addrCounters~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~7_combout\ = (\displayUnit|Decoder0~2_combout\ & ((\displayUnit|Add0~4_combout\))) # (!\displayUnit|Decoder0~2_combout\ & (\displayUnit|s_addrCounters[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Decoder0~2_combout\,
	datac => \displayUnit|s_addrCounters[3][2]~q\,
	datad => \displayUnit|Add0~4_combout\,
	combout => \displayUnit|s_addrCounters~7_combout\);

-- Location: FF_X91_Y31_N17
\displayUnit|s_addrCounters[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[3][2]~q\);

-- Location: LCCOMB_X91_Y31_N14
\displayUnit|s_addrCounters~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~13_combout\ = (\displayUnit|Decoder0~3_combout\ & (\displayUnit|Add0~4_combout\)) # (!\displayUnit|Decoder0~3_combout\ & ((\displayUnit|s_addrCounters[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Add0~4_combout\,
	datab => \displayUnit|Decoder0~3_combout\,
	datac => \displayUnit|s_addrCounters[1][2]~q\,
	combout => \displayUnit|s_addrCounters~13_combout\);

-- Location: FF_X91_Y31_N15
\displayUnit|s_addrCounters[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[1][2]~q\);

-- Location: LCCOMB_X91_Y31_N30
\displayUnit|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux3~0_combout\ = (\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[3][2]~q\) # ((!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\displayUnit|s_addrCounters[1][2]~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|s_addrCounters[3][2]~q\,
	datac => \displayUnit|s_addrCounters[1][2]~q\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux3~0_combout\);

-- Location: FF_X88_Y31_N19
\displayUnit|s_addrCounters[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|Add0~4_combout\,
	ena => \displayUnit|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[0][2]~q\);

-- Location: LCCOMB_X88_Y31_N28
\displayUnit|s_addrCounters~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~2_combout\ = (\displayUnit|Decoder0~1_combout\ & (\displayUnit|Add0~4_combout\)) # (!\displayUnit|Decoder0~1_combout\ & ((\displayUnit|s_addrCounters[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Add0~4_combout\,
	datac => \displayUnit|s_addrCounters[2][2]~q\,
	datad => \displayUnit|Decoder0~1_combout\,
	combout => \displayUnit|s_addrCounters~2_combout\);

-- Location: FF_X88_Y31_N29
\displayUnit|s_addrCounters[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[2][2]~q\);

-- Location: LCCOMB_X88_Y31_N8
\displayUnit|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux3~1_combout\ = (\displayUnit|Mux3~0_combout\ & (((\SW[0]~input_o\) # (\displayUnit|s_addrCounters[2][2]~q\)))) # (!\displayUnit|Mux3~0_combout\ & (\displayUnit|s_addrCounters[0][2]~q\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux3~0_combout\,
	datab => \displayUnit|s_addrCounters[0][2]~q\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[2][2]~q\,
	combout => \displayUnit|Mux3~1_combout\);

-- Location: LCCOMB_X88_Y31_N20
\displayUnit|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Add0~6_combout\ = (\displayUnit|s_inc~q\ & ((\displayUnit|Mux2~1_combout\ & (!\displayUnit|Add0~5\)) # (!\displayUnit|Mux2~1_combout\ & ((\displayUnit|Add0~5\) # (GND))))) # (!\displayUnit|s_inc~q\ & ((\displayUnit|Mux2~1_combout\ & 
-- (\displayUnit|Add0~5\ & VCC)) # (!\displayUnit|Mux2~1_combout\ & (!\displayUnit|Add0~5\))))
-- \displayUnit|Add0~7\ = CARRY((\displayUnit|s_inc~q\ & ((!\displayUnit|Add0~5\) # (!\displayUnit|Mux2~1_combout\))) # (!\displayUnit|s_inc~q\ & (!\displayUnit|Mux2~1_combout\ & !\displayUnit|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \displayUnit|Mux2~1_combout\,
	datad => VCC,
	cin => \displayUnit|Add0~5\,
	combout => \displayUnit|Add0~6_combout\,
	cout => \displayUnit|Add0~7\);

-- Location: LCCOMB_X91_Y31_N10
\displayUnit|s_addrCounters~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~14_combout\ = (\displayUnit|Decoder0~3_combout\ & ((\displayUnit|Add0~6_combout\))) # (!\displayUnit|Decoder0~3_combout\ & (\displayUnit|s_addrCounters[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Decoder0~3_combout\,
	datac => \displayUnit|s_addrCounters[1][3]~q\,
	datad => \displayUnit|Add0~6_combout\,
	combout => \displayUnit|s_addrCounters~14_combout\);

-- Location: FF_X91_Y31_N11
\displayUnit|s_addrCounters[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[1][3]~q\);

-- Location: LCCOMB_X91_Y31_N18
\displayUnit|s_addrCounters~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~8_combout\ = (\displayUnit|Decoder0~2_combout\ & ((\displayUnit|Add0~6_combout\))) # (!\displayUnit|Decoder0~2_combout\ & (\displayUnit|s_addrCounters[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Decoder0~2_combout\,
	datac => \displayUnit|s_addrCounters[3][3]~q\,
	datad => \displayUnit|Add0~6_combout\,
	combout => \displayUnit|s_addrCounters~8_combout\);

-- Location: FF_X91_Y31_N19
\displayUnit|s_addrCounters[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[3][3]~q\);

-- Location: LCCOMB_X91_Y31_N12
\displayUnit|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux40~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[3][3]~q\))) # (!\SW[1]~input_o\ & (\displayUnit|s_addrCounters[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[1][3]~q\,
	datab => \displayUnit|s_addrCounters[3][3]~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux40~0_combout\);

-- Location: FF_X88_Y31_N21
\displayUnit|s_addrCounters[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|Add0~6_combout\,
	ena => \displayUnit|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[0][3]~q\);

-- Location: LCCOMB_X89_Y31_N24
\displayUnit|s_addrCounters~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~3_combout\ = (\displayUnit|Decoder0~1_combout\ & (\displayUnit|Add0~6_combout\)) # (!\displayUnit|Decoder0~1_combout\ & ((\displayUnit|s_addrCounters[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Add0~6_combout\,
	datac => \displayUnit|s_addrCounters[2][3]~q\,
	datad => \displayUnit|Decoder0~1_combout\,
	combout => \displayUnit|s_addrCounters~3_combout\);

-- Location: FF_X89_Y31_N25
\displayUnit|s_addrCounters[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[2][3]~q\);

-- Location: LCCOMB_X88_Y31_N10
\displayUnit|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux2~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[2][3]~q\))) # (!\SW[1]~input_o\ & (\displayUnit|s_addrCounters[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displayUnit|s_addrCounters[0][3]~q\,
	datac => \SW[1]~input_o\,
	datad => \displayUnit|s_addrCounters[2][3]~q\,
	combout => \displayUnit|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y31_N6
\displayUnit|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux2~1_combout\ = (\displayUnit|Mux40~0_combout\) # (\displayUnit|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux40~0_combout\,
	datac => \displayUnit|Mux2~0_combout\,
	combout => \displayUnit|Mux2~1_combout\);

-- Location: LCCOMB_X88_Y31_N22
\displayUnit|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Add0~8_combout\ = ((\displayUnit|s_inc~q\ $ (\displayUnit|Mux1~1_combout\ $ (\displayUnit|Add0~7\)))) # (GND)
-- \displayUnit|Add0~9\ = CARRY((\displayUnit|s_inc~q\ & (\displayUnit|Mux1~1_combout\ & !\displayUnit|Add0~7\)) # (!\displayUnit|s_inc~q\ & ((\displayUnit|Mux1~1_combout\) # (!\displayUnit|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \displayUnit|Mux1~1_combout\,
	datad => VCC,
	cin => \displayUnit|Add0~7\,
	combout => \displayUnit|Add0~8_combout\,
	cout => \displayUnit|Add0~9\);

-- Location: FF_X88_Y31_N23
\displayUnit|s_addrCounters[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|Add0~8_combout\,
	ena => \displayUnit|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[0][4]~q\);

-- Location: LCCOMB_X89_Y31_N20
\displayUnit|s_addrCounters~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~4_combout\ = (\displayUnit|Decoder0~1_combout\ & (\displayUnit|Add0~8_combout\)) # (!\displayUnit|Decoder0~1_combout\ & ((\displayUnit|s_addrCounters[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Add0~8_combout\,
	datac => \displayUnit|s_addrCounters[2][4]~q\,
	datad => \displayUnit|Decoder0~1_combout\,
	combout => \displayUnit|s_addrCounters~4_combout\);

-- Location: FF_X89_Y31_N21
\displayUnit|s_addrCounters[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[2][4]~q\);

-- Location: LCCOMB_X89_Y31_N0
\displayUnit|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux1~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[2][4]~q\))) # (!\SW[1]~input_o\ & (\displayUnit|s_addrCounters[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|s_addrCounters[0][4]~q\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[2][4]~q\,
	combout => \displayUnit|Mux1~0_combout\);

-- Location: LCCOMB_X91_Y31_N28
\displayUnit|s_addrCounters~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~9_combout\ = (\displayUnit|Decoder0~2_combout\ & (\displayUnit|Add0~8_combout\)) # (!\displayUnit|Decoder0~2_combout\ & ((\displayUnit|s_addrCounters[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Add0~8_combout\,
	datab => \displayUnit|Decoder0~2_combout\,
	datac => \displayUnit|s_addrCounters[3][4]~q\,
	combout => \displayUnit|s_addrCounters~9_combout\);

-- Location: FF_X91_Y31_N29
\displayUnit|s_addrCounters[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[3][4]~q\);

-- Location: LCCOMB_X91_Y31_N22
\displayUnit|s_addrCounters~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~15_combout\ = (\displayUnit|Decoder0~3_combout\ & (\displayUnit|Add0~8_combout\)) # (!\displayUnit|Decoder0~3_combout\ & ((\displayUnit|s_addrCounters[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Add0~8_combout\,
	datab => \displayUnit|Decoder0~3_combout\,
	datac => \displayUnit|s_addrCounters[1][4]~q\,
	combout => \displayUnit|s_addrCounters~15_combout\);

-- Location: FF_X91_Y31_N23
\displayUnit|s_addrCounters[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[1][4]~q\);

-- Location: LCCOMB_X91_Y31_N24
\displayUnit|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux39~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displayUnit|s_addrCounters[3][4]~q\)) # (!\SW[1]~input_o\ & ((\displayUnit|s_addrCounters[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|s_addrCounters[3][4]~q\,
	datac => \displayUnit|s_addrCounters[1][4]~q\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux39~0_combout\);

-- Location: LCCOMB_X89_Y31_N18
\displayUnit|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux1~1_combout\ = (\displayUnit|Mux1~0_combout\) # (\displayUnit|Mux39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Mux1~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux1~1_combout\);

-- Location: LCCOMB_X88_Y31_N24
\displayUnit|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Add0~10_combout\ = \displayUnit|s_inc~q\ $ (\displayUnit|Mux0~1_combout\ $ (!\displayUnit|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_inc~q\,
	datab => \displayUnit|Mux0~1_combout\,
	cin => \displayUnit|Add0~9\,
	combout => \displayUnit|Add0~10_combout\);

-- Location: LCCOMB_X91_Y31_N6
\displayUnit|s_addrCounters~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|s_addrCounters~10_combout\ = (\displayUnit|Decoder0~2_combout\ & (\displayUnit|Add0~10_combout\)) # (!\displayUnit|Decoder0~2_combout\ & ((\displayUnit|s_addrCounters[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Add0~10_combout\,
	datab => \displayUnit|Decoder0~2_combout\,
	datac => \displayUnit|s_addrCounters[3][5]~q\,
	combout => \displayUnit|s_addrCounters~10_combout\);

-- Location: FF_X91_Y31_N7
\displayUnit|s_addrCounters[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	d => \displayUnit|s_addrCounters~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displayUnit|s_addrCounters[3][5]~q\);

-- Location: LCCOMB_X91_Y31_N0
\Ram|s_memory~2088\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2088_combout\ = (!\displayUnit|s_addrCounters[3][5]~q\ & (!\displayUnit|s_addrCounters[3][3]~q\ & (!\displayUnit|s_addrCounters[3][4]~q\ & !\displayUnit|s_addrCounters[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[3][5]~q\,
	datab => \displayUnit|s_addrCounters[3][3]~q\,
	datac => \displayUnit|s_addrCounters[3][4]~q\,
	datad => \displayUnit|s_addrCounters[3][2]~q\,
	combout => \Ram|s_memory~2088_combout\);

-- Location: LCCOMB_X86_Y35_N4
\Ram|s_memory~2089\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2089_combout\ = (\Ram|s_memory~2087_combout\ & \Ram|s_memory~2088_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~2087_combout\,
	datac => \Ram|s_memory~2088_combout\,
	combout => \Ram|s_memory~2089_combout\);

-- Location: LCCOMB_X85_Y38_N12
\RegFile|modo|s_memory~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|s_memory~1062_combout\ = (\InstructionRegister|DataOut\(16) & (!\ControlUnit|CS.E7~q\ & ((\ControlUnit|CS.E9~q\) # (\ControlUnit|CS.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E9~q\,
	datab => \ControlUnit|CS.E4~q\,
	datac => \InstructionRegister|DataOut\(16),
	datad => \ControlUnit|CS.E7~q\,
	combout => \RegFile|modo|s_memory~1062_combout\);

-- Location: FF_X82_Y34_N25
\RegFile|modo|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(2),
	sload => VCC,
	ena => \RegFile|modo|s_memory~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|modo|s_memory~72_q\);

-- Location: LCCOMB_X89_Y31_N2
\RegFile|modo|readData[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[2]~0_combout\ = (!\displayUnit|s_addrCounters[2][1]~q\ & (!\displayUnit|s_addrCounters[2][2]~q\ & (\displayUnit|s_addrCounters[2][0]~q\ & !\displayUnit|s_addrCounters[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[2][1]~q\,
	datab => \displayUnit|s_addrCounters[2][2]~q\,
	datac => \displayUnit|s_addrCounters[2][0]~q\,
	datad => \displayUnit|s_addrCounters[2][3]~q\,
	combout => \RegFile|modo|readData[2]~0_combout\);

-- Location: LCCOMB_X82_Y34_N24
\RegFile|modo|readData[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[2]~1_combout\ = (!\displayUnit|s_addrCounters[2][4]~q\ & (\RegFile|modo|s_memory~72_q\ & \RegFile|modo|readData[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][4]~q\,
	datac => \RegFile|modo|s_memory~72_q\,
	datad => \RegFile|modo|readData[2]~0_combout\,
	combout => \RegFile|modo|readData[2]~1_combout\);

-- Location: LCCOMB_X89_Y34_N16
\displayUnit|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux35~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\) # (\RegFile|modo|readData[2]~1_combout\)))) # (!\SW[1]~input_o\ & (\pcupdate|s_pc\(2) & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdate|s_pc\(2),
	datac => \SW[0]~input_o\,
	datad => \RegFile|modo|readData[2]~1_combout\,
	combout => \displayUnit|Mux35~0_combout\);

-- Location: LCCOMB_X88_Y37_N10
\displayUnit|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux35~1_combout\ = (\displayUnit|Mux35~0_combout\ & ((\Ram|s_memory~2089_combout\) # ((!\SW[0]~input_o\)))) # (!\displayUnit|Mux35~0_combout\ & (((\SW[0]~input_o\ & \ALU|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~2089_combout\,
	datab => \displayUnit|Mux35~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \ALU|Add0~8_combout\,
	combout => \displayUnit|Mux35~1_combout\);

-- Location: LCCOMB_X88_Y37_N24
\displayUnit|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux52~0_combout\ = (\displayUnit|Mux34~0_combout\ & (\displayUnit|Mux37~0_combout\ & (\displayUnit|Mux36~0_combout\ $ (\displayUnit|Mux35~1_combout\)))) # (!\displayUnit|Mux34~0_combout\ & (!\displayUnit|Mux36~0_combout\ & 
-- (\displayUnit|Mux37~0_combout\ $ (\displayUnit|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux34~0_combout\,
	datab => \displayUnit|Mux36~0_combout\,
	datac => \displayUnit|Mux37~0_combout\,
	datad => \displayUnit|Mux35~1_combout\,
	combout => \displayUnit|Mux52~0_combout\);

-- Location: LCCOMB_X88_Y37_N18
\displayUnit|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux51~0_combout\ = (\displayUnit|Mux34~0_combout\ & ((\displayUnit|Mux37~0_combout\ & (\displayUnit|Mux36~0_combout\)) # (!\displayUnit|Mux37~0_combout\ & ((\displayUnit|Mux35~1_combout\))))) # (!\displayUnit|Mux34~0_combout\ & 
-- (\displayUnit|Mux35~1_combout\ & (\displayUnit|Mux36~0_combout\ $ (\displayUnit|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux34~0_combout\,
	datab => \displayUnit|Mux36~0_combout\,
	datac => \displayUnit|Mux37~0_combout\,
	datad => \displayUnit|Mux35~1_combout\,
	combout => \displayUnit|Mux51~0_combout\);

-- Location: LCCOMB_X88_Y37_N4
\displayUnit|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux50~0_combout\ = (\displayUnit|Mux34~0_combout\ & (\displayUnit|Mux35~1_combout\ & ((\displayUnit|Mux36~0_combout\) # (!\displayUnit|Mux37~0_combout\)))) # (!\displayUnit|Mux34~0_combout\ & (\displayUnit|Mux36~0_combout\ & 
-- (!\displayUnit|Mux37~0_combout\ & !\displayUnit|Mux35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux34~0_combout\,
	datab => \displayUnit|Mux36~0_combout\,
	datac => \displayUnit|Mux37~0_combout\,
	datad => \displayUnit|Mux35~1_combout\,
	combout => \displayUnit|Mux50~0_combout\);

-- Location: LCCOMB_X88_Y37_N14
\displayUnit|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux49~0_combout\ = (\displayUnit|Mux36~0_combout\ & ((\displayUnit|Mux37~0_combout\ & ((\displayUnit|Mux35~1_combout\))) # (!\displayUnit|Mux37~0_combout\ & (\displayUnit|Mux34~0_combout\ & !\displayUnit|Mux35~1_combout\)))) # 
-- (!\displayUnit|Mux36~0_combout\ & (!\displayUnit|Mux34~0_combout\ & (\displayUnit|Mux37~0_combout\ $ (\displayUnit|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux34~0_combout\,
	datab => \displayUnit|Mux36~0_combout\,
	datac => \displayUnit|Mux37~0_combout\,
	datad => \displayUnit|Mux35~1_combout\,
	combout => \displayUnit|Mux49~0_combout\);

-- Location: LCCOMB_X88_Y37_N0
\displayUnit|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux48~0_combout\ = (\displayUnit|Mux36~0_combout\ & (!\displayUnit|Mux34~0_combout\ & (\displayUnit|Mux37~0_combout\))) # (!\displayUnit|Mux36~0_combout\ & ((\displayUnit|Mux35~1_combout\ & (!\displayUnit|Mux34~0_combout\)) # 
-- (!\displayUnit|Mux35~1_combout\ & ((\displayUnit|Mux37~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux34~0_combout\,
	datab => \displayUnit|Mux36~0_combout\,
	datac => \displayUnit|Mux37~0_combout\,
	datad => \displayUnit|Mux35~1_combout\,
	combout => \displayUnit|Mux48~0_combout\);

-- Location: LCCOMB_X88_Y37_N2
\displayUnit|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux47~0_combout\ = (\displayUnit|Mux36~0_combout\ & (!\displayUnit|Mux34~0_combout\ & ((\displayUnit|Mux37~0_combout\) # (!\displayUnit|Mux35~1_combout\)))) # (!\displayUnit|Mux36~0_combout\ & (\displayUnit|Mux37~0_combout\ & 
-- (\displayUnit|Mux34~0_combout\ $ (!\displayUnit|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux34~0_combout\,
	datab => \displayUnit|Mux36~0_combout\,
	datac => \displayUnit|Mux37~0_combout\,
	datad => \displayUnit|Mux35~1_combout\,
	combout => \displayUnit|Mux47~0_combout\);

-- Location: LCCOMB_X88_Y37_N12
\displayUnit|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux46~0_combout\ = (\displayUnit|Mux37~0_combout\ & ((\displayUnit|Mux34~0_combout\) # (\displayUnit|Mux36~0_combout\ $ (\displayUnit|Mux35~1_combout\)))) # (!\displayUnit|Mux37~0_combout\ & ((\displayUnit|Mux36~0_combout\) # 
-- (\displayUnit|Mux34~0_combout\ $ (\displayUnit|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux34~0_combout\,
	datab => \displayUnit|Mux36~0_combout\,
	datac => \displayUnit|Mux37~0_combout\,
	datad => \displayUnit|Mux35~1_combout\,
	combout => \displayUnit|Mux46~0_combout\);

-- Location: LCCOMB_X92_Y33_N22
\displayUnit|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux33~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~14_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~14_combout\,
	datab => \pcupdate|s_pc\(4),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux33~0_combout\);

-- Location: LCCOMB_X92_Y33_N18
\displayUnit|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux32~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~17_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(5),
	datab => \ALU|Add0~17_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux32~0_combout\);

-- Location: LCCOMB_X92_Y33_N30
\displayUnit|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux30~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~23_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~23_combout\,
	datab => \pcupdate|s_pc\(7),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux30~0_combout\);

-- Location: LCCOMB_X92_Y33_N12
\displayUnit|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux31~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~20_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~20_combout\,
	datab => \pcupdate|s_pc\(6),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux31~0_combout\);

-- Location: LCCOMB_X92_Y33_N8
\displayUnit|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux59~0_combout\ = (\displayUnit|Mux30~0_combout\ & (\displayUnit|Mux33~0_combout\ & (\displayUnit|Mux32~0_combout\ $ (\displayUnit|Mux31~0_combout\)))) # (!\displayUnit|Mux30~0_combout\ & (!\displayUnit|Mux32~0_combout\ & 
-- (\displayUnit|Mux33~0_combout\ $ (\displayUnit|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux33~0_combout\,
	datab => \displayUnit|Mux32~0_combout\,
	datac => \displayUnit|Mux30~0_combout\,
	datad => \displayUnit|Mux31~0_combout\,
	combout => \displayUnit|Mux59~0_combout\);

-- Location: LCCOMB_X92_Y33_N26
\displayUnit|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux58~0_combout\ = (\displayUnit|Mux32~0_combout\ & ((\displayUnit|Mux33~0_combout\ & (\displayUnit|Mux30~0_combout\)) # (!\displayUnit|Mux33~0_combout\ & ((\displayUnit|Mux31~0_combout\))))) # (!\displayUnit|Mux32~0_combout\ & 
-- (\displayUnit|Mux31~0_combout\ & (\displayUnit|Mux33~0_combout\ $ (\displayUnit|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux33~0_combout\,
	datab => \displayUnit|Mux32~0_combout\,
	datac => \displayUnit|Mux30~0_combout\,
	datad => \displayUnit|Mux31~0_combout\,
	combout => \displayUnit|Mux58~0_combout\);

-- Location: LCCOMB_X92_Y33_N28
\displayUnit|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux57~0_combout\ = (\displayUnit|Mux30~0_combout\ & (\displayUnit|Mux31~0_combout\ & ((\displayUnit|Mux32~0_combout\) # (!\displayUnit|Mux33~0_combout\)))) # (!\displayUnit|Mux30~0_combout\ & (!\displayUnit|Mux33~0_combout\ & 
-- (\displayUnit|Mux32~0_combout\ & !\displayUnit|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux33~0_combout\,
	datab => \displayUnit|Mux32~0_combout\,
	datac => \displayUnit|Mux30~0_combout\,
	datad => \displayUnit|Mux31~0_combout\,
	combout => \displayUnit|Mux57~0_combout\);

-- Location: LCCOMB_X92_Y33_N14
\displayUnit|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux56~0_combout\ = (\displayUnit|Mux32~0_combout\ & ((\displayUnit|Mux33~0_combout\ & ((\displayUnit|Mux31~0_combout\))) # (!\displayUnit|Mux33~0_combout\ & (\displayUnit|Mux30~0_combout\ & !\displayUnit|Mux31~0_combout\)))) # 
-- (!\displayUnit|Mux32~0_combout\ & (!\displayUnit|Mux30~0_combout\ & (\displayUnit|Mux33~0_combout\ $ (\displayUnit|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux33~0_combout\,
	datab => \displayUnit|Mux32~0_combout\,
	datac => \displayUnit|Mux30~0_combout\,
	datad => \displayUnit|Mux31~0_combout\,
	combout => \displayUnit|Mux56~0_combout\);

-- Location: LCCOMB_X92_Y33_N16
\displayUnit|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux55~0_combout\ = (\displayUnit|Mux32~0_combout\ & (\displayUnit|Mux33~0_combout\ & (!\displayUnit|Mux30~0_combout\))) # (!\displayUnit|Mux32~0_combout\ & ((\displayUnit|Mux31~0_combout\ & ((!\displayUnit|Mux30~0_combout\))) # 
-- (!\displayUnit|Mux31~0_combout\ & (\displayUnit|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux33~0_combout\,
	datab => \displayUnit|Mux32~0_combout\,
	datac => \displayUnit|Mux30~0_combout\,
	datad => \displayUnit|Mux31~0_combout\,
	combout => \displayUnit|Mux55~0_combout\);

-- Location: LCCOMB_X92_Y33_N10
\displayUnit|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux54~0_combout\ = (\displayUnit|Mux33~0_combout\ & (\displayUnit|Mux30~0_combout\ $ (((\displayUnit|Mux32~0_combout\) # (!\displayUnit|Mux31~0_combout\))))) # (!\displayUnit|Mux33~0_combout\ & (\displayUnit|Mux32~0_combout\ & 
-- (!\displayUnit|Mux30~0_combout\ & !\displayUnit|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux33~0_combout\,
	datab => \displayUnit|Mux32~0_combout\,
	datac => \displayUnit|Mux30~0_combout\,
	datad => \displayUnit|Mux31~0_combout\,
	combout => \displayUnit|Mux54~0_combout\);

-- Location: LCCOMB_X92_Y33_N20
\displayUnit|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux53~0_combout\ = (\displayUnit|Mux33~0_combout\ & ((\displayUnit|Mux30~0_combout\) # (\displayUnit|Mux32~0_combout\ $ (\displayUnit|Mux31~0_combout\)))) # (!\displayUnit|Mux33~0_combout\ & ((\displayUnit|Mux32~0_combout\) # 
-- (\displayUnit|Mux30~0_combout\ $ (\displayUnit|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux33~0_combout\,
	datab => \displayUnit|Mux32~0_combout\,
	datac => \displayUnit|Mux30~0_combout\,
	datad => \displayUnit|Mux31~0_combout\,
	combout => \displayUnit|Mux53~0_combout\);

-- Location: LCCOMB_X85_Y35_N6
\displayUnit|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux28~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~29_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~29_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(9),
	combout => \displayUnit|Mux28~0_combout\);

-- Location: LCCOMB_X85_Y35_N14
\displayUnit|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux26~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~35_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ALU|Add0~35_combout\,
	datac => \SW[1]~input_o\,
	datad => \pcupdate|s_pc\(11),
	combout => \displayUnit|Mux26~0_combout\);

-- Location: LCCOMB_X85_Y35_N26
\displayUnit|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux27~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~32_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(10),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \ALU|Add0~32_combout\,
	combout => \displayUnit|Mux27~0_combout\);

-- Location: LCCOMB_X85_Y35_N2
\displayUnit|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux29~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~26_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \pcupdate|s_pc\(8),
	datad => \ALU|Add0~26_combout\,
	combout => \displayUnit|Mux29~0_combout\);

-- Location: LCCOMB_X114_Y19_N8
\displayUnit|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux66~0_combout\ = (\displayUnit|Mux26~0_combout\ & (\displayUnit|Mux29~0_combout\ & (\displayUnit|Mux28~0_combout\ $ (\displayUnit|Mux27~0_combout\)))) # (!\displayUnit|Mux26~0_combout\ & (!\displayUnit|Mux28~0_combout\ & 
-- (\displayUnit|Mux27~0_combout\ $ (\displayUnit|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux28~0_combout\,
	datab => \displayUnit|Mux26~0_combout\,
	datac => \displayUnit|Mux27~0_combout\,
	datad => \displayUnit|Mux29~0_combout\,
	combout => \displayUnit|Mux66~0_combout\);

-- Location: LCCOMB_X114_Y19_N18
\displayUnit|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux65~0_combout\ = (\displayUnit|Mux28~0_combout\ & ((\displayUnit|Mux29~0_combout\ & (\displayUnit|Mux26~0_combout\)) # (!\displayUnit|Mux29~0_combout\ & ((\displayUnit|Mux27~0_combout\))))) # (!\displayUnit|Mux28~0_combout\ & 
-- (\displayUnit|Mux27~0_combout\ & (\displayUnit|Mux26~0_combout\ $ (\displayUnit|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux28~0_combout\,
	datab => \displayUnit|Mux26~0_combout\,
	datac => \displayUnit|Mux27~0_combout\,
	datad => \displayUnit|Mux29~0_combout\,
	combout => \displayUnit|Mux65~0_combout\);

-- Location: LCCOMB_X114_Y19_N4
\displayUnit|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux64~0_combout\ = (\displayUnit|Mux26~0_combout\ & (\displayUnit|Mux27~0_combout\ & ((\displayUnit|Mux28~0_combout\) # (!\displayUnit|Mux29~0_combout\)))) # (!\displayUnit|Mux26~0_combout\ & (\displayUnit|Mux28~0_combout\ & 
-- (!\displayUnit|Mux27~0_combout\ & !\displayUnit|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux28~0_combout\,
	datab => \displayUnit|Mux26~0_combout\,
	datac => \displayUnit|Mux27~0_combout\,
	datad => \displayUnit|Mux29~0_combout\,
	combout => \displayUnit|Mux64~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\displayUnit|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux63~0_combout\ = (\displayUnit|Mux28~0_combout\ & ((\displayUnit|Mux27~0_combout\ & ((\displayUnit|Mux29~0_combout\))) # (!\displayUnit|Mux27~0_combout\ & (\displayUnit|Mux26~0_combout\ & !\displayUnit|Mux29~0_combout\)))) # 
-- (!\displayUnit|Mux28~0_combout\ & (!\displayUnit|Mux26~0_combout\ & (\displayUnit|Mux27~0_combout\ $ (\displayUnit|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux28~0_combout\,
	datab => \displayUnit|Mux26~0_combout\,
	datac => \displayUnit|Mux27~0_combout\,
	datad => \displayUnit|Mux29~0_combout\,
	combout => \displayUnit|Mux63~0_combout\);

-- Location: LCCOMB_X114_Y19_N24
\displayUnit|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux62~0_combout\ = (\displayUnit|Mux28~0_combout\ & (!\displayUnit|Mux26~0_combout\ & ((\displayUnit|Mux29~0_combout\)))) # (!\displayUnit|Mux28~0_combout\ & ((\displayUnit|Mux27~0_combout\ & (!\displayUnit|Mux26~0_combout\)) # 
-- (!\displayUnit|Mux27~0_combout\ & ((\displayUnit|Mux29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux28~0_combout\,
	datab => \displayUnit|Mux26~0_combout\,
	datac => \displayUnit|Mux27~0_combout\,
	datad => \displayUnit|Mux29~0_combout\,
	combout => \displayUnit|Mux62~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\displayUnit|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux61~0_combout\ = (\displayUnit|Mux28~0_combout\ & (!\displayUnit|Mux26~0_combout\ & ((\displayUnit|Mux29~0_combout\) # (!\displayUnit|Mux27~0_combout\)))) # (!\displayUnit|Mux28~0_combout\ & (\displayUnit|Mux29~0_combout\ & 
-- (\displayUnit|Mux26~0_combout\ $ (!\displayUnit|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux28~0_combout\,
	datab => \displayUnit|Mux26~0_combout\,
	datac => \displayUnit|Mux27~0_combout\,
	datad => \displayUnit|Mux29~0_combout\,
	combout => \displayUnit|Mux61~0_combout\);

-- Location: LCCOMB_X114_Y19_N28
\displayUnit|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux60~0_combout\ = (\displayUnit|Mux29~0_combout\ & ((\displayUnit|Mux26~0_combout\) # (\displayUnit|Mux28~0_combout\ $ (\displayUnit|Mux27~0_combout\)))) # (!\displayUnit|Mux29~0_combout\ & ((\displayUnit|Mux28~0_combout\) # 
-- (\displayUnit|Mux26~0_combout\ $ (\displayUnit|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux28~0_combout\,
	datab => \displayUnit|Mux26~0_combout\,
	datac => \displayUnit|Mux27~0_combout\,
	datad => \displayUnit|Mux29~0_combout\,
	combout => \displayUnit|Mux60~0_combout\);

-- Location: LCCOMB_X88_Y36_N22
\displayUnit|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux23~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~44_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(14),
	datab => \ALU|Add0~44_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux23~0_combout\);

-- Location: LCCOMB_X88_Y36_N16
\displayUnit|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux22~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~47_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU|Add0~47_combout\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(15),
	combout => \displayUnit|Mux22~0_combout\);

-- Location: LCCOMB_X88_Y36_N28
\displayUnit|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux24~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~41_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(13),
	datab => \ALU|Add0~41_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux24~0_combout\);

-- Location: LCCOMB_X88_Y36_N2
\displayUnit|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux25~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~38_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(12),
	datab => \ALU|Add0~38_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux25~0_combout\);

-- Location: LCCOMB_X100_Y23_N8
\displayUnit|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux73~0_combout\ = (\displayUnit|Mux23~0_combout\ & (!\displayUnit|Mux24~0_combout\ & (\displayUnit|Mux22~0_combout\ $ (!\displayUnit|Mux25~0_combout\)))) # (!\displayUnit|Mux23~0_combout\ & (\displayUnit|Mux25~0_combout\ & 
-- (\displayUnit|Mux22~0_combout\ $ (!\displayUnit|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux23~0_combout\,
	datab => \displayUnit|Mux22~0_combout\,
	datac => \displayUnit|Mux24~0_combout\,
	datad => \displayUnit|Mux25~0_combout\,
	combout => \displayUnit|Mux73~0_combout\);

-- Location: LCCOMB_X100_Y23_N10
\displayUnit|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux72~0_combout\ = (\displayUnit|Mux22~0_combout\ & ((\displayUnit|Mux25~0_combout\ & ((\displayUnit|Mux24~0_combout\))) # (!\displayUnit|Mux25~0_combout\ & (\displayUnit|Mux23~0_combout\)))) # (!\displayUnit|Mux22~0_combout\ & 
-- (\displayUnit|Mux23~0_combout\ & (\displayUnit|Mux24~0_combout\ $ (\displayUnit|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux23~0_combout\,
	datab => \displayUnit|Mux22~0_combout\,
	datac => \displayUnit|Mux24~0_combout\,
	datad => \displayUnit|Mux25~0_combout\,
	combout => \displayUnit|Mux72~0_combout\);

-- Location: LCCOMB_X100_Y23_N4
\displayUnit|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux71~0_combout\ = (\displayUnit|Mux23~0_combout\ & (\displayUnit|Mux22~0_combout\ & ((\displayUnit|Mux24~0_combout\) # (!\displayUnit|Mux25~0_combout\)))) # (!\displayUnit|Mux23~0_combout\ & (!\displayUnit|Mux22~0_combout\ & 
-- (\displayUnit|Mux24~0_combout\ & !\displayUnit|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux23~0_combout\,
	datab => \displayUnit|Mux22~0_combout\,
	datac => \displayUnit|Mux24~0_combout\,
	datad => \displayUnit|Mux25~0_combout\,
	combout => \displayUnit|Mux71~0_combout\);

-- Location: LCCOMB_X100_Y23_N14
\displayUnit|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux70~0_combout\ = (\displayUnit|Mux24~0_combout\ & ((\displayUnit|Mux23~0_combout\ & ((\displayUnit|Mux25~0_combout\))) # (!\displayUnit|Mux23~0_combout\ & (\displayUnit|Mux22~0_combout\ & !\displayUnit|Mux25~0_combout\)))) # 
-- (!\displayUnit|Mux24~0_combout\ & (!\displayUnit|Mux22~0_combout\ & (\displayUnit|Mux23~0_combout\ $ (\displayUnit|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux23~0_combout\,
	datab => \displayUnit|Mux22~0_combout\,
	datac => \displayUnit|Mux24~0_combout\,
	datad => \displayUnit|Mux25~0_combout\,
	combout => \displayUnit|Mux70~0_combout\);

-- Location: LCCOMB_X100_Y23_N0
\displayUnit|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux69~0_combout\ = (\displayUnit|Mux24~0_combout\ & (((!\displayUnit|Mux22~0_combout\ & \displayUnit|Mux25~0_combout\)))) # (!\displayUnit|Mux24~0_combout\ & ((\displayUnit|Mux23~0_combout\ & (!\displayUnit|Mux22~0_combout\)) # 
-- (!\displayUnit|Mux23~0_combout\ & ((\displayUnit|Mux25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux23~0_combout\,
	datab => \displayUnit|Mux22~0_combout\,
	datac => \displayUnit|Mux24~0_combout\,
	datad => \displayUnit|Mux25~0_combout\,
	combout => \displayUnit|Mux69~0_combout\);

-- Location: LCCOMB_X100_Y23_N26
\displayUnit|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux68~0_combout\ = (\displayUnit|Mux23~0_combout\ & (\displayUnit|Mux25~0_combout\ & (\displayUnit|Mux22~0_combout\ $ (\displayUnit|Mux24~0_combout\)))) # (!\displayUnit|Mux23~0_combout\ & (!\displayUnit|Mux22~0_combout\ & 
-- ((\displayUnit|Mux24~0_combout\) # (\displayUnit|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux23~0_combout\,
	datab => \displayUnit|Mux22~0_combout\,
	datac => \displayUnit|Mux24~0_combout\,
	datad => \displayUnit|Mux25~0_combout\,
	combout => \displayUnit|Mux68~0_combout\);

-- Location: LCCOMB_X100_Y23_N12
\displayUnit|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux67~0_combout\ = (\displayUnit|Mux25~0_combout\ & ((\displayUnit|Mux22~0_combout\) # (\displayUnit|Mux23~0_combout\ $ (\displayUnit|Mux24~0_combout\)))) # (!\displayUnit|Mux25~0_combout\ & ((\displayUnit|Mux24~0_combout\) # 
-- (\displayUnit|Mux23~0_combout\ $ (\displayUnit|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux23~0_combout\,
	datab => \displayUnit|Mux22~0_combout\,
	datac => \displayUnit|Mux24~0_combout\,
	datad => \displayUnit|Mux25~0_combout\,
	combout => \displayUnit|Mux67~0_combout\);

-- Location: LCCOMB_X89_Y31_N8
\displayUnit|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux43~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\displayUnit|s_addrCounters[3][0]~q\))) # (!\SW[0]~input_o\ & (\displayUnit|s_addrCounters[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|s_addrCounters[2][2]~q\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[3][0]~q\,
	combout => \displayUnit|Mux43~0_combout\);

-- Location: LCCOMB_X89_Y31_N26
\displayUnit|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux43~1_combout\ = (\displayUnit|Mux43~0_combout\) # ((\SW[0]~input_o\ & (\displayUnit|s_addrCounters[1][0]~q\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displayUnit|s_addrCounters[1][0]~q\,
	datac => \displayUnit|Mux43~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux43~1_combout\);

-- Location: LCCOMB_X88_Y32_N24
\displayUnit|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux45~0_combout\ = (\displayUnit|s_addrCounters[2][0]~q\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][0]~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux45~0_combout\);

-- Location: LCCOMB_X89_Y31_N12
\displayUnit|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux42~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\displayUnit|s_addrCounters[3][1]~q\)) # (!\SW[0]~input_o\ & ((\displayUnit|s_addrCounters[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|s_addrCounters[3][1]~q\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[2][3]~q\,
	combout => \displayUnit|Mux42~0_combout\);

-- Location: LCCOMB_X89_Y31_N6
\displayUnit|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux42~1_combout\ = (\displayUnit|Mux42~0_combout\) # ((!\SW[1]~input_o\ & (\SW[0]~input_o\ & \displayUnit|s_addrCounters[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux42~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|s_addrCounters[1][1]~q\,
	combout => \displayUnit|Mux42~1_combout\);

-- Location: LCCOMB_X89_Y31_N30
\displayUnit|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux44~0_combout\ = (\displayUnit|s_addrCounters[2][1]~q\ & (!\SW[0]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[2][1]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux44~0_combout\);

-- Location: LCCOMB_X85_Y32_N10
\displayUnit|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux122~0_combout\ = (\displayUnit|Mux43~1_combout\ & (!\displayUnit|Mux44~0_combout\ & (\displayUnit|Mux45~0_combout\ $ (!\displayUnit|Mux42~1_combout\)))) # (!\displayUnit|Mux43~1_combout\ & (\displayUnit|Mux45~0_combout\ & 
-- (\displayUnit|Mux42~1_combout\ $ (!\displayUnit|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux43~1_combout\,
	datab => \displayUnit|Mux45~0_combout\,
	datac => \displayUnit|Mux42~1_combout\,
	datad => \displayUnit|Mux44~0_combout\,
	combout => \displayUnit|Mux122~0_combout\);

-- Location: FF_X82_Y34_N19
\RegFile|modo|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(16),
	sload => VCC,
	ena => \RegFile|modo|s_memory~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|modo|s_memory~86_q\);

-- Location: LCCOMB_X82_Y34_N18
\RegFile|modo|readData[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[16]~2_combout\ = (!\displayUnit|s_addrCounters[2][4]~q\ & (\RegFile|modo|s_memory~86_q\ & \RegFile|modo|readData[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][4]~q\,
	datac => \RegFile|modo|s_memory~86_q\,
	datad => \RegFile|modo|readData[2]~0_combout\,
	combout => \RegFile|modo|readData[16]~2_combout\);

-- Location: LCCOMB_X83_Y36_N24
\displayUnit|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux21~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\RegFile|modo|readData[16]~2_combout\)) # (!\SW[1]~input_o\ & ((\pcupdate|s_pc\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \RegFile|modo|readData[16]~2_combout\,
	datac => \pcupdate|s_pc\(16),
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux21~0_combout\);

-- Location: LCCOMB_X86_Y35_N0
\Ram|s_memory~2090\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2090_combout\ = (\displayUnit|s_addrCounters[3][0]~q\ & (\displayUnit|s_addrCounters[3][1]~q\)) # (!\displayUnit|s_addrCounters[3][0]~q\ & ((\displayUnit|s_addrCounters[3][1]~q\ & (\Ram|s_memory~119_q\)) # 
-- (!\displayUnit|s_addrCounters[3][1]~q\ & ((\Ram|s_memory~55_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[3][0]~q\,
	datab => \displayUnit|s_addrCounters[3][1]~q\,
	datac => \Ram|s_memory~119_q\,
	datad => \Ram|s_memory~55_q\,
	combout => \Ram|s_memory~2090_combout\);

-- Location: LCCOMB_X86_Y35_N2
\Ram|s_memory~2091\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2091_combout\ = (!\Ram|s_memory~2090_combout\ & (\Ram|s_memory~2088_combout\ & ((!\Ram|s_memory~87_q\) # (!\displayUnit|s_addrCounters[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[3][0]~q\,
	datab => \Ram|s_memory~2090_combout\,
	datac => \Ram|s_memory~2088_combout\,
	datad => \Ram|s_memory~87_q\,
	combout => \Ram|s_memory~2091_combout\);

-- Location: LCCOMB_X83_Y36_N10
\displayUnit|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux21~1_combout\ = (\displayUnit|Mux21~0_combout\ & (((\Ram|s_memory~2091_combout\) # (!\SW[0]~input_o\)))) # (!\displayUnit|Mux21~0_combout\ & (\ALU|Add0~50_combout\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~50_combout\,
	datab => \displayUnit|Mux21~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Ram|s_memory~2091_combout\,
	combout => \displayUnit|Mux21~1_combout\);

-- Location: LCCOMB_X83_Y36_N14
\displayUnit|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux20~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~53_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(17),
	datab => \ALU|Add0~53_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux20~0_combout\);

-- Location: LCCOMB_X83_Y36_N2
\displayUnit|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux19~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~56_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(18),
	datab => \ALU|Add0~56_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux19~0_combout\);

-- Location: LCCOMB_X83_Y36_N6
\displayUnit|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux18~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~59_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~59_combout\,
	datab => \pcupdate|s_pc\(19),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux18~0_combout\);

-- Location: LCCOMB_X85_Y32_N16
\displayUnit|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux80~0_combout\ = (\displayUnit|Mux19~0_combout\ & (!\displayUnit|Mux20~0_combout\ & (\displayUnit|Mux21~1_combout\ $ (!\displayUnit|Mux18~0_combout\)))) # (!\displayUnit|Mux19~0_combout\ & (\displayUnit|Mux21~1_combout\ & 
-- (\displayUnit|Mux20~0_combout\ $ (!\displayUnit|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux21~1_combout\,
	datab => \displayUnit|Mux20~0_combout\,
	datac => \displayUnit|Mux19~0_combout\,
	datad => \displayUnit|Mux18~0_combout\,
	combout => \displayUnit|Mux80~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X91_Y31_N26
\displayUnit|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Decoder0~0_combout\ = (!\SW[1]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Decoder0~0_combout\);

-- Location: LCCOMB_X85_Y32_N20
\displayUnit|disp4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp4[0]~0_combout\ = (\SW[2]~input_o\ & ((\displayUnit|Mux122~0_combout\) # ((\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux80~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux122~0_combout\,
	datab => \displayUnit|Mux80~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp4[0]~0_combout\);

-- Location: LCCOMB_X85_Y32_N24
\displayUnit|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux121~0_combout\ = (\displayUnit|Mux42~1_combout\ & ((\displayUnit|Mux45~0_combout\ & ((\displayUnit|Mux44~0_combout\))) # (!\displayUnit|Mux45~0_combout\ & (\displayUnit|Mux43~1_combout\)))) # (!\displayUnit|Mux42~1_combout\ & 
-- (\displayUnit|Mux43~1_combout\ & (\displayUnit|Mux45~0_combout\ $ (\displayUnit|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux43~1_combout\,
	datab => \displayUnit|Mux45~0_combout\,
	datac => \displayUnit|Mux42~1_combout\,
	datad => \displayUnit|Mux44~0_combout\,
	combout => \displayUnit|Mux121~0_combout\);

-- Location: LCCOMB_X85_Y32_N30
\displayUnit|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux79~0_combout\ = (\displayUnit|Mux20~0_combout\ & ((\displayUnit|Mux21~1_combout\ & ((\displayUnit|Mux18~0_combout\))) # (!\displayUnit|Mux21~1_combout\ & (\displayUnit|Mux19~0_combout\)))) # (!\displayUnit|Mux20~0_combout\ & 
-- (\displayUnit|Mux19~0_combout\ & (\displayUnit|Mux21~1_combout\ $ (\displayUnit|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux21~1_combout\,
	datab => \displayUnit|Mux20~0_combout\,
	datac => \displayUnit|Mux19~0_combout\,
	datad => \displayUnit|Mux18~0_combout\,
	combout => \displayUnit|Mux79~0_combout\);

-- Location: LCCOMB_X87_Y31_N16
\displayUnit|disp4[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp4[1]~1_combout\ = (\SW[2]~input_o\ & ((\displayUnit|Mux121~0_combout\) # ((\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux121~0_combout\,
	datab => \displayUnit|Decoder0~0_combout\,
	datac => \displayUnit|Mux79~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp4[1]~1_combout\);

-- Location: LCCOMB_X85_Y32_N12
\displayUnit|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux120~0_combout\ = (\displayUnit|Mux43~1_combout\ & (\displayUnit|Mux42~1_combout\ & ((\displayUnit|Mux44~0_combout\) # (!\displayUnit|Mux45~0_combout\)))) # (!\displayUnit|Mux43~1_combout\ & (!\displayUnit|Mux45~0_combout\ & 
-- (!\displayUnit|Mux42~1_combout\ & \displayUnit|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux43~1_combout\,
	datab => \displayUnit|Mux45~0_combout\,
	datac => \displayUnit|Mux42~1_combout\,
	datad => \displayUnit|Mux44~0_combout\,
	combout => \displayUnit|Mux120~0_combout\);

-- Location: LCCOMB_X85_Y32_N18
\displayUnit|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux78~0_combout\ = (\displayUnit|Mux19~0_combout\ & (\displayUnit|Mux18~0_combout\ & ((\displayUnit|Mux20~0_combout\) # (!\displayUnit|Mux21~1_combout\)))) # (!\displayUnit|Mux19~0_combout\ & (!\displayUnit|Mux21~1_combout\ & 
-- (\displayUnit|Mux20~0_combout\ & !\displayUnit|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux21~1_combout\,
	datab => \displayUnit|Mux20~0_combout\,
	datac => \displayUnit|Mux19~0_combout\,
	datad => \displayUnit|Mux18~0_combout\,
	combout => \displayUnit|Mux78~0_combout\);

-- Location: LCCOMB_X85_Y32_N22
\displayUnit|disp4[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp4[2]~2_combout\ = (\SW[2]~input_o\ & ((\displayUnit|Mux120~0_combout\) # ((\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux120~0_combout\,
	datab => \displayUnit|Mux78~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp4[2]~2_combout\);

-- Location: LCCOMB_X85_Y32_N26
\displayUnit|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux119~0_combout\ = (\displayUnit|Mux44~0_combout\ & ((\displayUnit|Mux43~1_combout\ & (\displayUnit|Mux45~0_combout\)) # (!\displayUnit|Mux43~1_combout\ & (!\displayUnit|Mux45~0_combout\ & \displayUnit|Mux42~1_combout\)))) # 
-- (!\displayUnit|Mux44~0_combout\ & (!\displayUnit|Mux42~1_combout\ & (\displayUnit|Mux43~1_combout\ $ (\displayUnit|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux43~1_combout\,
	datab => \displayUnit|Mux45~0_combout\,
	datac => \displayUnit|Mux42~1_combout\,
	datad => \displayUnit|Mux44~0_combout\,
	combout => \displayUnit|Mux119~0_combout\);

-- Location: LCCOMB_X85_Y32_N8
\displayUnit|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux77~0_combout\ = (\displayUnit|Mux20~0_combout\ & ((\displayUnit|Mux21~1_combout\ & (\displayUnit|Mux19~0_combout\)) # (!\displayUnit|Mux21~1_combout\ & (!\displayUnit|Mux19~0_combout\ & \displayUnit|Mux18~0_combout\)))) # 
-- (!\displayUnit|Mux20~0_combout\ & (!\displayUnit|Mux18~0_combout\ & (\displayUnit|Mux21~1_combout\ $ (\displayUnit|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux21~1_combout\,
	datab => \displayUnit|Mux20~0_combout\,
	datac => \displayUnit|Mux19~0_combout\,
	datad => \displayUnit|Mux18~0_combout\,
	combout => \displayUnit|Mux77~0_combout\);

-- Location: LCCOMB_X85_Y32_N28
\displayUnit|disp4[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp4[3]~3_combout\ = (\SW[2]~input_o\ & ((\displayUnit|Mux119~0_combout\) # ((\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux119~0_combout\,
	datab => \displayUnit|Mux77~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp4[3]~3_combout\);

-- Location: LCCOMB_X85_Y32_N6
\displayUnit|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux76~0_combout\ = (\displayUnit|Mux20~0_combout\ & (\displayUnit|Mux21~1_combout\ & ((!\displayUnit|Mux18~0_combout\)))) # (!\displayUnit|Mux20~0_combout\ & ((\displayUnit|Mux19~0_combout\ & ((!\displayUnit|Mux18~0_combout\))) # 
-- (!\displayUnit|Mux19~0_combout\ & (\displayUnit|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux21~1_combout\,
	datab => \displayUnit|Mux20~0_combout\,
	datac => \displayUnit|Mux19~0_combout\,
	datad => \displayUnit|Mux18~0_combout\,
	combout => \displayUnit|Mux76~0_combout\);

-- Location: LCCOMB_X85_Y32_N0
\displayUnit|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux118~0_combout\ = (\displayUnit|Mux44~0_combout\ & (((\displayUnit|Mux45~0_combout\ & !\displayUnit|Mux42~1_combout\)))) # (!\displayUnit|Mux44~0_combout\ & ((\displayUnit|Mux43~1_combout\ & ((!\displayUnit|Mux42~1_combout\))) # 
-- (!\displayUnit|Mux43~1_combout\ & (\displayUnit|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux43~1_combout\,
	datab => \displayUnit|Mux45~0_combout\,
	datac => \displayUnit|Mux42~1_combout\,
	datad => \displayUnit|Mux44~0_combout\,
	combout => \displayUnit|Mux118~0_combout\);

-- Location: LCCOMB_X85_Y32_N2
\displayUnit|disp4[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp4[4]~4_combout\ = (\SW[2]~input_o\ & (((\displayUnit|Mux118~0_combout\) # (\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (\displayUnit|Mux76~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux76~0_combout\,
	datab => \displayUnit|Mux118~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp4[4]~4_combout\);

-- Location: LCCOMB_X82_Y34_N12
\displayUnit|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux75~0_combout\ = (\displayUnit|Mux21~1_combout\ & (\displayUnit|Mux18~0_combout\ $ (((\displayUnit|Mux20~0_combout\) # (!\displayUnit|Mux19~0_combout\))))) # (!\displayUnit|Mux21~1_combout\ & (!\displayUnit|Mux19~0_combout\ & 
-- (\displayUnit|Mux20~0_combout\ & !\displayUnit|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux21~1_combout\,
	datab => \displayUnit|Mux19~0_combout\,
	datac => \displayUnit|Mux20~0_combout\,
	datad => \displayUnit|Mux18~0_combout\,
	combout => \displayUnit|Mux75~0_combout\);

-- Location: LCCOMB_X85_Y32_N4
\displayUnit|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux117~0_combout\ = (\displayUnit|Mux43~1_combout\ & (\displayUnit|Mux45~0_combout\ & (\displayUnit|Mux42~1_combout\ $ (\displayUnit|Mux44~0_combout\)))) # (!\displayUnit|Mux43~1_combout\ & (!\displayUnit|Mux42~1_combout\ & 
-- ((\displayUnit|Mux45~0_combout\) # (\displayUnit|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux43~1_combout\,
	datab => \displayUnit|Mux45~0_combout\,
	datac => \displayUnit|Mux42~1_combout\,
	datad => \displayUnit|Mux44~0_combout\,
	combout => \displayUnit|Mux117~0_combout\);

-- Location: LCCOMB_X82_Y34_N22
\displayUnit|disp4[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp4[5]~5_combout\ = (\SW[2]~input_o\ & (((\displayUnit|Mux117~0_combout\) # (\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (\displayUnit|Mux75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux75~0_combout\,
	datab => \displayUnit|Mux117~0_combout\,
	datac => \displayUnit|Decoder0~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp4[5]~5_combout\);

-- Location: LCCOMB_X82_Y34_N0
\displayUnit|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux74~0_combout\ = (\displayUnit|Mux21~1_combout\ & ((\displayUnit|Mux18~0_combout\) # (\displayUnit|Mux19~0_combout\ $ (\displayUnit|Mux20~0_combout\)))) # (!\displayUnit|Mux21~1_combout\ & ((\displayUnit|Mux20~0_combout\) # 
-- (\displayUnit|Mux19~0_combout\ $ (\displayUnit|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux21~1_combout\,
	datab => \displayUnit|Mux19~0_combout\,
	datac => \displayUnit|Mux20~0_combout\,
	datad => \displayUnit|Mux18~0_combout\,
	combout => \displayUnit|Mux74~0_combout\);

-- Location: LCCOMB_X85_Y32_N14
\displayUnit|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux116~0_combout\ = (\displayUnit|Mux45~0_combout\ & ((\displayUnit|Mux42~1_combout\) # (\displayUnit|Mux43~1_combout\ $ (\displayUnit|Mux44~0_combout\)))) # (!\displayUnit|Mux45~0_combout\ & ((\displayUnit|Mux44~0_combout\) # 
-- (\displayUnit|Mux43~1_combout\ $ (\displayUnit|Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux43~1_combout\,
	datab => \displayUnit|Mux45~0_combout\,
	datac => \displayUnit|Mux42~1_combout\,
	datad => \displayUnit|Mux44~0_combout\,
	combout => \displayUnit|Mux116~0_combout\);

-- Location: LCCOMB_X82_Y34_N26
\displayUnit|disp4[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp4[6]~6_combout\ = (\SW[2]~input_o\ & (!\displayUnit|Decoder0~0_combout\ & ((!\displayUnit|Mux116~0_combout\)))) # (!\SW[2]~input_o\ & (((!\displayUnit|Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Decoder0~0_combout\,
	datab => \displayUnit|Mux74~0_combout\,
	datac => \displayUnit|Mux116~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp4[6]~6_combout\);

-- Location: LCCOMB_X91_Y31_N20
\displayUnit|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux41~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\displayUnit|s_addrCounters[3][2]~q\))) # (!\SW[0]~input_o\ & (\displayUnit|s_addrCounters[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[2][4]~q\,
	datab => \displayUnit|s_addrCounters[3][2]~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux41~0_combout\);

-- Location: LCCOMB_X91_Y31_N8
\displayUnit|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux41~1_combout\ = (\displayUnit|Mux41~0_combout\) # ((!\SW[1]~input_o\ & (\displayUnit|s_addrCounters[1][2]~q\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|Mux41~0_combout\,
	datac => \displayUnit|s_addrCounters[1][2]~q\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux41~1_combout\);

-- Location: LCCOMB_X87_Y31_N2
\displayUnit|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux115~0_combout\ = (\displayUnit|Mux38~0_combout\ & (\displayUnit|Mux41~1_combout\ & (\displayUnit|Mux40~0_combout\ $ (\displayUnit|Mux39~0_combout\)))) # (!\displayUnit|Mux38~0_combout\ & (!\displayUnit|Mux40~0_combout\ & 
-- (\displayUnit|Mux41~1_combout\ $ (\displayUnit|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux41~1_combout\,
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux40~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux115~0_combout\);

-- Location: LCCOMB_X86_Y32_N6
\displayUnit|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux15~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~68_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~68_combout\,
	datab => \pcupdate|s_pc\(22),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux15~0_combout\);

-- Location: LCCOMB_X86_Y35_N28
\Ram|s_memory~2092\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2092_combout\ = ((\displayUnit|s_addrCounters[3][1]~q\) # ((\Ram|s_memory~92_q\) # (!\Ram|s_memory~2088_combout\))) # (!\displayUnit|s_addrCounters[3][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[3][0]~q\,
	datab => \displayUnit|s_addrCounters[3][1]~q\,
	datac => \Ram|s_memory~2088_combout\,
	datad => \Ram|s_memory~92_q\,
	combout => \Ram|s_memory~2092_combout\);

-- Location: FF_X82_Y34_N29
\RegFile|modo|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(21),
	sload => VCC,
	ena => \RegFile|modo|s_memory~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|modo|s_memory~91_q\);

-- Location: LCCOMB_X82_Y34_N28
\RegFile|modo|readData[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[21]~3_combout\ = (!\displayUnit|s_addrCounters[2][4]~q\ & (\RegFile|modo|s_memory~91_q\ & \RegFile|modo|readData[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][4]~q\,
	datac => \RegFile|modo|s_memory~91_q\,
	datad => \RegFile|modo|readData[2]~0_combout\,
	combout => \RegFile|modo|readData[21]~3_combout\);

-- Location: LCCOMB_X87_Y36_N12
\displayUnit|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux16~0_combout\ = (\SW[0]~input_o\ & ((\ALU|Add0~65_combout\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\pcupdate|s_pc\(21) & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~65_combout\,
	datab => \pcupdate|s_pc\(21),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux16~0_combout\);

-- Location: LCCOMB_X86_Y32_N20
\displayUnit|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux16~1_combout\ = (\displayUnit|Mux16~0_combout\ & (((!\SW[1]~input_o\)) # (!\Ram|s_memory~2092_combout\))) # (!\displayUnit|Mux16~0_combout\ & (((\RegFile|modo|readData[21]~3_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~2092_combout\,
	datab => \RegFile|modo|readData[21]~3_combout\,
	datac => \displayUnit|Mux16~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux16~1_combout\);

-- Location: LCCOMB_X86_Y32_N2
\displayUnit|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux17~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~62_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdate|s_pc\(20),
	datac => \SW[0]~input_o\,
	datad => \ALU|Add0~62_combout\,
	combout => \displayUnit|Mux17~0_combout\);

-- Location: LCCOMB_X86_Y32_N18
\displayUnit|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux14~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~71_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU|Add0~71_combout\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(23),
	combout => \displayUnit|Mux14~0_combout\);

-- Location: LCCOMB_X86_Y32_N12
\displayUnit|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux87~0_combout\ = (\displayUnit|Mux15~0_combout\ & (!\displayUnit|Mux16~1_combout\ & (\displayUnit|Mux17~0_combout\ $ (!\displayUnit|Mux14~0_combout\)))) # (!\displayUnit|Mux15~0_combout\ & (\displayUnit|Mux17~0_combout\ & 
-- (\displayUnit|Mux16~1_combout\ $ (!\displayUnit|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux15~0_combout\,
	datab => \displayUnit|Mux16~1_combout\,
	datac => \displayUnit|Mux17~0_combout\,
	datad => \displayUnit|Mux14~0_combout\,
	combout => \displayUnit|Mux87~0_combout\);

-- Location: LCCOMB_X87_Y31_N12
\displayUnit|disp5[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp5[0]~0_combout\ = (\SW[2]~input_o\ & ((\displayUnit|Mux115~0_combout\) # ((\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux87~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \displayUnit|Mux115~0_combout\,
	datac => \displayUnit|Mux87~0_combout\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp5[0]~0_combout\);

-- Location: LCCOMB_X86_Y32_N22
\displayUnit|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux86~0_combout\ = (\displayUnit|Mux16~1_combout\ & ((\displayUnit|Mux17~0_combout\ & ((\displayUnit|Mux14~0_combout\))) # (!\displayUnit|Mux17~0_combout\ & (\displayUnit|Mux15~0_combout\)))) # (!\displayUnit|Mux16~1_combout\ & 
-- (\displayUnit|Mux15~0_combout\ & (\displayUnit|Mux17~0_combout\ $ (\displayUnit|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux15~0_combout\,
	datab => \displayUnit|Mux16~1_combout\,
	datac => \displayUnit|Mux17~0_combout\,
	datad => \displayUnit|Mux14~0_combout\,
	combout => \displayUnit|Mux86~0_combout\);

-- Location: LCCOMB_X87_Y31_N22
\displayUnit|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux114~0_combout\ = (\displayUnit|Mux38~0_combout\ & ((\displayUnit|Mux41~1_combout\ & (\displayUnit|Mux40~0_combout\)) # (!\displayUnit|Mux41~1_combout\ & ((\displayUnit|Mux39~0_combout\))))) # (!\displayUnit|Mux38~0_combout\ & 
-- (\displayUnit|Mux39~0_combout\ & (\displayUnit|Mux41~1_combout\ $ (\displayUnit|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux41~1_combout\,
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux40~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux114~0_combout\);

-- Location: LCCOMB_X87_Y31_N0
\displayUnit|disp5[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp5[1]~1_combout\ = (\SW[2]~input_o\ & (((\displayUnit|Mux114~0_combout\) # (\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (\displayUnit|Mux86~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \displayUnit|Mux86~0_combout\,
	datac => \displayUnit|Mux114~0_combout\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp5[1]~1_combout\);

-- Location: LCCOMB_X86_Y32_N8
\displayUnit|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux85~0_combout\ = (\displayUnit|Mux15~0_combout\ & (\displayUnit|Mux14~0_combout\ & ((\displayUnit|Mux16~1_combout\) # (!\displayUnit|Mux17~0_combout\)))) # (!\displayUnit|Mux15~0_combout\ & (\displayUnit|Mux16~1_combout\ & 
-- (!\displayUnit|Mux17~0_combout\ & !\displayUnit|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux15~0_combout\,
	datab => \displayUnit|Mux16~1_combout\,
	datac => \displayUnit|Mux17~0_combout\,
	datad => \displayUnit|Mux14~0_combout\,
	combout => \displayUnit|Mux85~0_combout\);

-- Location: LCCOMB_X87_Y31_N26
\displayUnit|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux113~0_combout\ = (\displayUnit|Mux38~0_combout\ & (\displayUnit|Mux39~0_combout\ & ((\displayUnit|Mux40~0_combout\) # (!\displayUnit|Mux41~1_combout\)))) # (!\displayUnit|Mux38~0_combout\ & (!\displayUnit|Mux41~1_combout\ & 
-- (\displayUnit|Mux40~0_combout\ & !\displayUnit|Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux41~1_combout\,
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux40~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux113~0_combout\);

-- Location: LCCOMB_X87_Y31_N20
\displayUnit|disp5[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp5[2]~2_combout\ = (\SW[2]~input_o\ & (((\displayUnit|Mux113~0_combout\) # (\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (\displayUnit|Mux85~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \displayUnit|Mux85~0_combout\,
	datac => \displayUnit|Mux113~0_combout\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp5[2]~2_combout\);

-- Location: LCCOMB_X87_Y31_N14
\displayUnit|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux112~0_combout\ = (\displayUnit|Mux40~0_combout\ & ((\displayUnit|Mux41~1_combout\ & ((\displayUnit|Mux39~0_combout\))) # (!\displayUnit|Mux41~1_combout\ & (\displayUnit|Mux38~0_combout\ & !\displayUnit|Mux39~0_combout\)))) # 
-- (!\displayUnit|Mux40~0_combout\ & (!\displayUnit|Mux38~0_combout\ & (\displayUnit|Mux41~1_combout\ $ (\displayUnit|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux41~1_combout\,
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux40~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux112~0_combout\);

-- Location: LCCOMB_X86_Y32_N26
\displayUnit|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux84~0_combout\ = (\displayUnit|Mux16~1_combout\ & ((\displayUnit|Mux15~0_combout\ & (\displayUnit|Mux17~0_combout\)) # (!\displayUnit|Mux15~0_combout\ & (!\displayUnit|Mux17~0_combout\ & \displayUnit|Mux14~0_combout\)))) # 
-- (!\displayUnit|Mux16~1_combout\ & (!\displayUnit|Mux14~0_combout\ & (\displayUnit|Mux15~0_combout\ $ (\displayUnit|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux15~0_combout\,
	datab => \displayUnit|Mux16~1_combout\,
	datac => \displayUnit|Mux17~0_combout\,
	datad => \displayUnit|Mux14~0_combout\,
	combout => \displayUnit|Mux84~0_combout\);

-- Location: LCCOMB_X87_Y31_N8
\displayUnit|disp5[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp5[3]~3_combout\ = (\SW[2]~input_o\ & ((\displayUnit|Mux112~0_combout\) # ((\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \displayUnit|Mux112~0_combout\,
	datac => \displayUnit|Mux84~0_combout\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp5[3]~3_combout\);

-- Location: LCCOMB_X87_Y31_N18
\displayUnit|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux111~0_combout\ = (\displayUnit|Mux40~0_combout\ & (\displayUnit|Mux41~1_combout\ & (!\displayUnit|Mux38~0_combout\))) # (!\displayUnit|Mux40~0_combout\ & ((\displayUnit|Mux39~0_combout\ & ((!\displayUnit|Mux38~0_combout\))) # 
-- (!\displayUnit|Mux39~0_combout\ & (\displayUnit|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux41~1_combout\,
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux40~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux111~0_combout\);

-- Location: LCCOMB_X86_Y32_N28
\displayUnit|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux83~0_combout\ = (\displayUnit|Mux16~1_combout\ & (((\displayUnit|Mux17~0_combout\ & !\displayUnit|Mux14~0_combout\)))) # (!\displayUnit|Mux16~1_combout\ & ((\displayUnit|Mux15~0_combout\ & ((!\displayUnit|Mux14~0_combout\))) # 
-- (!\displayUnit|Mux15~0_combout\ & (\displayUnit|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux15~0_combout\,
	datab => \displayUnit|Mux16~1_combout\,
	datac => \displayUnit|Mux17~0_combout\,
	datad => \displayUnit|Mux14~0_combout\,
	combout => \displayUnit|Mux83~0_combout\);

-- Location: LCCOMB_X87_Y31_N4
\displayUnit|disp5[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp5[4]~4_combout\ = (\SW[2]~input_o\ & ((\displayUnit|Mux111~0_combout\) # ((\displayUnit|Decoder0~0_combout\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \displayUnit|Mux111~0_combout\,
	datac => \displayUnit|Mux83~0_combout\,
	datad => \displayUnit|Decoder0~0_combout\,
	combout => \displayUnit|disp5[4]~4_combout\);

-- Location: LCCOMB_X86_Y32_N30
\displayUnit|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux82~0_combout\ = (\displayUnit|Mux15~0_combout\ & (\displayUnit|Mux17~0_combout\ & (\displayUnit|Mux16~1_combout\ $ (\displayUnit|Mux14~0_combout\)))) # (!\displayUnit|Mux15~0_combout\ & (!\displayUnit|Mux14~0_combout\ & 
-- ((\displayUnit|Mux16~1_combout\) # (\displayUnit|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux15~0_combout\,
	datab => \displayUnit|Mux16~1_combout\,
	datac => \displayUnit|Mux17~0_combout\,
	datad => \displayUnit|Mux14~0_combout\,
	combout => \displayUnit|Mux82~0_combout\);

-- Location: LCCOMB_X87_Y31_N30
\displayUnit|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux110~0_combout\ = (\displayUnit|Mux41~1_combout\ & (\displayUnit|Mux38~0_combout\ $ (((\displayUnit|Mux40~0_combout\) # (!\displayUnit|Mux39~0_combout\))))) # (!\displayUnit|Mux41~1_combout\ & (!\displayUnit|Mux38~0_combout\ & 
-- (\displayUnit|Mux40~0_combout\ & !\displayUnit|Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux41~1_combout\,
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux40~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux110~0_combout\);

-- Location: LCCOMB_X87_Y31_N24
\displayUnit|disp5[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp5[5]~5_combout\ = (\SW[2]~input_o\ & (((\displayUnit|Decoder0~0_combout\) # (\displayUnit|Mux110~0_combout\)))) # (!\SW[2]~input_o\ & (\displayUnit|Mux82~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux82~0_combout\,
	datab => \displayUnit|Decoder0~0_combout\,
	datac => \displayUnit|Mux110~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp5[5]~5_combout\);

-- Location: LCCOMB_X87_Y31_N10
\displayUnit|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux109~0_combout\ = (\displayUnit|Mux41~1_combout\ & ((\displayUnit|Mux38~0_combout\) # (\displayUnit|Mux40~0_combout\ $ (\displayUnit|Mux39~0_combout\)))) # (!\displayUnit|Mux41~1_combout\ & ((\displayUnit|Mux40~0_combout\) # 
-- (\displayUnit|Mux38~0_combout\ $ (\displayUnit|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux41~1_combout\,
	datab => \displayUnit|Mux38~0_combout\,
	datac => \displayUnit|Mux40~0_combout\,
	datad => \displayUnit|Mux39~0_combout\,
	combout => \displayUnit|Mux109~0_combout\);

-- Location: LCCOMB_X86_Y32_N24
\displayUnit|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux81~0_combout\ = (\displayUnit|Mux17~0_combout\ & ((\displayUnit|Mux14~0_combout\) # (\displayUnit|Mux15~0_combout\ $ (\displayUnit|Mux16~1_combout\)))) # (!\displayUnit|Mux17~0_combout\ & ((\displayUnit|Mux16~1_combout\) # 
-- (\displayUnit|Mux15~0_combout\ $ (\displayUnit|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux15~0_combout\,
	datab => \displayUnit|Mux16~1_combout\,
	datac => \displayUnit|Mux17~0_combout\,
	datad => \displayUnit|Mux14~0_combout\,
	combout => \displayUnit|Mux81~0_combout\);

-- Location: LCCOMB_X87_Y31_N28
\displayUnit|disp5[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp5[6]~6_combout\ = (\SW[2]~input_o\ & (!\displayUnit|Mux109~0_combout\ & (!\displayUnit|Decoder0~0_combout\))) # (!\SW[2]~input_o\ & (((!\displayUnit|Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux109~0_combout\,
	datab => \displayUnit|Decoder0~0_combout\,
	datac => \displayUnit|Mux81~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp5[6]~6_combout\);

-- Location: FF_X82_Y34_N31
\RegFile|modo|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(26),
	sload => VCC,
	ena => \RegFile|modo|s_memory~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|modo|s_memory~96_q\);

-- Location: LCCOMB_X82_Y34_N30
\RegFile|modo|readData[26]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[26]~4_combout\ = (!\displayUnit|s_addrCounters[2][4]~q\ & (\RegFile|modo|s_memory~96_q\ & \RegFile|modo|readData[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][4]~q\,
	datac => \RegFile|modo|s_memory~96_q\,
	datad => \RegFile|modo|readData[2]~0_combout\,
	combout => \RegFile|modo|readData[26]~4_combout\);

-- Location: LCCOMB_X86_Y34_N2
\displayUnit|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux11~0_combout\ = (\SW[1]~input_o\ & ((\RegFile|modo|readData[26]~4_combout\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\pcupdate|s_pc\(26) & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RegFile|modo|readData[26]~4_combout\,
	datac => \pcupdate|s_pc\(26),
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux11~0_combout\);

-- Location: LCCOMB_X87_Y34_N8
\Ram|s_memory~2093\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2093_combout\ = (!\displayUnit|s_addrCounters[3][0]~q\ & \Ram|s_memory~2088_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[3][0]~q\,
	datac => \Ram|s_memory~2088_combout\,
	combout => \Ram|s_memory~2093_combout\);

-- Location: LCCOMB_X87_Y34_N28
\Ram|s_memory~2094\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2094_combout\ = (\Ram|s_memory~2093_combout\ & ((\displayUnit|s_addrCounters[3][1]~q\ & ((!\Ram|s_memory~129_q\))) # (!\displayUnit|s_addrCounters[3][1]~q\ & (!\Ram|s_memory~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~65_q\,
	datab => \displayUnit|s_addrCounters[3][1]~q\,
	datac => \Ram|s_memory~2093_combout\,
	datad => \Ram|s_memory~129_q\,
	combout => \Ram|s_memory~2094_combout\);

-- Location: LCCOMB_X87_Y34_N14
\displayUnit|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux11~1_combout\ = (\displayUnit|Mux11~0_combout\ & ((\Ram|s_memory~2094_combout\) # ((!\SW[0]~input_o\)))) # (!\displayUnit|Mux11~0_combout\ & (((\SW[0]~input_o\ & \ALU|Add0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~0_combout\,
	datab => \Ram|s_memory~2094_combout\,
	datac => \SW[0]~input_o\,
	datad => \ALU|Add0~80_combout\,
	combout => \displayUnit|Mux11~1_combout\);

-- Location: FF_X82_Y34_N17
\RegFile|modo|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(27),
	sload => VCC,
	ena => \RegFile|modo|s_memory~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|modo|s_memory~97_q\);

-- Location: LCCOMB_X82_Y34_N16
\RegFile|modo|readData[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[27]~5_combout\ = (!\displayUnit|s_addrCounters[2][4]~q\ & (\RegFile|modo|s_memory~97_q\ & \RegFile|modo|readData[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][4]~q\,
	datac => \RegFile|modo|s_memory~97_q\,
	datad => \RegFile|modo|readData[2]~0_combout\,
	combout => \RegFile|modo|readData[27]~5_combout\);

-- Location: LCCOMB_X87_Y34_N26
\Ram|s_memory~2095\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2095_combout\ = (\Ram|s_memory~2093_combout\ & ((\displayUnit|s_addrCounters[3][1]~q\ & ((!\Ram|s_memory~130_q\))) # (!\displayUnit|s_addrCounters[3][1]~q\ & (!\Ram|s_memory~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~66_q\,
	datab => \Ram|s_memory~130_q\,
	datac => \Ram|s_memory~2093_combout\,
	datad => \displayUnit|s_addrCounters[3][1]~q\,
	combout => \Ram|s_memory~2095_combout\);

-- Location: LCCOMB_X87_Y36_N22
\displayUnit|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux10~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~83_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU|Add0~83_combout\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(27),
	combout => \displayUnit|Mux10~0_combout\);

-- Location: LCCOMB_X86_Y32_N14
\displayUnit|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux10~1_combout\ = (\SW[1]~input_o\ & ((\displayUnit|Mux10~0_combout\ & ((\Ram|s_memory~2095_combout\))) # (!\displayUnit|Mux10~0_combout\ & (\RegFile|modo|readData[27]~5_combout\)))) # (!\SW[1]~input_o\ & (((\displayUnit|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RegFile|modo|readData[27]~5_combout\,
	datac => \Ram|s_memory~2095_combout\,
	datad => \displayUnit|Mux10~0_combout\,
	combout => \displayUnit|Mux10~1_combout\);

-- Location: LCCOMB_X86_Y32_N4
\displayUnit|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux12~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~77_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdate|s_pc\(25),
	datac => \SW[0]~input_o\,
	datad => \ALU|Add0~77_combout\,
	combout => \displayUnit|Mux12~0_combout\);

-- Location: LCCOMB_X87_Y36_N18
\displayUnit|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux13~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~74_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU|Add0~74_combout\,
	datac => \SW[0]~input_o\,
	datad => \pcupdate|s_pc\(24),
	combout => \displayUnit|Mux13~0_combout\);

-- Location: LCCOMB_X87_Y22_N8
\displayUnit|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux94~0_combout\ = (\displayUnit|Mux11~1_combout\ & (!\displayUnit|Mux12~0_combout\ & (\displayUnit|Mux10~1_combout\ $ (!\displayUnit|Mux13~0_combout\)))) # (!\displayUnit|Mux11~1_combout\ & (\displayUnit|Mux13~0_combout\ & 
-- (\displayUnit|Mux10~1_combout\ $ (!\displayUnit|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~1_combout\,
	datab => \displayUnit|Mux10~1_combout\,
	datac => \displayUnit|Mux12~0_combout\,
	datad => \displayUnit|Mux13~0_combout\,
	combout => \displayUnit|Mux94~0_combout\);

-- Location: LCCOMB_X87_Y22_N2
\displayUnit|disp6[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp6[0]~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|Mux94~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp6[0]~0_combout\);

-- Location: LCCOMB_X87_Y22_N12
\displayUnit|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux93~0_combout\ = (\displayUnit|Mux10~1_combout\ & ((\displayUnit|Mux13~0_combout\ & ((\displayUnit|Mux12~0_combout\))) # (!\displayUnit|Mux13~0_combout\ & (\displayUnit|Mux11~1_combout\)))) # (!\displayUnit|Mux10~1_combout\ & 
-- (\displayUnit|Mux11~1_combout\ & (\displayUnit|Mux12~0_combout\ $ (\displayUnit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~1_combout\,
	datab => \displayUnit|Mux10~1_combout\,
	datac => \displayUnit|Mux12~0_combout\,
	datad => \displayUnit|Mux13~0_combout\,
	combout => \displayUnit|Mux93~0_combout\);

-- Location: LCCOMB_X87_Y22_N14
\displayUnit|disp6[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp6[1]~1_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ ((\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \displayUnit|Mux93~0_combout\,
	combout => \displayUnit|disp6[1]~1_combout\);

-- Location: LCCOMB_X87_Y22_N0
\displayUnit|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux92~0_combout\ = (\displayUnit|Mux11~1_combout\ & (\displayUnit|Mux10~1_combout\ & ((\displayUnit|Mux12~0_combout\) # (!\displayUnit|Mux13~0_combout\)))) # (!\displayUnit|Mux11~1_combout\ & (!\displayUnit|Mux10~1_combout\ & 
-- (\displayUnit|Mux12~0_combout\ & !\displayUnit|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~1_combout\,
	datab => \displayUnit|Mux10~1_combout\,
	datac => \displayUnit|Mux12~0_combout\,
	datad => \displayUnit|Mux13~0_combout\,
	combout => \displayUnit|Mux92~0_combout\);

-- Location: LCCOMB_X87_Y22_N10
\displayUnit|disp6[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp6[2]~2_combout\ = (\SW[2]~input_o\ & (((!\SW[0]~input_o\)) # (!\SW[1]~input_o\))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|Mux92~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp6[2]~2_combout\);

-- Location: LCCOMB_X87_Y22_N20
\displayUnit|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux91~0_combout\ = (\displayUnit|Mux12~0_combout\ & ((\displayUnit|Mux11~1_combout\ & ((\displayUnit|Mux13~0_combout\))) # (!\displayUnit|Mux11~1_combout\ & (\displayUnit|Mux10~1_combout\ & !\displayUnit|Mux13~0_combout\)))) # 
-- (!\displayUnit|Mux12~0_combout\ & (!\displayUnit|Mux10~1_combout\ & (\displayUnit|Mux11~1_combout\ $ (\displayUnit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~1_combout\,
	datab => \displayUnit|Mux10~1_combout\,
	datac => \displayUnit|Mux12~0_combout\,
	datad => \displayUnit|Mux13~0_combout\,
	combout => \displayUnit|Mux91~0_combout\);

-- Location: LCCOMB_X87_Y22_N22
\displayUnit|disp6[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp6[3]~3_combout\ = (\SW[2]~input_o\ & ((!\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\displayUnit|Mux91~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Mux91~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp6[3]~3_combout\);

-- Location: LCCOMB_X87_Y22_N16
\displayUnit|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux90~0_combout\ = (\displayUnit|Mux12~0_combout\ & (((!\displayUnit|Mux10~1_combout\ & \displayUnit|Mux13~0_combout\)))) # (!\displayUnit|Mux12~0_combout\ & ((\displayUnit|Mux11~1_combout\ & (!\displayUnit|Mux10~1_combout\)) # 
-- (!\displayUnit|Mux11~1_combout\ & ((\displayUnit|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~1_combout\,
	datab => \displayUnit|Mux10~1_combout\,
	datac => \displayUnit|Mux12~0_combout\,
	datad => \displayUnit|Mux13~0_combout\,
	combout => \displayUnit|Mux90~0_combout\);

-- Location: LCCOMB_X87_Y22_N26
\displayUnit|disp6[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp6[4]~4_combout\ = (!\SW[2]~input_o\ & \displayUnit|Mux90~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \displayUnit|Mux90~0_combout\,
	combout => \displayUnit|disp6[4]~4_combout\);

-- Location: LCCOMB_X87_Y22_N28
\displayUnit|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux89~0_combout\ = (\displayUnit|Mux11~1_combout\ & (\displayUnit|Mux13~0_combout\ & (\displayUnit|Mux10~1_combout\ $ (\displayUnit|Mux12~0_combout\)))) # (!\displayUnit|Mux11~1_combout\ & (!\displayUnit|Mux10~1_combout\ & 
-- ((\displayUnit|Mux12~0_combout\) # (\displayUnit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~1_combout\,
	datab => \displayUnit|Mux10~1_combout\,
	datac => \displayUnit|Mux12~0_combout\,
	datad => \displayUnit|Mux13~0_combout\,
	combout => \displayUnit|Mux89~0_combout\);

-- Location: LCCOMB_X87_Y22_N30
\displayUnit|disp6[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp6[5]~5_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (((\displayUnit|Mux89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|Mux89~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp6[5]~5_combout\);

-- Location: LCCOMB_X87_Y22_N24
\displayUnit|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux88~0_combout\ = (\displayUnit|Mux13~0_combout\ & ((\displayUnit|Mux10~1_combout\) # (\displayUnit|Mux11~1_combout\ $ (\displayUnit|Mux12~0_combout\)))) # (!\displayUnit|Mux13~0_combout\ & ((\displayUnit|Mux12~0_combout\) # 
-- (\displayUnit|Mux11~1_combout\ $ (\displayUnit|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux11~1_combout\,
	datab => \displayUnit|Mux10~1_combout\,
	datac => \displayUnit|Mux12~0_combout\,
	datad => \displayUnit|Mux13~0_combout\,
	combout => \displayUnit|Mux88~0_combout\);

-- Location: LCCOMB_X87_Y22_N18
\displayUnit|disp6[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp6[6]~6_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (((!\displayUnit|Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displayUnit|Mux88~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp6[6]~6_combout\);

-- Location: LCCOMB_X82_Y33_N10
\displayUnit|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux6~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~95_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~95_combout\,
	datab => \pcupdate|s_pc\(31),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux6~0_combout\);

-- Location: FF_X82_Y34_N15
\RegFile|modo|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(31),
	sload => VCC,
	ena => \RegFile|modo|s_memory~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|modo|s_memory~101_q\);

-- Location: LCCOMB_X82_Y34_N14
\RegFile|modo|readData[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[31]~7_combout\ = (!\displayUnit|s_addrCounters[2][4]~q\ & (\RegFile|modo|s_memory~101_q\ & \RegFile|modo|readData[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][4]~q\,
	datac => \RegFile|modo|s_memory~101_q\,
	datad => \RegFile|modo|readData[2]~0_combout\,
	combout => \RegFile|modo|readData[31]~7_combout\);

-- Location: LCCOMB_X87_Y34_N30
\Ram|s_memory~2098\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2098_combout\ = (\Ram|s_memory~2093_combout\ & ((\displayUnit|s_addrCounters[3][1]~q\ & ((!\Ram|s_memory~134_q\))) # (!\displayUnit|s_addrCounters[3][1]~q\ & (!\Ram|s_memory~70_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|s_memory~70_q\,
	datab => \Ram|s_memory~134_q\,
	datac => \Ram|s_memory~2093_combout\,
	datad => \displayUnit|s_addrCounters[3][1]~q\,
	combout => \Ram|s_memory~2098_combout\);

-- Location: LCCOMB_X82_Y33_N12
\displayUnit|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux6~1_combout\ = (\displayUnit|Mux6~0_combout\ & (((\Ram|s_memory~2098_combout\) # (!\SW[1]~input_o\)))) # (!\displayUnit|Mux6~0_combout\ & (\RegFile|modo|readData[31]~7_combout\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~0_combout\,
	datab => \RegFile|modo|readData[31]~7_combout\,
	datac => \SW[1]~input_o\,
	datad => \Ram|s_memory~2098_combout\,
	combout => \displayUnit|Mux6~1_combout\);

-- Location: LCCOMB_X82_Y33_N0
\displayUnit|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux9~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\ALU|Add0~86_combout\))) # (!\SW[0]~input_o\ & (\pcupdate|s_pc\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdate|s_pc\(28),
	datab => \ALU|Add0~86_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux9~0_combout\);

-- Location: FF_X82_Y34_N11
\RegFile|modo|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounceUnit|s_pulsedOut~clkctrl_outclk\,
	asdata => \DataRegister|DataOut\(29),
	sload => VCC,
	ena => \RegFile|modo|s_memory~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegFile|modo|s_memory~99_q\);

-- Location: LCCOMB_X82_Y34_N10
\RegFile|modo|readData[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegFile|modo|readData[29]~6_combout\ = (!\displayUnit|s_addrCounters[2][4]~q\ & (\RegFile|modo|s_memory~99_q\ & \RegFile|modo|readData[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|s_addrCounters[2][4]~q\,
	datac => \RegFile|modo|s_memory~99_q\,
	datad => \RegFile|modo|readData[2]~0_combout\,
	combout => \RegFile|modo|readData[29]~6_combout\);

-- Location: LCCOMB_X86_Y35_N16
\Ram|s_memory~2096\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2096_combout\ = (\displayUnit|s_addrCounters[3][0]~q\ & (!\displayUnit|s_addrCounters[3][1]~q\ & ((!\Ram|s_memory~100_q\)))) # (!\displayUnit|s_addrCounters[3][0]~q\ & (\displayUnit|s_addrCounters[3][1]~q\ & (!\Ram|s_memory~132_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|s_addrCounters[3][0]~q\,
	datab => \displayUnit|s_addrCounters[3][1]~q\,
	datac => \Ram|s_memory~132_q\,
	datad => \Ram|s_memory~100_q\,
	combout => \Ram|s_memory~2096_combout\);

-- Location: LCCOMB_X86_Y35_N18
\Ram|s_memory~2097\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ram|s_memory~2097_combout\ = (\Ram|s_memory~2088_combout\ & \Ram|s_memory~2096_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ram|s_memory~2088_combout\,
	datad => \Ram|s_memory~2096_combout\,
	combout => \Ram|s_memory~2097_combout\);

-- Location: LCCOMB_X86_Y34_N14
\displayUnit|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux8~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~89_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~89_combout\,
	datab => \pcupdate|s_pc\(29),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displayUnit|Mux8~0_combout\);

-- Location: LCCOMB_X82_Y34_N4
\displayUnit|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux8~1_combout\ = (\SW[1]~input_o\ & ((\displayUnit|Mux8~0_combout\ & ((\Ram|s_memory~2097_combout\))) # (!\displayUnit|Mux8~0_combout\ & (\RegFile|modo|readData[29]~6_combout\)))) # (!\SW[1]~input_o\ & (((\displayUnit|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegFile|modo|readData[29]~6_combout\,
	datab => \Ram|s_memory~2097_combout\,
	datac => \SW[1]~input_o\,
	datad => \displayUnit|Mux8~0_combout\,
	combout => \displayUnit|Mux8~1_combout\);

-- Location: LCCOMB_X83_Y37_N20
\displayUnit|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux7~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\ALU|Add0~92_combout\)) # (!\SW[0]~input_o\ & ((\pcupdate|s_pc\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~92_combout\,
	datab => \pcupdate|s_pc\(30),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displayUnit|Mux7~0_combout\);

-- Location: LCCOMB_X82_Y33_N6
\displayUnit|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux101~0_combout\ = (\displayUnit|Mux6~1_combout\ & (\displayUnit|Mux9~0_combout\ & (\displayUnit|Mux8~1_combout\ $ (\displayUnit|Mux7~0_combout\)))) # (!\displayUnit|Mux6~1_combout\ & (!\displayUnit|Mux8~1_combout\ & 
-- (\displayUnit|Mux9~0_combout\ $ (\displayUnit|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~1_combout\,
	datab => \displayUnit|Mux9~0_combout\,
	datac => \displayUnit|Mux8~1_combout\,
	datad => \displayUnit|Mux7~0_combout\,
	combout => \displayUnit|Mux101~0_combout\);

-- Location: LCCOMB_X82_Y33_N8
\displayUnit|disp7[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp7[0]~0_combout\ = (!\SW[2]~input_o\ & \displayUnit|Mux101~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Mux101~0_combout\,
	combout => \displayUnit|disp7[0]~0_combout\);

-- Location: LCCOMB_X82_Y33_N18
\displayUnit|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux100~0_combout\ = (\displayUnit|Mux6~1_combout\ & ((\displayUnit|Mux9~0_combout\ & (\displayUnit|Mux8~1_combout\)) # (!\displayUnit|Mux9~0_combout\ & ((\displayUnit|Mux7~0_combout\))))) # (!\displayUnit|Mux6~1_combout\ & 
-- (\displayUnit|Mux7~0_combout\ & (\displayUnit|Mux9~0_combout\ $ (\displayUnit|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~1_combout\,
	datab => \displayUnit|Mux9~0_combout\,
	datac => \displayUnit|Mux8~1_combout\,
	datad => \displayUnit|Mux7~0_combout\,
	combout => \displayUnit|Mux100~0_combout\);

-- Location: LCCOMB_X82_Y33_N20
\displayUnit|disp7[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp7[1]~1_combout\ = (\SW[2]~input_o\) # (\displayUnit|Mux100~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Mux100~0_combout\,
	combout => \displayUnit|disp7[1]~1_combout\);

-- Location: LCCOMB_X82_Y33_N22
\displayUnit|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux99~0_combout\ = (\displayUnit|Mux6~1_combout\ & (\displayUnit|Mux7~0_combout\ & ((\displayUnit|Mux8~1_combout\) # (!\displayUnit|Mux9~0_combout\)))) # (!\displayUnit|Mux6~1_combout\ & (!\displayUnit|Mux9~0_combout\ & 
-- (\displayUnit|Mux8~1_combout\ & !\displayUnit|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~1_combout\,
	datab => \displayUnit|Mux9~0_combout\,
	datac => \displayUnit|Mux8~1_combout\,
	datad => \displayUnit|Mux7~0_combout\,
	combout => \displayUnit|Mux99~0_combout\);

-- Location: LCCOMB_X82_Y33_N24
\displayUnit|disp7[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp7[2]~2_combout\ = (\displayUnit|Mux99~0_combout\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux99~0_combout\,
	datac => \SW[2]~input_o\,
	combout => \displayUnit|disp7[2]~2_combout\);

-- Location: LCCOMB_X82_Y33_N2
\displayUnit|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux98~0_combout\ = (\displayUnit|Mux8~1_combout\ & ((\displayUnit|Mux9~0_combout\ & ((\displayUnit|Mux7~0_combout\))) # (!\displayUnit|Mux9~0_combout\ & (\displayUnit|Mux6~1_combout\ & !\displayUnit|Mux7~0_combout\)))) # 
-- (!\displayUnit|Mux8~1_combout\ & (!\displayUnit|Mux6~1_combout\ & (\displayUnit|Mux9~0_combout\ $ (\displayUnit|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~1_combout\,
	datab => \displayUnit|Mux9~0_combout\,
	datac => \displayUnit|Mux8~1_combout\,
	datad => \displayUnit|Mux7~0_combout\,
	combout => \displayUnit|Mux98~0_combout\);

-- Location: LCCOMB_X82_Y34_N8
\displayUnit|disp7[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp7[3]~3_combout\ = (\displayUnit|Mux98~0_combout\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Mux98~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \displayUnit|disp7[3]~3_combout\);

-- Location: LCCOMB_X82_Y33_N28
\displayUnit|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux97~0_combout\ = (\displayUnit|Mux8~1_combout\ & (!\displayUnit|Mux6~1_combout\ & (\displayUnit|Mux9~0_combout\))) # (!\displayUnit|Mux8~1_combout\ & ((\displayUnit|Mux7~0_combout\ & (!\displayUnit|Mux6~1_combout\)) # 
-- (!\displayUnit|Mux7~0_combout\ & ((\displayUnit|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~1_combout\,
	datab => \displayUnit|Mux9~0_combout\,
	datac => \displayUnit|Mux8~1_combout\,
	datad => \displayUnit|Mux7~0_combout\,
	combout => \displayUnit|Mux97~0_combout\);

-- Location: LCCOMB_X82_Y33_N14
\displayUnit|disp7[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp7[4]~4_combout\ = (\SW[2]~input_o\) # (\displayUnit|Mux97~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Mux97~0_combout\,
	combout => \displayUnit|disp7[4]~4_combout\);

-- Location: LCCOMB_X82_Y33_N16
\displayUnit|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux96~0_combout\ = (\displayUnit|Mux9~0_combout\ & (\displayUnit|Mux6~1_combout\ $ (((\displayUnit|Mux8~1_combout\) # (!\displayUnit|Mux7~0_combout\))))) # (!\displayUnit|Mux9~0_combout\ & (!\displayUnit|Mux6~1_combout\ & 
-- (\displayUnit|Mux8~1_combout\ & !\displayUnit|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~1_combout\,
	datab => \displayUnit|Mux9~0_combout\,
	datac => \displayUnit|Mux8~1_combout\,
	datad => \displayUnit|Mux7~0_combout\,
	combout => \displayUnit|Mux96~0_combout\);

-- Location: LCCOMB_X82_Y33_N26
\displayUnit|disp7[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp7[5]~5_combout\ = (\SW[2]~input_o\) # (\displayUnit|Mux96~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \displayUnit|Mux96~0_combout\,
	combout => \displayUnit|disp7[5]~5_combout\);

-- Location: LCCOMB_X82_Y33_N4
\displayUnit|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|Mux95~0_combout\ = (\displayUnit|Mux9~0_combout\ & ((\displayUnit|Mux6~1_combout\) # (\displayUnit|Mux8~1_combout\ $ (\displayUnit|Mux7~0_combout\)))) # (!\displayUnit|Mux9~0_combout\ & ((\displayUnit|Mux8~1_combout\) # 
-- (\displayUnit|Mux6~1_combout\ $ (\displayUnit|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayUnit|Mux6~1_combout\,
	datab => \displayUnit|Mux9~0_combout\,
	datac => \displayUnit|Mux8~1_combout\,
	datad => \displayUnit|Mux7~0_combout\,
	combout => \displayUnit|Mux95~0_combout\);

-- Location: LCCOMB_X82_Y33_N30
\displayUnit|disp7[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayUnit|disp7[6]~6_combout\ = (\displayUnit|Mux95~0_combout\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayUnit|Mux95~0_combout\,
	datac => \SW[2]~input_o\,
	combout => \displayUnit|disp7[6]~6_combout\);

-- Location: LCCOMB_X85_Y38_N6
\ControlUnit|DU_CState~5\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E6~q\,
	datab => \ControlUnit|CS.E7~q\,
	datac => \ControlUnit|DU_CState~4_combout\,
	datad => \ControlUnit|DU_CState~2_combout\,
	combout => \ControlUnit|DU_CState~5_combout\);

-- Location: LCCOMB_X85_Y34_N6
\ControlUnit|DU_CState~7\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|DU_CState~6_combout\,
	datab => \ControlUnit|CS~38_combout\,
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|DU_CState~1_combout\,
	combout => \ControlUnit|DU_CState~7_combout\);

-- Location: LCCOMB_X85_Y34_N18
\ControlUnit|DU_CState~9\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|DU_CState~2_combout\,
	datab => \ControlUnit|DU_CState~8_combout\,
	datac => \ControlUnit|CS.E11~q\,
	datad => \ControlUnit|DU_CState~1_combout\,
	combout => \ControlUnit|DU_CState~9_combout\);

-- Location: LCCOMB_X86_Y34_N0
\ControlUnit|DU_CState~10\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|CS.E0~q\,
	datab => \ControlUnit|DU_CState~0_combout\,
	datac => \ControlUnit|CS.E4~q\,
	combout => \ControlUnit|DU_CState~10_combout\);

-- Location: LCCOMB_X85_Y38_N8
\ControlUnit|DU_CState~3_wirecell\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlUnit|DU_CState~3_combout\,
	combout => \ControlUnit|DU_CState~3_wirecell_combout\);

-- Location: LCCOMB_X86_Y35_N14
\Ram|s_memory~2092_wirecell\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Ram|s_memory~2092_combout\,
	combout => \Ram|s_memory~2092_wirecell_combout\);

-- Location: IOIBUF_X58_Y0_N8
\KEY[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(4),
	o => \KEY[4]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ <= \ALU|Add0~95_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ <= \ALU|Add0~92_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ <= \ALU|Add0~89_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ <= \ALU|Add0~86_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ <= \ALU|Add0~83_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ <= \ALU|Add0~80_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ <= \ALU|Add0~77_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ <= \ALU|Add0~74_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ <= \ALU|Add0~71_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ <= \ALU|Add0~68_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ <= \ALU|Add0~65_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ <= \ALU|Add0~62_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ <= \ALU|Add0~59_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ <= \ALU|Add0~56_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ <= \ALU|Add0~53_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ <= \ALU|Add0~50_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ <= \ALU|Add0~47_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ <= \ALU|Add0~44_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ <= \ALU|Add0~41_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ <= \ALU|Add0~38_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ <= \ALU|Add0~35_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ <= \ALU|Add0~32_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ <= \ALU|Add0~29_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ <= \ALU|Add0~26_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ <= \ALU|Add0~23_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ <= \ALU|Add0~20_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ <= \ALU|Add0~17_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ <= \ALU|Add0~14_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ <= \ALU|Add0~11_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ <= \ALU|Add0~8_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ <= \ALU|Add0~5_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ <= \ALU|Add0~2_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ <= \displayUnit|s_addrCounters[2][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ <= \displayUnit|s_addrCounters[2][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ <= \displayUnit|s_addrCounters[2][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ <= \displayUnit|s_addrCounters[2][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ <= \displayUnit|s_addrCounters[2][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ <= \RegFile|modo|readData[31]~7_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ <= \RegFile|modo|readData[29]~6_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ <= \RegFile|modo|readData[27]~5_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ <= \RegFile|modo|readData[26]~4_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ <= \RegFile|modo|readData[21]~3_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ <= \RegFile|modo|readData[16]~2_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ <= \RegFile|modo|readData[2]~1_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ <= \displayUnit|s_addrCounters[3][5]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ <= \displayUnit|s_addrCounters[3][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ <= \displayUnit|s_addrCounters[3][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ <= \displayUnit|s_addrCounters[3][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ <= \displayUnit|s_addrCounters[3][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ <= \displayUnit|s_addrCounters[3][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ <= \Ram|s_memory~2098_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ <= \Ram|s_memory~2097_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ <= \Ram|s_memory~2095_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ <= \Ram|s_memory~2094_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ <= \Ram|s_memory~2092_wirecell_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ <= \Ram|s_memory~2091_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ <= \Ram|s_memory~2089_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_CState_4__gl_output\ <= \ControlUnit|DU_CState~3_wirecell_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_CState_3__gl_output\ <= \ControlUnit|DU_CState~5_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_CState_2__gl_output\ <= \ControlUnit|DU_CState~7_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_CState_1__gl_output\ <= \ControlUnit|DU_CState~9_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_CState_0__gl_output\ <= \ControlUnit|DU_CState~10_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ <= \pcupdate|s_pc\(31);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ <= \pcupdate|s_pc\(30);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ <= \pcupdate|s_pc\(29);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ <= \pcupdate|s_pc\(28);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ <= \pcupdate|s_pc\(27);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ <= \pcupdate|s_pc\(26);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ <= \pcupdate|s_pc\(25);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ <= \pcupdate|s_pc\(24);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ <= \pcupdate|s_pc\(23);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ <= \pcupdate|s_pc\(22);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ <= \pcupdate|s_pc\(21);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ <= \pcupdate|s_pc\(20);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ <= \pcupdate|s_pc\(19);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ <= \pcupdate|s_pc\(18);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ <= \pcupdate|s_pc\(17);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ <= \pcupdate|s_pc\(16);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ <= \pcupdate|s_pc\(15);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ <= \pcupdate|s_pc\(14);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ <= \pcupdate|s_pc\(13);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ <= \pcupdate|s_pc\(12);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ <= \pcupdate|s_pc\(11);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ <= \pcupdate|s_pc\(10);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ <= \pcupdate|s_pc\(9);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ <= \pcupdate|s_pc\(8);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ <= \pcupdate|s_pc\(7);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ <= \pcupdate|s_pc\(6);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ <= \pcupdate|s_pc\(5);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ <= \pcupdate|s_pc\(4);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ <= \pcupdate|s_pc\(3);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ <= \pcupdate|s_pc\(2);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ <= \pcupdate|s_pc\(1);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ <= \pcupdate|s_pc\(0);

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ <= \displayUnit|s_addrCounters[1][5]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ <= \displayUnit|s_addrCounters[1][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ <= \displayUnit|s_addrCounters[1][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ <= \displayUnit|s_addrCounters[1][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ <= \displayUnit|s_addrCounters[1][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ <= \displayUnit|s_addrCounters[1][0]~q\;
END structure;


