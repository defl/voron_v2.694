; Move slowly to XY first and then straigth down, saves digging trenches in the plate

M98 P"/macros/motion/z_hop_slow.g"

M98 P"/macros/motion/xy_center.g"

M98 P"/macros/drive/z_reduced.g"
G1 Z0.18 F2000
M98 P"/macros/drive/z_normal.g"
