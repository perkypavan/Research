##############################################################################
## Filename:          D:\Pavan_FPGA_Projects\Prj_simprof/drivers/simprof_v1_00_a/data/simprof_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Aug 24 16:28:04 2015 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "simprof" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
