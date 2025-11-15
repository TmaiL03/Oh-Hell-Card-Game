extends Control

class_name Card

@onready var card_face: TextureRect = $CardFace

var suit: String
var rank: String

func set_card(new_suit: String, new_rank: String):
	suit = new_suit
	rank = new_rank
	
	card_face.texture = load("res://assets/card_" + str(new_suit) + "_" + str(new_rank) + ".png")

func to_print() -> String:
	return "{ Suit: " + str(suit) + " Rank: " + str(rank) + " }"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
