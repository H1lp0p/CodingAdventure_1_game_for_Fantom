extends Node
class_name dropable

var set_func : Callable

@onready var drop_cords = $drop_cords

func on_hover(): pass

func get_drop(object: BaseBlock):
	if (set_func != null):
		set_func.call(object)
		object.move(drop_cords.global_position)


func _on_area_2d_area_entered(area):
	if area.get_parent() is draggable:
		(area.get_parent() as draggable).cur_dropable_place = self


func _on_area_2d_area_exited(area):
	if area.get_parent() is draggable:
		if (area.get_parent() as draggable).cur_dropable_place == self:
			(area.get_parent() as draggable).cur_dropable_place = null
