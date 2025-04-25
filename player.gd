extends CharacterBody2D

var speed = 500

func _physics_process(delta):
	var velocity = Vector2.ZERO
	velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = velocity.normalized() * speed
	look_at(get_global_mouse_position())

	self.velocity = velocity  # Use the built-in velocity property
	move_and_slide()  # No arguments in Godot 4
