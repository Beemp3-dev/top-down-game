extends Label

@onready var label: Label = $"."

func _process(_delta: float) -> void:
	label.text = ("Speed: " + str(Player.speed))
