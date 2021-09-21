; homey.g
; called to home the Y axis

G91               		; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
M913 Y80				; set y current to 80%
G1 H1 Y855 F3000 		; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y-5 F3000    		; go back a few mm
G1 H1 Y855 F3000  		; move slowly to Y axis endstop once more (second pass)
G1 H2 Z-5 F6000   ; lower Z again
M913 Y100				; set y current to 100%
G90               		; absolute positioning

