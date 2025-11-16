extends Control

class_name PlayerUI
#@onready var hand: HBoxContainer = $Hand

func on_refresh_player_ui(cards: Array[Card]) -> void:
	print("Updating player UI...")
	
	# Iterate over passed hand of cards, and populate them in the PlayerUI.
	for card in cards:
		var hand: HBoxContainer = get_node("Hand")
		# REMEMBER TO SHOW.
		card.show()
		card.reparent.call_deferred(hand)
	
	print("Player UI update complete!")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
