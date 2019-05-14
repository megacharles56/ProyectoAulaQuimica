extends Node2D

var random=0
var lol
var tex

func _random():
	random = randi()%4+0
	


func _process(delta):
	_random()
	

onready var image_sprite = get_node("Sprite")
onready var Texto=get_node("TextEdit")
onready var iniciar=get_node("ColorRect")
func _on_Button_pressed():
	iniciar.hide()
	var matriz=[[str("res://title_screen/Escenas_juego/Facil/Preguntas/1F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/2F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/3F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/4F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/5F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/6F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/7F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/8F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/9F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/10F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/11F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/12F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/13F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/14F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/15F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/16F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/17F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/18F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/19F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/20F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/21F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/22F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/23F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/24F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/25F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/26F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/27F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/28F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/29F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/30F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/31F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/32F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/33F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/34F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/35F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/36F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/37F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/38F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/39F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/40F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/41F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/42F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/43F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/44F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/45F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/46F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/47F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/48F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/49F.jpg"),str(""),str("0")],
	[str("res://title_screen/Escenas_juego/Facil/Preguntas/50F.jpg"),str(""),str("0")]
	]
	tex=Texto.get_text()
	
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

	
	

