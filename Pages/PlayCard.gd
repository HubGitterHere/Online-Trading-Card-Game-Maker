extends TextureButton
@export var player_unit_zone: TextureRect

func _on_button_down() -> void:
	player_unit_zone.texture = self.texture_normal
	queue_free()
