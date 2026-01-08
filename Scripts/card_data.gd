"""
Resource for all cards in the game
"""

extends Resource
class_name CardData

enum CardType { MINION, SPELL, SCROLL, EQUIPMENT, ENCHANTMENT }
@export var card_face: CompressedTexture2D
@export var card_id: int			#used by game to set up cards from JSON file
@export var card_type: CardType
@export var card_name: String
@export var flavour_text: String 	#can be anything, such as lore
@export var card_cost: int			#base cost for all cards. Does not include land or card costs.
@export var land_cost_fire: int
@export var land_cost_earth: int	#amount of lands a player needs to own to play a card.
@export var land_cost_water: int
@export var land_cost_air: int
@export var card_cost_card: int		#amount of cards that need to be discarded to play a card

#conditional card effects
@export var card_effect_start_of_combat: CardEffect
@export var card_effect_end_of_combat: CardEffect
@export var card_effect_start_of_player_turn: CardEffect
@export var card_effect_end_of_player_turn: CardEffect

func _ready():
	pass
