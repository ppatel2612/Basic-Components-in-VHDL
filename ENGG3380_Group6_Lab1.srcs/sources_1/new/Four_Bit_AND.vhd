----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2023 03:57:00 PM
-- Design Name: 
-- Module Name: Four_Bit_AND - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity Four_Bit_AND is
    generic (
        WIDTH : natural :=4
    );

    port (
        a : in std_logic_vector(0 to WIDTH-1);
        b : in std_logic_vector(0 to WIDTH-1);
        q : out std_logic_vector(0 to WIDTH-1)
    );
end entity Four_Bit_AND;


architecture beh of Four_Bit_AND is
begin
    and_bits: process(a, b)
    begin
        for i in q'range loop
            q(i) <= a(i) and b(i);
        end loop;
    end process and_bits;
end architecture beh;
