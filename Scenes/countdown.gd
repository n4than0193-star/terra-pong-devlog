extends AnimatedSprite2D

func _ready() -> void:
	start_countdown()

func start_countdown() -> void:

	GlobalVariables.game_active = false
	
	if has_node("../Ball"):
		get_node("../Ball").position = Vector2(576, 324) 
	
	frame = 0
	await get_tree().create_timer(1.0).timeout
	
	frame = 1
	await get_tree().create_timer(1.0).timeout
	
	frame = 2
	await get_tree().create_timer(1.0).timeout
	

	frame = 3 
	GlobalVariables.game_active = true
