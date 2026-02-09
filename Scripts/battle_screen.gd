"""
This is the node for all things related to combat.
"""

extends Node

@export var attacker_minion: Minion
@export var defender_minion: Minion
@export var card_attacker: Card
@export var card_defender: Card
@export var battle_background: Image

#HUD
@onready var attacker_hp: Label = $"HUD/Attacker HP"
@onready var attacker_ap: Label = $"HUD/Attacker AP"
@onready var defender_hp: Label = $"HUD/Defender HP"
@onready var defender_ap: Label = $"HUD/Defender AP"

#player decks
@export var deck_attacker: Array[Card]
@export var deck_defender: Array[Card]

#combat phases
enum BattlePhase 
{
	CHOOSE_CARD_ATTACKER,			##Players select cards to play at this phase
	CHOOSE_CARD_DEFENDER,
	REVEAL_CARDS,					##This phase is skipped if neither player played a card
	RESOLVE_CARD_EFFECTS,
	RESOLVE_LAND_EFFECTS,
	COMBAT_ATTACKER,
	COMBAT_DEFENDER					
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	card_attacker.set_card_data(attacker_minion)
	card_defender.set_card_data(defender_minion)
	#print(attacker_minion.attack_power)
	
	#set up a test battle
	print("{0} vs. {1}".format([attacker_minion.card_name, defender_minion.card_name]))
	print("HP:{0}/{1}   HP:{2}/{3}".format([attacker_minion.current_hit_points, attacker_minion.max_hit_points, \
		defender_minion.current_hit_points, defender_minion.max_hit_points]))
	await get_tree().create_timer(1).timeout
	print("{0} attacks first!".format([attacker_minion.card_name]))
	await get_tree().create_timer(1).timeout
	
	#calculate damage
	var attacker_damage: int = attacker_minion.attack_power
	print("{0} deals {1} damage to {2}.".format([attacker_minion.card_name, attacker_minion.attack_power, defender_minion.card_name]))
	
	#reduce defender health
	defender_minion.current_hit_points -= attacker_minion.attack_power
	if (defender_minion.current_hit_points < 0):
		defender_minion.current_hit_points = 0
	await get_tree().create_timer(1).timeout
	print("HP:{0}/{1}   HP:{2}/{3}".format([attacker_minion.current_hit_points, attacker_minion.max_hit_points, \
		defender_minion.current_hit_points, defender_minion.max_hit_points]))
	
	#check for on death effect. TODO: This would be a signal
	await get_tree().create_timer(1).timeout
	if (defender_minion.current_hit_points <= 0): 
		if defender_minion.card_effect_minion_dies != null:
			print("{0} is dead and has triggered an on-death effect".format([defender_minion.card_name]))
			#game manager gets reference to minion
			var gm:GameManager = GameManager.game_manager
			gm.active_minion = defender_minion
			print("Active minion is {0}".format([gm.active_minion.card_name]))
			defender_minion = defender_minion.card_effect_minion_dies.activate_card_effect(gm.active_minion)
			#defender_minion = gm.active_minion
		else:
			print("{0} is dead.".format([defender_minion.card_name]))
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
