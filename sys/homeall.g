; homeall.g
; called to home all axes

; Allow movements before homing
M564 H0

M98 P"/macros/motion/z_hop_slow.g"

; XY
M98 P"/macros/drive/xy_reduced.g"

G91                    ; Relative positioning

G1 X600 Y600 F2400 S1  ; Coarse home X or Y
G1 X600 S1             ; Coarse home X	
G1 Y600 S1             ; Coarse home Y

G1 X-5 Y-5 F9000       ; Move away from the endstops

G1 X600 F360 S1        ; Fine home X
G1 Y600 S1             ; Fine home Y

G90                    ; Absolute positioning

M98 P"/macros/drive/xy_normal.g"

; Z
M98 P"/macros/z_probe/height_inductive.g"

; Note that homing Z does not set the final Z offset used for printing!
; You *must* probe Z with the Z switch before checking/calibrating the Z offset.

; Homing done, enforce limits
M564 S1 H1
