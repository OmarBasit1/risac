# TCL File Generated by Component Editor 16.0
# Mon Dec 16 09:44:47 PKT 2019
# DO NOT MODIFY


# 
# RVTimer "RVTimer" v1.0
#  2019.12.16.09:44:47
# 
# 

# 
# request TCL package from ACDS 16.0
# 
package require -exact qsys 16.0


# 
# module RVTimer
# 
set_module_property DESCRIPTION ""
set_module_property NAME RVTimer
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME RVTimer
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL timer
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file timer.v VERILOG PATH ../timer.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point rst_n_sink
# 
add_interface rst_n_sink reset end
set_interface_property rst_n_sink associatedClock clock
set_interface_property rst_n_sink synchronousEdges DEASSERT
set_interface_property rst_n_sink ENABLED true
set_interface_property rst_n_sink EXPORT_OF ""
set_interface_property rst_n_sink PORT_NAME_MAP ""
set_interface_property rst_n_sink CMSIS_SVD_VARIABLES ""
set_interface_property rst_n_sink SVD_ADDRESS_GROUP ""

add_interface_port rst_n_sink rst_n reset_n Input 1


# 
# connection point avMM_slave
# 
add_interface avMM_slave avalon end
set_interface_property avMM_slave addressUnits WORDS
set_interface_property avMM_slave associatedClock clock
set_interface_property avMM_slave associatedReset rst_n_sink
set_interface_property avMM_slave bitsPerSymbol 8
set_interface_property avMM_slave burstOnBurstBoundariesOnly false
set_interface_property avMM_slave burstcountUnits WORDS
set_interface_property avMM_slave explicitAddressSpan 0
set_interface_property avMM_slave holdTime 0
set_interface_property avMM_slave linewrapBursts false
set_interface_property avMM_slave maximumPendingReadTransactions 0
set_interface_property avMM_slave maximumPendingWriteTransactions 0
set_interface_property avMM_slave readLatency 0
set_interface_property avMM_slave readWaitTime 1
set_interface_property avMM_slave setupTime 0
set_interface_property avMM_slave timingUnits Cycles
set_interface_property avMM_slave writeWaitTime 0
set_interface_property avMM_slave ENABLED true
set_interface_property avMM_slave EXPORT_OF ""
set_interface_property avMM_slave PORT_NAME_MAP ""
set_interface_property avMM_slave CMSIS_SVD_VARIABLES ""
set_interface_property avMM_slave SVD_ADDRESS_GROUP ""

add_interface_port avMM_slave addr address Input 2
add_interface_port avMM_slave read read Input 1
add_interface_port avMM_slave write write Input 1
add_interface_port avMM_slave writedata writedata Input 32
add_interface_port avMM_slave readdata readdata Output 32
set_interface_assignment avMM_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avMM_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avMM_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avMM_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point tim_overflow
# 
add_interface tim_overflow conduit end
set_interface_property tim_overflow associatedClock clock
set_interface_property tim_overflow associatedReset rst_n_sink
set_interface_property tim_overflow ENABLED true
set_interface_property tim_overflow EXPORT_OF ""
set_interface_property tim_overflow PORT_NAME_MAP ""
set_interface_property tim_overflow CMSIS_SVD_VARIABLES ""
set_interface_property tim_overflow SVD_ADDRESS_GROUP ""

add_interface_port tim_overflow timer_overflow timer_overflow Output 1

