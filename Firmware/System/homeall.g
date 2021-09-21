; homeall.g
; called to home all axes

;homex
G91              		; relative positioning
G1 H2 Z5 F6000   		; lift Z relative to current position
M913 X70 Y80	 		; set x current to 70% and y-current to 80%
G1 H1 X415 F3600 		; move quickly to X axis endstop and stop there (first pass)
G1 H2 X-5 F3000  		; go back a few mm
G1 H1 X415 F3600 		; move slowly to X axis endstop once more (second pass)

;homey
G1 H1 Y855 F3000 		; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y-5 F3000    		; go back a few mm
G1 H1 Y855 F3000  		; move slowly to Y axis endstop once more (second pass)
G1 H2 Z-5 F6000   		; lower Z again
M913 X100 Y100			; set x & y current to 100%
G90               		; absolute positioning
G1 X200 Y450 F6000  	; go to center of bed
M401 					; deploy probe
G30						; single z probe
M402					; retract probe
G1 Z5