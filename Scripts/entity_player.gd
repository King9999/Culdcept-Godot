"""
The Player entity is player-controlled, either by humans or the CPU.
"""

extends Entity
class_name Player

@export var curent_magic_amount: int #amount of magic that can be spent.
@export var magic_total: int		#accumulated amount of magic. This value does not decrease
@export var active_player: bool		#if true, it's this player's turn.
@export var cpu_player: bool

@export_group("Player Deck") 
@export var deck: Array[CardData]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
