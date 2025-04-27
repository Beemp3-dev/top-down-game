extends Label
var temp = 100
@onready var label: Label = $"."
func _process(_delta: float) -> void:
	label.text = (
	"Speed: " + str(Player.speed) + "
	Sprint: " + str(Input.is_action_pressed("sprint")) + "
	Rotation: " + str(Player.rotation) + "
	Health: " + str(Player.health))
