extends Sprite2D

@onready var power: AudioStreamPlayer2D = $power
@onready var collision_shape: CollisionShape2D = $Area2D/CollisionShape2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	power.play()
	visible = false
	collision_shape.call_deferred("set", "disabled", true)
	body.iniciar_efecto_correr


func _on_power_finished() -> void:
	queue_free()
