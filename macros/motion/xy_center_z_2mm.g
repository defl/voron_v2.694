; Move slowly to XY first and then straight down at speed, last bit slow, saves digging trenches in the plate

M98 P"/macros/motion/z_hop.g"
M98 P"/macros/motion/xy_center.g"
G0 Z10.0 F18000

M98 P"/macros/drive/z_reduced.g"
G0 Z2.0 F2000
M98 P"/macros/drive/z_normal.g"
