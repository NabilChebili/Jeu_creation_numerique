extends KinematicBody2D

export (int) var run_speed = 300
export (int) var jump_speed = -800
export (int) var gravity = 1200


var Bullet = preload("res://Bullet.tscn")
var velocity = Vector2()
var jumping = false


func _physics_process(delta):
	get_input()
#	var dir = get_global_mouse_position() - global_position
	velocity.y += gravity * delta
#	if jumping and is_on_floor():
#		jumping = false
#	if dir.length() > 5:
#		rotation = dir.angle()
	velocity = move_and_slide(velocity, Vector2(0, -1))


func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var jump = Input.is_action_just_pressed('ui_select')
	var shoot = Input.is_action_just_pressed('shoot')

	if jump and is_on_floor():
#		jumping = true
		$AnimatedSprite.play("Jump")
		velocity.y = jump_speed

	elif right and not jump :
		$AnimatedSprite.play("run_right")
		velocity.x += run_speed

	elif left and not jump :
		$AnimatedSprite.play("run_left")
		velocity.x -= run_speed

	elif right and jump :
		$AnimatedSprite.play("jump_right")
		velocity.x += run_speed
		velocity.y = jump_speed

	elif left and not jump:
		$AnimatedSprite.play("run_left")
		velocity.x -= run_speed
		velocity.y = jump_speed

	elif shoot :
		$AnimatedSprite.play("Shooting")
		shoot()

	else:
		$AnimatedSprite.play("Still")

func shoot():
	var b = Bullet.instance()
	b.start($Position2D.global_position)
	get_parent().add_child(b)





