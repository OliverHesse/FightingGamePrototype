extends Node
class_name StateMachine

var character : PlayerController
var inputReader : InputReader
var activeState : State = NeutralState.new()
func init(character:PlayerController,inputReader:InputReader):
	self.character = character
	self.inputReader = inputReader
	activeState.enter(character,inputReader)

func processFrame(delta:float):
	var state = activeState.processFrame(delta)
	if state != null :
		changeState(state)
	character.move_and_slide()
	return state != null

func changeState(state:State):
	activeState.exit()
	activeState = state
	activeState.enter(character,inputReader)
	
