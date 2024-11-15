# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param synth.incrementalSynthesisCache ./.Xil/Vivado-7987-IT-RDIA-NSH/incrSyn
set_param xicom.use_bs_reader 1
set_param chipscope.maxJobs 4
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/it/Lab1_Project/Lab1_Project.cache/wt [current_project]
set_property parent.project_path /home/it/Lab1_Project/Lab1_Project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:arty-a7-100:part0:1.1 [current_project]
set_property ip_output_repo /home/it/Lab1_Project/Lab1_Project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib -sv {
  /home/it/Lab1_Project/Lab1_Project.srcs/sources_1/new/FA.sv
  /home/it/Lab1_Project/Lab1_Project.srcs/sources_1/new/HA.sv
  /home/it/Lab1_Project/Lab1_Project.srcs/sources_1/new/andgate.sv
  /home/it/Lab1_Project/Lab1_Project.srcs/sources_1/new/orgate.sv
  /home/it/Lab1_Project/Lab1_Project.srcs/sources_1/new/xorgate.sv
  /home/it/Lab1_Project/Lab1_Project.srcs/sources_1/new/FA4bit_Sub.sv
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/it/Lab1_Project/Lab1_Project.srcs/constrs_1/new/master.xdc
set_property used_in_implementation false [get_files /home/it/Lab1_Project/Lab1_Project.srcs/constrs_1/new/master.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top FA4bit_Sub -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef FA4bit_Sub.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file FA4bit_Sub_utilization_synth.rpt -pb FA4bit_Sub_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
