##############################################################################
## Filename:          D:\Pavan_FPGA_Projects\Prj_funprof_v1.0/drivers/funprof_v1_00_a/data/funprof_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Sep 07 12:22:32 2015 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "funprof" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
