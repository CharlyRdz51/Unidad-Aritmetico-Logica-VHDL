  --Aguilar Rodriguez Carlos Adolfo 215860049
  --Circuitos Digitales Chavez Martinez Ehecathl Joel
  --Unidad Aritmetica logica de 3 Bits, Dos entradas Una salida
  library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;
  --Entidad de la ALU
  entity alu3b7 is 
  port  (
  A,B : in std_logic_vector(2 downto 0);
  S   : in std_logic_vector(2 downto 0);
  resultado : out std_logic_vector(5 downto 0));	
  end alu3b7;
  --Arquitectura de la ALU
  architecture arq1 of alu3b7 is
  signal regsuma,regresta,regmulti,regand,regor,regxor,regnota,regnotb,renglon0,renglon1,renglon2 : std_logic_vector(5 downto 0);
  begin
  --Declaracion de registros para el ALU
  regsuma  <= ("000" & A) + ("000" & B); 
  regresta <= ("000" & A) - ("000" & B);
  renglon0 <= ("000" & A)           when B(0)='1' else 0;
  renglon1 <= ("00"  & A & '0')     when B(1)='1' else 0;
  renglon2 <= ('0'   & A & "00")    when B(2)='1' else 0;
  regmulti <= renglon0 + renglon1 + renglon2;
  regand   <= ("000" & A)AND("000" & B);
  regor    <= ("000" & A) OR("000" & B);
  regxor   <= ("000" & A)XOR("000" & B);
  regnota  <= "000" & NOT (A);
  regnotb  <= "000" & NOT (B);
  resultado <= regsuma  when s=0 else
               regresta when s=1 else
               regmulti when s=2 else
               regand   when s=3 else
               regor    when s=4 else
               regxor   when s=5 else
               regnota  when s=6 else
               regnotb;
  end arq1;
