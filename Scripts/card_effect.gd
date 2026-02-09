"""
card effects are abilities that occur when certain conditions are met.
"""

extends Resource
class_name CardEffect

##Activate a card's ability. The parameters may not always be a factor when
##effects are resolved.[br][br]
##[b]Method Parameters[/b][br]
##[member active_minion]: the minion that activated the effect. Usually comes from Game Manager (singleton)[br]
##[member opponent]: the target of the card effect, if applicable.
func activate_card_effect(active_minion: Minion, opponent: Minion = null) -> Minion:
	return null
