extends GroundedState
class_name ForwardWalkState

const SPEED = 6000


func getName()->String:
	return "Forward Walk"
func processFrame(delta:float)->State:
	super(delta)	
	getCharacter().velocity.x = SPEED * getForwardDirection().x*delta
	var state = getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	if state is ForwardWalkState:
		return null
	return state
