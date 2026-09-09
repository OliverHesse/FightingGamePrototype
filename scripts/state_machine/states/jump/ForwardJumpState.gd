extends JumpState
class_name ForwardJumpState
	
const JUMP_SPEED = 8000

func getName()->String:
	return "Forward Jump"

func processFrame(delta:float)->State:
	var state = super(delta)
	getCharacter().velocity.x = JUMP_SPEED*getForwardDirection().x*delta
	
	return state
