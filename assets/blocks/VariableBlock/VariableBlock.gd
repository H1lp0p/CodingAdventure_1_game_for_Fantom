extends BaseBlock
class_name IntBlock

const label_format_text = "{0} = {1}"

@onready var label = $Sprite2D/Label

@export var _variable_name: String:
	get:
		return _variable_name

@export var _value: int

func get_val() -> int:
	return _value

func update_val(num: int):
	if (num != _value):
		_value = num
		update_label()

func update_label():
	label.text = label_format_text.format([_variable_name, str(_value)])

func _ready():
	update_label()
	print(label.text)

func get_info() -> String: return "class: IntBlock\n" + "variable_name " + _variable_name + "\nValue = " + str(_value)
