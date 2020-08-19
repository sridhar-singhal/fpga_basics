
primitive udp_sequential(q, clk, d);

output q;
input clk, d;

reg q;

	table 
		//ouput is obtained only at rising edge of clock
		//clk 	d	q	q+
		(01)	0	:	?	:	0;
		(01)	1	:	?	:	1;
		(0?)	1	:	1	:	1;
		(0?)	0	:	0	:	0;

		//ignoring negative or changes to zero from 0, 1 ,x; probably 0 to 0 is not considered over here
		(?0)	?	:	?	:	-;

		//ignoring changes in d when clk is steady
		?	  (??)	:	?	:	-;

	endtable 

endprimitive 

/* Note on x and z
https://www.verilogpro.com/systemverilog-verilog-x-optimism/

Z is high impedance or un-driven state.
X is unknown or intermediate lodic state. 
X is created by uninitialized registers too. They also represent don't care values.

