"""
This is the singleton. Will be used for whenever the game needs access to something globally, typically minion data.
"""

extends Node

var game_manager = self
@export var active_minion: Minion	#used by resources to get/update a minion's data.
