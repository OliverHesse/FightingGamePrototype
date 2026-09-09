extends MovementState
class_name NeutralJumpState

const jumpForce = 400

func getName()->String:
	return "Neutral Jump"
func enter(character:CharacterBody2D,inputReader:InputReader)->void:
	super(character,inputReader)
	character.velocity.y = -jumpForce


func processFrame(delta:float)->State:
	super(delta)
	#TODO adjust to read after jump startup
	if getFrame() > 4 and getCharacter().is_on_floor():
		return NeutralState.new()
	return null
	
