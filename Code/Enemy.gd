extends Node2D

const SPEED = 250
const collide = 64  # Distance enemy stops chasing

func _process(delta):
	var direction = Player.position - position
	var distance_to_player = direction.length()
	
	if distance_to_player > collide:
		direction = direction.normalized() 
		position += direction * SPEED * delta
	
	if distance_to_player < collide or distance_to_player == collide:
		Player.health -= 25
		await get_tree().create_timer(10).timeout
