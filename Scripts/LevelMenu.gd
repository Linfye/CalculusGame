extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_return_pressed():
	get_tree().change_scene_to_file("res://Scenes//main_menu.tscn")


func _on_intro_pressed():
	get_tree().change_scene_to_file("res://Scenes//Levels//S1.tscn")


func _on_zeno_pressed():
	get_tree().change_scene_to_file("res://Scenes//Levels//S2.tscn")


func _on_limit_pressed():
	get_tree().change_scene_to_file("res://Scenes//Levels//S3.tscn")


func _on_unfinished_pressed():
	get_tree().change_scene_to_file("res://Scenes//Levels//S4.tscn")
