extends CharacterBody2D
const Gravedad = 0
const fatcamin_ne=90
@export var player: CharacterBody2D

func _ready():
	set_physics_process(false)
	$AnimatedSprite2D.play("CAMIN-NE")
	await $AnimatedSprite2D.animation_finished
	set_physics_process(true)
	
func _physics_process(delta): 
	$AnimatedSprite2D.play("CAMIN_E")
	position = lerp(global_position,player.global_position,delta/2)
	look_at(player.global_position)

	velocity.x= -fatcamin_ne
	$AnimatedSprite2D.play("CAMIN_NE")

	velocity.y += Gravedad
	if is_on_wall():
		if !$AnimatedSprite2D.flip_h:
			velocity.x = -fatcamin_ne
		else:
			velocity.x = -fatcamin_ne
			if velocity.x <0:
				$AnimatedSprite2D.flip.h = false
			elif velocity.x > 0:
				$AnimatedSprite2D.flip_h = true
	
	
	move_and_slide()
