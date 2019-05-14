extends Node2D

var random=0
var lol
var tex
var acum=0
var guardar=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

func _random():
	random = randi()%4+0
	


func _process(delta):
	_random()
	

onready var image_sprite = get_node("Sprite")
onready var Texto=get_node("TextEdit")
onready var iniciar=get_node("ColorRect")
var matriz=[[str("res://title_screen/Escenas_juego/Dificil/Preguntas/1.jpg"),str("a"),str("0")],[str("res://title_screen/Escenas_juego/Dificil/Preguntas/2.jpg"),str("a"),str("0")],
	[str("res://title_screen/Escenas_juego/Dificil/Preguntas/3.jpg"),str("a"),str("0")],[str("res://title_screen/Escenas_juego/Dificil/Preguntas/4.jpg"),str("a"),str("0")],
	]
func _on_Button_pressed():
	iniciar.hide()
	
	tex=Texto.get_text()
	
	for x in range(49):
		if guardar[x]==random:
			_random()
			break
		else:
			guardar[acum]=random
			acum=+1
			_fortis()
	
func _fortis():
	if tex!="":
		if matriz[random][2]==str("0"):
			lol=load(matriz[random][0])
			image_sprite.set_texture(lol)
			matriz[random][2]=str("1")
			Texto.set_text("")
			if tex==str(matriz[random][1]):
					print("Estas bn")
			else:
					print("no esta bn")
			
	elif(matriz[random][2]==str("1")):
			_random()
	else:
		_random()

	
	

