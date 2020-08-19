primitive udp_body(
//This order matters, inputs b and c are used. 
	a,
	b,
	c
);

output a;
//Order here doesn't matter.
input b,c;

table 
	? 1 : 1;
	1 ? : 1;
	0 0 : 0;
endtable 

endprimitive 