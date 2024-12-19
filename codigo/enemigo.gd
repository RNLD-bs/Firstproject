extends Node2D

const VELOCIDAD = 60

var direccion = 1
@onready var ray_castderecha: RayCast2D = $RayCastderecha
@onready var ray_castizquierda: RayCast2D = $RayCastizquierda

# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_castderecha.is_colliding():
		direccion = -1
		print("derecha")
	if ray_castizquierda.is_colliding():
		direccion = 1
		print("izquierda")
	
	position.x += direccion * VELOCIDAD * delta
