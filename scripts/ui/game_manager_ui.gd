extends Control
@onready var game_manager: Node2D = $"../GameManager"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_manager.update_game_manager_ui.connect(on_refresh_game_manager_ui)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func on_refresh_game_manager_ui(trumpCard: Card):
	var trump: HBoxContainer = get_node("Trump")
	trumpCard.show()
	trumpCard.reparent.call_deferred(trump)
