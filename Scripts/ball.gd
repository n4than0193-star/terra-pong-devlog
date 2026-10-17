extends RigidBody2D

@export var speed: float = 700.0

func _ready() -> void:
	var material = PhysicsMaterial.new()
	material.friction = 0.0
	material.bounce = 1.0
	physics_material_override = material
	
	linear_velocity = Vector2(300, 200).normalized() * speed

func _physics_process(delta: float) -> void:
	if linear_velocity != Vector2.ZERO:
		linear_velocity = linear_velocity.normalized() * speed
		
	rotation = 0
