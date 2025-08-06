extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_rigth", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	#condition for idle and animation when user walk using keyboard
	if velocity.length() > 0.0:
		#first of all you can use this, but this will get your game little slow to rendering
		get_node("HappyBoo").play.walk.animation()
		#or you can use $HappyBoo.play.walk.animation() it makes more faster but only works in this scene, im prefer use this
		#$HappyBoo.play.walk.animation()
	else:
		get_node("HappyBoo").play.idle.animation()
		#$HappyBoo.play.idle.animation()
		
