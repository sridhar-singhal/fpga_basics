module add_64 (
	a, 	//data a
	b,	//data b
	op	//output
);

input [63:0] a,b;
output [63:0] op;
assign op = a + b;	//Shall wait here for assignment to complete (however many clocks are required)

endmodule