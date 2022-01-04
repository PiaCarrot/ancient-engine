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
