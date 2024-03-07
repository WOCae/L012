extends Area2D

@export var speed = 5

func _process(delta):

	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1 # moveup
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1 # movedown
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1 # moveleft
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1 # moveright

	position += velocity.normalized() * speed
