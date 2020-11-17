; Select inductive probe

M400  ; Wait for moves to finish

; T18000:   Move to probe points at 300mm/s
; F600:     Probing Speed: 10mm/s
; H10:      Dive height: 10mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
; R0.2      0.2 seconds probe recovery time
M558 P6 I0 T18000 F600 H10 A7 S0.01 R0.2

G31 P500 X0 Y25 Z3.45 ; inductive probe offset, not critical, only used for coarse homing

G4 P200  ; Pause 200ms
