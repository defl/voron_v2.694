; Motor currents and speeds are closely coupled.
; This file represents settings for normal operation.
;
; XY motors are Steppersonline 17HS19-2004S1 (2A)
;

; https://duet3d.dozuki.com/Wiki/Setting_motor_currents
M906 X2000 Y2000        ; motor drive current
M913 X80   Y80          ; motor current 80% = 1.6A

; Unknown old config
;M203 X18000 Y18000      ; maximum speed (mm/min)
;M201 X3600  Y3600       ; maximum acceleration (mm/min/s)
;M566 X180   Y180        ; instantaneous speed change (mm/min)

; /u/fulg
; 20201031 https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/speed_printing.g
M203 X18000 Y18000      ; maximum speed (mm/min)
M201 X2000  Y2000       ; maximum acceleration (mm/min/s)
M566 X900   Y900        ; instantaneous speed change (mm/min)
