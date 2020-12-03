extends KinematicBody2D

export (int) var run_speed = 300
export (int) var jump_speed = -800
export (int) var gravity = 1400


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
#	var jump = Input.is_action_just_pressed('ui_select')
	var jump = Input.is_action_pressed('Jump')
	var Talk = Input.is_action_just_pressed('Talk')
	var Interact = Input.is_action_just_pressed('Interact')

	if jump && is_on_floor():
		if is_on_floor():
			print(is_on_floor())
			$AnimatedSprite.play("Still2")
		velocity.y = jump_speed

	elif right :
		$AnimatedSprite.play("run_right2")
		velocity.x += run_speed

	elif jump && is_on_floor() && right:
		while not is_on_floor():
			$AnimatedSprite.play("Still2")
		velocity.x += run_speed
		velocity.y = jump_speed

	elif left :
		$AnimatedSprite.play("run_left2")
		velocity.x -= run_speed


	elif jump and is_on_floor() && left:
		while not is_on_floor():
			$AnimatedSprite.play("Still2")
		velocity.x += run_speed
		velocity.y = jump_speed


	elif Interact:
		if $RayCast2D.is_colliding():
			var collider = $RayCast2D.get_collider()
			if collider.is_in_group("Interactable"):
				collider.interact()


	else:
		$AnimatedSprite.play("Still2")



