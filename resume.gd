extends Button



func _on_pressed() -> void:
	print("resume")
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
