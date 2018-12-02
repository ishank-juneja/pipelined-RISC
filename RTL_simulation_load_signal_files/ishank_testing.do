onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datapath/clk
add wave -noupdate /datapath/rst
add wave -noupdate /datapath/zero_out
add wave -noupdate /datapath/carry_out
add wave -noupdate /datapath/output_pc
add wave -noupdate /datapath/p_reg0_instr
add wave -noupdate /datapath/p_reg0_pc
add wave -noupdate /datapath/control_signal
add wave -noupdate /datapath/stage2_2/rf_1/r0/Q
add wave -noupdate /datapath/stage2_2/rf_1/r1/Q
add wave -noupdate /datapath/stage2_2/rf_1/r2/Q
add wave -noupdate /datapath/stage2_2/rf_1/r3/Q
add wave -noupdate /datapath/stage2_2/rf_1/r4/Q
add wave -noupdate /datapath/stage2_2/rf_1/r5/Q
add wave -noupdate /datapath/stage2_2/rf_1/r6/Q
add wave -noupdate /datapath/stage2_2/rf_1/r7/Q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1630 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 276
configure wave -valuecolwidth 139
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
configure wave -timelineunits ps
update
WaveRestoreZoom {1012 ps} {1873 ps}
