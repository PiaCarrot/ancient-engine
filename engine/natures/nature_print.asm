PrintNature:
    ld de, .NatureString1
    hlcoord 0, 13
    call PlaceString
    call CalcNature
    ld hl, NatureNames
    call GetNthString
    ld d, h
    ld e, l
    hlcoord 4, 14
    jp PlaceString

.NatureString1:
    db "Nature:@"

INCLUDE "data/natures/names.asm"
