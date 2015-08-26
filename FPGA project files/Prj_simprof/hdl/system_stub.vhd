-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_RS232_Uart_1_RX_pin : in std_logic;
    fpga_0_RS232_Uart_1_TX_pin : out std_logic;
    fpga_0_LEDs_4Bit_GPIO_IO_pin : inout std_logic_vector(0 to 3);
    fpga_0_DIP_Switches_4Bit_GPIO_IO_pin : inout std_logic_vector(0 to 3);
    fpga_0_clk_1_sys_clk_p_pin : in std_logic;
    fpga_0_clk_1_sys_clk_n_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic;
    microblaze_0_Trace_Valid_Instr_pin : out std_logic;
    microblaze_0_Trace_PC_pin : out std_logic_vector(0 to 31)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_RS232_Uart_1_RX_pin : in std_logic;
      fpga_0_RS232_Uart_1_TX_pin : out std_logic;
      fpga_0_LEDs_4Bit_GPIO_IO_pin : inout std_logic_vector(0 to 3);
      fpga_0_DIP_Switches_4Bit_GPIO_IO_pin : inout std_logic_vector(0 to 3);
      fpga_0_clk_1_sys_clk_p_pin : in std_logic;
      fpga_0_clk_1_sys_clk_n_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic;
      microblaze_0_Trace_Valid_Instr_pin : out std_logic;
      microblaze_0_Trace_PC_pin : out std_logic_vector(0 to 31)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fpga_0_RS232_Uart_1_RX_pin => fpga_0_RS232_Uart_1_RX_pin,
      fpga_0_RS232_Uart_1_TX_pin => fpga_0_RS232_Uart_1_TX_pin,
      fpga_0_LEDs_4Bit_GPIO_IO_pin => fpga_0_LEDs_4Bit_GPIO_IO_pin,
      fpga_0_DIP_Switches_4Bit_GPIO_IO_pin => fpga_0_DIP_Switches_4Bit_GPIO_IO_pin,
      fpga_0_clk_1_sys_clk_p_pin => fpga_0_clk_1_sys_clk_p_pin,
      fpga_0_clk_1_sys_clk_n_pin => fpga_0_clk_1_sys_clk_n_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin,
      microblaze_0_Trace_Valid_Instr_pin => microblaze_0_Trace_Valid_Instr_pin,
      microblaze_0_Trace_PC_pin => microblaze_0_Trace_PC_pin
    );

end architecture STRUCTURE;

