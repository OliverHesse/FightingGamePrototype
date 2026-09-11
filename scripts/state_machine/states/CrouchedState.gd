extends GroundedState	
class_name CrouchedState


func getName()->String:
	return "Crouched"
func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	getCharacter().play_animation("test_character_crouch")
	
func processFrame(delta:float)->State:
	super(delta)
	var state = getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	if state is CrouchedState:
		return null
	return state
