	object_const_def ; object_event constants
	const SPROUTTOWER3F_SAGE1
	const SPROUTTOWER3F_SAGE2
	const SPROUTTOWER3F_SAGE3
	const SPROUTTOWER3F_SAGE4
	const SPROUTTOWER3F_POKE_BALL1
	const SPROUTTOWER3F_POKE_BALL2
	const SPROUTTOWER3F_SILVER

SproutTower3F_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script GenericDummyScript ; SCENE_FINISHED

	db 0 ; callbacks

SproutTower3FRivalScene:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	pause 15
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	applymovement PLAYER, SproutTower3F_Movement_PlayerApproachRival
	applymovement SPROUTTOWER3F_SILVER, SproutTower3F_Movement_RivalWalkUp
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, SPROUTTOWER3F_SILVER, 15
	turnobject SPROUTTOWER3F_SILVER, DOWN
	pause 15
	applymovement SPROUTTOWER3F_SILVER, SproutTower3F_Movement_RivalApproachPlayer
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	setlasttalked SPROUTTOWER3F_SILVER
	loadtrainer BABA, BABA1
	startbattle
	reloadmapafterbattle
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext HostSilenceText
	waitbutton
	closetext
	turnobject SPROUTTOWER3F_SILVER, UP
	opentext
	writetext SproutTowerRivalUsedEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SPROUTTOWER3F_SILVER
	waitsfx
	special FadeInQuickly
	setscene SCENE_FINISHED
	special RestartMapMusic
	end

SageLiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	writetext HostSilenceText
	waitbutton
	closetext
	winlosstext HostSilenceText, HostSilenceText
	loadtrainer B2W2_NATE, R_BLACK21
	startbattle
	reloadmapafterbattle
	opentext
	writetext HostSilenceText
	buttonsound
	verbosegiveitem HM_FLASH
	setevent EVENT_GOT_HM05_FLASH
	setevent EVENT_BEAT_SAGE_LI
.GotFlash:
	writetext HostSilenceText
	waitbutton
	closetext
	end

TrainerSageJin:
	trainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext SageJinAfterBattleText

TrainerSageTroy:
	trainer SAGE, TROY, EVENT_BEAT_SAGE_TROY, SageTroySeenText, SageTroyBeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext SageTroyAfterBattleText

TrainerSageNeal:
	trainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText, 0, .Script

.Script:
	endifjustbattled
	jumptext SageNealAfterBattleText

SproutTower3FPainting:
	jumptext SproutTower3FPaintingText

SproutTower3FStatue:
	jumptext SproutTower3FStatueText

SproutTower3FPotion:
	itemball POTION

SproutTower3FEscapeRope:
	itemball ESCAPE_ROPE

SproutTower3F_Movement_PlayerApproachRival:
	step UP
	step UP
	step UP
SproutTower3F_Movement_RivalWalkUp:
	step UP
	step_end

SproutTower3F_Movement_RivalApproachPlayer:
	step RIGHT
	step DOWN
	step_end

SproutTowerRivalUsedEscapeRopeText:
	text "BABA used an"
	line "ESCAPE ROPE!"
	done

SageJinSeenText:
	text "I train to find"
	line "enlightenment in"
	cont "#MON!"
	done

SageJinBeatenText:
	text "My training is"
	line "incomplete…"
	done

SageJinAfterBattleText:
	text "As #MON grow"
	line "stronger, so does"
	cont "the trainer."

	para "No, wait. As the"
	line "trainer grows"
	para "stronger, so do"
	line "the #MON."
	done

SageTroySeenText:
	text "Let me see how"
	line "much you trust"
	cont "your #MON."
	done

SageTroyBeatenText:
	text "Yes, your trust is"
	line "real!"
	done

SageTroyAfterBattleText:
	text "It is not far to"
	line "the ELDER."
	done

SageNealSeenText:
	text "The ELDER's HM"
	line "lights even pitch-"
	cont "black darkness."
	done

SageNealBeatenText:
	text "It is my head that"
	line "is bright!"
	done

SageNealAfterBattleText:
	text "Let there be light"
	line "on your journey."
	done

SproutTower3FPaintingText:
	text "It's a powerful"
	line "painting of a"
	cont "BELLSPROUT."
	done

SproutTower3FStatueText:
	text "A #MON statue…"

	para "It looks very"
	line "distinguished."
	done

SproutTower3F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 10, 14, SPROUT_TOWER_2F, 4

	db 1 ; coord events
	coord_event 11,  9, SCENE_DEFAULT, SproutTower3FRivalScene

	db 6 ; bg events
	bg_event  8,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event 11,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event  9,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event 10,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event  5, 15, BGEVENT_READ, SproutTower3FStatue
	bg_event 14, 15, BGEVENT_READ, SproutTower3FStatue

	db 7 ; object events
	object_event  8, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageJin, -1
	object_event  8,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageTroy, -1
	object_event 10,  2, SPRITE_NATE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SageLiScript, -1
	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageNeal, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FPotion, EVENT_SPROUT_TOWER_3F_POTION
	object_event 14,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FEscapeRope, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE
	object_event 10,  4, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_SPROUT_TOWER
