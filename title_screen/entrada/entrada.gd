extends ColorRect

signal fade_finished

func fade_in():
	$AnimationPlayer.play("Entrada_s")

func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("Entrada_s_finished")
