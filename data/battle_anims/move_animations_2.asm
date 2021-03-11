MoveAnimations2:
	dw BattleAnim_NeedleArm    ; 164
	dw BattleAnim_DracoMeteor
	dw BattleAnim_CalmMind
	dw BattleAnim_MudShot
	dw BattleAnim_Memento      ; 168
	dw BattleAnim_PoisonJab
	dw BattleAnim_DarkPulse
	dw BattleAnim_RockBlast
	dw BattleAnim_BrickBreak
	dw BattleAnim_HeatWave

BattleAnim_NeedleArm:
	anim_2gfx ANIM_GFX_HORN, ANIM_GFX_HIT
	anim_obj ANIM_OBJ_LONG_PUNCH, 136, 56, $0
.loop
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj ANIM_OBJ_NEEDLE_ARM_N, 136, 56, $30
	anim_obj ANIM_OBJ_NEEDLE_ARM_NE, 136, 56, $38
	anim_obj ANIM_OBJ_NEEDLE_ARM_E, 136, 56, $0
	anim_obj ANIM_OBJ_NEEDLE_ARM_SE, 136, 56, $8
	anim_obj ANIM_OBJ_NEEDLE_ARM_S, 136, 56, $10
	anim_obj ANIM_OBJ_NEEDLE_ARM_SW, 136, 56, $18
	anim_obj ANIM_OBJ_NEEDLE_ARM_W, 136, 56, $20
	anim_obj ANIM_OBJ_NEEDLE_ARM_NW, 136, 56, $28
	anim_wait 8
	anim_sound 0, 1, SFX_POISON_STING
	anim_loop 6, .loop
	anim_wait 32
	anim_ret

BattleAnim_DracoMeteor:
	anim_3gfx ANIM_GFX_METEOR, ANIM_GFX_EXPLOSION, ANIM_GFX_WATER
	anim_bgp $1b
	anim_sound 0, 1, SFX_MORNING_SUN
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 64
	anim_clearobjs
	anim_obj ANIM_OBJ_METEOR, 88, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_1F, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 150, 64, $0
	anim_wait 8
	anim_obj ANIM_OBJ_METEOR, 72, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_1F, $8, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 134, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR, 96, 0, $2
	anim_wait 12
	anim_bgeffect ANIM_BG_1F, $60, $3, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 158, 64, $0
	anim_wait 4
	anim_obj ANIM_OBJ_METEOR, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR, 84, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 146, 64, $0
	anim_obj ANIM_OBJ_METEOR, 96, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 158, 64, $0
	anim_obj ANIM_OBJ_METEOR, 76, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 138, 64, $0
	anim_obj ANIM_OBJ_METEOR, 84, 0, $2
	anim_wait 12
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj ANIM_OBJ_18, 146, 64, $0
	anim_wait 32
	anim_ret

BattleAnim_CalmMind:
	anim_1gfx ANIM_GFX_MISC
	anim_bgp $1b
	anim_bgeffect ANIM_BG_06, $0, $2, $0
	anim_sound 0, 0, SFX_GAME_FREAK_LOGO_GS
.loop
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $3
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $12
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $20
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $31
	anim_wait 8
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $3
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $12
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $20
	anim_obj ANIM_OBJ_MIND_READER, 48, 88, $31
	anim_wait 42
	anim_clearobjs
	anim_loop 2, .loop
	anim_ret

BattleAnim_MudShot:
	anim_1gfx ANIM_GFX_POISON
.loop
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SHOT, 64, 92, $4
	anim_wait 4
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $5c
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $e8
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $d0
	anim_obj ANIM_OBJ_MUD_SPLASH, 136, 56, $50
	anim_loop 8, .loop
	anim_wait 16
	anim_ret

BattleAnim_Memento:
	anim_1gfx ANIM_GFX_ANGELS
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_bgeffect ANIM_BG_19, $0, $1, $40
	anim_wait 64
	anim_incbgeffect ANIM_BG_19
	anim_bgp $1b
	anim_obp0 $f
	anim_obj ANIM_OBJ_SPITE, 124, 16, $0
	anim_sound 0, 1, SFX_SPITE
	anim_wait 96
	anim_ret

BattleAnim_PoisonJab:
	anim_3gfx ANIM_GFX_HORN, ANIM_GFX_HIT, ANIM_GFX_POISON
	anim_obp0 $7c
	anim_bgeffect ANIM_BG_1F, $55, $1, $0
.loop
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_01, 132, 40, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_01, 136, 56, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj ANIM_OBJ_01, 126, 50, $0
	anim_wait 8
	anim_loop 3, .loop
	anim_clearobjs
	anim_obp0 $e4
.loop2
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_1A, 132, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_1A, 116, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj ANIM_OBJ_1A, 148, 72, $0
	anim_wait 8
	anim_loop 2, .loop2
	anim_wait 32
	anim_ret

BattleAnim_DarkPulse:
	anim_1gfx ANIM_GFX_CHARGE
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_bgp $1b
	anim_sound 0, 1, SFX_SPITE
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $0
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $8
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $10
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $18
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $20
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $28
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $30
	anim_obj ANIM_OBJ_DARK_PULSE, 44, 88, $38
	anim_incobj 1
	anim_incobj 2
	anim_incobj 3
	anim_incobj 4
	anim_incobj 5
	anim_incobj 6
	anim_incobj 7
	anim_incobj 8
	anim_wait 96
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_ret

BattleAnim_RockBlast:
	anim_2gfx ANIM_GFX_ROCKS, ANIM_GFX_HIT
	anim_sound 6, 2, SFX_SPARK
	anim_obj ANIM_OBJ_ROCK_BLAST, 64, 92, $4
	anim_wait 16
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj ANIM_OBJ_01, 136, 56, $0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $5c
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $e8
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $d0
	anim_obj ANIM_OBJ_ROCK_SMASH, 136, 56, $50
	anim_wait 32
	anim_ret

BattleAnim_BrickBreak:
	anim_1gfx ANIM_GFX_HIT
	anim_sound 6, 2, SFX_SHINE
	anim_obj ANIM_OBJ_VERTICAL_CHOP_STILL, 136, 24, $30
	anim_wait 16
	anim_bgeffect ANIM_BG_1F, $55, $2, $0
	anim_wait 64
	anim_clearobjs
	anim_obj ANIM_OBJ_VERTICAL_CHOP, 136, 82, $30
	anim_wait 8
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect ANIM_BG_FLASH_INVERTED, $0, $4, $3
	anim_obj ANIM_OBJ_01, 136, 56, $0
	anim_wait 34
	anim_ret

BattleAnim_HeatWave:
	anim_2gfx ANIM_GFX_WIND, ANIM_GFX_FIRE
	anim_bgp $90
	anim_bgeffect ANIM_BG_WHIRLPOOL, $0, $0, $0
	anim_sound 0, 0, SFX_EMBER
.loop
	anim_obj ANIM_OBJ_HEAT_WAVE, 88, 0, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 56, 16, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 72, 32, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 24, 48, $1
	anim_wait 8
	anim_obj ANIM_OBJ_HEAT_WAVE, 40, 64, $1
	anim_loop 3, .loop
	anim_incbgeffect ANIM_BG_WHIRLPOOL
	anim_ret