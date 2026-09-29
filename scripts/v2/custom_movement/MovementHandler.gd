extends Node
func resolveMovement(character:CharacterController):
	#first resolve walls and ground
	var newX = getClampedX(character.x+character.deltaX,character)
	var newY = getClampedY(character.y+character.deltaY,character)
	#handle collisions I need to handle characters differently(y behaviour is diff)
	#if the character cannot be pushed back, then add it to the opponents delta instead
	#projectiles are not considered right now
	for area in character.pushBox.get_overlapping_areas():
		var node = area.get_parent()
		if node is CharacterController:
			#clamp movement on x
			#check x positions so we know what to check
			if character.position.x <node.position.x:
				newX = getClampedX(node.position.x-node.getLeftSide()-character.getRightSide(),character)
			else:
				newX = getClampedX(node.position.x+node.getRightSide()+character.getLeftSide(),character)
				
			#might not need to worry about y, since x will already push if they overlap
			
func getClampedX(inputX:int,character:CharacterController)->int:
	return clamp(inputX,character.getLeftWallX(),character.getRightWallX())
func getClampedY(inputY:int,character:CharacterController)->int:
	return min(inputY,character.getGroundY()-character.localFeet())

#TODO make it possible to resolve movement for projectiles as well 
func processCollisions(characters:Array[CharacterController]):
	for character in characters:
		resolveMovement(character)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
