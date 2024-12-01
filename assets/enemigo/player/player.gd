extends CharacterBody2D

@export var velociad: int

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("derecha"):
		velocity.x = 1
	if Input.is_action_pressed("izquierda"):
		velocity.x = -1
	if Input.is_action_pressed("arriva"):
		velocity.y = -1
	if Input.is_action_pressed("abajo"):
		velocity.y = 1
	velocity = velocity.normalized()*velociad
	
	move_and_slide()
	animaciones()
	
@onready var sprite:=$AnimatedSprite2D
func animaciones():
	if velocity ==Vector2.ZERO:
		$AnimatedSprite2D.play("quieta")
	else:
		$AnimatedSprite2D.play("caminar.w")

	
