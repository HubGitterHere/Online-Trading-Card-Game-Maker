extends Button
@export var charizard_best_cd_promo: CompressedTexture2D
@export var pikachu_jungle_60: CompressedTexture2D
@onready var texture_rect: TextureRect = $"../TextureRect"
var switchCard: bool = false

func _on_button_down() -> void:
	if switchCard:
		texture_rect.texture = pikachu_jungle_60
	else:
		texture_rect.texture = charizard_best_cd_promo
	switchCard = !switchCard
