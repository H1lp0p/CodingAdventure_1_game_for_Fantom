extends CharacterBody2D
class_name Player

@export var speed = 5
var direction : Vector2 = Vector2(0,0)



func setVelcity(new_vel: Vector2):
	if (new_vel != velocity):
		direction = new_vel.normalized()

func get_vel():
	return direction

func stop():
	direction = Vector2(0,0)
	velocity = direction


func _physics_process(delta):
	velocity = direction * speed
	print(velocity)
	move_and_slide()
