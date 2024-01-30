// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.


// Generated by Quartus Prime Version 20.1 (Build Build 720 11/11/2020)
// Created on Tue Dec 06 14:09:36 2022

NbitOU NbitOU_inst
(
	.D(D_sig) ,	// input [N-1:0] D_sig
	.Load(Load_sig) ,	// input  Load_sig
	.clr(clr_sig) ,	// input  clr_sig
	.clock(clock_sig) ,	// input  clock_sig
	.Q(Q_sig) 	// output [N-1:0] Q_sig
);

defparam NbitOU_inst.N = 8;