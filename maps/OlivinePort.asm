	object_const_def ; object_event constants
	const OLIVINEPORT_SAILOR1
	const OLIVINEPORT_SAILOR2
	const OLIVINEPORT_SAILOR3
	const OLIVINEPORT_FISHING_GURU1
	const OLIVINEPORT_FISHING_GURU2
	const OLIVINEPORT_YOUNGSTER
	const OLIVINEPORT_COOLTRAINER_F

OlivinePort_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_DEFAULT
	scene_script .LeaveFastShip ; SCENE_OLIVINEPORT_LEAVE_SHIP

	db 0 ; callbacks

.LeaveFastShip:
	prioritysjump .LeaveFastShipScript
	end

.LeaveFastShipScript:
	applymovement PLAYER, OlivinePort_Movement_PlayerDisembark
	appear OLIVINEPORT_SAILOR1
	setscene SCENE_DEFAULT
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	blackoutmod OLIVINE_CITY
	end

OlivinePortSailorAtGangwayScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue OlivinePortAlreadyRodeScript
	writetext OlivinePort_Text_DepartingSoon
	waitbutton
	closetext
	turnobject OLIVINEPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear OLIVINEPORT_SAILOR1
	waitsfx
	applymovement PLAYER, OlivinePort_Movement_PlayerBoardShip
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iffalse .FirstTime
	clearevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	setevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	clearevent EVENT_BEAT_COOLTRAINERM_SEAN
	clearevent EVENT_BEAT_COOLTRAINERF_CAROL
	clearevent EVENT_BEAT_GENTLEMAN_EDWARD
	clearevent EVENT_BEAT_BEAUTY_CASSIE
	clearevent EVENT_BEAT_PSYCHIC_RODNEY
	clearevent EVENT_BEAT_SUPER_NERD_SHAWN
	clearevent EVENT_BEAT_SAILOR_GARRETT
	clearevent EVENT_BEAT_FISHER_JONAH
	clearevent EVENT_BEAT_BLACKBELT_WAI
.FirstTime:
	clearevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	appear OLIVINEPORT_SAILOR1
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 25, 1
	end

OlivinePortAlreadyRodeScript:
	writetext OlivinePort_Text_CantBoardNow
	waitbutton
	closetext
	end

OlivinePortWalkUpToShipScript:
	turnobject OLIVINEPORT_SAILOR3, RIGHT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue GenericDummyScript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue GenericDummyScript
	turnobject PLAYER, LEFT
	opentext
	writetext OlivinePort_Text_WelcomeToShip
	yesorno
	iffalse OlivinePortNotRidingMoveAwayScript
	writetext OlivinePort_Text_RequestTicket
	buttonsound
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext OlivinePort_Text_PlayerFlashedTicket
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, OlivinePort_Movement_PlayerApproachSailor
	sjump OlivinePortSailorAtGangwayScript

.NoTicket:
	writetext OlivinePort_Text_PlayerHasNoTicket
	waitbutton
	closetext
	applymovement PLAYER, OlivinePort_Movement_PushPlayerBack
	end

OlivinePortNotRidingScript:
	writetext OlivinePort_Text_HopeToSeeYouAgain
	waitbutton
	closetext
	end

OlivinePortNotRidingMoveAwayScript:
	writetext OlivinePort_Text_HopeToSeeYouAgain
	waitbutton
	closetext
	applymovement PLAYER, OlivinePort_Movement_PushPlayerBack
	end

OlivinePortSailorAfterHOFScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue OlivinePortAlreadyRodeScript
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	writetext OlivinePort_Text_WelcomeToShip
	yesorno
	iffalse OlivinePortNotRidingScript
	writetext OlivinePort_Text_RequestTicket
	buttonsound
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext OlivinePort_Text_PlayerFlashedTicket
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	readvar VAR_FACING
	ifequal RIGHT, .Right
	applymovement PLAYER, OlivinePort_Movement_PlayerApproachShip
	sjump OlivinePortSailorAtGangwayScript

.Right:
	applymovement PLAYER, OlivinePort_Movement_PlayerApproachShipAroundSailor
	sjump OlivinePortSailorAtGangwayScript

.NoTicket:
	writetext OlivinePort_Text_PlayerHasNoTicket
	waitbutton
	closetext
	end

OlivinePortSailorBeforeHOFScript:
	jumptextfaceplayer OlivinePortSailorBeforeHOFText

OlivinePortFishingGuru1Script:
	faceplayer
	opentext
	writetext OlivinePortFishingGuru1Text
	waitbutton
	closetext
	turnobject OLIVINEPORT_FISHING_GURU1, UP
	end

OlivinePortFishingGuru2Script:
	faceplayer
	opentext
	writetext OlivinePortFishingGuru2Text
	waitbutton
	closetext
	turnobject OLIVINEPORT_FISHING_GURU2, UP
	end

OlivinePortYoungsterScript:
	faceplayer
	opentext
	writetext OlivinePortYoungsterText
	waitbutton
	closetext
	turnobject OLIVINEPORT_YOUNGSTER, DOWN
	end

OlivinePortCooltrainerFScript:
	faceplayer
	opentext
	writetext OlivinePortCooltrainerFText
	waitbutton
	closetext
	turnobject OLIVINEPORT_COOLTRAINER_F, DOWN
	end

OlivinePortHiddenProtein:
	hiddenitem PROTEIN, EVENT_OLIVINE_PORT_HIDDEN_PROTEIN

OlivinePort_Movement_PlayerDisembark:
	step UP
	step_end

OlivinePort_Movement_PushPlayerBack:
	step RIGHT
	turn_head LEFT
	step_end

OlivinePort_Movement_PlayerApproachShipAroundSailor:
	step UP
	step RIGHT
OlivinePort_Movement_PlayerApproachShip:
	step RIGHT
	step DOWN
OlivinePort_Movement_PlayerApproachSailor:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
OlivinePort_Movement_PlayerBoardShip:
	step DOWN
	step_end

OlivinePort_Text_DepartingSoon:
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

OlivinePort_Text_CantBoardNow:
	text "Sorry. You can't"
	line "board now."
	done

OlivinePort_Text_WelcomeToShip:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be"
	line "boarding today?"
	done

OlivinePort_Text_RequestTicket:
	text "May I see your"
	line "S.S.TICKET?"
	done

OlivinePort_Text_HopeToSeeYouAgain:
	text "We hope to see you"
	line "again!"
	done

OlivinePort_Text_PlayerFlashedTicket:
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "That's it."
	line "Thank you!"
	done

OlivinePort_Text_PlayerHasNoTicket:
	text "<PLAYER> tried to"
	line "show the S.S."
	cont "TICKET…"

	para "…But no TICKET!"

	para "Sorry!"
	line "You may board only"
	para "if you have an"
	line "S.S.TICKET."
	done

OlivinePortFishingGuru1Text:
	text "SHELLDER are easy"
	line "to catch here."

	para "They're kind of"
	line "rare elsewhere."
	done

OlivinePortFishingGuru2Text:
	text "How many RODS do"
	line "you have?"

	para "Different RODS"
	line "catch different"
	cont "#MON."
	done

OlivinePortYoungsterText:
	text "S.S.AQUA uses jets"
	line "to skim over the"
	cont "waves!"
	done

OlivinePortCooltrainerFText:
	text "There are lots of"
	line "#MON in KANTO."

	para "I wish I could go…"
	done

OlivinePortSailorBeforeHOFText:
	text "We don't want you"
	line "to fall into the"
	para "sea, so you're not"
	line "allowed in."
	done

OlivinePort_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11,  7, OLIVINE_PORT_PASSAGE, 5
	warp_event  7, 23, FAST_SHIP_1F, 1

	db 1 ; coord events
	coord_event  7, 15, SCENE_DEFAULT, OlivinePortWalkUpToShipScript

	db 1 ; bg events
	bg_event  1, 22, BGEVENT_ITEM, OlivinePortHiddenProtein

	db 7 ; object events
	object_event  7, 23, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortSailorAtGangwayScript, EVENT_OLIVINE_PORT_SAILOR_AT_GANGWAY
	object_event  7, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortSailorBeforeHOFScript, EVENT_OLIVINE_PORT_SPRITES_BEFORE_CLAIR
	object_event  6, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortSailorAfterHOFScript, EVENT_OLIVINE_PORT_SPRITES_AFTER_CLAIR
	object_event  4, 14, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortFishingGuru1Script, EVENT_OLIVINE_PORT_SPRITES_BEFORE_CLAIR
	object_event 13, 14, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortFishingGuru2Script, EVENT_OLIVINE_PORT_SPRITES_BEFORE_CLAIR
	object_event  4, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortYoungsterScript, EVENT_OLIVINE_PORT_SPRITES_AFTER_CLAIR
	object_event 11, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortCooltrainerFScript, EVENT_OLIVINE_PORT_SPRITES_AFTER_CLAIR
