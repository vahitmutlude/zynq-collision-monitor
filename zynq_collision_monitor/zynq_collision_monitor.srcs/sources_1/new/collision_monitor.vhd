library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity collision_monitor is
    Port (
        clk     : in STD_LOGIC;
        distance_i  : in STD_LOGIC_VECTOR(15 downto 0);
        alarm_o     : out STD_LOGIC
       
        );
end collision_monitor;

architecture behavioral of collision_monitor is

component decision_guard is
    Port(
        clk : in STD_LOGIC;
        distance_i  : in STD_LOGIC_VECTOR(15 downto 0);
        alarm_o     : out STD_LOGIC
    );
end component;    

signal filtered_distance : STD_LOGIC_VECTOR(15 downto 0);

begin



decisin_guard : decision_guard
    port map(
            clk => clk,
            distance_i => distance_i,
            alarm_o => alarm_o               
    
            );
          

end behavioral;