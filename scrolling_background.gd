extends Sprite2D

var scroll_speed = 30

func _process(delta):
	position.y += scroll_speed * delta
	
	# Reset background position when goes outside of the screen
	if position.y >= 224:
		position.y = 0
		
