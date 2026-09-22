extends GravityState
class_name JumpState

const JUMP_FORCE = 400

func getName()->String:
	return "Jump"

	
func enter(character:PlayerController,inputReader:InputReader)->void:
	super(character,inputReader)
	character.velocity.y = -JUMP_FORCE
	character.velocity.x = 0
	getCharacter().play_animation("test_character_jump")

func shift_position():
	for i in character.get_slide_collision_count():
		var collision = character.get_slide_collision(i)
		var collider = collision.get_collider()

		if collider is PlayerController:
			var normal = collision.get_normal()
			if normal.y < -0.7:
				var pushDir = sign(collider.position.x-character.position.x)
				var x = collider.position.x - pushDir*(collider.getWidth()/2+character.getWidth()/2)
				character.position.x = x
				character.position.y = (collider.position.y+collider.getHeight()/2)-character.getHeight()/2
func processFrame(delta:float)->State:
	super(delta)
	shift_position()
	#TODO adjust to read after jump startup
	if getFrame() > 1 and getCharacter().is_on_floor():
		return GroundedState.getGroundedStateChange(getCharacter(),getInputBuffer(),getForwardDirection().x)
	return null
	
