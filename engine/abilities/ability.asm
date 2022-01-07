; This is basically ripping off the Battle Textbox
; However we need to use BANK(AbilityText). Why? Well, we'd run the risk of filling up the BattleText bank...
; Thankfully, we can still use the BattleTextbox to finish it. It is only an issue with the BANK(BattleText)
StdAbilityTextbox:
	ldh a, [hROMBank]
	push af
	ld a, BANK(AbilityText)
	rst Bankswitch
	call BattleTextbox
	pop af
	rst Bankswitch
	ret

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
; again, we will eventually switch this to be the PV.
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
	call StdAbilityTextbox
	pop hl
	pop af
	ret
.drought
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld hl, AbilityText_Drought
	call StdAbilityTextbox
	pop hl
	pop af
	ret
.sand_stream
	ld a, WEATHER_SANDSTORM
	ld [wBattleWeather], a
	ld hl, AbilityText_SandStream
	call StdAbilityTextbox
	pop hl
	pop af
	ret

; Abilities that trigger upon enemy Pokémon entrance
CheckEnemyEntranceAbility:
	push af
	push hl
	ld a, [wEnemyMonAbility]
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
	ld hl, EnemyAbilityText_Drizzle
	call StdAbilityTextbox
	pop hl
	pop af
	ret
.drought
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld hl, EnemyAbilityText_Drought
	call StdAbilityTextbox
	pop hl
	pop af
	ret
.sand_stream
	ld a, WEATHER_SANDSTORM
	ld [wBattleWeather], a
	ld hl, EnemyAbilityText_SandStream
	call StdAbilityTextbox
	pop hl
	pop af
	ret

; Assumes that the Pokemon nick is in de
; Checks for abilities that activate on escape attempts.
DoEscapeAbilityText:
	push af
	push hl
	push bc
	ld a, [de]
	ld b, a
	ld a, [wBattleMonNick]
	cp b
	jr z, .player
	jr .enemy
; The player only uses the Run Away text.
.player
	pop bc
	ld hl, AbilityText_RunAway
	call StdAbilityTextbox
	pop hl
	pop af
	ret
; The enemy only uses the Arena Trap text.
.enemy
	pop bc
	ld hl, EnemyAbilityText_ArenaTrap
	call StdAbilityTextbox
	pop hl
	pop af
	ret
