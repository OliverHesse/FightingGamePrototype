extends GroundedState	
class_name CrouchedState


func getName()->String:
	return "Crouched"
	
func processFrame(delta:float)->State:
	super(delta)
	var state = getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	if state is CrouchedState:
		return null
	return state
