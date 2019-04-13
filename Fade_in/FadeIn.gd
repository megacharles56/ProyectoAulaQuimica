extends ColorRect

signal fade_finish

func fade_in():
	print ("doing my job")
	$Fade_in.play("Fadeeee")
"."
func _on_Fade_in_animation_finished(anim_name):
	print("finished my job")
	emit_signal("fade_finish")
