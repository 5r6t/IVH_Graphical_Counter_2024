--------------------------------------------------------------
-- Project: IVH_Graphical_Counter_2024
-- Copyright (C) 2024 Jaroslav Mervart
--
-- This file is licensed under the GNU General Public License
-- version 3 or later. See the LICENSE file for details.
--------------------------------------------------------------
-- Function to return a row from vector

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package matrix_pack is

    function GETROW ( signal DATA : in std_logic_vector; COL : in integer; N : in integer) return std_logic_vector;   

end matrix_pack;

package body matrix_pack is

    function GETROW ( signal DATA : in std_logic_vector; COL : in integer; N : in integer) return std_logic_vector is
            variable result : std_logic_vector(0 to N-1);
        begin
            for i in 0 to N - 1 loop
                result(i) := DATA(i * N + COL);
            end loop;
            return result;
    END GETROW;

end matrix_pack;
