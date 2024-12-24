extends CanvasLayer

@onready var monedas: Label = $monedas


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = true
	var game_manager = get_node("%gamemanager")
	print("nodo gamemanager: ", game_manager.puntuacion)
	#print("puntuacion ", game_manager.puntuacion_atualizada)
	#game_manager.puntuacion_atualizada.connect() #.connect(_on_puntuacion_actualizada)
#
#
#func _on_puntuacion_actualizada(puntuacion_actual:int) -> void:
	


func _on_gamemanager_puntuacion_actualizada(actual: int) -> void:
	print("hola: ", actual)
	monedas.text = str(actual)
