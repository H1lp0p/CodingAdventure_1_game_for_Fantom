extends Node2D
class_name BaseBlock

var parrent_block : BaseBlock = null
var child_block: BaseBlock = null

signal end_execution

func execute() -> void: 
	goto_next_block()

func set_child(child: BaseBlock) -> void:
	child_block = child

func set_parrent(parrent: BaseBlock) -> void:
	parrent_block = parrent

func get_info() -> String: return "Baseblock"

func on_execution_end(): 
	end_execution.emit()

func goto_next_block():
	if (child_block != null):
		child_block.execute()
		on_execution_end()

func move(new_pos: Vector2):
	if (child_block != null):
		var now_delta = child_block.global_position - global_position
		child_block.move(new_pos + now_delta)
		#print(name, global_position, child_block.name, child_block.global_position, now_delta)
	global_position = new_pos
