; homez.g
; called to home the Z axis

G91              	; relative positioning
G1 H2 Z10 F6000   	; lift Z relative to current position
G90					; absolute positioning
G1 X200 Y450 F6000  ; go to center of bed
M401 				; deploy probe
G30					; single z probe
M402				; retract probe
G1 Z5