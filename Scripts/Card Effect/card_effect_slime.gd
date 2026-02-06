"""
Card Effect: Slime
When Slime dies, the game checks how many times it died. If the count is less than 3, Slime revives with 50% less max Health
and Attack Power.
"""

extends CardEffect
class_name CardEffect_Slime
#extends Resource

@export var death_count: int			#tracks how many times Slime has been killed.
#@onready var slime: Minion = get_parent()

func _init():
	death_count = 0
	#activate_card_effect(slime, slime)
	#print("SlimeAttack Power: ", slime.attack_power)
