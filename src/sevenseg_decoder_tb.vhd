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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

    component seveseg_decoder is
       -- port(
        
       -- );
    end component;
    
    --signal ___: std_logic_vector (_ downto _) := (others=> '0');

begin
    -- PORT MAPS ----------------------------------------
	-- map ports for any component instances (port mapping is like wiring hardware)
    thirtyOneDayMonthMux_inst : thirtyOneDayMonth port map (
			i_D => w_sw(0),
			i_C => w_sw(1),
			i_B => w_sw(2),
			i_A => w_sw(3),
	    		o_Y => w_Y
        );
	-----------------------------------------------------

	-- PROCESSES ----------------------------------------	
	-- Test Plan Process --------------------------------
	-- Implement the test plan here.  Body of process is continuous from time = 0  
	test_process : process 
	begin
	-- Place test cases here. The first two have been written for you
		w_sw <= x"0"; wait for 10 ns;
            assert w_Y = '0' report "error on x0" severity failure;
        w_sw <= x"1"; wait for 10 ns;
            assert w_Y = '1' report "error on Jan" severity failure;
        w_sw <= x"2"; wait for 10 ns;
            assert w_Y = '0' report "error on Feb" severity error;
        w_sw <= x"3"; wait for 10 ns;
            assert w_Y = '1' report "error on Mar" severity failure;
        w_sw <= x"4"; wait for 10 ns;
            assert w_Y = '0' report "error on Apr" severity failure;
        w_sw <= x"5"; wait for 10 ns;
            assert w_Y = '1' report "error on May" severity failure;
        w_sw <= x"6"; wait for 10 ns;
            assert w_Y = '0' report "error on Jun" severity failure;
        w_sw <= x"7"; wait for 10 ns;
            assert w_Y = '1' report "error on Jul" severity failure;
        w_sw <= x"8"; wait for 10 ns;
            assert w_Y = '1' report "error on Aug" severity failure;
        w_sw <= x"9"; wait for 10 ns;
            assert w_Y = '0' report "error on Sep" severity failure;
        w_sw <= x"A"; wait for 10 ns;
            assert w_Y = '1' report "error on Oct" severity failure;
        w_sw <= x"B"; wait for 10 ns;
            assert w_Y = '0' report "error on Nov" severity failure;
        w_sw <= x"C"; wait for 10 ns;
            assert w_Y = '1' report "error on Dec" severity failure; 
        w_sw <= x"D"; wait for 10 ns;
            assert w_Y = '0' report "error on xD" severity failure;
        w_sw <= x"E"; wait for 10 ns;
            assert w_Y = '0' report "error on xE" severity failure;
        w_sw <= x"F"; wait for 10 ns;
            assert w_Y = '0' report "error on xF" severity failure;  
		wait; -- wait forever
	end process;

end test_bench;
