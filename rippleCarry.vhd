--This is the carry propogate adder/ ripple carry adder which
--will handle the final calculation of the wallace tree

Library IEEE;
use IEEE.std_logic_1164.all;
use work.components.all;

entity rippleCarry is
port(a, b: in std_logic_vector(7 downto 0);
	  s: out std_logic_vector(8 downto 0));
end rippleCarry;

architecture rippleCarry_Behavior of rippleCarry is
	signal cout0, cout1, cout2, cout3, cout4, cout5, cout6: std_logic;
	signal result: std_logic_vector(8 downto 0);
	begin
	FA0: fullAdder port map(a(0), b(0), '0', result(0), cout0);
	FA1: fullAdder port map(a(1), b(1), cout0, result(1), cout1);
	FA2: fullAdder port map(a(2), b(2), cout1, result(2), cout2);
	FA3: fullAdder port map(a(3), b(3), cout2, result(3), cout3);
	FA4: fullAdder port map(a(4), b(4), cout3, result(4), cout4);
	FA5: fullAdder port map(a(5), b(5), cout4, result(5), cout5);
	FA6: fullAdder port map(a(6), b(6), cout5, result(6), cout6);
	FA7: fullAdder port map(a(7), b(7), cout6, result(7), result(8));
	s <= result(8) & result(7) & result(6) & result(5) & result(4) & result(3) & result(2) & result(1) & result(0);
end rippleCarry_Behavior;