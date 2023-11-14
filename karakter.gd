extends CharacterBody2D


@export var speed = 200
@export var friction = 0.1
@export var acceleration = 0.7

func get_input():
	var input = Vector2()
	if Input.is_action_pressed('right'):
		input.x += 10
	if Input.is_action_pressed('left'):
		input.x -= 10
	if Input.is_action_pressed('down'):
		input.y += 10
	if Input.is_action_pressed('up'):
		input.y -= 10
	return input

func _physics_process(delta):
	var direction = get_input()
	if direction.length() > 0:
		velocity = velocity.lerp(direction.normalized() * speed, acceleration)
	else:
		velocity = velocity.lerp(Vector2.ZERO, friction)
	move_and_slide()

