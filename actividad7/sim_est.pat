
-- description generated by Pat driver

--			date     : Sun Apr 22 14:56:48 2018
--			revision : v109

--			sequence : alu3b7

-- input / output list :
in       a (2 downto 0) X;
in       b (2 downto 0) X;
in       s (2 downto 0) X;
out      resultado (5 downto 0) X;
in       vdd B;
in       vss B;

begin

-- Pattern description :

--                                                 abs r vv 
--                                                     e ds 
--                                                     s ds 
--                                                     u    
--                                                     l    
--                                                     t    
--                                                     a    
--                                                     d    
--                                                     o    

<          0 ps>                                 : 740?uu10;
<      50000 ps>                                 : 741?0b10;
<     100000 ps>                                 : 742?0310;
<     150000 ps>                                 : 743?1c10;
<     200000 ps>                                 : 744?0410;
<     250000 ps>                                 : 745?0710;
<     300000 ps>                                 : 746?0310;
<     350000 ps>                                 : 747?0010;

end;
