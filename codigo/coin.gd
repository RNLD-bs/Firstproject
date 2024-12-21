extends Area2D

@onready var gamemanager: Node = %gamemanager
@onready var sonidocoin: AudioStreamPlayer2D = $sonidocoin
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape: CollisionShape2D = $CollisionShape2D

var autodestruccion : bool = true

func _on_body_entered(_body: Node2D) -> void:
	gamemanager.incrementa_un_punto()
	sonidocoin.play()
	collision_shape.call_deferred("set", "disabled", true)
	if autodestruccion:
		animated_sprite.visible = false
		sonidocoin.finished.connect(_on_finished)

func _on_finished() -> void:
	queue_free()
