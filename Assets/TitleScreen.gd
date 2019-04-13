extends Control

var scene_path_to_load

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/VBoxContainer/VBoxContainer/NewGame.grab_focus()
	for button in $HBoxContainer/VBoxContainer/VBoxContainer.get_children():
		button.connect("pressed",self, "_on_Button_pressed", [button.scene_to_load])
		

func _on_Button_pressed(scene_to_load):
	scene_path_to_load=scene_to_load
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finish():
	get_tree().change_scene(scene_path_to_load)
