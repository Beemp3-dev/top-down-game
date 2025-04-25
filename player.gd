extends CharacterBody2D

var speed = 500
var sprint = 0
func _physics_process(_delta):
	speed += sprint
	if Input.is_action_pressed("sprint"):
		sprint = 300
	else:
		sprint = 0
	@warning_ignore("shadowed_variable_base_class")
	var velocity = Vector2.ZERO
	velocity.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	velocity.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	velocity = velocity.normalized() * speed
	look_at(get_global_mouse_position())

	self.velocity = velocity  # Use the built-in velocity property
	move_and_slide()  # No arguments in Godot 4
