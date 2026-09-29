extends State
class_name MoveState

var xVelocity = 0

func getName()->String:
	return "Moving"

func _init(transitions : Array[StateTransition],xVelocity:int) -> void:
	self.transitions = transitions;
	self.xVelocity = xVelocity;

func processFrame(delta:float):
	character.move(Vector2(xVelocity,0))
