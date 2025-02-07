extends CharacterBody2D


const SPEED = 200.0
# const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Gravity doesn't apply in a shmup so we are removing this
	# # Add the gravity.
	# if not is_on_floor():
	# 	velocity += get_gravity() * delta

	# Commenting everything else out - this is platformer code
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	#	#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()

	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_just_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_just_pressed("ui_up"):
		velocity.y += 1
	if Input.is_action_just_pressed("ui_down"):
		velocity.y -= 1
	velocity = velocity.normalized() * SPEED
	move_and_slide()
	
	
	
