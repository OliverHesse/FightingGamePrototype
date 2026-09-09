extends MovementState
class_name BackwardsWalkState

const SPEED = 50

func getDirection()->Vector2i:
	#TODO will return which way the character is facing
	#for now just return left
	return Vector2i.LEFT
func getName()->String:
	return "Backward Walk"
func processFrame(delta:float)->State:
	super(delta)
	
	getCharacter().velocity.x = SPEED * getDirection().x
	var input = getInputBuffer().getLastInputDirection()
	if input == Vector2i.ZERO :
		getCharacter().velocity.x = 0
		return NeutralState.new()
	if input == getDirection()+Vector2i.DOWN:
		return BackwardJumpState.new()
	if input == getDirection()*-1+Vector2i.DOWN:
		return ForwardJumpState.new()
	if input == getDirection()*-1:
		return	ForwardWalkState.new()
	if input == getDirection()+Vector2i.UP:
		return BackwardCrouchState.new()
	if input == getDirection()*-1+Vector2i.UP:
		return ForwardCrouchState.new()
	if input == Vector2i.UP:
		return NeutralCrouchState.new()
	return null
