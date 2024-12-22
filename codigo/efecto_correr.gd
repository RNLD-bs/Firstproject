extends Node

@onready var jugador: CharacterBody2D = $".."


func_ready() -> void:
	jugador.efecto_correr.connect()
