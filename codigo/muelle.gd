extends AnimatedSprite2D

@onready var sonido_muelle: AudioStreamPlayer = $sonido_muelle

@export var fuerza_impulso : float = 500

func _on_area_2d_body_entered(body: Node2D) -> void:
	body.aplicar_impulso_hacia_arriba(fuerza_impulso)
	play("activado")
	sonido_muelle.play()
