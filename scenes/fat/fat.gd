extends CharacterBody2D
"player es el nombre con el que se creo personaje principal"
@export var player:CharacterBody2D

func _ready():
	set_physics_process(false)
	$AnimatedSprite2D.play("spawn")
	await $AnimatedSprite2D.animation_finished
	set_physics_process(true)

"El CAMINE_E es la animacion que queremos que haga cunado este siguiendo al personaje"
func _process(delta):
	
	$AnimatedSprite2D.play("CAMIN_E")
	position = lerp(global_position,player.global_position,delta/2)
	look_at(player.global_position)

func dead():
	set_physics_process(false)
	$AnimatedSprite2D.play("delet")
	await $AnimatedSprite2D.animation_finished
	queue_free()
	
