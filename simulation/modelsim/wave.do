onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /wallacetree/a
add wave -noupdate /wallacetree/b
add wave -noupdate /wallacetree/c
add wave -noupdate /wallacetree/d
add wave -noupdate /wallacetree/e
add wave -noupdate /wallacetree/f
add wave -noupdate /wallacetree/g
add wave -noupdate /wallacetree/s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {57 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {606 ps} {1021 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 111111 -range 5 0 -starttime 0ps -endtime 1000ps sim:/wallacetree/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 111111 -range 5 0 -starttime 0ps -endtime 1000ps sim:/wallacetree/b 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 111111 -range 5 0 -starttime 0ps -endtime 1000ps sim:/wallacetree/c 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 111111 -range 5 0 -starttime 0ps -endtime 1000ps sim:/wallacetree/d 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 111111 -range 5 0 -starttime 0ps -endtime 1000ps sim:/wallacetree/e 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 111111 -range 5 0 -starttime 0ps -endtime 1000ps sim:/wallacetree/f 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 111111 -range 5 0 -starttime 0ps -endtime 1000ps sim:/wallacetree/g 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
