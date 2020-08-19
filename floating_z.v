module floating_z (
	a,b,o
	
);
output o;
input b;
wire a, b;

assign o=a?b:1`bz;


endmodule