extends CharacterBody2D

@export var speed: float = 400

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("Up2"):
		velocity.y = -speed
		for i in range(20):
			velocity.y = -speed + (400/(i+1))

	if Input.is_action_pressed("Down2"):
		velocity.y = speed
		for i in range(20):
			velocity.y = speed - (400/(i+1))
				
	move_and_slide()
