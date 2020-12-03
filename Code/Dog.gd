extends StaticBody2D


var DialogDog = preload("res://Interraction/Dialog.tscn")


func _ready():
	$AnimatedSprite.play("default")


func interact():
	var d = DialogDog.instance()
	get_parent().add_child(d)
	
	
