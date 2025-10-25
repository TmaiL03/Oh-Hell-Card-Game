extends Node2D

@export var suit: String
@export var rank: int
@onready var card_image: Sprite2D = $CardImage

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setValue(7, "Hearts")
	
	var cardImageFilePath = "res://assets/PNG/Cards/card" + str(getSuit()) + str(getRank()) + ".png"
	var card_texture = load(cardImageFilePath)
	card_image.texture = card_texture

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setValue(newRank: int, newSuit: String) -> void:
	setRank(newRank)
	setSuit(newSuit)

func setSuit(newSuit: String) -> void:
	suit = newSuit

func getSuit() -> String:
	return suit

func setRank(newRank: int) -> void:
	rank = newRank

func getRank() -> int:
	return rank
