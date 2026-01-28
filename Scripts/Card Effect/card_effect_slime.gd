"""
Card Effect: Slime
When Slime dies, the game checks how many times it died. If the count is less than 3, Slime revives with 50% less max Health
and Attack Power.
"""

extends CardEffect
#extends Resource

@export var death_count: int			#tracks how many times Slime has been killed.
#@onready var slime: Minion = get_parent()

func _init():
	death_count = 0
	#print("SlimeAttack Power: ", slime.attack_power)
