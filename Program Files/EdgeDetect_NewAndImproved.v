module EdgeDetect
( 
	input in, clock,
	output reg out
);

always @ (posedge clock)
	out <= in;

endmodule
