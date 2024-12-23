extends CharacterBody2D


const SPEED = 100.0
const RUN_SPEED = 190.0
const JUMP_VELOCITY = -300.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var sonido_salto: AudioStreamPlayer2D = $SonidoSalto

var debe_correr : bool = false

signal efecto_correr

func iniciar_efecto_correr() -> void:
	efecto_correr.emit()
	

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("saltar") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		sonido_salto.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("mover_izquierda", "mover_derecha")
	if direction > 0 :
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("reposo")
		else:
			animated_sprite.play("correr")
	else:
		animated_sprite.play("saltar")
	
	
	if direction:
	
		
		var _velocidad_a_aplicar = SPEED
		if Input.is_action_pressed("correr"):
			_velocidad_a_aplicar = RUN_SPEED
		
		velocity.x = direction * (RUN_SPEED if debe_correr or Input.is_action_just_pressed("correr") else SPEED)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func activar_material(nuevo_material : Material) -> void:
	animated_sprite.material = nuevo_material
