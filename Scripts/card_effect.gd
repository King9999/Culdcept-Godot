"""
card effects are abilities that occur when certain conditions are met.
"""

extends Resource
class_name CardEffect

##Activate a card's ability. The parameters may not always be a factor when
##effects are resolved.[br][br]
##[b]Method Parameters[/b][br]
##[member attacker]: the minion who is activating the card effect.[br]
##[member defender]: the target of the card effect.	
func activate_card_effect(attacker: Minion, defender: Minion):
	pass
