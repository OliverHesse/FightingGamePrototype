extends Node
class_name SimpoleRoundController

var player1:CharacterBody2D
var player2:CharacterBody2D



func getForwardDirection(character:CharacterBody2D)->int:
	if character == player1 :
		return clampi(player2.position.x-player1.position.x,-1,1)
	if character == player2 :
		return clampi(player2.position.x-player1.position.x,-1,1)
	return 0
