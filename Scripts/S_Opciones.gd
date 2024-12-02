extends Control


# Called when the node enters the scene tree for the first time.
var is_fullscreen = false
func _ready() -> void:
	#if is_fullscreen == true:
	#	$CheckBox1.pressed = true
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_check_box_1_toggled(toggled_on: bool) -> void:
	
	if toggled_on:
		DisplayServer.window_set_mode(2)
		is_fullscreen = true
	else:
		DisplayServer.window_set_mode(0) 
		is_fullscreen = false
		#DisplayServer.window_set_size(Vector2(1800, 600)) # Tamaño deseado en modo ventana
		#DisplayServer.window_set_position(Vector2(200, 100)) # Posición deseada
		
		
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenas/escena_menu.tscn")


	
	


func _on_h_slider_3_value_changed(value: float) -> void:
	volume(0,value)
func volume(bus_index,value):
	AudioServer.set_bus_volume_db(bus_index, value)


func _on_h_slider_value_changed(value: float) -> void:
	volume(1,value)


func _on_h_slider_2_value_changed(value: float) -> void:
	volume(2,value)
