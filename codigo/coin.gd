extends Area2D

@onready var gamemanager: Node = %gamemanager
@onready var sonidocoin: AudioStreamPlayer2D = $sonidocoin
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape: CollisionShape2D = $CollisionShape2D



func _on_body_entered(body: Node2D) -> void:
	gamemanager.incrementa_un_punto()
	sonidocoin.play()
	animated_sprite.visible = false
	collision_shape.call_deferred("set", "disabled", true)



func _on_sonidocoin_finished() -> void:
	queue_free()
