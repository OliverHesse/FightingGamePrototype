extends StateTransition
class_name LambdaTransition

var method:Callable

func _init(method:Callable) -> void:
	self.method = method

func evaluate(character:CharacterController,inputBuffer:InputBuffer,previousState:State)->State:
	return method.call(character,inputBuffer,previousState)
