extends CharacterBody2D

@export var speed: float = 400.0

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("Up2"):
		velocity.y = -speed
	if Input.is_action_pressed("Down2"):
		velocity.y = speed
		
	move_and_slide()
	
	position.x = 9.0 
