extends CanvasLayer

@onready var derecha: TouchScreenButton = $derecha
@onready var izquierda: TouchScreenButton = $izquierda
@onready var saltar: TouchScreenButton = $saltar




func _on_derecha_pressed() -> void:
	derecha.modulate.a = 0.5


func _on_derecha_released() -> void:
	derecha.modulate.a = 1


func _on_izquierda_pressed() -> void:
	izquierda.modulate.a = 0.5


func _on_izquierda_released() -> void:
	izquierda.modulate.a = 1


func _on_saltar_pressed() -> void:
	saltar.modulate.a = 0.5


func _on_saltar_released() -> void:
	saltar.modulate.a = 1
