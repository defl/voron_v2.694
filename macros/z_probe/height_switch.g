; Rapidly move to near z-switch position
M98 P"/macros/motion/xyz_z_switch.g"

M98 P"/macros/z_probe/use_switch.g"

M98 P"/macros/drive/z_reduced.g"

G30 Z-99999  ; Z-probe

M98 P"/macros/drive/z_normal.g"
