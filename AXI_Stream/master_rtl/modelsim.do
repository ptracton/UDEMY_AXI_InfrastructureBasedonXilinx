
vlib work

vlog axis_m.v +incdir+../../common_tools
vlog tb_axis_m.v +incdir+../../common_tools +define+MODELSIM_GUI

vlog ../../common_tools/test_tasks.v +incdir+../../common_tools +define+MODELSIM_GUI

vsim work.tb_axis_m
do wave.do
run -all
