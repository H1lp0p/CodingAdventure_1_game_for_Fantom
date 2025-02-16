extends BaseBlock

@export var direction: Vector2 = Vector2(0,1)

@export var object_to_move: Player

@onready var arrow = $Sprite2D/Arrow

func _ready():
	$Sprite2D/Label.text = "MovementBlock"
	arrow.rotation = direction.angle()

func execute():
	if (object_to_move != null and object_to_move is Player):
		print("Yes")
		object_to_move.setVelcity(direction)

func on_execution_end():
	if (object_to_move != null and object_to_move is Player):
		object_to_move.stop()
