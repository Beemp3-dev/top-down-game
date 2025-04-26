extends CharacterBody2D

var speed = 500
var sprint = 300

func _physics_process(_delta): #Movement
	var horizontal = Input.get_action_strength("right") - Input.get_action_strength("left")
	var lat = Input.get_action_strength("right") - Input.get_action_strength("left")
	velocity = Vector2.ZERO
	velocity.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	velocity.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	velocity = velocity.normalized() * speed
	look_at(get_global_mouse_position())
	
	if Input.get_connected_joypads().is_empty():
		print ("e")
	elif !Input.get_connected_joypads().is_empty():
		if Input.is_action_pressed("sprint"): #Sprint
			speed = 500
			speed += sprint
		else:
			speed = 500
	
	self.velocity = velocity  # Use the built-in velocity property
	move_and_slide()  # No arguments in Godot 4
