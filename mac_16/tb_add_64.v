`include "add_64.v"
module tb_add_64 ();

//remember to initialize your clock
reg clk = 0;
reg [63:0] a = 0, b = 0;
wire [63:0] op;

add_64 a1(.a(a),.b(b),.op(op));

//Apparently this way is wrong for 
initial begin 
	forever begin
		#5 clk = ~clk;
	end
end
// always #5 clk = ~clk;
initial begin 
	// $monitor("a = %d, b = %d, sum = %d", a,b,op);
	$dumpfile("add_test.vcd");
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