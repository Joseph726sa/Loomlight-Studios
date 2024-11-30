extends CharacterBody2D

@export var velociad: int

func _physics_process(delta):
	if Input.is_action_just_pressed("derecha"):
		velocity.x = velociad
		
	elif Input.is_action_just_pressed("izquierda"):
		velocity.x = -velociad
	elif Input.is_action_just_pressed("arriva"):
		velocity.y = -velociad
	elif Input.is_action_just_pressed("abajo"):
		velocity.y = velociad
		
	move_and_slide()

		
