extends Node2D

@export var player_life = 1
const SCENE_START = "res://Nivel 1/level1.tscn"
const SCENE_FINISH = "res://UI/pantalla_final.tscn"

func game_over():
	print("Has perdido")
	get_tree().change_scene_to_file(SCENE_FINISH)

func game_victory():
	print("Has ganado")
	get_tree().change_scene_to_file(SCENE_START)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if body is Personaje:
		print("juego terminado")
		game_victory()
