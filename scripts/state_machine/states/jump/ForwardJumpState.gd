extends JumpState
class_name ForwardJumpState
	
const JUMP_SPEED = 8000
var direction:int

func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	direction = getForwardDirection().x
func getName()->String:
	return "Forward Jump"

func processFrame(delta:float)->State:
	var state = super(delta)
	getCharacter().velocity.x = JUMP_SPEED*direction*delta
	
	return state
