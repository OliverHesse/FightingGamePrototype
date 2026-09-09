extends JumpState
class_name BackwardJumpState
	
const JUMP_SPEED = 8000

func getName()->String:
	return "Backward Jump"

func processFrame(delta:float)->State:
	var state = super(delta)
	getCharacter().velocity.x = -1*JUMP_SPEED*getForwardDirection().x*delta
	
	return state
