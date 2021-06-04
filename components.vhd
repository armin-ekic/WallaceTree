--This is the components file which will allow us to
--port map our components across files

Library IEEE;
use IEEE.std_logic_1164.all;

package components is

-----full adder-----
component fullAdder is
port(a, b, cin: in std_logic;
	  s, cout: out std_logic);
end component;

-----half adder-----
component halfAdder is
port(a, b: in std_logic;
	  s, cout: out std_logic);
end component;

-----ripple carry adder-----
component rippleCarry is
port(a, b: in std_logic_vector(7 downto 0);
	  s: out std_logic_vector(8 downto 0));
end component;

-----carry save adder-----
component carrySave is
port(a, b, c: in std_logic_vector(7 downto 0);
	  --shifta, shiftb, shiftc: in std_logic_vector(1 downto 0);
	  s, csave: out std_logic_vector(7 downto 0));
end component;

end components;