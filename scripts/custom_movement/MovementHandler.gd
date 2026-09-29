extends Node


func getCollisionNormal(character:CharacterController,other:Node2D)->Vector2i:
	return Vector2i(1,1)

func processCharacter(character:CharacterController)->void:
	var newX = character.position.x+character.deltaX
	var newY = character.position.y+character.deltaY
	


func processMovement(characters:Array[CharacterController])->void:
	for character in characters:
		processCharacter(character)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
