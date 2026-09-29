extends State
class_name NeutralState



func getName()->String:
	return "Neutral"
func enter(character:CharacterController,inputReader:InputReader)->void:
	super(character,inputReader)
	character.scale.x = sign(character.getForwardDirection())	


func processFrame(delta:float):
	super(delta)

	character.deltaY += 10
