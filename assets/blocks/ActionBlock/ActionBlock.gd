extends BaseBlock
class_name ActionBlock

@export var inc: int = 1

@onready var dropable = $Dorpable

func _ready():
	dropable.set_func = set_child


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func execute():
	if (child_block != null and child_block is IntBlock):
		child_block.update_val((child_block as IntBlock).get_val() + inc)

func get_info() -> String: return "class: ACtionBlock (Increment)\n" + "increment = " + str(inc) 
