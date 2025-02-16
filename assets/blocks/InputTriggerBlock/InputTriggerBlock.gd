extends BaseBlock
class_name InputTriggerBlock

@export var key_code: Key

@onready var dropable = $Dorpable

var _is_already_pressed: bool = false

func _ready():
	dropable.set_func = set_child

func _input(event):
	if Input.is_key_pressed(key_code):
		if  !_is_already_pressed:
			_is_already_pressed = true
			execute()
	else:
		if _is_already_pressed:
			_is_already_pressed = false
			release()

func execute():
	if child_block != null:
		print("!")
		child_block.execute()

func release():
	if child_block != null:
		child_block.releas()

func get_info() -> String: return "class: InputTriggerBlock\n" + "Key_kode = " + str(key_code) 
