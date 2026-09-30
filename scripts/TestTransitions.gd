extends Node
class_name TestTransitions
#In order to test states i am creating this class to provide the transitions needed for differnt states

static var neutralTransition := func(character:CharacterController,inputBuffer:InputBuffer,previousState:State)->State:
	var input = inputBuffer.getLastFrameInput()
	if(not character.isOnFloor()):
		return null
	if input.input.y == 0 and input.input.x == 0:
		return  NeutralState.new(getNeutralTransitions())
	return null
static var moveTransition := func(character:CharacterController,inputBuffer:InputBuffer,previousState:State)->State:
	var input = inputBuffer.getLastFrameInput()
	if(not character.isOnFloor()):
		return null
	if input.input.y != 0 or input.input.x == 0 or not character.isOnFloor():
		return null

	if character.getForwardDirection() == input.input.x:
		return MoveState.new(getMoveTransitions(),4*character.getForwardDirection())
	return MoveState.new(getMoveTransitions(),-2*character.getForwardDirection())
static var movingMoveTransition := func(character:CharacterController,inputBuffer:InputBuffer,previousState:State)->State:
	var input = inputBuffer.getLastFrameInput()
	if(not character.isOnFloor()):
		return null
	if input.input.y != 0 or input.input.x == 0 or not character.isOnFloor() or previousState is not MoveState:
		return null
	if sign(previousState.xVelocity) != input.input.x:
		return moveTransition.call(character,inputBuffer,previousState)
	return null
static var crouchTransition := func(character:CharacterController,inputBuffer:InputBuffer,previousState:State)->State:
	var input = inputBuffer.getLastFrameInput()
	if(not character.isOnFloor()):
		return null
	if input.input.y == -1:
		return CrouchState.new(getCrouchTransitions())
	return null
	
static var jumpTransition := func(character:CharacterController,inputBuffer:InputBuffer,previousState:State)->State:
	var input = inputBuffer.getLastFrameInput()
	if(not character.isOnFloor()):
		return null
	if input.input.y != 1:
		return null
	return JumpState.new(getJumpTransitions(),2,20,4*input.input.x)
static func transition(callable:Callable)->StateTransition:
	return LambdaTransition.new(callable)

static func getNeutralTransitions()->Array[StateTransition]:
	return [transition(crouchTransition),transition(jumpTransition),transition(moveTransition)]
	
static func getMoveTransitions()->Array[StateTransition]:
	return [transition(jumpTransition),transition(movingMoveTransition),transition(crouchTransition),transition(neutralTransition)]
static func getCrouchTransitions()->Array[StateTransition]:
	return [transition(jumpTransition),transition(moveTransition),transition(neutralTransition)]
static func getJumpTransitions()->Array[StateTransition]:
	return [transition(jumpTransition),transition(crouchTransition),transition(moveTransition),transition(neutralTransition)]
