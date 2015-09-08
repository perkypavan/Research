@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc6slx45tfgg484-3 -nt timestamp -bm system.bmm "D:/Pavan_FPGA_Projects/Prj_funprof_v1.0/implementation/system.ngc" -uc system.ucf system.ngd 

