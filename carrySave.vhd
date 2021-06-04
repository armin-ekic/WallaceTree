--This is the carry save adder which will be used to
--do the calculations for sets of 3 numbers

Library IEEE;
use IEEE.std_logic_1164.all;
use work.components.all;

entity carrySave is
port(a, b, c: in std_logic_vector(7 downto 0);
	  --shifta, shiftb, shiftc: in std_logic_vector(1 downto 0);
	  s, csave: out std_logic_vector(7 downto 0));
end carrySave;
--The shift bit will determine how much we are shifting the values of each of the inputs
--so that the bits stay properly alligned throughout the addition

architecture carrySave_Behavior of carrySave is
	signal cout1, cout2, cout3, cout4, cout5, cout6, cout7, cout8: std_logic;
	signal as, bs, cs: std_logic_vector(7 downto 0);
	begin
	FA0: fullAdder port map(as(0),bs(0),cs(0),s(0),cout1);
	FA1: fullAdder port map(as(1),bs(1),cs(1),s(1),cout2);
	FA2: fullAdder port map(as(2),bs(2),cs(2),s(2),cout3);
	FA3: fullAdder port map(as(3),bs(3),cs(3),s(3),cout4);
	FA4: fullAdder port map(as(4),bs(4),cs(4),s(4),cout5);
	FA5: fullAdder port map(as(5),bs(5),cs(5),s(5),cout6);
	FA6: fullAdder port map(as(6),bs(6),cs(6),s(6),cout7);
	FA7: fullAdder port map(as(7),bs(7),cs(7),s(7),cout8); --Note: cout8 is never used, it'll always be 0 anyway
	
	csave <= cout7 & cout6 & cout5 & cout4 & cout3 & cout2 & cout1 & '0';
end carrySave_Behavior;