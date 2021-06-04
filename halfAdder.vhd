--This is a half adder which will be used to add 2 numbers and
--produce a sum and carry

Library IEEE;
use IEEE.std_logic_1164.all;

entity halfAdder is
port(a, b: in std_logic;
	  s, cout: out std_logic);
end halfAdder;

architecture halfAdder_Behavior of halfAdder is
	begin
	s <= a xor b;
	cout <= a and b;
end halfAdder_Behavior;