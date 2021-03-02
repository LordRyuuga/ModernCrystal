 	object_const_def ; object_event constants
	const SILPHCO8F_NURSE
	const MTBATTLETRAINER61
	const MTBATTLETRAINER62
	const MTBATTLETRAINER63
	const MTBATTLETRAINER64
	const MTBATTLETRAINER65
	const MTBATTLETRAINER66
	const MTBATTLETRAINER67
	const MTBATTLETRAINER68
	const MTBATTLETRAINER69
	const MTBATTLETRAINER70

SilphCo8F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilphCo8F_CheckForHeal:
	checkevent EVENT_MT_BATTLE_HEALED_8F
	iftrue .Done
	setevent EVENT_MT_BATTLE_HEALED_8F
	turnobject SILPHCO8F_NURSE, RIGHT
	turnobject PLAYER, LEFT
	sjump MtBattleNurseHeal

.Done
	end

MtBattleTrainer61:
	trainer BIRD_KEEPER, MT_BATTLE_61, EVENT_BEAT_MT_BATTLE_61, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer62:
	trainer BLACKBELT_T, MT_BATTLE_62, EVENT_BEAT_MT_BATTLE_62, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer63:
	trainer BIKER, MT_BATTLE_63, EVENT_BEAT_MT_BATTLE_63, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer64:
	trainer POKEFANF, MT_BATTLE_64, EVENT_BEAT_MT_BATTLE_64, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer65:
	trainer MEDIUM, MT_BATTLE_65, EVENT_BEAT_MT_BATTLE_65, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer66:
	trainer COOLTRAINERM, MT_BATTLE_66, EVENT_BEAT_MT_BATTLE_66, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer67:
	trainer PICNICKER, MT_BATTLE_67, EVENT_BEAT_MT_BATTLE_67, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer68:
	trainer POKEFANM, MT_BATTLE_68, EVENT_BEAT_MT_BATTLE_68, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer69:
	trainer SUPER_NERD, MT_BATTLE_69, EVENT_BEAT_MT_BATTLE_69, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle

MtBattleTrainer70:
	trainer SAILOR, MT_BATTLE_70, EVENT_BEAT_MT_BATTLE_70, MtBattleSeenText, MtBattleBeatenText, 0, MtBattleFinishBattle


SilphCo8F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  0, SILPH_CO_ELEVATOR, 2
	warp_event  5,  0, SILPH_CO_9F, 3
	warp_event 19,  0, SILPH_CO_7F, 2

	db 1 ; coord events
	coord_event 19,  1, SCENE_ALWAYS, SilphCo8F_CheckForHeal

	db 0 ; bg events

	db 11 ; object events
	object_event 18,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtBattleNurseFinished, -1
	object_event 11,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer61, -1
	object_event  8,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer62, -1
	object_event 12,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, MtBattleTrainer63, -1
	object_event 23,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, MtBattleTrainer64, -1
	object_event 18, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, MtBattleTrainer65, -1
	object_event 16, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, MtBattleTrainer66, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer67, -1
	object_event  0, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, MtBattleTrainer68, -1
	object_event  3, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MtBattleTrainer69, -1
	object_event  6,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, MtBattleTrainer70, -1
