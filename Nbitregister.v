module Nbitregister #(parameter N = 8)
(
input [N-1:0] D,
input load, clr,
output reg[N-1:0] Q
);
	always @(negedge load, negedge clr) begin
		if (clr == 1'b0) Q <= 0;
		else if(load == 1'b0) Q <= D;
	end
endmodule
