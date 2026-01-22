"""
Scrolls are spells that are used by minions. They have a one-time use, and replace a minion's
attack power with scroll power. Scroll power bypasses land defenses, reducing a minion's HP directly.
"""

extends CardData
class_name Scroll

@export var scroll_power: int		#replaces a minion's attack power for the duration of combat.

func activate_scroll_effect():
	pass
