set projDir "/home/ashiswin/Documents/Mojo-Saboteur/work/planAhead"
set projName "Com Struc Game"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/mojo_top_0.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/reset_conditioner_1.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/button_conditioner_2.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/edge_detector_3.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/button_conditioner_2.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/edge_detector_3.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/button_conditioner_2.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/edge_detector_3.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/button_conditioner_2.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/edge_detector_3.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/game_10.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/pipeline_11.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/pipeline_11.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/pipeline_11.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/pipeline_11.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/alu_15.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/tileset_16.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/renderer2_17.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/adder_18.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/boolean_19.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/shifter_20.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/compare_21.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/image_22.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/moves_23.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/turn_24.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/player_25.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/numbers_26.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/slash_27.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/zero_28.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/one_29.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/two_30.v" "/home/ashiswin/Documents/Mojo-Saboteur/work/verilog/three_31.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "/home/ashiswin/Documents/Mojo-Saboteur/constraint/buttons.ucf" "/home/ashiswin/Documents/Mojo-Saboteur/constraint/controller.ucf" "/home/ashiswin/Documents/Mojo-Saboteur/constraint/vga.ucf" "/home/ashiswin/Downloads/mojo-ide-B1.3.6/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
