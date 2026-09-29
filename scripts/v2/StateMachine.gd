extends Node
class_name SimpleStateMachine
var character : CharacterController
var inputReader : InputReader
var activeState : State
var nextState : State

func init(character:CharacterController,inputReader:InputReader):
	self.character = character
	self.inputReader = inputReader
	nextState = NeutralState.new(TestTransitions.getNeutralTransitions())

func processFrame(delta:float):
	if nextState != null:
		activeState = nextState
		activeState.enter(character,inputReader)
	activeState.processFrame(delta)

#done so we can evaluate velocity and collisions before trying to change state
func evaluateState():
	nextState = activeState.evaluateState()

	
