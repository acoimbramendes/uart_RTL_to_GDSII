##############################################################
##              Logical synthesis commands                  ##
##     Modified  by Hugo Hernandez  - 29/set/2019           ##
##			UFMG				    ##
##############################################################

#===============================================================================
## load synthesis configuration, read description and elaborate design 
#===============================================================================

set_db script_search_path ./ 
set_db init_hdl_search_path ../
set_db information_level 9 

#===============================================================================
#  Load libraries
#===============================================================================
set DK_PATH  "/home/tools/TSMC180/TSMCHOME/digital" 

set_db library "${DK_PATH}/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/tcb018gbwp7ttc.lib"
                       
set_db lef_library "${DK_PATH}/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_6lm.lef"

##Set captable
set_db cap_table_file  "${DK_PATH}/Back_End/lef/tcb018gbwp7t_270a/techfiles/captable/t018lo_1p6m_typical.captable"

