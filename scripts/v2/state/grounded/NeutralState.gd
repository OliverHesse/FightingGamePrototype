extends State
class_name NeutralState



func getName()->String:
	return "Neutral"


func processFrame(delta:float):
	super(delta)
	character.scale.x = sign(character.getForwardDirection())	
	character.deltaY += 10
