onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/aclk
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/areset_n
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/data
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/finish
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/send
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/tdata
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/tlast
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/tready
add wave -noupdate -group TB -radix hexadecimal /tb_axis_m/tvalid
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/aclk
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/areset_n
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/data
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/finish
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/handshake
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/send
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/send_pulse_1d
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/send_pulse_2d
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/tdata
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/tlast
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/tready
add wave -noupdate -expand -group {AXI Master} -radix hexadecimal /tb_axis_m/inst_axis_m/tvalid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 us} 0}
quietly wave cursor active 0
configure wave -namecolwidth 310
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 us} {8152 us}
