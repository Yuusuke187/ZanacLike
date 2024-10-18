extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var enemy_scene = preload("res://First_Enemy.tscn")
var timer = 0.0
var spawn_rate = 2.0

func spawn_timer(delta):
	timer += delta
	if timer > spawn_rate:
		timer = 0
		# spawn_enemy()

func spawn_enemy():
	var enemy = enemy_scene.instance()
	# I still need to figure out how Vector2 works
	enemy.position = Vector2(rand_range(0, screen_width), -50)
	get_parent().add_child(enemy)
