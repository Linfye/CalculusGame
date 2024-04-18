extends Button

var flag: int = 0
@onready var start_button: Button = $"."
@onready var Limit: Sprite2D = $"../Limit"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Scenes//level_menu.tscn")


func _on_start_pressed():
	self.flag += 1
	if self.flag == 1:
		start_button.text = "Next"
		DialogueManager.show_dialogue_balloon(load("res://Dialogue/L3.dialogue"), "MithOfOneThird")
	elif self.flag == 2:
		start_button.text = "Go On"
		DialogueManager.show_dialogue_balloon(load("res://Dialogue/L3.dialogue"), "Limit")
	elif self.flag == 3:
		Limit.visible = true
		DialogueManager.show_dialogue_balloon(load("res://Dialogue/L3.dialogue"), "TheEndOfLimit")
