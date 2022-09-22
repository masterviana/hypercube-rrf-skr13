; homez.g
; two pass Z-probe


G91              	; relative positioning
G1 H2 Z10 F6000   	; drop Z relative to current position

G90              	; absolute positioning
G1 X160 Y80 F4000 	; move probe to bed center

M558 F400			; set probe feed rate at 600mm/m
G30              	; probe Z (at high speed)

M558 F120			; reset probe feed rate to 120mm/m
G30					; probe Z (low speed)

G1 X0 Y10 F4000		; move to bed origin fast

