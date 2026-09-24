class_name BuildCell
extends Node3D

var occupied: bool = false
var placed_tower: Node3D = null


func can_build() -> bool:
	return not occupied


func set_tower(tower: Node3D) -> void:
	placed_tower = tower
	occupied = true
