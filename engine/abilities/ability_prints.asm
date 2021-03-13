PrintAbility:
	ld de, .AbilityString1
	hlcoord 0, 8
	call PlaceString
    call CalcAbility
    ld hl, AbilityNames
    call GetNthString
    ld d, h
    ld e, l
    hlcoord 4, 9
    call PlaceString
    call CalcAbility
    ; Rangi's implementation
    ld l, a
    ld h, 0
    ld bc, AbilityDescriptions
    add hl, hl
    add hl, bc
    ld a, [hli]
    ld d, [hl]
    ld e, a
    hlcoord 0, 10
    jp PlaceString

.AbilityString1:
	db "Ability:@"

INCLUDE "data/abilities/names.asm"
INCLUDE "data/abilities/descriptions.asm"
