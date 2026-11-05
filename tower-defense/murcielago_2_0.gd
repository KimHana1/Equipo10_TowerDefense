extends Node3D
@onready var animation_m = $AnimationPlayer


func _ready() -> void:
	animation_m.play("Idle_mur")
	pass

func _process(delta):
	pass
