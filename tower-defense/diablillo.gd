extends Node3D
@onready var animation_d= $Diablillo/AnimationPlayer

func _ready():
	animation_d.play("Idle_diablillo")
	pass 

func _process(delta):
	pass
