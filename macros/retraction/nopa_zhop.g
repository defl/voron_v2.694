; https://duet3d.dozuki.com/Wiki/Pressure_advance
; https://www.reddit.com/r/voroncorexy/comments/5415kb/retract_speeds/

; S4.0 = retract 4mm
; F3000 = feedrate mm/min (50mm/s (3000) is fine 75mm/s (4500) max)
; Z0.2 = 0.2mm zhop
M207 S4.0 F3000 Z0.2

; D0 = extruder nr
; S0.0 = No pressure advance
M572 D0 S0.0
