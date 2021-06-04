--This is a full adder which will take 3 inputs, add them all
--together and produce a sum and carry

Library IEEE;
use IEEE.std_logic_1164.all;

entity fullAdder is
port(a, b, cin: in std_logic;
	  s, cout: out std_logic);
end fullAdder;

architecture fullAdder_Behavior of fullAdder is
	begin
	s <= a xor b xor cin;
	cout <= (a and b) or (cin and a) or (cin and b);
end fullAdder_Behavior;