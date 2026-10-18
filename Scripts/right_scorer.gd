extends AnimatedSprite2D

func _process(_delta: float) -> void:
	frame = GlobalVariables.score_1
	
	if GlobalVariables.score_1 > 7:
		SceneTransition.change_scene("res://Scenes/main_menu.tscn")
