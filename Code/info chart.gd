extends Label
var temp = 100
var toggleinfo = true
@onready var label: Label = $"."

func _process(_delta: float) -> void:
	label.text = (
	"Speed: " + str(Player.speed) + "
	Sprint: " + str(Input.is_action_pressed("sprint")) + "
	Zoom: " + "
	Health: " + str(temp))
	
	if Input.is_action_just_pressed("toggle info"):
		if toggleinfo == false:
			toggleinfo = true
		elif toggleinfo == true:
			toggleinfo = false
	visible = toggleinfo
