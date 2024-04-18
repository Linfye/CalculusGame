extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Scenes//level_menu.tscn")


func _on_start_pressed():
	DialogueManager.show_dialogue_balloon(load("res://Dialogue/L4.dialogue"), "TheEnd ")
