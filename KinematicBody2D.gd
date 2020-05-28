extends KinematicBody2D

var motion = Vector2()


func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 200
	elif Input.is_action_pressed("ui_left"):
		motion.x = -200
	else:
		motion.x = 0
		
	if Input.is_action_pressed("ui_down"):
		motion.y = 200
	elif Input.is_action_pressed("ui_up"):
		motion.y = -200
	else:
		motion.y = 0
		
	#if Input.is_action_pressed("ui_jump"):
	#	initialHeight = motion.y
	#	jumpHeight = 500
	#	if motion.y < (initalHeight + jumpHeight):
	#		motion.y = jumpHeight
	
	move_and_slide(motion)

	
	pass
