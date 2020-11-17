; Motor currents and speeds are closely coupled.
; This file represents settings for slower and gentler operation.

; Basis is normal
M98 P"/macros/drive/xy_normal.g"

; Unknown old config
;M913 X67   Y67      ; set operating current percentage
;M203 X4500 Y4500    ; maximum speed (mm/min)
;M201 X900  Y900     ; maximum acceleration (mm/min/s)
;M566 X180  Y180     ; instantaneous speed change (mm/min)

; /u/fulg at 20201031
; https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/speed_probing.g
; https://github.com/VoronDesign/VoronUsers/blob/master/firmware_configurations/reprapfirmware/fulg/macros/print_scripts/xy_current_low.g
;M913 X60    Y60     ; Set AB current to 60%
;M203 X18000 Y18000  ; maximum speed (mm/min)
;M201 X2000  Y2000   ; maximum acceleration (mm/min/s)
;M566 X900   Y900    ; instantaneous speed change (mm/min)

M913 X50   Y50      ; set operating current percentage
M203 X4500 Y4500    ; maximum speed (mm/min)
M201 X900  Y900     ; maximum acceleration (mm/min/s)
M566 X180  Y180     ; instantaneous speed change (mm/min)