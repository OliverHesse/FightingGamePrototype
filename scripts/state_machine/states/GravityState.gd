extends State
class_name GravityState

const gravity:float = 10*64 #assumes 1m = 16px


func processFrame(delta:float)->State:
	super(delta)
	if !getCharacter().is_on_floor():
		getCharacter().velocity.y += gravity*delta
	return null
