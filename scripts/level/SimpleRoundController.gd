extends Node2D
class_name SimpoleRoundController

@export var player1:CharacterBody2D
@export var player2:CharacterBody2D

func _ready() -> void:
	player1.position = $P1Spawn.position
	player2.position = $P2Spawn.position

func getForwardDirection(character:CharacterBody2D)->int:
	if character == player1 :

		var dir = clampi(player2.position.x-player1.position.x,-1,1)
		if(dir == 0):
			return 1
		return dir
		
	if character == player2 :
		
		var dir = clampi(player2.position.x-player1.position.x,-1,1)
		if(dir == 0):
			return -1
		return dir
	return 1
