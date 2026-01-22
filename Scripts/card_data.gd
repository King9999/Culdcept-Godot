"""
Resource for all cards in the game
"""

extends Resource
class_name CardData

enum CardType { MINION, SPELL, EQUIPMENT }
@export var card_face: CompressedTexture2D
@export var card_id: int			#used by game to set up cards from JSON file
@export var card_type: CardType
@export var card_name: String
enum Rarity { COMMON, RARE, VERY_RARE, LEGENDARY }
@export var card_rarity: Rarity
@export var flavour_text: String 	#can be anything, such as lore


@export_group("Card Costs")
@export var magic_cost: int			#base cost for all cards. Does not include land or card costs.
@export var land_cost_fire: int
@export var land_cost_earth: int	#amount of lands a player needs to own to play a card.
@export var land_cost_water: int
@export var land_cost_air: int
@export var card_cost: int		#amount of cards that need to be discarded to play a card

#conditional card effects
@export_group("Card Effect Triggers", "card_effect_")
@export var card_effect_start_of_combat: CardEffect
@export var card_effect_end_of_combat: CardEffect
@export var card_effect_start_of_player_turn: CardEffect
@export var card_effect_end_of_player_turn: CardEffect


@export_group("AI Behaviour")
@export var ai_card_behaviour: CardBehaviour
@export var weight: int		#determines the likelihood of the card being played.

#This function executes whenever a CPU player wants to play a card. It checks the situation to see
#if the card is suitable.	
func ai_behaviour():
	pass
