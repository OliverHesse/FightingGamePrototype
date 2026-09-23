extends Node2D
class_name SimpoleRoundController

@export var player1:CharacterBody2D
@export var player2:CharacterBody2D

func _ready() -> void:
	player1.position = $P1Spawn.position
	player2.position = $P2Spawn.position

func getForwardDirection(character:CharacterBody2D)->int:
	var dir = sign(player2.position.x - player1.position.x)

	if character == player1:
		if dir == 0:
			return 1
		return dir

	if character == player2:
		if dir == 0:
			return -1
		return -dir

	return 1
