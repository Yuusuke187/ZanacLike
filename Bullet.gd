extends RigidBody2D

func _shoot_bullet():
	var bullet = Bullet.instance # Is this like using self.* in Python?
	bullet.position = position
	bullet.rotation = rotation
	
	get_parent().add_child(bullet)
		
