extends Node2D

var mouse_pos: Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	mouse_pos = get_viewport().get_mouse_position()
	position = mouse_pos

func _input(event):
	if event is InputEventMouseButton:
		if (event.pressed):
			print(event.button_index)
			
