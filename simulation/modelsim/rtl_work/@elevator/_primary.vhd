library verilog;
use verilog.vl_types.all;
entity Elevator is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        MOVING_UP       : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        MOVING_DOWN     : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        STOPPED         : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        floor_req       : in     vl_logic_vector(2 downto 0);
        floor_pos       : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of MOVING_UP : constant is 1;
    attribute mti_svvh_generic_type of MOVING_DOWN : constant is 1;
    attribute mti_svvh_generic_type of STOPPED : constant is 1;
end Elevator;
