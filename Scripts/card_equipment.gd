"""
Equipment cards are used by minions to temporarily boost their stats or apply some other effect.
"""

extends CardData
class_name Equipment

enum EquipmentType { WEAPON, ARMOUR, JEWELLERY }
@export var equip_type: EquipmentType
@export_group("Stat Mods", "mod_")
@export var mod_hit_points: float
@export var mod_attack_power: float

#critical vs element. Critical damage does 50% (1.5x) more damage against an element.
@export_group("Apply Criticals", "critical_hit_")
@export var critical_hit_fire: bool
@export var critical_hit_water: bool
@export var critical_hit_earth: bool
@export var critical_hit_air: bool

#nullify element. If true, minion does not take any damage from the element and cannot be targeted.
@export_group("Apply Nullify Element", "nullify_")
@export var nullify_fire: bool
@export var nullify_water: bool
@export var nullify_earth: bool
@export var nullify_air: bool

#pierce element. If true, minion bypasses land defense vs element.
@export_group("Apply Pierce Element", "pierce_")
@export var pierce_fire: bool
@export var pierce_water: bool
@export var pierce_earth: bool
@export var pierce_air: bool

func _ready():
	card_type = CardType.EQUIPMENT #TODO: how to make a card default to a card type?
	
func apply_mods():
	pass

#any adjustments to stats or other effects must be removed when combat ends.
func remove_mods():
	pass
