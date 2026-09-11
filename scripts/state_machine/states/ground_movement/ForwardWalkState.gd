extends GroundedState
class_name ForwardWalkState

const SPEED = 5000


func getName()->String:
	return "Forward Walk"
func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	getCharacter().play_animation("test_character_walk")
	
func processFrame(delta:float)->State:
	super(delta)	
	getCharacter().velocity.x = SPEED * getForwardDirection().x*delta
	var state = getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	if state is ForwardWalkState:
		return null
	return state
