# TCL File Generated by Component Editor 16.0
# Mon Dec 16 09:42:30 PKT 2019
# DO NOT MODIFY


# 
# risac "risac" v1.0
#  2019.12.16.09:42:30
# 
# 

# 
# request TCL package from ACDS 16.0
# 
package require -exact qsys 16.0


# 
# module risac
# 
set_module_property DESCRIPTION ""
set_module_property NAME risac
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME risac
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL risac_avalon
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file risac.v VERILOG PATH ../risac.v
add_fileset_file risac_avalon.v VERILOG PATH ../risac_avalon.v TOP_LEVEL_FILE
add_fileset_file csr_unit.v VERILOG PATH ../csr_unit.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL risac_avalon
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file risac.v VERILOG PATH ../risac.v
add_fileset_file risac_avalon.v VERILOG PATH ../risac_avalon.v


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
set_interface_property clock clockRate 50000000
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst_n reset_n Input 1


# 
# connection point instruction_master
# 
add_interface instruction_master avalon start
set_interface_property instruction_master addressUnits SYMBOLS
set_interface_property instruction_master associatedClock clock
set_interface_property instruction_master associatedReset reset_sink
set_interface_property instruction_master bitsPerSymbol 8
set_interface_property instruction_master burstOnBurstBoundariesOnly false
set_interface_property instruction_master burstcountUnits WORDS
set_interface_property instruction_master doStreamReads false
set_interface_property instruction_master doStreamWrites false
set_interface_property instruction_master holdTime 0
set_interface_property instruction_master linewrapBursts false
set_interface_property instruction_master maximumPendingReadTransactions 0
set_interface_property instruction_master maximumPendingWriteTransactions 0
set_interface_property instruction_master readLatency 0
set_interface_property instruction_master readWaitTime 1
set_interface_property instruction_master setupTime 0
set_interface_property instruction_master timingUnits Cycles
set_interface_property instruction_master writeWaitTime 0
set_interface_property instruction_master ENABLED true
set_interface_property instruction_master EXPORT_OF ""
set_interface_property instruction_master PORT_NAME_MAP ""
set_interface_property instruction_master CMSIS_SVD_VARIABLES ""
set_interface_property instruction_master SVD_ADDRESS_GROUP ""

add_interface_port instruction_master avIB_readdata readdata Input 32
add_interface_port instruction_master avIB_address address Output 32
add_interface_port instruction_master avIB_waitrequest waitrequest Input 1
add_interface_port instruction_master avIB_read read Output 1


# 
# connection point data_master
# 
add_interface data_master avalon start
set_interface_property data_master addressUnits SYMBOLS
set_interface_property data_master associatedClock clock
set_interface_property data_master associatedReset reset_sink
set_interface_property data_master bitsPerSymbol 8
set_interface_property data_master burstOnBurstBoundariesOnly false
set_interface_property data_master burstcountUnits WORDS
set_interface_property data_master doStreamReads false
set_interface_property data_master doStreamWrites false
set_interface_property data_master holdTime 0
set_interface_property data_master linewrapBursts false
set_interface_property data_master maximumPendingReadTransactions 0
set_interface_property data_master maximumPendingWriteTransactions 0
set_interface_property data_master readLatency 0
set_interface_property data_master readWaitTime 1
set_interface_property data_master setupTime 0
set_interface_property data_master timingUnits Cycles
set_interface_property data_master writeWaitTime 0
set_interface_property data_master ENABLED true
set_interface_property data_master EXPORT_OF ""
set_interface_property data_master PORT_NAME_MAP ""
set_interface_property data_master CMSIS_SVD_VARIABLES ""
set_interface_property data_master SVD_ADDRESS_GROUP ""

add_interface_port data_master avDB_address address Output 32
add_interface_port data_master avDB_readdata readdata Input 32
add_interface_port data_master avDB_read read Output 1
add_interface_port data_master avDB_writedata writedata Output 32
add_interface_port data_master avDB_byteenable byteenable Output 4
add_interface_port data_master avDB_write write Output 1
add_interface_port data_master avDB_waitrequest waitrequest Input 1


# 
# connection point tim_overflow
# 
add_interface tim_overflow conduit end
set_interface_property tim_overflow associatedClock clock
set_interface_property tim_overflow associatedReset reset_sink
set_interface_property tim_overflow ENABLED true
set_interface_property tim_overflow EXPORT_OF ""
set_interface_property tim_overflow PORT_NAME_MAP ""
set_interface_property tim_overflow CMSIS_SVD_VARIABLES ""
set_interface_property tim_overflow SVD_ADDRESS_GROUP ""

add_interface_port tim_overflow con_tim_overflow timer_overflow Input 1

