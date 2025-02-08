extends Node2D
class_name draggable

var is_dragged = false

var hovered: bool = false

var delta_vector: Vector2

var object: Node2D

var cur_dropable_place: dropable

func _ready():
	assert(self.get_parent() is BaseBlock, "Parent node of draggable must be BaseBlock")
	object = self.get_parent()

func _process(delta):
	if is_dragged:
		object.move(get_viewport().get_mouse_position() - delta_vector)

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if is_dragged and !event.pressed:
			drop(event)
		elif !is_dragged and event.pressed and hovered:
			drag()

func drag():
	if (object != null):
		delta_vector = get_viewport().get_mouse_position() - object.global_position
		is_dragged = true
	else:
		is_dragged = false

func drop(event):
	if is_dragged:
		if cur_dropable_place != null:
			cur_dropable_place.get_drop(self.get_parent())
		is_dragged = false

func _on_area_2d_mouse_entered():
	hovered = true

func _on_area_2d_mouse_exited():
	hovered = false
