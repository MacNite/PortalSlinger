; bed.g
; called to perform automatic bed compensation via G32

M561 ; clear any bed transform

M401						; deploy probe
G30 P0 X35 Y450 Z-99999		; probe near left spindle
G30 P1 X400 Y450 Z-99999 S2	; probe near right spindle
M402						; retract probe

G29  ; probe the bed and enable compensation


