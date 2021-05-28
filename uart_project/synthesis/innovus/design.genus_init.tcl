#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 09/29/2020 21:38:28
#
#####################################################################


read_mmmc innovus/design.mmmc.tcl

read_physical -lef {/home/tools/TSMC180/TSMCHOME/digital/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_6lm.lef}

read_netlist innovus/design.v

init_design -skip_sdc_read
