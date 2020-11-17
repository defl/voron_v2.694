; bed.g
; called to perform automatic bed compensation via G32

; Clear any bed transform
M561

; Reduce currents and speed and run homeall.g
M98 P"/macros/drive/z_reduced.g"
M98 P"/macros/drive/xy_reduced.g"

G28

M98 P"/macros/drive/z_normal.g"
M98 P"/macros/drive/xy_normal.g"

; Level gantry
M98 P"/macros/z_probe/level_inductive.g"

; Get final height from Z-probe
M98 P"/macros/z_probe/height_switch.g"

M98 P"/macros/z_probe/use_inductive.g"

; Load previously probed bed mesh
G29 S1
