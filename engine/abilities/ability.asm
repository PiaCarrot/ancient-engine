; Currently runs on DV parity.
; Like Prism.
; It will eventually run on the PV

CalcAbility:
  push hl
  push bc
  ld a, [wCurPartyMon]
  ld bc, PARTYMON_STRUCT_LENGTH
  ld hl, wPartyMon1DVs
  call AddNTimes
  pop bc
  ld a, [hli]
  xor [hl]
  ld l, a
  swap a
  xor l
  ld l, a
  rrca
  rrca
  xor l
  ld l, a
  rrca
  xor l
  ld hl, wBaseAbility1
  inc a
  ld a, [hli]
  jr z, .done
  ld a, [hl]
.done
  pop hl
  ret
