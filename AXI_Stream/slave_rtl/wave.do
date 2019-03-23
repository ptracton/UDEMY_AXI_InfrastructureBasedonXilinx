onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/aclk
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/areset_n
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/data
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/finish
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/send
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/slave_data
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/slave_finish
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/slave_ready
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/tdata
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/tlast
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/tready
add wave -noupdate -group TB -radix hexadecimal /tb_axis_s/tvalid
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/aclk
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/areset_n
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/data
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/finish
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/handshake
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/send
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/send_pulse_1d
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/send_pulse_2d
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/tdata
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/tlast
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/tready
add wave -noupdate -expand -group MASTER -radix hexadecimal /tb_axis_s/inst_axis_m/tvalid
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/aclk
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/areset_n
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/data
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/finish
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/handshake
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/ready
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/tdata
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/tlast
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/tready
add wave -noupdate -expand -group SLAVE -radix hexadecimal /tb_axis_s/inst_axis_s/tvalid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 us} 0}
quietly wave cursor active 0
configure wave -namecolwidth 308
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
WaveRestoreZoom {0 us} {8163 us}
