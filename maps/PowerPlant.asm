	object_const_def ; object_event constants
	const POWERPLANT_OFFICER1
	const POWERPLANT_GYM_GUY1
	const POWERPLANT_GYM_GUY2
	const POWERPLANT_OFFICER2
	const POWERPLANT_OFFICER3
	const POWERPLANT_GYM_GUY3
	const POWERPLANT_MANAGER
	const POWERPLANT_FOREST

PowerPlant_MapScripts:
	db 2 ; scene scripts
	scene_script GenericDummyScript ; SCENE_POWERPLANT_NOTHING
	scene_script GenericDummyScript ; SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL

	db 0 ; callbacks

PowerPlantGuardPhoneScript:
	playsound SFX_CALL
	showemote EMOTE_SHOCK, POWERPLANT_OFFICER1, 15
	waitsfx
	pause 30
	applymovement POWERPLANT_OFFICER1, PowerPlantOfficer1ApproachGymGuy2Movement
	turnobject POWERPLANT_GYM_GUY1, DOWN
	turnobject POWERPLANT_GYM_GUY2, DOWN
	opentext
	writetext PowerPlantOfficer1CeruleanShadyCharacterText
	waitbutton
	closetext
	turnobject POWERPLANT_OFFICER1, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext PowerPlantOfficer1CouldIAskForYourCooperationText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement POWERPLANT_OFFICER1, PowerPlantOfficer1ReturnToPostMovement
	setscene SCENE_POWERPLANT_NOTHING
	end

PowerPlantOfficerScript:
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue .MetManager
	jumptextfaceplayer PowerPlantOfficer1AThiefBrokeInText

.MetManager:
	jumptextfaceplayer PowerPlantOfficer1CouldIAskForYourCooperationText

.ReturnedMachinePart:
	jumptextfaceplayer PowerPlantOfficer1HaveToBeefUpSecurityText

PowerPlantGymGuy1Script:
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	jumptextfaceplayer PowerPlantGymGuy1SomeoneStoleAPartText

.ReturnedMachinePart:
	jumptextfaceplayer PowerPlantGymGuy1GeneratorUpAndRunningText

PowerPlantGymGuy2Script:
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	jumptextfaceplayer PowerPlantGymGuy2PowerPlantUpAndRunningText

.ReturnedMachinePart:
	jumptextfaceplayer PowerPlantGymGuy2GeneratorIsRunningAgainText

PowerPlantOfficer2Script:
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	jumptextfaceplayer PowerPlantOfficer2ManagerHasBeenSadAndFuriousText

.ReturnedMachinePart:
	faceplayer
	opentext
	writetext .teach_move_text
	yesorno
	iffalse .refused
	writetext .what_move_text
	movetutor FOCUS_BLAST, CRYSTAL_BOLT, ENERGY_BALL
	iftrue .refused
	writetext .finished_text
	waitbutton
	closetext
	end

.teach_move_text
	text "Everyone's been a"
	line "lot more cheerful"
	para "recently. How can"
	line "we thank you?"

	para "I know! I'll teach"
	line "your #MON a new"
	para "strong move!"
	line "What do you say?"
	done

.what_move_text
	text "What move should I"
	line "teach?"
	done

.finished_text
	text "Come again if you"
	line "want me to teach"
	para "your #MON"
	line "another move!"
	done

.refused
	writetext .refused_text
	waitbutton
	closetext
	end

.refused_text
	text "That's okay. Let me"
	line "know if you change"
	cont "your mind!"
	done

PowerPlantOfficer3Script:
	jumptextfaceplayer PowerPlantOfficer3Text

PowerPlantGymGuy4Script:
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	jumptextfaceplayer PowerPlantGymGuy4MagnetTrainConsumesElectricityText

.ReturnedMachinePart:
	jumptextfaceplayer PowerPlantGymGuy4WeCanGetMagnetTrainRunningText

PowerPlantManager:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	checkitem MACHINE_PART
	iftrue .FoundMachinePart
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue .MetManager
	writetext PowerPlantManagerWhoWouldRuinMyGeneratorText
	waitbutton
	closetext
	setevent EVENT_MET_MANAGER_AT_POWER_PLANT
	clearevent EVENT_CERULEAN_GYM_ROCKET
	clearevent EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM
	setmapscene CERULEAN_GYM, SCENE_CERULEANGYM_GRUNT_RUNS_OUT
	setscene SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL
	end

.MetManager:
	writetext PowerPlantManagerIWontForgiveCulpritText
	waitbutton
	closetext
	end

.FoundMachinePart:
	writetext PowerPlantManagerThatsThePartText
	buttonsound
	takeitem MACHINE_PART
	setevent EVENT_RETURNED_MACHINE_PART
	clearevent EVENT_SAFFRON_TRAIN_STATION_POPULATION
	setevent EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	setevent EVENT_ROUTE_24_ROCKET
	setevent EVENT_RESTORED_POWER_TO_KANTO
	disappear POWERPLANT_OFFICER3
	clearevent EVENT_GOLDENROD_TRAIN_STATION_GENTLEMAN
.ReturnedMachinePart:
	checkevent EVENT_GOT_HM07_WATERFALL
	iftrue .GotZapCannon
	writetext PowerPlantManagerTakeThisHMText
	buttonsound
	verbosegiveitem HM_WATERFALL
	iffalse .NoRoom
	setevent EVENT_GOT_HM07_WATERFALL
	writetext PowerPlantManagerHM07IsWaterfallText
	waitbutton
.NoRoom:
	closetext
	end

.GotZapCannon:
	writetext PowerPlantManagerMyBelovedGeneratorText
	waitbutton
	closetext
	end

Forest:
	faceplayer
	opentext
	trade NPC_TRADE_FOREST
	waitbutton
	closetext
	end

PowerPlantBookshelf:
	jumpstd difficultbookshelf

PowerPlantOfficer1ApproachGymGuy2Movement:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

PowerPlantOfficer1ReturnToPostMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

PowerPlantOfficer1AThiefBrokeInText:
	text "A thief broke into"
	line "the POWER PLANT…"

	para "What is the world"
	line "coming to?"
	done

PowerPlantOfficer1CeruleanShadyCharacterText:
	text "I just got word"
	line "from CERULEAN."

	para "It appears that a"
	line "shady character"
	para "has been loitering"
	line "around."
	done

PowerPlantOfficer1CouldIAskForYourCooperationText:
	text "Could I ask for"
	line "your cooperation?"
	done

PowerPlantOfficer1HaveToBeefUpSecurityText:
	text "We'll have to beef"
	line "up our security"
	cont "presence."
	done

PowerPlantGymGuy1SomeoneStoleAPartText:
	text "Someone made off"
	line "with a part that's"
	para "essential for the"
	line "generator."

	para "Without it, the"
	line "new generator's"
	cont "useless!"
	done

PowerPlantGymGuy1GeneratorUpAndRunningText:
	text "The generator's up"
	line "and running. It's"
	para "making electricity"
	line "to spare."
	done

PowerPlantGymGuy2PowerPlantUpAndRunningText:
	text "This POWER PLANT"
	line "had been abandoned"
	cont "in the past."

	para "We got it back up"
	line "and running to"
	para "provide power to"
	line "the MAGNET TRAIN."
	done

PowerPlantGymGuy2GeneratorIsRunningAgainText:
	text "The generator's"
	line "running again!"
	done

PowerPlantOfficer2ManagerHasBeenSadAndFuriousText:
	text "The POWER PLANT's"
	line "MANAGER is up"
	cont "ahead."

	para "But since someone"
	line "wrecked the"
	para "generator, he's"
	line "been both sad and"
	cont "furious…"
	done

PowerPlantGymGuy4MagnetTrainConsumesElectricityText:
	text "The MAGNET TRAIN"
	line "consumes a lot of"
	cont "electricity."

	para "It can't move if"
	line "the new generator"
	cont "isn't operating."
	done

PowerPlantGymGuy4WeCanGetMagnetTrainRunningText:
	text "All right! We can"
	line "finally get the"
	para "MAGNET TRAIN"
	line "running again."
	done

PowerPlantManagerWhoWouldRuinMyGeneratorText:
	text "MANAGER: I, I, I'm"
	line "ready to blast"
	cont "someone!"

	para "Who would dare"
	line "ruin my generator?"

	para "I spent so much"
	line "time on it!"

	para "If I catch him,"
	line "he's going to get"
	para "tossed down a"
	line "waterfall!"
	done

PowerPlantManagerIWontForgiveCulpritText:
	text "MANAGER: I won't"
	line "forgive him!"

	para "The culprit can"
	line "cry and apologize,"
	para "but I'll still"
	line "hammer him!"

	para "Gahahahah!"
	done

PowerPlantManagerThatsThePartText:
	text "MANAGER: Ah! Yeah!"

	para "That's the missing"
	line "PART from my"
	para "beloved generator!"
	line "You found it?"
	done

PowerPlantManagerTakeThisHMText:
	text "Wahah! Thanks!"

	para "Here! Take this HM"
	line "as a reward!"
	done

PowerPlantManagerHM07IsWaterfallText:
	text "MANAGER: HM07 is"
	line "WATERFALL."

	para "It's a powerful"
	line "technique that"
	para "will also let you"
	line "climb waterfalls!"
	done

PowerPlantManagerMyBelovedGeneratorText:
	text "MANAGER: My be-"
	line "loved generator!"

	para "Keep pumping the"
	line "electricity out!"
	done

PowerPlantOfficer3Text:
	text "There's some strong"
	line "wild #MON in"
	cont "the basement."

	para "It's best not to go"
	line "inside right now."
	done

PowerPlant_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  2, 17, ROUTE_10_NORTH, 2
	warp_event  3, 17, ROUTE_10_NORTH, 2
	warp_event 19,  3, POWER_PLANT_B1F, 1
	warp_event  1,  3, POWER_PLANT_B1F, 2

	db 1 ; coord events
	coord_event  5, 12, SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL, PowerPlantGuardPhoneScript

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event  1,  1, BGEVENT_READ, PowerPlantBookshelf

	db 8 ; object events
	object_event  4, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficerScript, -1
	object_event  2,  9, SPRITE_GYM_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuy1Script, -1
	object_event  6, 11, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuy2Script, -1
	object_event  9,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficer2Script, -1
	object_event  19,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficer3Script, EVENT_RESTORED_POWER_TO_KANTO
	object_event  7,  2, SPRITE_GYM_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuy4Script, -1
	object_event 14, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantManager, -1
	object_event  5,  5, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Forest, -1
