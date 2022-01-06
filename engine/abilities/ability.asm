; Decides ability based on the 1st bit of the DV
; It will eventually run on the PV
CalcPlayerAbility:
	push hl
	push bc
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1DVs
	call AddNTimes
	inc hl
	ld a, [hl]
	ld bc, wBaseAbility1
	cp %1
	jr z, .done
	inc bc
.done
	ld a, [bc]
	pop bc
	pop hl
	ret

; Battle ability check
CalcPlayerBattleAbility:
	push hl
	push bc
	ld a, [wBattleMon]
	ld hl, wBattleMonDVs
	inc hl
	ld bc, wBaseAbility1
	cp %1
	jr z, .done
	inc bc
.done
	ld a, [bc]
  ld [wBattleMonAbility], a
	pop bc
	pop hl
	ret

; Calcs the enemy ability the same way the players is
; again, we will eventually switch this to be the PV. Somehow.
CalcEnemyAbility:
	push hl
	push bc
	ld a, [wEnemyMon]
	ld hl, wEnemyMonDVs
	inc hl
	ld a, [hl]
	ld bc, wBaseAbility1
	cp %1
	jr z, .done
	inc bc
.done
	ld a, [bc]
	ld [wEnemyMonAbility], a
	pop bc
	pop hl
	ret

; Abilities that trigger upon player Pokémon entrance
CheckPlayerEntranceAbility:
	push af
	push hl
	ld a, [wBattleMonAbility]
	cp DRIZZLE
	jr z, .drizzle
	cp DROUGHT
	jr z, .drought
	cp SAND_STREAM
	jr z, .sand_stream
	pop hl
	pop af
	ret
.drizzle
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld hl, AbilityText_Drizzle
	call StdBattleTextbox
	pop hl
	pop af
	ret
.drought
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld hl, AbilityText_Drought
	call StdBattleTextbox
	pop hl
	pop af
	ret
.sand_stream
	ld a, WEATHER_SANDSTORM
	ld [wBattleWeather], a
	ld hl, AbilityText_SandStream
	call StdBattleTextbox
	pop hl
	pop af
	ret
