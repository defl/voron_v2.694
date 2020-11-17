; homez.g
; called to home the Z axis

; Allow movements before homing
M564 H0

M98 P"/macros/motion/z_hop_slow.g"

M98 P"/macros/z_probe/height_inductive.g"

; Note that homing Z does not set the final Z offset used for printing!
; You *must* probe Z with the Z switch before checking/calibrating the Z offset.

; Homing done, enforce limits
M564 S1 H1
