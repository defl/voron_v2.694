; Configuration file for Duet WiFi (firmware version 2.03 or newer)
; executed by the firmware on start-up

; General preferences
M111 S0                 ; Debugging off
G21                     ; Work in millimetres
G90                     ; Send absolute coordinates...
M83                     ; ...but relative extruder moves
M555 P2                 ; Set firmware compatibility to look like Marlin
M575 P1 B57600 S1       ; Comms parameters for PanelDue
M564 S1 H1              ; Forbid axis movements when not homed

; General setup
M667 S1                 ; Select CoreXY mode (2.03RC1 and below)
M669 K1                 ; Select CoreXY mode (2.03 and up)

; Network
M550 Pvoron21                   ; hostname, netbios name
M551 Preprap                    ; machine password (for FTP)
M98 P"/sys/config-wifi.g"       ; contains M587
M552 S1                         ; Enable network
M586 P0 S1                      ; Enable HTTP (for DWC)
M586 P1 S1                      ; Enable FTP (for remote backups)
M586 P2 S0                      ; Disable Telnet

; --- drive map ---
;          E0
;    _______
;   | YB| YA|
;   | 6 | 7 |
;   | ----- |
;   | 5 | 8 |
;    -------
;     front

; Drive directions
M569 P0 S1 ; A (X (right) motor direction)
M569 P1 S1 ; B (Y (left) motor direction)
M569 P3 S0 ; Extruder #1
M569 P5 S1 ; Z1
M569 P6 S0 ; Z2
M569 P7 S1 ; Z3
M569 P8 S0 ; Z4

; Motor mapping and steps per mm
M584 X0 Y1 Z5:6:7:8 E3

M350 X16 Y16 Z16 E16 I1         ; Use 1/16 microstepping with interpolation everywhere
M92 X80 Y80 Z400                ; Set XYZ steps per mm (1.8deg motors)
M92 E566                        ; Set Extruder steps per mm (Mobius 2, measured)

;M350 Z16 I0 ; disable Z interpolation

; Motor currents and physics are closely coupled.
M98 P"/macros/drive/z_normal.g"
M98 P"/macros/drive/xy_normal.g"
M98 P"/macros/drive/e_normal.g"
M906 I30                        ; Idle current percentage
M84 S120                        ; Idle timeout
M204 P1500 T2000                ; Set printing acceleration and travel accelerations
                                ; TODO: Take this out?

; Endstops
M574 X2 Y2 S1                   ; XY endstops (XY=2 is endstop high end, S1 means active high)
M574 Z0 S0                      ; Z endstop (S0 means active low)
M208 X-3 Y-2 Z0 S1              ; Set axis minima
M208 X351.5 Y352 Z349 S0        ; Set axis maxima

; Bed leveling
M671 X-57:-57:362:362 Y0:420:420:0 S20          ; Define Z belts locations (Front_Left, Back_Left, Back_Right, Front_Right)
M557 X25:325 Y25:325 S25                        ; Define bed mesh grid (inductive probe, positions include the Z offset!)
                                                ; (not used normally, but configures probing for the graphical bed report)

; Bed heater
; DO NOT GO OVER 0.4w/cm2! Better still ~10m to 100c. So 65% PWM max, better is 40-50% range.
; DO NOT SCREW TIGHT FIRST FEW RUNS
; Tuning:
;   M303 H0 P0.5 S100 ; run autotune on bed with 50% PWM max
;   M500 to save autotune results to config-override.g
M305 P0 S"Bed heater" T100000 B4584             ; bed thermistor (Keenovo NTC 100K 3950K), beta comes from range 25-100c from R/T sheet
M143 P100 H0 X103 A2 C0 S110                    ; make sure silicone heater stays below 110°C
M143 P101 H0 X103 A1 C0 S125                    ; make sure silicone heater shuts down at 125°C (there is a fuse at 135°C)
M143 H0 S110                                    ; maximum bed temperature
M570 H0 T10 S180                                ; heater fault timeout

M305 P103 X3 S"Bed side" T100000 B3950          ; bed second thermistor on side of base (Fysetc NTC 100K 3950K)

; Hotend #1 heater
; Tuning:
;   M303 H1 S235 ; run autotune on head (safe to ignore the over powered note)
;   M500 to save autotune results to config-override.g
M305 S"Hotend" P1 X200                          ; 1st nozzle is 4-wire PT100, first channel
M143 H1 S280                                    ; Set temperature limit for heater 1 to 280°C
M570 H1 T10 S120                                ; heater fault timeout

; Chamber temperature sensor via temperature daughterboard pins on Duex
M305 P104 X6 S"Case top" T100000 B3950          ; air temp of case top (Fysetc NTC 100K 3950K)
M305 P105 X7 S"Case bottom" T100000 B3950       ; air temp of case bottom (Fysetc NTC 100K 3950K)

; Disable unused heaters (so they are hidden on the PanelDue)
M307 H2 A-1 C-1 D-1
M307 H3 A-1 C-1 D-1
M307 H4 A-1 C-1 D-1
M307 H5 A-1 C-1 D-1
M307 H6 A-1 C-1 D-1
M307 H7 A-1 C-1 D-1

M98 P"/macros/z_probe/use_inductive.g"

; Fans
M106 P0 S0 I0 H-1 C"Part"        ; Part cooling fan, no thermostatic control
M106 P1 H1 T50 C"Hotend"         ; E3D V6 Hotend fan, turns on if heater1 reaches 50 degrees
M106 P2 S0 H0 T50 C"Enclosure"   ; Chamber filter fan, turn on when bed is hotter than 50C
M106 P3 S255 C"Electronics 1"    ; Electronics bay fan, always run
M106 P4 S255 C"Electronics 2"

; Filament sensor for extruder drive 0, connected to E0 stop
; C: 0=X endstop, 1=Y endstop, 2=Z endstop, 3=E0 endstop ...
; TODO: Add pull up resistor as per 2.04 instructions
; M591 D0 P2 S1 C3 

; Stop button (pulls Extruder2 endstop down, which has pull up)
; TODO: Probably inverting it (so pull down NC and then having pull up work up on disconnect)
; TODO: Suspect that this causes the Duet to continually crash, test if pullup is gone as well
; M581 T0 E2 S0 C0

; Tools
M563 P0 D0 H1 S"Extruder"           ; bind tool 0 to drive and heater (TODO: Use Fx for selecting fan number for M106)
G10 P0 X0 Y0 Z0                     ; Set tool 0 axis offsets
G10 P0 R0 S0                        ; Set initial tool 0 active and standby temperatures to 0C

; Setup retraction (see directory for options)
M98 P"/macros/retraction/nopa_zhop.g"

M501                                ; load config-override.g
T0                                  ; select tool 0