library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

entity tb_sensor_reader is
end tb_sensor_reader;

architecture behavioral of tb_sensor_reader is
    signal clk : std_logic := '0';
    signal sensor_data_out : std_logic_vector(15 downto 0) := (others => '0');
    constant clk_period : time := 10ns;
    signal alarm_i : std_logic;
begin 
    dut_brain: entity work.collision_monitor
        port map (
            clk     =>  clk,
            distance_i  => sensor_data_out,
            alarm_o     => alarm_i
        
        );


    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    
    file_read_process : process
    
        file file_pointer : text;
        variable current_line : line;
        variable hex_to_bin_value : std_logic_vector(15 downto 0);
        
    begin    
        file_open(file_pointer,"noisy_distance_data.txt", READ_MODE);
        while not endfile(file_pointer) loop
            wait until rising_edge(clk);
            readline(file_pointer, current_line);
            hread(current_line,hex_to_bin_value);
            sensor_data_out <= hex_to_bin_value;
        end loop;
        file_close(file_pointer);
        wait;
     end process;        
      
    
             
     
end behavioral;
