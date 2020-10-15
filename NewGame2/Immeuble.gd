extends StaticBody2D
export (int) var gravity = 1200
export (int) var run_speed = 300
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func stop_anim():
	$AnimatedSprite.stop("default") # Replace with function body.

