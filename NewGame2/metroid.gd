extends RigidBody2D
export (int) var gravity = 1200
export (int) var run_speed = 300
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	velocity.y = 0
	$AnimatedSprite.play("idle") # Replace with function body.

func hit():
	velocity.x += run_speed
	$AnimatedSprite.play("Damaged")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
