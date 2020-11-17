; Motor currents and speeds are closely coupled.
; This file represents settings for normal operation.
;
; Z motors are Steppersonline 17HS19-2004S1 (2A)
;

; https://duet3d.dozuki.com/Wiki/Setting_motor_currents
M906 Z2000      ; motor drive current
M913 Z80        ; motor current 80% = 1.6A

; Unknown old config
;M203 Z9000      ; maximum speed (mm/min)
;M201 Z900       ; maximum acceleration (mm/min/s)
;M566 Z120       ; instantaneous speed change (mm/min)

; /u/fulg
; 20201031 https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/speed_printing.g
M203 Z3000      ; maximum speed (mm/min)
M201 Z250       ; maximum acceleration (mm/min/s)
M566 Z60        ; instantaneous speed change (mm/min)
