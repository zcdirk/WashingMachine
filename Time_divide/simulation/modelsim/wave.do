onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fenpinqi/clear
add wave -noupdate /fenpinqi/clk
add wave -noupdate /fenpinqi/clk_500
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1343 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {39200 ps} {103200 ps}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /fenpinqi/clear 
wave create -pattern none -portmode in -language vhdl /fenpinqi/clk 
wave create -pattern none -portmode buffer -language vhdl /fenpinqi/clk_1 
wave create -pattern none -portmode buffer -language vhdl /fenpinqi/clk_100 
wave create -pattern none -portmode buffer -language vhdl /fenpinqi/clk_500 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 100ps Edit:/fenpinqi/clear 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 5ns -dutycycle 50 -starttime 0ps -endtime 100ps Edit:/fenpinqi/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 5ns -dutycycle 50 -starttime 0ns -endtime 100ns Edit:/fenpinqi/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 100ns Edit:/fenpinqi/clear 
WaveCollapseAll -1
wave clipboard restore
