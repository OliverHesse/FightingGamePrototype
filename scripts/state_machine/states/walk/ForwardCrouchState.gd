extends MovementState
class_name ForwardCrouchState

const SPEED = 100

func getDirection()->Vector2i:
	#TODO will return which way the character is facing
	#for now just return right
	return Vector2i.RIGHT
func getName()->String:
	return "Forward Crouch"
func enter(character:CharacterBody2D,inputReader:InputReader)->void:
	super(character,inputReader)
	getCharacter().velocity.x = 0
	
func processFrame(delta:float)->State:
	super(delta)

	var input = getInputBuffer().getLastInputDirection()
	if input == Vector2i.ZERO :
		getCharacter().velocity.x = 0
		return NeutralState.new()
	if input == getDirection()+Vector2i.DOWN:
		return ForwardJumpState.new()
	if input == getDirection()*-1+Vector2i.DOWN:
		return BackwardJumpState.new()
	if input == getDirection():
		return ForwardWalkState.new()
	if input == getDirection() *-1:
		return BackwardsWalkState.new()
	if input == getDirection()*-1+Vector2i.UP:
		return BackwardCrouchState.new()
	if input == Vector2i.UP:
		return NeutralCrouchState.new()
	return null
