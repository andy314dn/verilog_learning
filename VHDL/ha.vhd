-- ha.vhd

entity ha is
    port(
        a:      in  std_logic;
        b:      in  std_logic;
        sha:    out std_logic;
        cha:    out std_logic
    );
end entity ha;

architecture behavioral of ha is
begin
    sha <= a xor b;
    cha <= a and b;
end architecture behavioral;
