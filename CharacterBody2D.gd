extends CharacterBody2D


func _process(delta):if Global.Hareket:
	if Oyuncu!=null:
		velocity = position.direction_to(Oyuncu.position) * Speed
	else:
		velocity = Vector2.ZERO
		
	move_and_slide()
