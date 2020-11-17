;M291 R"Unloading ABS" P"Waiting for nozzle unloading temperature..." S0 T0
G10 S200 R0                     ; Heat current tool (*ADJUST*)
M116                            ; Wait for temperature

;M291 R"Unloading ABS" P"Waiting for filament to soften (or firm)..." S0 T0
G4 P10000                       ; Wait for additional delay for filament to cool or soften

;M291 R"Unloading ABS" P"Retracting..." S0 T0
M98 P"/macros/filament/do_moves_for_unload.g"

;M292                            ; Clear messages
G10 S0 R0                       ; Turn off tool heater
