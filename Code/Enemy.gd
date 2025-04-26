extends Node2D

const SPEED = 250
const collide = 64  # Distance enemy stops chasing

func _process(delta):
	var direction = Player.position - position
	var distance_to_player = direction.length()
	
	if distance_to_player > collide:
		direction = direction.normalized() 
		position += direction * SPEED * delta
		look_at(Player.position)
	
	if distance_to_player < collide or distance_to_player == collide:
		InfoChart.temp -= 25
