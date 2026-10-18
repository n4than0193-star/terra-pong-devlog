extends Node2D

func _process(delta: float) -> void:
	$Bg/AnimationPlayer.play("main_menu")

func _on_start_pressed() -> void:
	SceneTransition.change_scene("res://Scenes/game.tscn")

func _on_options_pressed() -> void:
	SceneTransition.change_scene("res://Scenes/options.tscn")
	
func _on_quit_pressed() -> void:
	get_tree().quit()
