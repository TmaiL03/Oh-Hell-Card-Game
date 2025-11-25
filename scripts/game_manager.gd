extends Node2D

var playerScene: PackedScene = preload("res://scenes/player.tscn")
var players: Array[Player] = []
@onready var player_ui: PlayerUI = $"../PlayerUI"
@onready var game_manager_ui: Control = $"../GameManagerUI"
@onready var deck: Deck = $Deck

signal update_game_manager_ui(trumpCard: Card)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	deck.shuffle()
	
	var player: Player = playerScene.instantiate()
	get_node("..").add_child.call_deferred(player)
	players.append(player)
	
	# Connecting player refresh signal to UI.
	player.refresh_player_ui.connect(player_ui.on_refresh_player_ui)
	# Connecting game manager fresh to UI.
	update_game_manager_ui.connect(game_manager_ui.on_refresh_game_manager_ui)
	
	# TESTING: dealing cards to player to test UI.
	for _round in range(5):
		player.deal_card(deck.deal_card())
	
	# Emit GameManager UI update signal.
	update_game_manager_ui.emit(deck.deal_card())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
