module two2onemux #(parameter N= 8)
(
input [N-1:0] A, B,
input S,
output [N-1:0] Y 
);

assign Y = S==0 ? A:B;

endmodule
