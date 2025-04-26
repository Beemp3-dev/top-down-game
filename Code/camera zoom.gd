extends Camera2D

const maxzoom = 1.2
const minzoom = 0.6

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("scroll up"):
		zoom += Vector2(0.1, 0.1)
	elif Input.is_action_just_pressed("scroll down"):
		zoom -= Vector2(0.1, 0.1)
	
	if zoom > Vector2(maxzoom, maxzoom):
		zoom = Vector2(maxzoom, maxzoom)
	elif zoom < Vector2(minzoom, minzoom):
		zoom = Vector2(minzoom, minzoom)
