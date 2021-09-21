; homex.g
; called to home the X axis

G91              ; relative positioning
G1 H2 Z5 F6000   ; lift Z relative to current position
M913 X70		 ; set x current to 50%
G1 H1 X415 F3600 ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X-5 F3000  ; go back a few mm
G1 H1 X415 F3600 ; move slowly to X axis endstop once more (second pass)
G1 H2 Z-5 F6000  ; lower Z again
M913 X100		 ; set x current to 100%
G90              ; absolute positioning