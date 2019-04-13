extends Control

var scene_path_to_load

func _ready():
	$CenterContainer/VBoxContainer/Button.grab_focus()
	$CenterContainer/VBoxContainer/OK.connect("pressed",self, "_on_OK_pressed", [$CenterContainer/VBoxContainer/OK.scene_to_load])
	

func _on_Button_pressed():
	print ("i got pressed")
	get_tree().change_scene('res://Assets/TitleScreen.tscn')

func _on_OK_pressed(scene_to_load):
	print ("i got pressed 2")
	scene_path_to_load=scene_to_load
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finish():
	print ("i did it")
	get_tree().change_scene(scene_path_to_load)
