extends GroundedState
class_name BackwardWalkState

const SPEED = 2500

func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	getCharacter().play_animation("test_character_walk",-0.5)
	
func getName()->String:
	return "Backward Walk"
func processFrame(delta:float)->State:
	super(delta)	
	getCharacter().velocity.x = SPEED * getForwardDirection().x*delta*-1
	var state = getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	if state is BackwardWalkState:
		return null
	return state
