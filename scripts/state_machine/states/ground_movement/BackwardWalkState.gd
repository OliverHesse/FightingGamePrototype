extends GroundedState
class_name BackwardWalkState

const SPEED = 3000

func getName()->String:
	return "Backward Walk"
func processFrame(delta:float)->State:
	super(delta)	
	getCharacter().velocity.x = SPEED * getForwardDirection().x*delta*-1
	var state = getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	if state is BackwardWalkState:
		return null
	return state
