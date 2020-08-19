primitive udp_latch(q, clk, d);

output q;
input clk, d;

reg q;

//notice that each output is separated by a : . Now how does the compute know if it is q or q+?
//A udp can have upto 10 inputs and only one output. So the first : lists output.
//Second : lists output^(-1)
// - in output table implies no ouput change. 

//All states shall not change the output must be specified else o/p will be x
// ? is an iteration over 0, 1, x. x means don't care 
table

	//clk  d  q  q+

	0	1	:	?	:	1	;
	0	0	:	?	:	0	;
	1	?	:	?	:	-	;

endtable 

endprimitive 