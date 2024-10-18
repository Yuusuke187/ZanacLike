extends RigidBody2D

# Preload the Bullet script
var Bullet = preload("res://Bullet.tscn")

func _shoot_bullet():
	var bullet = Bullet.instance # Is this like using self.* in Python?
	bullet.position = position
	bullet.rotation = rotation
	
	get_parent().add_child(bullet)
		
