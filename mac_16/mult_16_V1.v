module mult_16_V1 (
	 a,b, op
);

input [15:0] a,b;
output [31:0] op;
reg [31:0] op = 0;

integer i;
always @(a or b)
begin
	op = 0;
	for (i = 0; i < 16; i=i+1) 
		if(b[i]== 1'b1)
			op = op + (a << i);
end
endmodule