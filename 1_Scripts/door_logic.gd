extends StaticBody2D

var is_player_near: bool = false

func _process(delta: float) -> void:
	if Input.is_action_pressed("interact"):
		if is_player_near:
			open_door()

func _on_area_of_interaction_area_entered(area: Area2D) -> void:
	print("you can open")
	is_player_near = true


func _on_area_of_interaction_area_exited(area: Area2D) -> void:
	print("you can't open")
	is_player_near = false
	
func open_door() -> void:
	get_node("CollisionShape2D").disabled = true
	get_node("AreaOfInteraction").monitoring = false
	self.modulate.a = 0
