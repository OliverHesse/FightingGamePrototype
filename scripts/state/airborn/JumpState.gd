extends State
class_name JumpState

var gravity
var jumpStrength
var xVelocity 
	
func _init(transitions : Array[StateTransition] = [],gravity:int=10,jumpStrength:int=100,xVelocity:int=0) ->void:
	super(transitions)
	self.gravity = gravity
	self.jumpStrength =jumpStrength
	self.xVelocity = xVelocity
func enter(character:CharacterController,inputReader:InputReader)->void:
	super(character,inputReader)
	character.scale.x = character.getForwardDirection()
func getName()->String:
	return "Jump"
	

func processFrame(delta:float):
	super(delta)
	character.deltaY -= jumpStrength
	jumpStrength -= gravity
	character.deltaX += xVelocity
