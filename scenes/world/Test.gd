extends Node2D
class_name GameLevel
@export var p1:CharacterController
@export var p2:CharacterController
@export var movementHandler: MovementHandler
@export var ground:int
@export var leftWall:int
@export var rightWall:int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func getForwardDirection(character:CharacterController)->int:
	var dir = sign(p2.position.x - p1.position.x)
	if character == p1:
		if dir == 0:
			return 1
		return dir
	if character == p2:
		if dir == 0:
			return -1
		return -dir
	return 1

func getGroundY() -> int:
	return ground
func getLeftWall() -> int:
	return leftWall
func getRightWall()->int:
	return rightWall

func _physics_process(delta: float) -> void:
	
	p1.processFrame(delta)
	p2.processFrame(delta)
	
	movementHandler.processCollisions([p1,p2])
	
	p1.resolveState()
	p2.resolveState()
	
	print("p1: "+str(p1.inputReader.inputBuffer.getLastFrameInput()))
	print("p2: "+str(p2.inputReader.inputBuffer.getLastFrameInput()))
	
	#$Node2D.processMovement(characters)
