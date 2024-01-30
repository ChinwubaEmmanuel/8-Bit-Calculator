module edge_detect_new
( 
	input in, clock,
	output reg out
);

always @ (posedge clock)
	out <= in;

endmodule