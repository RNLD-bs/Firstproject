extends Node

var puntuacion = 0

@onready var etiquetapuntuacion: Label = $etiquetapuntuacion

signal puntuacion_actualizada(actual: int)

func incrementa_un_punto():
	puntuacion = puntuacion + 1
	puntuacion_actualizada.emit(puntuacion)
	#puntuacion_actualizada.connect()
	etiquetapuntuacion.text = "Has obtenido\n"+str(puntuacion)+" monedas"
