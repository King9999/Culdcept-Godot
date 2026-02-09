extends StaticBody3D
class_name Card

@export var face: MeshInstance3D
@export var card_data: CardData
@export var card_face: StandardMaterial3D
@export var card_type: CardData.CardType
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_card_data(data: CardData):
	face.material_override.albedo_texture = data.card_face
	card_type = data.card_type
