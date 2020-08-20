`include "add_64.v"
`include "mult_16_V1.v"
module mac_16 (
 clk,clk_en, dataa, datab, out   // Clock clk_en, // Clock Enable
);

//Remember to initialize all registers or else accumulator can create a lot of problems
input clk, clk_en;
input [15:0] datab, dataa;
output [63:0] out;		//Storage or addition of upto 1024 numbers and more. 16*16 = 32 bits, 10 bits for 1024 numbers accumulated
reg [63:0] out = 0;
// reg c;
wire [31:0] a;
wire [63:0] c;

add_64 a1(.a(a),.b(out),.op(c));
mult_16_V1 m1(.a(dataa),.b(datab),.op(a));

always @(posedge clk)
begin
	if(clk_en)
		out <= c;
	$monitor("dataa = %d, datab = %d, c = %d, a = %d, clk = %d",dataa, datab, c, a,clk);
end
endmodule