; Level bed using inductive probe

M98 P"/macros/z_probe/use_inductive.g"

M98 P"/macros/drive/z_reduced.g"

; Probe the bed at 4 points, 3x for more precision
M98 P"/sys/bed_probe_points.g"
M98 P"/sys/bed_probe_points.g"
M98 P"/sys/bed_probe_points.g"

M98 P"/macros/drive/z_normal.g"
