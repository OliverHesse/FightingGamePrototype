extends GroundedState
class_name NeutralState

func getName()->String:
	return "Neutral"
func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	getCharacter().play_animation("test_character_idle")
func processFrame(delta:float)->State:
	super(delta)
	var state = getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	if state is NeutralState:
		return null
	return state
