extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _input(event):
	if event is InputEventMouseButton:
		print("mouse button event at ", event.position)
		get_tree().change_scene("res://Level_01.tscn")
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
