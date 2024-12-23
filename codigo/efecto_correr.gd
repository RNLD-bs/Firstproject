extends Node

@onready var jugador: CharacterBody2D = $".."
@onready var duracion: Timer = $duracion

@export var duracion_efecto : int = 5
@export var material_efecto : Material

const PITCH_EFECTO_POWERUP_POR_DEFECTO : float = 1
@export var pitch_efecto_powerup : float = 2

func _ready() -> void:
	jugador.efecto_correr.connect(_on_jugador_efecto_correr)
	duracion.timeout.connect(_on_timeout)
	Musica.pitch_scale = PITCH_EFECTO_POWERUP_POR_DEFECTO

func _on_jugador_efecto_correr() -> void:
	jugador.debe_correr = true
	duracion.start(duracion_efecto)
	jugador.activar_material(material_efecto)
	Musica.pitch_scale = pitch_efecto_powerup
	
func _on_timeout() -> void:
	jugador.debe_correr = false
	jugador.activar_material(null)
	Musica.pitch_scale = PITCH_EFECTO_POWERUP_POR_DEFECTO
