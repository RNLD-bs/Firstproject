extends Node

@onready var jugador: CharacterBody2D = $".."
@onready var duracion: Timer = $duracion

@export var duracion_efecto : int = 5


func _ready() -> void:
	jugador.efecto_correr.connect(_on_jugador_efecto_correr)
	duracion.timeout.connect(_on_timeout)

func _on_jugador_efecto_correr() -> void:
	print("UWU")
	jugador.debe_correr = true
	duracion.start(duracion_efecto)
	
func _on_timeout() -> void:
	print("XD")
	jugador.debe_correr = false
