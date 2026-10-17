extends CanvasLayer

@onready var anim: AnimationPlayer = find_child("AnimationPlayer")

func change_scene(target_scene: String):
	anim.play("fade_out") 
	await anim.animation_finished
	
	get_tree().change_scene_to_file(target_scene)
	await get_tree().process_frame
	
	anim.play("fade_in")
