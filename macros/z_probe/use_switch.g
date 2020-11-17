; Select mechanical plunger switch

M400  ; Wait for moves to finish

; P7:       connected to Z endstop
; I1:       Switch is wired NO
; T18000:   Move to probe points at 300mm/s
; F120:     Probing Speed in mm/min: 120=2mm/s
; H:        Dive height mm
; A5 S0.01: Perform up to 5 touches until change is below 0.01mm
M558 P7 H7 R0.2 F120 T18000 A5 S0.01 I1 

; https://duet3d.dozuki.com/Wiki/Gcode#Section_G31_Set_or_Report_Current_Probe_status
;   ...G31 Z0.7 will tell the RepRap machine that it is at a height of 0.7mm when the probe is triggered...
; Z IS WHERE TO SET Z-OFFSET
G31 P500 X0 Y0 Z-0.88

G4 P200  ; Pause 200ms
