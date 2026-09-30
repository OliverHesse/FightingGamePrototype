extends State
class_name CrouchState

func getName()->String:
	return "Crouch"
	
func processFrame(delta:float):
	super(delta)
	character.scale.x = sign(character.getForwardDirection())	
