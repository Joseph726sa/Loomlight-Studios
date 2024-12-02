extends CanvasLayer
var label: Label
var contadorLlaves=0
# Called when the node enters the scene tree for the first time.
func _ready():
	
	label = $Labelwin
	label.visible = false
	$Label_paraContar.text = str(contadorLlaves)
	
func tomarLlaves():
	contadorLlaves+=1
	$Label_paraContar.text = str(contadorLlaves)
	
	if contadorLlaves==5:
		label.visible = true
		print("ganaste")
