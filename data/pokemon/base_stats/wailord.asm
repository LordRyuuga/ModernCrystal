	db 0 ; species ID placeholder

	db 170,  90,  46,  60,  90,  45
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER; type
	db 60 ; catch rate
	db 206 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 41 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/wailord/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DOUBLE_TEAM, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
