# TCL File Generated by Component Editor 15.1
# Sun Jun 05 17:01:55 CST 2016
# DO NOT MODIFY


# 
# Cache "Naive Cache" v1.0
#  2016.06.05.17:01:55
# 
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module Cache
# 
set_module_property DESCRIPTION ""
set_module_property NAME Cache
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Tsinghua
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "Naive Cache"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL Cache
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file Cache.v VERILOG PATH Cache.v TOP_LEVEL_FILE
add_fileset_file cacheline.v VERILOG PATH cacheline.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL Cache
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file Cache.v VERILOG PATH Cache.v
add_fileset_file cacheline.v VERILOG PATH cacheline.v


# 
# parameters
# 
add_parameter CACHE_LINE_WIDTH INTEGER 6
set_parameter_property CACHE_LINE_WIDTH DEFAULT_VALUE 6
set_parameter_property CACHE_LINE_WIDTH DISPLAY_NAME CACHE_LINE_WIDTH
set_parameter_property CACHE_LINE_WIDTH TYPE INTEGER
set_parameter_property CACHE_LINE_WIDTH UNITS None
set_parameter_property CACHE_LINE_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property CACHE_LINE_WIDTH HDL_PARAMETER true
add_parameter TAG_WIDTH INTEGER 20
set_parameter_property TAG_WIDTH DEFAULT_VALUE 20
set_parameter_property TAG_WIDTH DISPLAY_NAME TAG_WIDTH
set_parameter_property TAG_WIDTH TYPE INTEGER
set_parameter_property TAG_WIDTH UNITS None
set_parameter_property TAG_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property TAG_WIDTH HDL_PARAMETER true
add_parameter ADDR_WIDTH INTEGER 32
set_parameter_property ADDR_WIDTH DEFAULT_VALUE 32
set_parameter_property ADDR_WIDTH DISPLAY_NAME ADDR_WIDTH
set_parameter_property ADDR_WIDTH TYPE INTEGER
set_parameter_property ADDR_WIDTH UNITS None
set_parameter_property ADDR_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ADDR_WIDTH HDL_PARAMETER true


# 
# display items
# 


# 
# connection point burst_master
# 
add_interface burst_master avalon start
set_interface_property burst_master addressUnits SYMBOLS
set_interface_property burst_master associatedClock Clock
set_interface_property burst_master associatedReset Reset
set_interface_property burst_master bitsPerSymbol 8
set_interface_property burst_master burstOnBurstBoundariesOnly false
set_interface_property burst_master burstcountUnits SYMBOLS
set_interface_property burst_master doStreamReads false
set_interface_property burst_master doStreamWrites false
set_interface_property burst_master holdTime 0
set_interface_property burst_master linewrapBursts false
set_interface_property burst_master maximumPendingReadTransactions 0
set_interface_property burst_master maximumPendingWriteTransactions 0
set_interface_property burst_master readLatency 0
set_interface_property burst_master readWaitTime 1
set_interface_property burst_master setupTime 0
set_interface_property burst_master timingUnits Cycles
set_interface_property burst_master writeWaitTime 0
set_interface_property burst_master ENABLED true
set_interface_property burst_master EXPORT_OF ""
set_interface_property burst_master PORT_NAME_MAP ""
set_interface_property burst_master CMSIS_SVD_VARIABLES ""
set_interface_property burst_master SVD_ADDRESS_GROUP ""

add_interface_port burst_master avalon_master_address address Output ADDR_WIDTH
add_interface_port burst_master avalon_master_burstcount burstcount Output "(CACHE_LINE_WIDTH) - (0) + 1"
add_interface_port burst_master avalon_master_readdata readdata Input 32
add_interface_port burst_master avalon_master_writedata writedata Output 32
add_interface_port burst_master avalon_master_waitrequest waitrequest Input 1
add_interface_port burst_master avalon_master_read read Output 1
add_interface_port burst_master avalon_master_write write Output 1
add_interface_port burst_master avalon_master_readdatavalid readdatavalid Input 1


# 
# connection point Reset
# 
add_interface Reset reset end
set_interface_property Reset associatedClock Clock
set_interface_property Reset synchronousEdges DEASSERT
set_interface_property Reset ENABLED true
set_interface_property Reset EXPORT_OF ""
set_interface_property Reset PORT_NAME_MAP ""
set_interface_property Reset CMSIS_SVD_VARIABLES ""
set_interface_property Reset SVD_ADDRESS_GROUP ""

add_interface_port Reset rst_n reset_n Input 1


# 
# connection point Clock
# 
add_interface Clock clock end
set_interface_property Clock clockRate 0
set_interface_property Clock ENABLED true
set_interface_property Clock EXPORT_OF ""
set_interface_property Clock PORT_NAME_MAP ""
set_interface_property Clock CMSIS_SVD_VARIABLES ""
set_interface_property Clock SVD_ADDRESS_GROUP ""

add_interface_port Clock clk clk Input 1


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits SYMBOLS
set_interface_property avalon_slave associatedClock Clock
set_interface_property avalon_slave associatedReset Reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits SYMBOLS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave avalon_slave_address address Input ADDR_WIDTH
add_interface_port avalon_slave avalon_slave_read read Input 1
add_interface_port avalon_slave avalon_slave_write write Input 1
add_interface_port avalon_slave avalon_slave_readdata readdata Output 32
add_interface_port avalon_slave avalon_slave_writedata writedata Input 32
add_interface_port avalon_slave avalon_slave_waitrequest waitrequest Output 1
add_interface_port avalon_slave avalon_slave_byteenable byteenable Input 4
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point avalon_rdslave
# 
add_interface avalon_rdslave avalon end
set_interface_property avalon_rdslave addressUnits SYMBOLS
set_interface_property avalon_rdslave associatedClock Clock
set_interface_property avalon_rdslave associatedReset Reset
set_interface_property avalon_rdslave bitsPerSymbol 8
set_interface_property avalon_rdslave burstOnBurstBoundariesOnly false
set_interface_property avalon_rdslave burstcountUnits SYMBOLS
set_interface_property avalon_rdslave explicitAddressSpan 0
set_interface_property avalon_rdslave holdTime 0
set_interface_property avalon_rdslave linewrapBursts false
set_interface_property avalon_rdslave maximumPendingReadTransactions 0
set_interface_property avalon_rdslave maximumPendingWriteTransactions 0
set_interface_property avalon_rdslave readLatency 0
set_interface_property avalon_rdslave readWaitTime 1
set_interface_property avalon_rdslave setupTime 0
set_interface_property avalon_rdslave timingUnits Cycles
set_interface_property avalon_rdslave writeWaitTime 0
set_interface_property avalon_rdslave ENABLED true
set_interface_property avalon_rdslave EXPORT_OF ""
set_interface_property avalon_rdslave PORT_NAME_MAP ""
set_interface_property avalon_rdslave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_rdslave SVD_ADDRESS_GROUP ""

add_interface_port avalon_rdslave avalon_rdslave_address address Input ADDR_WIDTH
add_interface_port avalon_rdslave avalon_rdslave_read read Input 1
add_interface_port avalon_rdslave avalon_rdslave_readdata readdata Output 32
add_interface_port avalon_rdslave avalon_rdslave_waitrequest waitrequest Output 1
set_interface_assignment avalon_rdslave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_rdslave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_rdslave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_rdslave embeddedsw.configuration.isPrintableDevice 0

