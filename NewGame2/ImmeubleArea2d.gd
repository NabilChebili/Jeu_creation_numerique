extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func stop_anim():
	print("coucou")
	$AnimatedSprite.stop() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_shape_entered(area_id, area, area_shape, self_shape):
	stop_anim()
