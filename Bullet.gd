extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _shoot_bullet():
	var bullet = Bullet.instance # Is this like using self.* in Python?
	bullet.position = position
	bullet.rotation = rotation
	
	get_parent().add_child(bullet)
		
