extends MovementState
class_name ForwardJumpState

const JUMP_STRENGTH = 400	
const JUMP_SPEED = 100

func getName()->String:
	return "Forward Jump"
func getDirection()->Vector2i:
	#TODO will return which way the character is facing
	#for now just return right
	return Vector2i.RIGHT
func enter(character:CharacterBody2D,inputReader:InputReader)->void:
	super(character,inputReader)
	character.velocity.y = -JUMP_STRENGTH
	
func processFrame(delta:float)->State:
	super(delta)
	getCharacter().velocity.x = JUMP_SPEED*getDirection().x
	#input uses UP as 0,1 while godot does 0,-1
	if getFrame() > 4 and getCharacter().is_on_floor():
		getCharacter().velocity.x = 0
		return NeutralState.new()
	return null
