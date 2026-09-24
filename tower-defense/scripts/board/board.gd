class_name Board
extends Node3D

@export var rows: int = 4
@export var columns: int = 6

@export var cell_size: float = 1.5

@export var build_cell_scene: PackedScene


func _ready() -> void:
	create_grid()


func create_grid() -> void:
	for row in range(rows):
		for column in range(columns):
			create_cell(row, column)


func create_cell(row: int, column: int) -> void:
	var cell := build_cell_scene.instantiate() as BuildCell

	add_child(cell)

	cell.position = Vector3(
		column * cell_size,
		0.2,
		row * cell_size
	)
