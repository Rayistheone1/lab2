----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2025 11:37:18 AM
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

component sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal w_sw : std_logic_vector (3 downto 0):= (others=> '0');
signal w_Y : std_logic_vector (6 downto 0);

begin
    
    sevensegDecoder_inst : sevenseg_decoder port map (
--			i_Hex(3) => w_sw(3),
--			i_Hex(2) => w_sw(2),
--			i_Hex(1) => w_sw(1),
--			i_Hex(0) => w_sw(0),
--	    	o_seg_n(6) => w_Y(6),
--	    	o_seg_n(5) => w_Y(5),
--	    	o_seg_n(4) => w_Y(4),
--	    	o_seg_n(3) => w_Y(3),
--	    	o_seg_n(2) => w_Y(2),
--	    	o_seg_n(1) => w_Y(1),
--	    	o_seg_n(0) => w_Y(0)

            i_Hex => w_sw,
            o_seg_n => w_Y
        );
        
        test_process : process 
        
        begin
                
            w_sw <= x"0"; wait for 10 ns;
                assert w_Y = "1000000" report "error on x0" severity failure;
            w_sw <= x"1"; wait for 10 ns;
                assert w_Y = "1111001" report "error on x1" severity failure;
            w_sw <= x"2"; wait for 10 ns;
                assert w_Y = "0100100" report "error on x2" severity failure; 
            w_sw <= x"3"; wait for 10 ns;
                assert w_Y = "0110000" report "error on x3" severity failure; 
            w_sw <= x"4"; wait for 10 ns;
                assert w_Y = "0011001" report "error on x4" severity failure; 
            w_sw <= x"5"; wait for 10 ns;
                assert w_Y = "0010010" report "error on x5" severity failure;    
            w_sw <= x"6"; wait for 10 ns;
                assert w_Y = "0000010" report "error on x6" severity failure;    
            w_sw <= x"7"; wait for 10 ns;
                assert w_Y = "1111000" report "error on x7" severity failure;    
            w_sw <= x"8"; wait for 10 ns;
                assert w_Y = "0000000" report "error on x8" severity failure;    
            w_sw <= x"9"; wait for 10 ns;
                assert w_Y = "0011000" report "error on x9" severity failure;    
            w_sw <= x"A"; wait for 10 ns;
                assert w_Y = "0001000" report "error on xA" severity failure;    
            w_sw <= x"B"; wait for 10 ns;
                assert w_Y = "0000011" report "error on xB" severity failure;    
            w_sw <= x"C"; wait for 10 ns;
                assert w_Y = "0100111" report "error on xC" severity failure;
            w_sw <= x"D"; wait for 10 ns;
                assert w_Y = "0100001" report "error on xD" severity failure;    
            w_sw <= x"E"; wait for 10 ns;
                assert w_Y = "0000110" report "error on xE" severity failure;    
            w_sw <= x"F"; wait for 10 ns;
                assert w_Y = "0001110" report "error on xF" severity failure;    
                
            wait;
        end process;

end test_bench;
