extends Node2D


func _process(delta: float) -> void:
	$Bg/AnimationPlayer.play("bg")
