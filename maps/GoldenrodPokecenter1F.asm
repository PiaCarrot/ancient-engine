	object_const_def ; object_event constants
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	const GOLDENRODPOKECENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECENTER1F_LASS
	const GOLDENRODPOKECENTER1F_POKEFAN_F

GoldenrodPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GoldenrodPokecenter1FNurseScript:
	jumpstd pokecenternurse

GoldenrodPokecenter1FGameboyKidScript:
	jumptextfaceplayer GoldenrodPokecenter1FGameboyKidText

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FPokefanF:
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext GoldenrodPokecenter1FPokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext GoldenrodPokecenter1FPokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtRightDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromRightDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokecenter1FGameboyKidText:
	text "The COLOSSEUM"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

GoldenrodPokecenter1FLassText:
	text "A higher level"
	line "#MON doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#MON that is"
	line "the toughest."
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText:
	text "<PLAYER>, isn't it?"

	para "Congratulations!"

	para "As a special deal,"
	line "a GS BALL has been"
	cont "sent just for you!"

	para "Please accept it!"
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText:
	text "Please do come"
	line "again!"
	done

UnknownText_0x62370:
	text "#COM CENTER"
	line "1F INFORMATION"

	para "Left:"
	line "ADMINISTRATION"

	para "Center:"
	line "TRADE CORNER"

	para "Right:"
	line "#MON NEWS"
	done

UnknownText_0x623c7:
	text "It's a #MON"
	line "NEWS MACHINE!"

	para "It's not in"
	line "operation yet…"
	done

GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText:
	text "Oh my, your pack"
	line "looks so heavy!"

	para "Oh! Do you happen"
	line "to have something"
	cont "named EON MAIL?"

	para "My daughter is"
	line "after one."

	para "You can part with"
	line "one, can't you?"
	done

GoldenrodPokecenter1FAskGiveAwayAnEonMailText:
	text "Give away an EON"
	line "MAIL?"
	done

GoldenrodPokecenter1FPokefanFThisIsForYouText:
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done

GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText:
	text "My daughter will"
	line "be delighted!"
	done

GoldenrodPokecenter1FPokefanFTooBadText:
	text "Oh? You don't have"
	line "one? Too bad."
	done

GoldenrodPokecenter1FPokefanFAnotherTimeThenText:
	text "Oh… Well, another"
	line "time, then."
	done

GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText:
	text "<PLAYER> gave away"
	line "the EON MAIL."
	done

GoldenrodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  3,  7, GOLDENROD_CITY, 15
	warp_event  4,  7, GOLDENROD_CITY, 15
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; bg events

	db 5 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
	object_event  7,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPokefanF, -1
