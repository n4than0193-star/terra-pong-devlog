extends RigidBody2D

var speed: float = 300.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("leball")
	var physics_material = PhysicsMaterial.new()
	physics_material.friction = 0
	physics_material.bounce = 1.0
	
	var random_x = [-1, 1].pick_random()
	var random_y = [-1, 1].pick_random()
	var velocity = Vector2(random_x, random_y).normalized() * speed
