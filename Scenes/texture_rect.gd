extends TextureRect
var toggleinfo = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("toggle info"):
		if toggleinfo == false:
			toggleinfo = true
		elif toggleinfo == true:
			toggleinfo = false
	visible = toggleinfo
