; These directly correspond to the constants in "constants\ability_constants.asm"
AbilityDescriptions:
    ; Useless
    dw CacophonyDesc

    ; On Pokémon Entrance
    dw DrizzleDesc
    dw IntimidateDesc
    dw TraceDesc
    dw SandStreamDesc
    dw PressureDesc
    dw DroughtDesc
    dw DownloadDesc
    dw MoldBreakerDesc
    dw AnticipationDesc
    dw ForewarnDesc
    dw SlowStartDesc
    dw SnowWarningDesc
    dw FriskDesc
    dw MultitypeDesc

    ; Forecast gets its own category
    dw ForecastDesc

    ; Weather based
    dw SandVeilDesc
    dw CloudNineDesc
    dw AirLockDesc
    dw SwiftSwimDesc
    dw ChlorophyllDesc
    dw RainDishDesc
    dw SnowCloakDesc
    dw HydrationDesc
    dw SolarPowerDesc
    dw LeafGuardDesc
    dw FlowerGiftDesc

    ; Damage stage modification
    dw ThickFatDesc
    dw HeatproofDesc
    dw DrySkinDesc
    dw FilterDesc
    dw SolidRockDesc

    ; Added effect protection
    dw BattleArmorDesc
    dw ShellArmorDesc
    dw ShieldDustDesc
    dw InnerFocusDesc
    dw RockHeadDesc

    ; Serene Grace gets its own category
    dw SereneGraceDesc

    ; Conditional power modification
    dw RivalryDesc
    dw IronFistDesc
    dw AdaptabilityDesc
    dw SkillLinkDesc
    dw SniperDesc
    dw TintedLensDesc
    dw RecklessDesc

    ; Move negating
    dw SturdyDesc
    dw DampDesc
    dw VoltAbsorbDesc
    dw WaterAbsorbDesc
    dw FlashFireDesc
    dw WonderGuardDesc
    dw LevitateDesc
    dw LightningRodDesc
    dw SoundproofDesc
    dw MotorDriveDesc
    dw StormDrainDesc

    ; Changes move type
    dw NormalizeDesc
    dw PixilateDesc

    ; Scrappy gets its own category
    dw ScrappyDesc

    ; Contact effects
    dw StaticDesc
    dw ColorChangeDesc
    dw RoughSkinDesc
    dw EffectSporeDesc
    dw PoisonPointDesc
    dw FlameBodyDesc
    dw CuteCharmDesc
    dw IceBodyDesc

    ; Damage activated
    dw LiquidOozeDesc
    dw SteadfastDesc

    ; Status preventing
    dw LimberDesc
    dw ObliviousDesc
    dw InsomniaDesc
    dw VitalSpiritDesc
    dw ImmunityDesc
    dw OwnTempoDesc
    dw MagmaArmorDesc
    dw WaterVeilDesc

    ; Turn Based
    dw SpeedBoostDesc
    dw EarlyBirdDesc
    dw TruantDesc
    dw ShedSkinDesc
    dw PoisonHealDesc

    ; Outside of battle
    dw StenchDesc
    dw IlluminateDesc
    dw PickupDesc
    dw HoneyGatherDesc

    ; Passive stat boosting
    dw CompoundEyesDesc
    dw HugePowerDesc
    dw PurePowerDesc
    dw HustleDesc
    dw NoGuardDesc
    dw TechnicianDesc
    dw SuperLuckDesc
    dw UnawareDesc
    dw DragonsMawDesc
    dw TransistorDesc

    ; Simple gets its own category
    dw SimpleDesc

    ; Stat reduction protection
    dw ClearBodyDesc
    dw WhiteSmokeDesc
    dw KeenEyeDesc
    dw HyperCutterDesc

    ; Escape and switch related
    dw SuctionCupsDesc
    dw ShadowTagDesc
    dw ArenaTrapDesc
    dw NaturalCureDesc
    dw MagnetPullDesc
    dw RunAwayDesc

    ; Status triggered
    dw SynchronizeDesc
    dw GutsDesc
    dw MarvelScaleDesc
    dw TangledFeetDesc
    dw QuickFeetDesc
    dw MagicGuardDesc
    dw BadDreamsDesc

    ; HP Triggered
    dw OvergrowDesc
    dw BlazeDesc
    dw TorrentDesc
    dw SwarmDesc
    dw GluttonyDesc
    dw AngerPointDesc
    dw AftermathDesc

    ; Item Based
    dw StickyHoldDesc
    dw UnburdenDesc
    dw KlutzDesc

    ; Stall gets its own category
    dw StallDesc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Useless
CacophonyDesc:
    db    "No ability is"
    next1 "available.@"

; On Pokémon Entrance
DrizzleDesc:
    db    "Causes heavy rain"
    next1 "upon entrance.@"
IntimidateDesc:
    db    "Lowers the foe's"
    next1 "ATTACK.@"
TraceDesc:
    db    "Copies the foe's"
    next1 "ability.@"
SandStreamDesc:
    db    "Causes a sandstorm"
    next1 "upon entrance.@"
PressureDesc:
    db    "Increases PP usage"
    next1 "of attackers.@"
DroughtDesc:
    db    "Causes harsh sun"
    next1 "upon entrance.@"
DownloadDesc:
    db    "Tactically adjusts"
    next1 "damaging stats.@"
MoldBreakerDesc:
    db    "Ignores abilities"
    next1 "that block moves.@"
AnticipationDesc:
    db    "Senses dangerous"
    next1 "moves.@"
ForewarnDesc:
    db    "Detects a foe's"
    next1 "move.@"
SlowStartDesc:
    db    "Temporarily halves"
    next1 "ATTACK and SPEED.@"
SnowWarningDesc:
    db    "Causes a hailstorm"
    next1 "upon entrance.@"
FriskDesc:
    db    "Identifies foe's"
    next1 "held ITEM.@"
MultitypeDesc:
    db    "Changes type to"
    next1 "match held PLATE.@"

; Forecast gets its own category
ForecastDesc:
    db    "Transforms upon"
    next1 "weather changes.@"

; Weather based
SandVeilDesc:
    db    "Boosts EVASION in"
    next1 "SANDSTORMS.@"
CloudNineDesc:
AirLockDesc:
    db    "Protects against"
    next1 "weather effects.@"
SwiftSwimDesc:
    db    "Boosts SPEED in"
    next1 "rainy conditions.@"
ChlorophyllDesc:
    db    "Boosts SPEED in"
    next1 "sunny conditions.@"
RainDishDesc:
    db    "Restores HP in"
    next1 "rainy conditions.@"
SnowCloakDesc:
    db    "Boosts EVASIVENESS"
    next1 "in hail.@"
HydrationDesc:
    db    "Heals statuses in"
    next1 "rain.@"
SolarPowerDesc:
    db    "Raises SP.ATK in"
    next1 "sun, but cuts HP.@"
LeafGuardDesc:
    db    "Protects against"
    next1 "statuses in sun.@"
FlowerGiftDesc:
    db    "Powers up #MON"
    next1 "when sunny.@"

; Damage stage modification
ThickFatDesc:
    db    "Resists ICE and"
    next1 "FIRE moves.@"
HeatproofDesc:
    db    "Cuts the damage of"
    next1 "FIRE moves.@"
DrySkinDesc:
    db    "Loses HP in heat,"
    next1 "gains HP in water.@"
FilterDesc:
SolidRockDesc:
    db    "Cuts the damage of"
    next1 "SE moves.@"

; Added effect protection
BattleArmorDesc:
ShellArmorDesc:
    db    "Prevents critical"
    next1 "hit damage.@"
ShieldDustDesc:
    db    "Protects against"
    next1 "move effects.@"
InnerFocusDesc:
    db    "Protects against"
    next1 "flinching.@"
RockHeadDesc:
    db    "Protects against"
    next1 "recoil.@"

; Serene Grace gets its own category
SereneGraceDesc:
    db    "Increases chances"
    next1 "of move effects.@"

; Conditional power modification
RivalryDesc:
    db    "Deals damage based"
    next1 "on foe's gender.@"
IronFistDesc:
    db    "Boosts power of"
    next1 "punching moves.@"
AdaptabilityDesc:
    db    "Increases STAB"
    next1 "damage.@"
SkillLinkDesc:
    db    "Multi-strike moves"
    next1 "hit all 5 times.@"
SniperDesc:
    db    "Boosts critical"
    next1 "hit damage.@"
TintedLensDesc:
    db    "Boosts 'not very"
    next1 "effective' moves.@"
RecklessDesc:
    db    "Boosts recoil"
    next1 "causing moves.@"

; Move negating
SturdyDesc:
    db    "Nullifies 1-hit KO"
    next1 "attacks.@"
DampDesc:
    db    "Prevents explosive"
    next1 "moves.@"
VoltAbsorbDesc:
    db    "Abosorbs ELECTRIC"
    next1 "moves for HP.@"
WaterAbsorbDesc:
    db    "Absorbs WATER"
    next1 "moves for HP.@"
FlashFireDesc:
    db    "Absorbs FIRE"
    next1 "moves for power.@"
WonderGuardDesc:
    db    "Only takes damage"
    next1 "from SE moves.@"
LevitateDesc:
    db    "Protects against"
    next1 "GROUND moves.@"
LightningRodDesc:
    db    "Absorbs ELECTRIC"
    next1 "moves.@"
SoundproofDesc:
    db    "Protects against"
    next1 "acoustic moves.@"
MotorDriveDesc:
    db    "Boosts SPEED if"
    next1 "hit by electicity.@"
StormDrainDesc:
    db    "Absorbs WATER"
    next1 "moves.@"

; Changes move type
NormalizeDesc:
    db    "All moves become"
    next1 "NORMAL-type.@"
PixilateDesc:
    db    "NORMAL moves become"
    next1 "FAIRY-type.@"

; Scrappy gets its own category
ScrappyDesc:
    db    "Hits GHOST #MON"
    next1 "with all moves.@"

; Contact effects
StaticDesc:
    db    "May cause PARAL-"
    next1 "YSIS on contact.@"
ColorChangeDesc:
    db    "Matches type of"
    next1 "damaging moves.@"
RoughSkinDesc:
    db    "Damages users of"
    next1 "physical moves.@"
EffectSporeDesc:
    db    "May cause a status"
    next1 "effect on contact.@"
PoisonPointDesc:
    db    "May cause POISON-"
    next1 "ING on contact.@"
FlameBodyDesc:
    db    "May cause a BURN"
    next1 "on contact.@"
CuteCharmDesc:
    db    "May cause INFATU-"
    next1 "ATION on contact.@"
IceBodyDesc:
    db    "May cause FREEZING"
    next1 "on contact.@"

; Damage activated
LiquidOozeDesc:
    db    "Damages users of"
    next1 "draining moves.@"
SteadfastDesc:
    db    "Boosts SPEED upon"
    next1 "flinching.@"

; Status preventing
LimberDesc:
    db    "Protects against"
    next1 "PARALYSIS.@"
ObliviousDesc:
    db    "Protects against"
    next1 "INFATUATION.@"
InsomniaDesc:
VitalSpiritDesc:
    db    "Protects against"
    next1 "SLEEP.@"
ImmunityDesc:
    db    "Protects against"
    next1 "POISONING.@"
OwnTempoDesc:
    db    "Protects against"
    next1 "CONFUSION.@"
MagmaArmorDesc:
    db    "Protects against"
    next1 "FREEZING.@"
WaterVeilDesc:
    db    "Protects against"
    next1 "BURNS.@"

; Turn Based
SpeedBoostDesc:
    db    "Constantly raises"
    next1 "the SPEED stat.@"
EarlyBirdDesc:
    db    "Wakes from SLEEP"
    next1 "quickly.@"
TruantDesc:
    db    "Attacks only every"
    next1 "other turn.@"
ShedSkinDesc:
    db    "May heal from"
    next1 "status effects.@"
PoisonHealDesc:
    db    "Restores HP when"
    next1 "POISONED.@"

; Outside of battle
StenchDesc:
    db    "Helps repel wild"
    next1 "#MON.@"
IlluminateDesc:
    db    "Increases #MON"
    next1 "encounter rate.@"
PickupDesc:
    db    "May find items"
    next1 "after battles.@"
HoneyGatherDesc:
    db    "May find HONEY"
    next1 "after battles.@"

; Passive stat boosting
CompoundEyesDesc:
    db    "Boosts ACCURACY"
    next1 "of moves.@"
HugePowerDesc:
PurePowerDesc:
    db    "Boosts ATTACK"
    next1 "of moves.@"
HustleDesc:
    db    "Boosts ATTACK, but"
    next1 "lowers ACCURACY.@"
NoGuardDesc:
    db    "All moves will"
    next1 "hit.@"
TechnicianDesc:
    db    "Boosts the weaker"
    next1 "moves.@"
SuperLuckDesc:
    db    "Boosts critical"
    next1 "hit ratio.@"
UnawareDesc:
    db    "Ignores stat"
    next1 "changes.@"
DragonsMawDesc:
    db    "Boosts all DRAGON"
    next1 "moves.@"
TransistorDesc:
    db    "Boosts all ELEC-"
    next1 "TRIC moves.@"

; Simple gets its own category
SimpleDesc:
    db    "Doubles all stat"
    next1 "changes.@"

; Stat reduction protection
ClearBodyDesc:
WhiteSmokeDesc:
    db    "Protects against"
    next1 "stat loss.@"
KeenEyeDesc:
    db    "Protects against"
    next1 "ACCURACY loss.@"
HyperCutterDesc:
    db    "Protects against"
    next1 "ATTACK loss.@"

; Escape and switch related
SuctionCupsDesc:
    db    "Negates switching"
    next1 "out from moves.@"
ShadowTagDesc:
ArenaTrapDesc:
    db    "Prevents escape"
    next1 "from battle.@"
NaturalCureDesc:
    db    "Cures statuses by"
    next1 "switching out.@"
MagnetPullDesc:
    db    "Prevents escape of"
    next1 "STEEL foes.@"
RunAwayDesc:
    db    "Guarantees escape"
    next1 "from battles.@"

; Status triggered
SynchronizeDesc:
    db    "Shares inflicted"
    next1 "status effects.@"
GutsDesc:
    db    "Boosts ATTACK if"
    next1 "status afflicted.@"
MarvelScaleDesc:
    db    "Boosts DEFENSE if"
    next1 "status afflicted.@"
TangledFeetDesc:
    db    "Boosts EVASIVENESS"
    next1 "if CONFUSED.@"
QuickFeetDesc:
    db    "Boosts SPEED if"
    next1 "status afflicted.@"
MagicGuardDesc:
    db    "Protects against"
    next1 "indirect damage.@"
BadDreamsDesc:
    db    "Inflicts damage to"
    next1 "SLEEPING #MON.@"

; HP Triggered
OvergrowDesc:
    db    "Boosts GRASS moves"
    next1 "in a pinch.@"
BlazeDesc:
    db    "Boosts FIRE moves"
    next1 "in a pinch.@"
TorrentDesc:
    db    "Boosts WATER moves"
    next1 "in a pinch.@"
SwarmDesc:
    db    "Boosts BUG moves"
    next1 "in a pinch.@"
GluttonyDesc:
    db    "Consumes BERRIES"
    next1 "early.@"
AngerPointDesc:
    db    "Maxes ATTACK on"
    next1 "critical-hit.@"
AftermathDesc:
    db    "Damages attackers"
    next1 "upon fainting.@"

; Item Based
StickyHoldDesc:
    db    "Protects against"
    next1 "ITEM theft.@"
UnburdenDesc:
    db    "Boosts SPEED upon"
    next1 "held item usage.@"
KlutzDesc:
    db    "Cannot use held"
    next1 "items.@"

; Stall gets its own category
StallDesc:
    db    "Always will move"
    next1 "last.@"
