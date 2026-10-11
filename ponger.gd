extends CharacterBody2D

@export var speed: float = 400

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("Up"):
		velocity.y = -speed
		print("GOINGUP")

	if Input.is_action_pressed("Down"):
		velocity.y = speed
		print("GOINGDOWNW")
		
	move_and_slide()
