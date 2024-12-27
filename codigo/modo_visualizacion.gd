extends Node

func _input(event) :
	if event.is_action_pressed("cambiar_visualizacion"):
		if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
		else :
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
