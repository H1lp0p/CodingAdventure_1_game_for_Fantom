extends BaseBlock
class_name InputTriggerBlock

@export var key_code: Key

@onready var dropable = $Dorpable

func _ready():
	dropable.set_func = set_child

func _input(event):
	if Input.is_key_pressed(key_code):
		execute()


func execute():
	if child_block != null:
		print("!")
		child_block.execute()


func get_info() -> String: return "class: InputTriggerBlock\n" + "Key_kode = " + str(key_code) 
