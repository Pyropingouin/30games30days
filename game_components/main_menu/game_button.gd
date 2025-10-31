extends TextureRect

@export var game_name: String
@export var game_number: String


#Current game made
var starting_ui = preload("res://scenes/starting_ui.tscn")
var fruit_dual = preload("res://scenes/fruitDualGame.tscn")

func _ready():
	$LabelTitle.text = game_name
	$LabelNumber.text ="#" + game_number
	
	

func _on_button_play_pressed() -> void:
	
	
	var picked_game
	if game_name == "starting ui":
		picked_game = starting_ui.instantiate()
		
	if game_name == "Fruit Dual":
		picked_game = fruit_dual.instantiate()	
	$"../../../../../..".add_child(picked_game)
	picked_game.global_position = Vector2(0,0)
	$"../../../..".visible = false
