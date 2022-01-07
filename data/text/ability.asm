AbilityText:: ; Used for BANK(AbilityText)

; Ability texts
AbilityText_Drizzle:
	text_ram wBattleMonNick
	text "'s"
	line "DRIZZLE made it"
	cont "rain!"
	prompt

AbilityText_Drought:
	text_ram wBattleMonNick
	text "'s"
	line "DROUGHT made the"
	cont "sunlight harsh!"
	prompt

AbilityText_Intimidate:
	text_ram wBattleMonNick
	text "'s"
	line "INTIMIDATE lowers"
	cont "enemy @"
	text_ram wEnemyMonNick
	text "'s"
	cont "ATTACK!"
	prompt

AbilityText_RunAway:
	text_ram wBattleMonNick
	text " fled"
	line "using RUN AWAY!"
	prompt

AbilityText_SandStream:
	text_ram wBattleMonNick
	text "'s"
	line "SAND STREAM caused"
	cont "a sandstorm!"
	prompt

EnemyAbilityText_ArenaTrap:
	text "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "prevents escape"
	cont "with ARENA TRAP!"
	prompt

EnemyAbilityText_Drizzle:
	text "Enemy @"
	text_ram wEnemyMonNick
	text "'s"
	line "DRIZZLE made it"
	cont "rain!"
	prompt

EnemyAbilityText_Drought:
	text "Enemy @"
	text_ram wEnemyMonNick
	text "'s"
	line "DROUGHT made the"
	cont "sunlight harsh!"
	prompt

EnemyAbilityText_Intimidate:
	text "Enemy @"
	text_ram wEnemyMonNick
	text "'s"
	line "INTIMIDATE lowers"
	cont "@"
	text_ram wBattleMonNick
	text "'s"
	cont "ATTACK!"
	prompt

EnemyAbilityText_SandStream:
	text "Enemy @"
	text_ram wEnemyMonNick
	text "'s"
	line "SAND STREAM caused"
	cont "a sandstorm!"
	prompt
