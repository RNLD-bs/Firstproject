extends Node

var puntuacion = 0

@onready var etiquetapuntuacion: Label = $etiquetapuntuacion


func incrementa_un_punto():
	puntuacion = puntuacion + 1
	etiquetapuntuacion.text = "Has obtenido
 "+str(puntuacion)+" monedas"
