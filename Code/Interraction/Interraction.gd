extends Area2D


func _on_Bubble_body_shape_entered(body_id, body, body_shape, area_shape):
	self.visible = true # Replace with function body.


func _on_Bubble_body_shape_exited(body_id, body, body_shape, area_shape):
	self.visible = false # Replace with function body.
