extends Control

var scene_path_to_load

func _ready():
	
	$menu/Fila_central/botones/Nuevo_juego_boton.grab_focus()
	for button in $menu/Fila_central/botones.get_children():
		button.connect("pressed", self ,"_on_Button_pressed",[button.scene_to_load])

func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
	$entrada.show()
	$entrada.fade_in()
	_on_entrada_fade_finished()


func _on_entrada_fade_finished():
	$entrada.hide()
	get_tree().change_scene(scene_path_to_load)
	
	

	