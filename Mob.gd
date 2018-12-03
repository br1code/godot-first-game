extends RigidBody2D

export (int) var min_speed
export (int) var max_speed

var mob_types = ["walk", "swim", "fly"]

func _ready():
	$AnimatedSprite.animation = get_random_element(mob_types)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func get_random_element(arr):
	return arr[randi() % arr.size()]

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
