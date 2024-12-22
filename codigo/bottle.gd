extends Sprite2D

@onready var power: AudioStreamPlayer2D = $power


func _on_area_2d_body_entered(body: Node2D) -> void:
	power.play()
