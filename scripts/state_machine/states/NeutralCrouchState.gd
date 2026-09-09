extends MovementState
class_name NeutralCrouchState

func getForwardDirection()->Vector2i:
	#TODO will return which way the character is facing
	#for now just return right
	return Vector2i.RIGHT
func getName()->String:
	return "Neutral Crouch"
func processFrame(delta:float)->State:
	super(delta)
	#input uses UP as 0,1 while godot does 0,-1
	
	if getCharacter().is_on_floor():
		var input = getInputBuffer().getLastInputDirection()
		if input == Vector2i.DOWN :
			return NeutralJumpState.new()
		if input == getForwardDirection():
			return ForwardWalkState.new()
		if input == getForwardDirection()*-1:
			return BackwardsWalkState.new()
		if input == getForwardDirection()+Vector2i.DOWN :
			return ForwardJumpState.new()
		if input == getForwardDirection()*-1+Vector2i.DOWN:
			return BackwardJumpState.new()
		if input == Vector2i.ZERO:
			return NeutralState.new()
	return null
