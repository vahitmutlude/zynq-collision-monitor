library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moving_average_filter is
    Port (
        clk : in STD_LOGIC;
        distance_i : in STD_LOGIC_VECTOR(15 downto 0);
        filtered_distance : out STD_LOGIC_VECTOR(15 downto 0)
         );
        
end entity;

architecture behavioral of moving_average_filter is

signal table_one : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal table_two : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal table_three : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal table_four : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal resume : unsigned(15 downto 0);

begin

process(clk)
begin
    if rising_edge(clk) then
        table_one   <= distance_i;
        table_two   <= table_one;
        table_three <= table_two;
        table_four  <= table_three;
    end if;
end process;

resume <= unsigned(table_one) +  unsigned(table_two) + unsigned(table_three) + unsigned(table_four);
filtered_distance <= std_logic_vector("00" & resume(15 downto 2));

end behavioral;