"""
Minion card. Typically attacks or defends against other minions
"""

extends CardData
class_name Minion
enum MinionElement { FIRE, WATER, EARTH, AIR, NEUTRAL }
@export var element: MinionElement
@export var max_hit_points: float
@export var current_hit_points: float
@export var attack_power: float

#critical vs element. Critical damage does 50% (1.5x) more damage against an element.
@export_group("Criticals", "critical_hit_")
@export var critical_hit_fire: bool
@export var critical_hit_water: bool
@export var critical_hit_earth: bool
@export var critical_hit_air: bool

#nullify element. If true, minion does not take any damage from the element and cannot be targeted.
@export_group("Nullify Element", "nullify_")
@export var nullify_fire: bool
@export var nullify_water: bool
@export var nullify_earth: bool
@export var nullify_air: bool

#pierce element. If true, minion bypasses land defense vs element.
@export_group("Pierce Element", "pierce_")
@export var pierce_fire: bool
@export var pierce_water: bool
@export var pierce_earth: bool
@export var pierce_air: bool

func _ready() -> void:
	current_hit_points = max_hit_points
