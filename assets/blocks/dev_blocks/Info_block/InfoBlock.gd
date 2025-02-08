extends BaseBlock
class_name DevInfoBlock

@onready var text_are = $Sprite2D/Label

@onready var dropable = $Dorpable

func _ready():
	dropable.set_func = set_child
	update_label()

func update_label():
	if child_block != null:
		text_are.text = child_block.get_info()
	else:
		text_are.text = "null"

func set_child(child: BaseBlock):
	child_block = child
	update_label()
