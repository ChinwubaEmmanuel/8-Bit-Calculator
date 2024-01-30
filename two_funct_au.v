module two_funct_au (    //name the module
input [7:0] A, //declare input ports
input Cin, reset, LoadA, LoadB, LoadR,
output Cout,
output [7:0] out_reg
);
wire [7:0] S, D, E; //declare carry-out port

/*
MUX_reg
(
	.y(D) ,	// output [7:0] y_sig
	.a(A) ,	// input [7:0] a_sig
	.load(LoadA) ,	// input  load_sig
	.clear(reset) 	// input  clear_sig
);
MUX_reg
(
	.y(E) ,	// output [7:0] y_sig
	.a(A) ,	// input [7:0] a_sig
	.load(LoadB) ,	// input  load_sig
	.clear(reset) 	// input  clear_sig
);
*/
Nbitregister Nbitregister_inst1
(
	.D(A) ,	// input [N-1:0] D_sig
	.load(LoadA) ,	// input  load_sig
	.clr(reset) ,	// input  clr_sig
	.Q(D) 	// output [N-1:0] Q_sig
);
Nbitregister Nbitregister_inst2
(
	.D(A) ,	// input [N-1:0] D_sig
	.load(LoadB) ,	// input  load_sig
	.clr(reset) ,	// input  clr_sig
	.Q(E) 	// output [N-1:0] Q_sig
);
eightbit_ripplecarryadder
(
	.A(D) ,	// input [7:0] A_sig
	.B(E) ,	// input [7:0] B_sig
	.Cin(Cin) ,	// input  Cin_sig
	.S(S) ,	// output [7:0] S_sig
	.Cout(Cout) 	// output  Cout_sig
);
Nbitregister Nbitregister_inst3
(
	.D(S) ,	// input [N-1:0] D_sig
	.load(LoadR) ,	// input  load_sig
	.clr(reset) ,	// input  clr_sig
	.Q(out_reg) 	// output [N-1:0] Q_sig
);
/*
MUX_reg
(
	.y(out_reg) ,	// output [7:0] y_sig
	.a(S) ,	// input [7:0] a_sig
	.load(LoadR) ,	// input  load_sig
	.clear(reset) 	// input  clear_sig
);
*/
endmodule
