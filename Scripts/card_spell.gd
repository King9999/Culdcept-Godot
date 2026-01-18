"""
Spells are single-target cards that apply an effect to a minion, player, or land. Cannot
be used in combat.
"""

extends CardData
class_name Spell

enum Target { PLAYER, MINION, LAND }
@export var target: Target
#@export_group("Targets", "target_")
#@export var target_minion: bool
#@export var target_player: bool
#@export var target_land: bool

@export var spell_damage: int
@export var spell_heal_amount: int

#TODO: This must take a parameter once 
func activate_spell(target: CardType):
	pass
