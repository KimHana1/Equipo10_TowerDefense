class_name Incubadora
extends Node3D

@onready var camera: Camera3D = $Camera3D
@onready var slots: Board = $SlotsIncubadora


func _ready() -> void:
	apuntar_camara()


func apuntar_camara() -> void:
	# la grilla arranca en (0,0), así que el cntro es la  mitad del tamaoño
	var centro := Vector3(
		(slots.columns - 1) * slots.cell_size / 5.0,
		0.0,
		(slots.rows - 1) * slots.cell_size / 5.0
	)
	camera.position = centro + Vector3(0.0, 6.0, 8.0)
	camera.look_at(centro)
