module NbitOU #(parameter N = 8)
(
input[N-1:0] D,
input Load, clr, clock,
output reg[N-1:0] Q
);

	always @(negedge Load, negedge clr, posedge clock) begin
		if(clr == 1'b0) Q <= 0;
		else if(Load == 1'b0) Q <= D;
	end
endmodule
