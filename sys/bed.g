; called to perform automatic bed compensation via G32

; Clear any bed transform
M561    

; Home all axis
G28     

; Level bed
M98 P"/macros/z_probe/level_inductive.g"

; Get accurate Z via switch
M98 P"/macros/z_probe/height_switch.g"

; Load previously probed bed mesh
; Bed mesh is always relative to inductive height
; Keep the switch probe active so all Z future offsets are relative to it.
; Switching the active probe type in RRF changes the Z offset!
G29 S1  

; Move to convienient probing point
M98 P"/macros/motion/xy_center_z_2mm.g"
