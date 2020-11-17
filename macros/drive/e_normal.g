; Motor currents and speeds are closely coupled.
; This file represents settings for normal operation.
;
; E motor is a Steppersonline 17HS19-2004S1 (2A)
;

; https://duet3d.dozuki.com/Wiki/Setting_motor_currents
M906 E2000      ; motor drive current
M913 E80        ; motor current percentage 80% = 1.6A

; Unknown old config
;M203 E9000      ; maximum speed (mm/min)
;M201 E6000      ; maximum acceleration (mm/min/s)
;M566 E1200      ; instantaneous speed change (mm/min)

; /u/fulg
; 20201031 https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/speed_printing.g
M203 E15000     ; maximum speed (mm/min)
M201 E1800      ; maximum acceleration (mm/min/s)
M566 E8000      ; instantaneous speed change (mm/min)
