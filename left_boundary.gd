extends Area2D

func _on_body_entered(body: Node2D) -> void:
	GlobalVariables.score_1 += 1
	print(GlobalVariables.score_1)
	get_tree().reload_current_scene()
