extends Node
class_name SimpleStateMachine
var character : CharacterController
var inputReader : InputReader
var activeState : State
#TODO modify to use default state in character details
var nextState : State = NeutralState.new(TestTransitions.getNeutralTransitions())


func processFrame(delta:float,character:CharacterController,inputReader:InputReader)->bool:
	var changed = nextState != null
	if changed:
		activeState = nextState
		activeState.enter(character,inputReader)
	activeState.processFrame(delta)
	return changed

#done so we can evaluate velocity and collisions before trying to change state
func resolveState(character:CharacterController,inputReader:InputReader):
	nextState = activeState.resolveState()
	
