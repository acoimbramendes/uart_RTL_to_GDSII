#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 09/29/2020 21:38:28
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# Design Import
###########################################################
## Reading FlowKit settings file
source innovus/design.flowkit_settings.tcl

source innovus/design.invs_init.tcl

# Reading metrics file
######################
read_metric -id current innovus/design.metrics.json 



# Mode Setup
###########################################################
source innovus/design.mode

# Reading write_name_mapping file
#################################
if {[is_attribute -obj_type port original_name] && [is_attribute -obj_type pin original_name] && [is_attribute -obj_type pin is_phase_inverted]} {
  source innovus/design.wnm_attrs.tcl
}

eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
