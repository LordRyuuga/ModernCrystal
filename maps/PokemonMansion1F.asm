PokemonMansion1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PokemonMansion1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  4, 27, CINNABAR_ISLAND, 2
	warp_event  5, 27, CINNABAR_ISLAND, 2
	warp_event  6, 27, CINNABAR_ISLAND, 2
	warp_event  7, 27, CINNABAR_ISLAND, 2
	warp_event 26, 27, CINNABAR_ISLAND, 2
	warp_event 27, 27, CINNABAR_ISLAND, 2
	warp_event  5, 10, POKEMON_MANSION_2F, 1
	warp_event 21, 23, POKEMON_MANSION_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
