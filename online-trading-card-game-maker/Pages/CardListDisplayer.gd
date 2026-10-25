extends TextureRect
@onready var left_card: TextureButton = $"../LeftCard"
@onready var right_card: TextureButton = $"../RightCard"
@onready var center_card: TextureRect = $"."

#pokemon Cards
@export var PokemonCards : Array[Texture2D]=[
	preload("uid://c7y47nls3tvy8"),
	preload("uid://dpfpjjbx0bpm8"),
	preload("uid://dlp6uypo6d770"),
	preload("uid://mv6upw0mgmlh")
]
@export var YugiohCards : Array[Texture2D]=[
	preload("uid://cq2thswabaxu"),
	preload("uid://cgdwrb5is3whd"),
	preload("uid://bl5xkebg66ed8"),
	preload("uid://dil88i8rhsh14"),
	preload("uid://hwjw8bwv6uwl"),
	preload("uid://de26u4k2a6ulf"),
]
#Yugioh Cards

var CurDeck = PokemonCards
var CurIndex = 0

func _ready() -> void:
	left_card.texture_normal = CurDeck[CurIndex+1]
	center_card.texture = CurDeck[CurIndex]
	right_card.texture_normal = CurDeck[len(CurDeck)-1]

func update_cards_displayed():
	center_card.texture = CurDeck[CurIndex]
	if CurIndex+1 >= len(CurDeck):
		left_card.texture_normal = CurDeck[0]
	else:
		left_card.texture_normal = CurDeck[CurIndex+1]
	if CurIndex-1 < 0:
		right_card.texture_normal = CurDeck[len(CurDeck)-1]
	else:
		right_card.texture_normal = CurDeck[CurIndex-1]

func switchDecks():
	CurIndex = 0
	if CurDeck == PokemonCards:
		CurDeck = YugiohCards
		update_cards_displayed()
	elif CurDeck == YugiohCards:
		CurDeck = PokemonCards
		update_cards_displayed()


func _on_change_deck_button_button_down() -> void:
	switchDecks()


func _on_left_card_button_down() -> void:
	CurIndex += 1
	if CurIndex >= len(CurDeck):
		CurIndex = 0
	update_cards_displayed()


func _on_right_card_button_down() -> void:
	CurIndex -= 1
	if CurIndex < 0:
		CurIndex = len(CurDeck)-1
	update_cards_displayed()
