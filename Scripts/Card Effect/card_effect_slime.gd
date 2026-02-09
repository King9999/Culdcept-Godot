"""
Card Effect: Slime
When Slime dies, the game checks how many times it died. If the count is less than 3, Slime revives with 50% less max Health
and Attack Power.
"""

extends CardEffect
class_name CardEffect_Slime
#extends Resource

@export var death_count: int			#tracks how many times Slime has been killed.
var slime: Minion

func _ready():
	death_count = 0
	
func activate_card_effect(active_minion: Minion, opponent: Minion = null) -> Minion:
	death_count += 1
	print("Slime has died {0} times!".format([death_count]))
	if death_count < 3:
		#revive slime with 50% less HP and AP
		active_minion.max_hit_points /= 2
		active_minion.current_hit_points = active_minion.max_hit_points
		active_minion.attack_power /= 2
		print("Slime has revived.")
		return active_minion
	else:
		return null
