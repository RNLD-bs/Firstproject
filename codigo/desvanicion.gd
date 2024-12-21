extends Node

@onready var coin: Area2D = $".."
@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"


@export var distancia_a_recorrer: float = 30
@export var duracion_animacion: float = 0.5

func _ready() -> void:
	coin.body_entered.connect(_on_body_entered)
	coin.autodestruccion = false
	
func _on_body_entered(_body: Node2D) -> void:
	var tween = get_tree().create_tween().bind_node(coin)
	tween.tween_property(coin, "position", coin.position + Vector2.UP * distancia_a_recorrer, duracion_animacion).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	tween.tween_property(animated_sprite, "self_modulate", Color(Color.WHITE, 0), duracion_animacion)
	await tween.finished
	coin.queue_free()
