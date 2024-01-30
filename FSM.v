module FSM (
input clock, reset, in,
output out,
output reg LoadOU, IUAU,  LoadA, LoadB, LoadR, clear,
output reg [1:0] state, nextstate
);
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
//reg [1:0] state, nextstate;
wire divclock;

/*clock_div #(32, 2500000)
(
	.clk(clock) ,	// input  clk_sig
	.reset(~reset) ,	// input  reset_sig
	.clk_out(divclock) 	// output  clk_out_sig
);*/

EdgeDetect  INST
(
	.in(~in) ,	// input  in_sig
	.clock(clock) ,	// input  clock_sig
	.out(out) 	// output  out_sig
);

//edge_detect_new edge_detect_new_inst
//(
//	.in(~in) ,	// input  in_sig
//	.clock(clock) ,	// input  clock_sig
//	.out(out) 	// output  out_sig
//);


always @ (posedge clock, negedge reset)
	if(reset == 0) state <= s0;
	else state <= nextstate;
	
always @ (state, out)
	case(state)
//		
//		s0: begin clear <= 1; LoadA <= 0; LoadB <= 0; LoadR <= 0; LoadOU <= 0; Iuau <= 1; nextstate <= s1; end
//		s1: begin clear <= 0; LoadA <= 1; LoadB <= 0; LoadR <= 0; LoadOU <= 1; Iuau <= 1; nextstate <= s2; end 
//		s2: begin clear <= 0; LoadA <= 0; LoadB <= 1; LoadR <= 0; LoadOU <= 1; Iuau <= 1; nextstate <= s3; end 
//		s3: begin clear <= 0; LoadA <= 0; LoadB <= 0; LoadR <= 1; LoadOU <= 1; Iuau <= 0; end 	
		
		s0:  if(out) begin nextstate = s1; clear = 0; LoadA = 1; LoadB = 1; LoadR = 1; LoadOU = 1; IUAU = 0; end else begin nextstate = s0; end
		s1:  if(out) begin nextstate = s2; clear = 1; LoadA = 0; LoadB = 1; LoadR = 1; LoadOU = 0; IUAU = 0; end else begin nextstate = s1; end
		s2:  if(out) begin nextstate = s3; clear = 1; LoadA = 1; LoadB = 0; LoadR = 1; LoadOU = 0; IUAU = 0; end else begin nextstate = s2; end
		s3:  if(out) begin nextstate = s3; clear = 1; LoadA = 1; LoadB = 1; LoadR = 0; LoadOU = 0; IUAU = 1; end else begin nextstate = s3; end
	endcase
endmodule
	