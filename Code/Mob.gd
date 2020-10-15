extends RigidBody2D

export var min_speed = 150  # Minimum speed range.
export var max_speed = 250  # Maximum speed range.
var velocity = Vector2()
export (int) var run_speed = 300

func _physics_process(delta):
	$AnimatedSprite.play("default") # Replace with function body.

func hit():
	velocity.x += run_speed
	$AnimatedSprite.play("Damaged")

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
