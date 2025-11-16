extends Node2D

class_name Deck

var card: PackedScene = load("res://scenes/card.tscn")

const SUIT_HEARTS = "hearts"
const SUIT_DIAMONDS = "diamonds"
const SUIT_SPADES = "spades"
const SUIT_CLUBS = "clubs"

const RANK_2 = "02"
const RANK_3 = "03"
const RANK_4 = "04"
const RANK_5 = "05"
const RANK_6 = "06"
const RANK_7 = "07"
const RANK_8 = "08"
const RANK_9 = "09"
const RANK_10 = "10"
const RANK_JACK = "11"
const RANK_QUEEN = "12"
const RANK_KING = "13"
const RANK_ACE = "14"

var suits: Array[String] = [SUIT_HEARTS, SUIT_DIAMONDS, SUIT_SPADES, SUIT_CLUBS]
var ranks: Array[String] = [RANK_2, RANK_3, RANK_4, RANK_5, RANK_6, RANK_7, RANK_8,
							RANK_9, RANK_10, RANK_JACK, RANK_QUEEN, RANK_KING, RANK_ACE]
var cards: Array[Card] = []

# Iteratively generate deck from provided suits and ranks.
func build_deck() -> void:
	for suit in suits:
		for rank in ranks:
			var instance: Card = card.instantiate()
			add_child(instance)
			instance.hide()
			instance.set_card(suit, rank)
			cards.append(instance)

# Randomize order of deck.
func shuffle():
	cards.shuffle()

# Deals a card to the provided player.
func deal_card() -> Card:
	return cards.pop_back()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	build_deck()
