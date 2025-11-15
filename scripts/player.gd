extends Node2D

class_name Player

var cards: Array[Card] = []
var score: int = 0
var bid: int = 0

func deal_card(card: Card) -> void:
	cards.append(card)

func add_score(more_pts: int) -> void:
	score += more_pts

func set_score(new_score: int) -> void:
	score = new_score

func get_score() -> int:
	return score

func set_bid(new_bid: int) -> void:
	bid = new_bid

func get_bid() -> int:
	return bid

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
