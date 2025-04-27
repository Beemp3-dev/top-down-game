extends CanvasLayer

var toggleinfo = true

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("toggle info"):
		if toggleinfo == false:
			toggleinfo = true
		elif toggleinfo == true:
			toggleinfo = false
	visible = toggleinfo
