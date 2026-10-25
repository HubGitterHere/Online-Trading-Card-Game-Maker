extends Control
class_name CardPart
#derived from: Google AI overview of "Godot drag and drop items and their children"


func _get_drag_data(at_position: Vector2) -> Variant:
	var preview = duplicate()
	set_drag_preview(preview)
	
	return self
