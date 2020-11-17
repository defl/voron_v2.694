; Motor currents and speeds are closely coupled.
; This file represents settings for slower and gentler operation.

; Basis is normal
M98 P"/macros/drive/e_normal.g"

; Unknown old config
;M913 E67        ; set operating current percentage to 2/3
;M203 E4500      ; maximum speed (mm/min)
;M201 E3000      ; maximum acceleration (mm/min/s)
;M566 E600       ; instantaneous speed change (mm/min)

; /u/fulg
; 20201031 https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/speed_probing.g
; Only reduces z-speed for probing, this is N/A
;M203 E5000      ; maximum speed (mm/min)
;M201 E800       ; maximum acceleration (mm/min/s)
;M566 E3600      ; instantaneous speed change (mm/min)

M913 E67        ; set operating current percentage to 2/3
M203 E4500      ; maximum speed (mm/min)
M201 E2000      ; maximum acceleration (mm/min/s)
M566 E600       ; instantaneous speed change (mm/min)