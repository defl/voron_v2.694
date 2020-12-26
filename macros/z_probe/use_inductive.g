; Select inductive probe

M400  ; Wait for moves to finish

; T18000:   Move to probe points at 300mm/s
; F900:     Probing Speed: 15mm/s
; H7:       Dive height: 7mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; R0.2      0.2 seconds probe recovery time
M558 P6 I0 T18000 F900 H7 A7 S0.01 R0.2

G31 P500 Z3.45 ; inductive probe offset, not critical, only used for coarse homing
