-- fa.vhd

entity full_add is
    port(
        a:      in  std_logic;
        b:      in  std_logic;
        cin:    in  std_logic;
        sum:    out std_logic;
        cout:   out std_logic
    );
end entity full_add;

architecture behavioral of full_add is
    component ha is
        port(
            a:      in  std_logic;
            b:      in  std_logic;
            sha:    out std_logic;
            cha:    out std_logic
        );
    end component ha;

    signal s_s, c1, c2: std_logic;
begin
    HA1: ha port map(a, b, s_s, c1);
    HA2: ha port map(s_s, cin, sum, c2);
    cout <= c1 or c2;
end architecture behavioral;
