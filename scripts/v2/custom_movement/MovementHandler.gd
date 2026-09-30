extends Node
class_name MovementHandler
func resolveMovement(character:CharacterController):
	#first resolve walls and ground
	var newX = getClampedX(character.position.x+character.deltaX,character)
	var newY = getClampedY(character.position.y+character.deltaY,character)
	#handle collisions I need to handle characters differently(y behaviour is diff)
	#if the character cannot be pushed back, then add it to the opponents delta instead
	#projectiles are not considered right now
	for area in character.pushBox.get_overlapping_areas():
		var node = area.get_parent()
		if node is CharacterController:
			
			if character.isAgainstRightWall() and node.isAgainstRightWall() and not character.isOnFloor():
				print("push right")
				newX = getClampedX(min(node.position.x-node.getLeftSide()-character.getRightSide(),newX),character)
			elif character.isAgainstLeftWall() and node.isAgainstLeftWall() and not character.isOnFloor():
				newX = getClampedX(max(node.position.x+node.getRightSide()+character.getLeftSide(),newX),character)
			elif character.position.x < node.position.x:
				newX = getClampedX(min(node.position.x-node.getLeftSide()-character.getRightSide(),newX),character)
			else:		
				newX = getClampedX(max(node.position.x+node.getRightSide()+character.getLeftSide(),newX),character)
				
			#might not need to worry about y, since x will already push if they overlap
	character.deltaX = 0
	character.deltaY = 0
	character.position.x = newX
	character.position.y = newY
func getClampedX(inputX:int,character:CharacterController)->int:
	return clamp(inputX,character.getLeftWallX()+character.getLeftSide(),character.getRightWallX()-character.getRightSide())
func getClampedY(inputY:int,character:CharacterController)->int:
	return min(inputY,character.getGroundY()-character.getFeet())

#TODO make it possible to resolve movement for projectiles as well 
func processCollisions(characters:Array[CharacterController]):
	for character in characters:
		resolveMovement(character)
