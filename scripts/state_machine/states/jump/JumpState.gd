extends GravityState
class_name JumpState

const JUMP_FORCE = 400

func getName()->String:
	return "Jump"
func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	character.velocity.y = -JUMP_FORCE
	character.velocity.x = 0

func processFrame(delta:float)->State:
	super(delta)
	#TODO adjust to read after jump startup
	if getFrame() > 1 and getCharacter().is_on_floor():
		return GroundedState.getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	return null
	
