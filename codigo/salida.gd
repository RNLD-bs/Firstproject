extends Node

func _input(event) :
	if event.is_action_pressed("Salir"):
		get_tree().quit()
