extends CharacterBody2D

var velocidad=100 #velocidad de movimiento del personaje modificable
var gravedad


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	
	if Input.is_action_pressed("derecha"):
		velocity.x = velocidad
		$Animation.flip_h = false
		
	elif Input.is_action_pressed("izquierda"):
		velocity.x = -velocidad
		$Animation.flip_h = true
		
	elif Input.is_action_pressed("atras"):
		velocity.y = -velocidad
		
	elif Input.is_action_pressed("delante"):
		velocity.y = velocidad
		
	else:
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
	
	#La animación de derecha e izquierda no funcionan correctamente
	
	if velocity.x < 0:
		$Animation.play("walk to right")
		
	elif velocity.x > 0:
		$Animation.play("walk to right")
		
	elif velocity.y < 0:
		$Animation.play("walk to back")
	
	elif velocity.y > 0:
		$Animation.play("walk to front")
	
	
func add_Llave():
		# Busca el nodo CanvasLayer usando su ruta en la escena
	var canvasLayer = get_parent().get_node("CanvasLayer")
	if canvasLayer:
		canvasLayer.tomarLlaves()
	else:
		print("No se encontró el nodo CanvasLayer")
	
	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenas/escena_menu.tscn")
	
