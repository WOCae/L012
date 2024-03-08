extends Area2D

class_name Bullet

# 移動方向
var velocity = Vector2()

func setPos(x, y):
	position = Vector2(x, y)
	
# 開始
func start(deg, speed):
	velocity.x = speed * cos(deg_to_rad(deg))
	velocity.y = speed * -sin(deg_to_rad(deg))


func _physics_process(delta):
	position += velocity * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	pass # Replace with function body.
