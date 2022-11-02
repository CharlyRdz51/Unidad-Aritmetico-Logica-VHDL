



    -- declaracion de puertos
	in A    (2 downto 0)X;
	in B    (2 downto 0)X;
	in S	(2 downto 0)X;
	out resultado (5 downto 0)X;
	
    -- fin de puertos 
    -- fuente de alimentacion
    
	in vdd B;
	in vss B;
	
	begin
	
	--		A	B	S	resultado	vdd	vss
	
	<0ns>:		7	4	0	?**      	1	0;
	<+50ns>:	7	4	1	?**		1	0;
	<+50ns>:	7	4	2	?**		1	0;
	<+50ns>:	7	4	3	?**		1	0;
	<+50ns>:	7	4	4	?**		1	0;
	<+50ns>:	7	4	5	?**		1	0;
	<+50ns>:	7	4	6	?**		1	0;
	<+50ns>:	7	4	7	?**		1	0;
    
	 end;