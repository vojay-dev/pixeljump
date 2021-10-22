extends Node2D



func _on_Area2D_body_entered(body):
	get_tree().reload_current_scene()


func _on_Goal_body_entered(body):
	if body is Player:
		get_tree().reload_current_scene()
