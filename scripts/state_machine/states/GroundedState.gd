extends GravityState
class_name GroundedState


func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	character.velocity.x = 0
	
func processFrame(delta:float)->State:
	super(delta)
	character.scale.x = character.getForwardDirection()
	print(character.to_string()+ "scale : "+str(character.scale.x))
	return null
#a generic movement function all stats extending Grounded State can use
static func getGroundedStateChange(character:PlayerController,inputBuffer:InputBuffer,forwardDirection:int)->State:
	var input = inputBuffer.getLastInputDirection()
	if character.is_on_floor():
			if input == Vector2i.ZERO:
				return NeutralState.new()
			if input.y == -1:
				return CrouchedState.new()
			#jump input
			if input.y == 1:
				if input.x == 0:
					return NeutralJumpState.new()
				if input.x == forwardDirection:
					return ForwardJumpState.new()
				return BackwardJumpState.new()
		
			if input.x == forwardDirection:
				return ForwardWalkState.new()
			if input.x == forwardDirection*-1:
				return BackwardWalkState.new()
			
			
	return null
