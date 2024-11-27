extends CharacterBody2D

const fatrun = 70

func _ready():
	velocity.x = fatrun
	$AnimatedSprite2D.play("run")
	
func _physics_process(delta):
	velocity.x = -fatrun
	
	move_and_slide()
