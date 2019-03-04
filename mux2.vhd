-- a simple template file in VHDL
-- more useful info in my VHDL book or www.amos.eguru-il.com
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
entity mux2 is
   port ( x0,x1,sel : in  std_logic ;
          y           : out std_logic ) ;
end mux2 ;

architecture arc_mux2 of mux2 is
begin
  y <= (not sel and x0) or (sel and x1);
end arc_mux2 ;