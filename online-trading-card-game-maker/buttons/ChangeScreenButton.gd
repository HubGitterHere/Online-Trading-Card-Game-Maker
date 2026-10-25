extends Button
@export_file("*.tscn") var destination_scene: String


func _on_button_down() -> void:
	get_tree().change_scene_to_file(destination_scene)
	pass # Replace with function body.
