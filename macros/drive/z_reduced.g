; Motor currents and speeds are closely coupled.
; This file represents settings for slower and gentler operation.

; Basis is normal
M98 P"/macros/drive/z_normal.g"

; Unknown old config
;M913 Z50        ; set operating current percentage
;M203 Z3000      ; maximum speed (mm/min)
;M201 Z450       ; maximum acceleration (mm/min/s)
;M566 Z0         ; instantaneous speed change (mm/min)

; /u/fulg on 
; https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/speed_probing.g
; https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/z_current_low.g
;M913 Z40        ; set Z motors current to 40%
;M203 Z3000      ; maximum speed (mm/min)
;M201 Z100       ; maximum acceleration (mm/min/s)
;M566 Z20        ; instantaneous speed change (mm/min)

M913 Z40        ; set operating current percentage
M203 Z600       ; maximum speed (mm/min)
M201 Z100       ; maximum acceleration (mm/min/s)
M566 Z20        ; instantaneous speed change (mm/min)
