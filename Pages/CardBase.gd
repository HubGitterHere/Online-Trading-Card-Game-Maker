#derived from: Google AI overview of "Godot drag and drop items and their children"
class_name CardBase
extends Control

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return data is Control and data != self
func _drop_data(at_position: Vector2, data: Variant) -> void:
	data.reparent(self, true)
	data.position = get_viewport().get_mouse_position()
