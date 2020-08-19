//Note 1'bz means don't care
`include "addbit.v"

module adder_hier (
	result, carry, r1, r2, ci

);

input [3:0] r1, r2;
input ci;

output [3:0] result;
output carry;

wire [3:0] r1, r2, result;
wire ci, carry;

wire c1, c2, c3;
addbit u0(r1[0], r2[0], ci, result[0], c1);
addbit u1(r1[1], r2[1], c1, result[1], c2);
addbit u2(r1[2], r2[2], c2, result[2], c3);
addbit u3(r1[3], r2[3], c3, result[3], carry);

endmodule


module tb ();

reg [3:0] r1,r2;
reg ci;
wire [3:0] result;
wire carry;
	
	initial begin
		r1 = 0;
		r2 = 0;
		ci = 0;

		#10 r1 = 18;
		#10 r2 = 2;
		#10 ci = 1;
		#10 $display("+---------------------------+");
	end

adder_hier U(result, carry, r1, r2, ci);

initial begin
	$display("+----------------------+");
	$display("| r1 | r2 | ci | u0.sum | u1.sum | u2.sum | u3.sum |");
	$display("+----------------------+");
	$monitor("| %h | %h | %h | %h | %h | %h | %h |", r1, r2, ci, tb.U.u0.sum, tb.U.u1.sum, tb.U.u2.sum, tb.U.u3.sum);
end	
//Note, in the output, r1 is listed as a, that is because we have printed hexadecimals, %h. 
//When run on r1 = 18, r1 = 2 is listed, 10010 which, 5th bit is removed as size of r1 was 4 bits.
endmodule



