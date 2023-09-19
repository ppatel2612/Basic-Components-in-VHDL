----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2023 03:11:49 PM
-- Design Name: 
-- Module Name: Onebit_Two_to_One_MUX - Behavioral
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Onebit_Two_to_One_MUX is
    Port ( sel : in STD_LOGIC;
           in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           mux_out : out STD_LOGIC);
end Onebit_Two_to_One_MUX;

architecture Behavioral of Onebit_Two_to_One_MUX is

begin
    process(in1,in2,sel) is
    begin
        if (sel ='0') then 
            mux_out <= in1; 
        else 
            mux_out <= in2; 
        end if; 
    end process;
    
end Behavioral;
