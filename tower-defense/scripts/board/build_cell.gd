class_name BuildCell
extends Node3D

signal cell_clicked(cell: BuildCell)

var occupied: bool = false
var placed_tower: Node3D = null

@onready var area: Area3D = $Area3D
@onready var mesh: MeshInstance3D = $Mesh


func _ready() -> void:
	area.input_event.connect(_on_input_event)


func _on_input_event(_camera: Node, event: InputEvent, _pos: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		cell_clicked.emit(self)


func can_build() -> bool:
	return not occupied


func set_tower(tower: Node3D) -> void:
	placed_tower = tower
	occupied = true


func resaltar(activo: bool) -> void:
	if activo:
		var material := StandardMaterial3D.new()
		material.albedo_color = Color.SEASHELL
		mesh.material_override = material
	else:
		mesh.material_override = null
