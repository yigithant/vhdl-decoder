library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port(
i:in std_logic_vector(1 downto 0);
o:out std_logic_vector(3 downto 0)
);
end decoder;

architecture behavior of decoder is
signal ara1, ara2 : std_logic;
begin
ara2<=not i(1);
ara1<=not i(0);
o(0)<=i(1) xor i(0);
o(1)<=i(0) xor ara1;
o(2)<=i(1) xor ara2;
o(3)<=ara1 xor ara2;

end behavior;
