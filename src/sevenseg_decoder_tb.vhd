----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 03:19:01 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

    component sevenseg_decoder is
       port ( 
           i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
       );
    end component;
    
    --signal ___: std_logic_vector (_ downto _) := (others=> '0');
    signal w_hex   : std_logic_vector(3 downto 0) := (others => '0');
    signal w_seg_n : std_logic_vector(6 downto 0);
    
begin
    -- PORT MAPS ----------------------------------------
	-- map ports for any component instances (port mapping is like wiring hardware)
    sevenseg : sevenseg_decoder port map (
			i_Hex   => w_hex,
			o_seg_n => w_seg_n
        );
	-----------------------------------------------------

	-- PROCESSES ----------------------------------------	
	-- Test Plan Process --------------------------------
	-- Implement the test plan here.  Body of process is continuous from time = 0  
	test_process : process 
	begin
	    w_hex <= x"0"; wait for 10 ns;
            assert w_seg_n = "1000000" report "Error on 0" severity failure;
        w_hex <= x"1"; wait for 10 ns;
            assert w_seg_n = "1111001" report "Error on 1" severity failure;
        w_hex <= x"2"; wait for 10 ns;
            assert w_seg_n = "0100100" report "Error on 2" severity failure; 
        w_hex <= x"3"; wait for 10 ns;
            assert w_seg_n = "0110000" report "Error on 3" severity failure;
        w_hex <= x"4"; wait for 10 ns;
            assert w_seg_n = "0011001" report "Error on 4" severity failure;
        w_hex <= x"5"; wait for 10 ns;
            assert w_seg_n = "0010010" report "Error on 5" severity failure;
        w_hex <= x"6"; wait for 10 ns;
            assert w_seg_n = "0000010" report "Error on 6" severity failure;
        w_hex <= x"7"; wait for 10 ns;
            assert w_seg_n = "1111000" report "Error on 7" severity failure;
        w_hex <= x"8"; wait for 10 ns;
            assert w_seg_n = "0000000" report "Error on 8" severity failure;
        w_hex <= x"9"; wait for 10 ns;
            assert w_seg_n = "0011000" report "Error on 9" severity failure;
        w_hex <= x"A"; wait for 10 ns;
            assert w_seg_n = "0001000" report "Error on A" severity failure;
        w_hex <= x"B"; wait for 10 ns;
            assert w_seg_n = "0000011" report "Error on B" severity failure;
        w_hex <= x"C"; wait for 10 ns;
            assert w_seg_n = "0100111" report "Error on C" severity failure;
        w_hex <= x"D"; wait for 10 ns;
            assert w_seg_n = "0100001" report "Error on D" severity failure;
        w_hex <= x"E"; wait for 10 ns;
            assert w_seg_n = "0000110" report "Error on E" severity failure;
        w_hex <= x"F"; wait for 10 ns;
            assert w_seg_n = "0001110" report "Error on F" severity failure; 
		wait; -- wait forever
	end process;

end test_bench;
