M561  ; Clear any bed transform

M98 P"/macros/z_probe/level_inductive.g"

M98 P"/macros/z_probe/height_switch.g"

M98 P"/macros/z_probe/use_inductive.g"

G29 S1  ; Load previously probed bed mesh
