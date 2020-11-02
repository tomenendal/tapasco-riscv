variable moddir
# read component.xml
set component $moddir/component.xml
set rc [open $component r]
set fi [read $rc]
close $rc
set vendorList [lsearch -inline $fi "*spirit:vendor*"]
set libraryList [lsearch -inline $fi "*spirit:library*"]
set nameList [lsearch -inline $fi "*spirit:name*"]
set versionList [lsearch -inline $fi "*spirit:version*"]

set List {$vendorList $libraryList $nameList $versionList}
set xL {vendor library name version}
set i 0
foreach elem $List {
lassign [lindex [split [lindex [split [subst $elem] "<"] 1] ">"] 1] [lindex $xL $i]
incr i
}

set rv_cell [get_bd_cells -filter "VLNV==$current_core"]

#create modules
set $name [ create_bd_cell -type ip -vlnv $vendor:$library:$name:$version $name ]
set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
set axi_offset_0 [ create_bd_cell -type ip -vlnv esa.cs.tu-darmstadt.de:axi:axi_offset:0.1 axi_offset_0 ]
set_property -dict [list CONFIG.NUM_SI {1}] [get_bd_cells smartconnect_0]
set_property -dict [list CONFIG.NUM_MI {2}] [get_bd_cells axi_interconnect_0]

#connect intf
connect_bd_intf_net [get_bd_intf_pins -filter {MODE==Master} -of [get_bd_cells $name]] [get_bd_intf_pins smartconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins axi_offset_0/S_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins -filter {MODE==Slave} -of [get_bd_cells $name]]
make_bd_intf_pins_external  [get_bd_intf_pins axi_offset_0/M_AXI]

#connect ports
#CLK
connect_bd_net [get_bd_ports CLK] [get_bd_pins -filter {TYPE=="clk"} -of [get_bd_cells $name]] [get_bd_pins axi_offset_0/CLK] [get_bd_pins smartconnect_0/aclk] [get_bd_pins axi_interconnect_0/M01_ACLK]

#RST
connect_bd_net [get_bd_pins rst_CLK_100M/peripheral_aresetn] [get_bd_pins -filter {TYPE=="rst"} -of [get_bd_cells $name]] [get_bd_pins axi_offset_0/RST_N] [get_bd_pins axi_interconnect_0/M01_ARESETN]
connect_bd_net [get_bd_pins smartconnect_0/aresetn] [get_bd_pins rst_CLK_100M/interconnect_aresetn]

#INTR
set_property -dict [list CONFIG.ENABLE_EXCEPTIONS {1} CONFIG.ENABLE_EXT_INTERRUPTS {1}] [get_bd_cells $rv_cell]
connect_bd_net [get_bd_pins -filter {TYPE=="intr"} -of [get_bd_cells $name]] [get_bd_pins $rv_cell/global_interrupts]
