`timescale 1ns/1ns
`include "mac_16.v"
module tb_mac_16();

reg [15:0] dataa = 0, datab = 0;
// wire [63:0] op;
wire [63:0] op;
reg clk = 1;
reg clken = 0;
mac_16 mac1(.dataa(dataa),.datab(datab), .clk(clk), .clk_en(clken), .out(op));

initial begin
	forever begin
		#10 clk = ~clk;
	end
end 
//Can also use always #1 clk = ~clk;
initial begin
	// $monitor("dataa = %d, datab = %d, op = %d",dataa, datab, op);
	$dumpfile("test1.vcd");
	$dumpvars(0);
	clken = 1;
	dataa = 10;
	datab = 5;
	#20
	dataa = 7;
	datab = 3;
	#20
	dataa = 95;
	datab = 27;
	#20 
	$finish;
end



endmodule