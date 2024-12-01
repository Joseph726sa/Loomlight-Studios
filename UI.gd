extends CanvasLayer

var contadorLlaves=1
# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Label_paraContar.text = str(contadorLlaves)

func tomarLlaves():
	contadorLlaves+=1
	$Label_paraContar.text = str(contadorLlaves)
	
	if contadorLlaves==5:
		print("ganaste")
