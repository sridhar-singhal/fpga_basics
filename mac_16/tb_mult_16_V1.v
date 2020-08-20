`include "mult_16_V1.v"
`timescale 1ns/1ns
module tb_mult_16_V1 ();
reg [15:0] a,b;
wire [31:0] op;
reg clk = 0;
mult_16_V1 m1(.a(a),.b(b),.op(op));

always #5 clk = ~clk;

initial begin 
	$monitor("a = %d, b = %d, sum = %d", a,b,op);
	$dumpfile("mult_test.vcd");
	$dumpvars(0);
	#10 
	a =10;
	b = 10;
	#10
	a = 15;
	b = 6;
	#10
	$finish;
end
endmodule