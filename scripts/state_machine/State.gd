extends Node
class_name State


var phase = Constants.StatePhase.NEUTRAL
var frame :int = 0
var character : PlayerController
var inputReader : InputReader

# a method mainly used for debugging
func getName()->String:
	return "None"

func getPhase()->Constants.StatePhase:
	return phase
func getCharacter()->PlayerController:
	return character
func getInputBuffer()->InputBuffer:
	return inputReader.inputBuffer
	
func getFrame()->int:
	return frame
	
#TODO change to int
func getForwardDirection()->Vector2i:
	return Vector2i(character.getForwardDirection(),0)
	
func enter(character:PlayerController,inputReader:InputReader)->void:
	self.character=character
	self.inputReader = inputReader
func exit()->void:
	pass
#TODO pass Frame Data
func processFrame(delta:float)->State:
	frame += 1
	return null
