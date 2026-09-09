extends JumpState
class_name BackwardJumpState
	
const JUMP_SPEED = 8000
var direction:int

func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	direction = getForwardDirection().x*-1
func getName()->String:
	return "Backward Jump"

func processFrame(delta:float)->State:
	var state = super(delta)
	getCharacter().velocity.x = JUMP_SPEED*direction*delta
	
	return state
