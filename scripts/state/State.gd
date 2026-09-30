extends Node
class_name State
var phase = Constants.StatePhase.NEUTRAL
var frame :int = 0
var character : CharacterController
var inputReader : InputReader
var transitions : Array[StateTransition] = []

func _init(transitions : Array[StateTransition] = [] ) ->void:
	self.transitions = transitions

# a method mainly used for debugging
func getName()->String:
	return "None"
func getPhase()->Constants.StatePhase:
	return phase
func getCharacter()->CharacterController:
	return character
func getInputBuffer()->InputBuffer:
	return inputReader.inputBuffer
func getFrame()->int:
	return frame


	

func enter(character:CharacterController,inputReader:InputReader)->void:
	self.character=character
	self.inputReader = inputReader

func exit()->void:
	pass
#TODO pass Frame Data
func processFrame(delta:float):
	frame += 1

func resolveState()->State:
	for transition in transitions:
		var nextState = transition.evaluate(character,inputReader.inputBuffer,self)
		if nextState != null:
			return nextState 
	return null
