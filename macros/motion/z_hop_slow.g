M98 P"/macros/drive/z_reduced.g"

M564 H0       ; Allow unhomed movement
G91           ; Relative positioning
G0 Z10 F2000  ; Lift Z little bit, slowly
G90           ; Absolute positioning
M564 H1       ; Disallow unhomed movement

M98 P"/macros/drive/z_normal.g"
