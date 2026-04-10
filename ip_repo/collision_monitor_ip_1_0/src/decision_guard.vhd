library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decision_guard is
    Port (
        clk     : in STD_LOGIC;
        distance_i  : in STD_LOGIC_VECTOR(15 downto 0);
        alarm_o     : out STD_LOGIC
          );
          
end decision_guard;

architecture behavioral of decision_guard is
begin
process(clk)
begin
    if rising_edge(clk) then
        if unsigned(distance_i) < 2000 then
            alarm_o <= '1';
        else
            alarm_o <= '0';
        end if;
    end if;
end process;                  

end behavioral;