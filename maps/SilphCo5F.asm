	object_const_def ; object_event constants


SilphCo5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo5F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  0,  0, SILPHCO_ELEVATOR, 2
	warp_event  3,  0, SILPH_CO_6F, 3 
	warp_event 13,  0, SILPH_CO_4F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events