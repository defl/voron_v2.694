; homex.g
; called to home the X axis

; Allow movements before homing
M564 H0

; Lift Z relative to current position
; TODO: Make macro
M98 P"/macros/drive/z_reduced.g"
G91
G1 Z10 F9000
G90
M98 P"/macros/drive/z_normal.g"

M98 P"/macros/drive/xy_reduced.g"

; Move quickly to X axis endstop and stop there (first pass)
G1 X600 F2400 S1

; Go back a few mm
G91
G1 X-5 F9000
G90

; Move slowly to X axis endstop once more (second pass)
G1 X600 F360 S1

; Restore AB currents
M98 P"/macros/drive/xy_normal.g"

; Homing done, enforce limits
M564 S1 H1
