--This is the file that will contain the actual wallace
--tree and implement the adders defined in the code

Library IEEE;
use IEEE.std_logic_1164.all;
use work.components.all;

entity wallaceTree is
port(a, b, c, d, e, f, g: in std_logic_vector(5 downto 0);
	  s: out std_logic_vector(8 downto 0));
end wallaceTree;

architecture wallaceTree_Behavior of wallaceTree is
	signal sin0, sin1, sin2, sin3, sin4, csin0, csin1, csin2, csin3, csin4, ain, bin, cin, din, ein, fin, gin: std_logic_vector(7 downto 0);
	signal sinr: std_logic_vector(8 downto 0);
	begin
	ain <= "00" & a;
	bin <= "00" & b;
	cin <= "00" & c;
	din <= "00" & d;
	ein <= "00" & e;
	fin <= "00" & f;
	cs0: carrySave port map(ain,bin,cin,sin0,csin0);
	cs1: carrySave port map(din,ein,fin,sin1,csin1);
	cs2: carrySave port map(sin0,sin1,gin,sin2,csin2);
	cs3: carrySave port map(csin0,csin1,csin2,sin3,csin3);
	cs4: carrySave port map(sin2,sin3,csin3,sin4,csin4);
	rc:  rippleCarry port map(sin4,csin4,sinr);
	s <= sinr;
end wallaceTree_Behavior;