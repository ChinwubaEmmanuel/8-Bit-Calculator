module control_unit (
input clock, reset, in,
output out,
output reg LoadOU, Iuau,  LoadA, LoadB, LoadR, clear
);
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
reg [1:0] state, nextstate;

EdgeDetect  INST
(
	.in(in) ,	// input  in_sig
	.clock(clock) ,	// input  clock_sig
	.out(out) 	// output  out_sig
);


always @ (posedge clock, negedge reset)
	if(reset == 0) state <= s0;
	else state <= nextstate;
always @ (state, out)
	case(state)
		s0:  if(out) begin nextstate = s1; clear = 0; LoadA = 1; LoadB = 1; LoadR = 1; LoadOU = 1; Iuau = 0; end else begin nextstate = s0; end
		s1:  if(out) begin nextstate = s2; clear = 1; LoadA = 0; LoadB = 1; LoadR = 1; LoadOU = 0; Iuau = 0; end else begin nextstate = s1; end
		s2:  if(out) begin nextstate = s3; clear = 1; LoadA = 1; LoadB = 0; LoadR = 1; LoadOU = 0; Iuau = 0; end else begin nextstate = s2; end
		s3:  if(out) begin nextstate = s3; clear = 1; LoadA = 1; LoadB = 1; LoadR = 0; LoadOU = 0; Iuau = 1; end else begin nextstate = s3; end
	endcase

endmodule
