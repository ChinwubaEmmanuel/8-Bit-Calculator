module term_project (
input clock, reset, in, Cin,
output Cout,
input [3:0] row,
output [3:0] col,
output [7:0] X,
output gval, a1,b1,c1,d1,e1,f1,g1,a2,b2,c2,d2,e2,f2,g2,a3,b3,c3,d3,e3,f3,g3,a4,b4,c4,d4,e4,f4,g4,
output wire [7:0] out_reg
//output reg LoadOU, Iuau,  LoadA, LoadB, LoadR, clear
);
wire LoadOU, Iuau,  LoadA, LoadB, LoadR, clear;
wire [7:0] finval, in_out;

control_unit CU
(
	.clock(clock) ,	// input  clock_sig
	.reset(reset) ,	// input  reset_sig
	.in(in) ,	// input  in_sig
	.LoadOU(LoadOU) ,	// output  LoadOU_sig
	.Iuau(Iuau) ,	// output  Iuau_sig
	.LoadA(LoadA) ,	// output  LoadA_sig
	.LoadB(LoadB) ,	// output  LoadB_sig
	.LoadR(LoadR) ,	// output  LoadR_sig
	.clear(clear) 	// output  clear_sig
);

calc_in_unit INPUT
(
	.clk(clock) ,	// input  clk_sig
	.reset(reset) ,	// input  reset_sig
	.row(row) ,	// input [3:0] row_sig
	.col(col) ,	// output [3:0] col_sig
	.finval(finval) ,	// output [7:0] finval_sig
	.gval(gval) 	// output  gval_sig
);

two_funct_au au
(
	.A(finval) ,	// input [7:0] A_sig
	.Cin(Cin) ,	// input  Cin_sig
	.reset(reset) ,	// input  reset_sig
	.LoadA(LoadA) ,	// input  LoadA_sig
	.LoadB(LoadB) ,	// input  LoadB_sig
	.LoadR(LoadR) ,	// input  LoadR_sig
	.Cout(Cout) ,	// output  Cout_sig
	.out_reg(out_reg) 	// output [7:0] out_reg_sig
);

two2onemux two2onemux_inst
(
	.A(finval) ,	// input [N-1:0] A_sig
	.B(out_reg) ,	// input [N-1:0] B_sig
	.S(Iuau) ,	// input  S_sig
	.Y(in_out) 	// output [N-1:0] Y_sig
);

calc_out calc_output
(
	.A(in_out) ,	// input [7:0] A_sig
	.a1(a1) ,	// output  a1_sig
	.b1(b1) ,	// output  b1_sig
	.c1(c1) ,	// output  c1_sig
	.d1(d1) ,	// output  d1_sig
	.e1(e1) ,	// output  e1_sig
	.f1(f1) ,	// output  f1_sig
	.g1(g1) ,	// output  g1_sig
	.a2(a2) ,	// output  a2_sig
	.b2(b2) ,	// output  b2_sig
	.c2(c2) ,	// output  c2_sig
	.d2(d2) ,	// output  d2_sig
	.e2(e2) ,	// output  e2_sig
	.f2(f2) ,	// output  f2_sig
	.g2(g2) ,	// output  g2_sig
	.a3(a3) ,	// output  a3_sig
	.b3(b3) ,	// output  b3_sig
	.c3(c3) ,	// output  c3_sig
	.d3(d3) ,	// output  d3_sig
	.e3(e3) ,	// output  e3_sig
	.f3(f3) ,	// output  f3_sig
	.g3(g3) ,	// output  g3_sig
	.a4(a4) ,	// output  a4_sig
	.b4(b4) ,	// output  b4_sig
	.c4(c4) ,	// output  c4_sig
	.d4(d4) ,	// output  d4_sig
	.e4(e4) ,	// output  e4_sig
	.f4(f4) ,	// output  f4_sig
	.g4(g4) 	// output  g4_sig
);

endmodule
