extends Node
class_name State


var phase = Constants.StatePhase.NEUTRAL
var frame :int = 0
var character : CharacterBody2D
var inputReader : InputReader

# a method mainly used for debugging
func getName()->String:
	return "None"

func getPhase()->Constants.StatePhase:
	return phase
func getCharacter()->CharacterBody2D:
	return character
func getInputBuffer()->InputBuffer:
	return inputReader.inputBuffer
	
func getFrame()->int:
	return frame
	
func enter(character:CharacterBody2D,inputReader:InputReader)->void:
	self.character=character
	self.inputReader = inputReader
func exit()->void:
	pass
#TODO pass Frame Data
func processFrame(delta:float)->State:
	frame += 1
	return null
