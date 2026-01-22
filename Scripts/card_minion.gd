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

#item restrictions prevent a minion from using item types.
@export_group("Item Restrictions", "item_")
@export var item_cannot_use_weapon: bool
@export var item_cannot_use_armour: bool
@export var item_cannot_use_jewellery: bool
@export var item_cannot_use_scroll: bool

#This also means that a land cannot be transformed to an element a minion can't inhabit.
#A minion also cannot invade a land they can't inhabit.
@export_group("Land Restrictions", "land_")
@export var land_cannot_enter_fire: bool
@export var land_cannot_enter_water: bool
@export var land_cannot_enter_earth: bool
@export var land_cannot_enter_air: bool

@export_group("Innate Ability", "innate_")
@export var innate_spellproof: bool
@export var innate_attack_last: bool
@export var innate_attack_first: bool
@export var innate_regenerates: bool
@export var innate_cannot_heal: bool

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
