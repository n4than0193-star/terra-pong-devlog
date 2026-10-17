extends Area2D

func _on_body_entered(body: Node2D) -> void:
	GlobalVariables.score_2 += 1
	print(GlobalVariables.score_2)
	get_tree().reload_current_scene()
