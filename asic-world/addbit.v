module addbit (
	a, b, ci,sum,co
);

input a, b, ci;
output sum, co;

wire a, b, ci, sum, co;

assign{co, sum} = a + b + ci;

endmodule