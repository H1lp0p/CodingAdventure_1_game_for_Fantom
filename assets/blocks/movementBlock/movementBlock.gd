extends BaseBlock

@export var direction: Vector2 = Vector2(0,1)

@export var object_to_move: Player

func execute():
	if (object_to_move != null and object_to_move is Player):
		print("Yes")
		object_to_move.setVelcity(direction)

func releas():
	if (object_to_move != null and object_to_move is Player):
		object_to_move.stop()
