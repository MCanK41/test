extends Sprite2D

const bulletpath = preload("res://bullet.tscn")

func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		shoot()
	look_at(get_global_mouse_position())


func shoot():
	var bullet = bulletpath.instantiate()
	get_parent().add_child(bullet)
	bullet.position = $Marker2D.global_position
