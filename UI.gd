extends CanvasLayer
var label: Label
var contadorLlaves=0
var boton: Button
# Called when the node enters the scene tree for the first time.
func _ready():
	
	label = $Labelwin
	boton = $ButtonMenu
	label.visible = false
	boton.visible = false
	$Label_paraContar.text = str(contadorLlaves)
	
func tomarLlaves():
	contadorLlaves+=1
	$Label_paraContar.text = str(contadorLlaves)
	
	if contadorLlaves==5:
		label.visible = true
		boton.visible = true
		print("ganaste")
