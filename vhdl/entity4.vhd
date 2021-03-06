entity test is
end entity test;

entity unit1 is
    generic (n : integer := 100);
    port (
       inum : in integer;
       oled : out integer);
end entity unit1;

architecture unit1_a of unit1 is
    signal a : integer := 0;
begin
    oled <= inum + a + n;
end architecture unit1_a;

architecture test_arch of test is
    constant CYCLES : integer := 100;
    signal clk : integer := 0;
    signal i : integer := 0;
    signal o1 : integer;
    signal o2 : integer;
begin

	terminator : process(clk)
	begin
		if clk >= CYCLES then
			assert false report "end of simulation" severity failure;
		-- else
		-- 	report "tick";
		end if;
	end process;

    u1:entity unit1(unit1_a)
        generic map (n=>200)
        port map(inum=>i, oled=>o1);
    u2:entity unit1(unit1_a)
        port map(inum=>i, oled=>o2);

    clk <= clk + 1 after 1 us;

end architecture test_arch;

