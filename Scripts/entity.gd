"""
This is the parent object for all objects on the board. All entities have art/animations. Lands
are also entities. Cards are not entities.
"""

extends Node
class_name Entity
enum EntityType { PLAYER, MINION, LAND }
@export var entity_type: EntityType

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
