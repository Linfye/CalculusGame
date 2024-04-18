extends Button

@onready var start_button: Button = $"."
@onready var Inte: Sprite2D = $"../Inte"

var flag: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	self.flag += 1
	if self.flag == 1:
		start_button.text = "Next"
		DialogueManager.show_dialogue_balloon(load("res://Dialogue/L2.dialogue"), "ForewordOfTheCat")
	elif self.flag == 2:
		start_button.text = "Run"
		DialogueManager.show_dialogue_balloon(load("res://Dialogue/L2.dialogue"), "WordOfTheCube")
	elif self.flag == 3:
		Inte.visible = false
		DialogueManager.show_dialogue_balloon(load("res://Dialogue/L2.dialogue"), "LastWord")
	


func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Scenes//level_menu.tscn")

