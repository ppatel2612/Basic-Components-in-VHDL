----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/16/2023 03:13:58 PM
-- Design Name: 
-- Module Name: One_Bit_Adder - Behavioral
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

entity One_Bit_Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end One_Bit_Adder;

architecture Behavioral of One_Bit_Adder is
    signal S1, S2, S3 : STD_LOGIC;
begin

 -- Calculate the sum of the 1-BIT adder.
        Sum <=  A XOR B XOR Cin;
        S1 <= A AND B;
        S2 <= A AND Cin;
        S3 <= Cin AND B;
        Cout <= S1 OR S2 OR S3;
                       
end Behavioral;
