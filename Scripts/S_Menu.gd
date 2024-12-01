extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_b_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenas/mansion.tscn")
	


func _on_b_opciones_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenas/escena_Opciones.tscn")

func _on_b_salir_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
