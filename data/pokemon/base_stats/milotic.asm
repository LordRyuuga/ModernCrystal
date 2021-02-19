	db 0 ; species ID placeholder

	db  95,  60,  79,  81, 100, 125
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 213 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 21 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/milotic/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, RETURN, DOUBLE_TEAM, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL
	; end
