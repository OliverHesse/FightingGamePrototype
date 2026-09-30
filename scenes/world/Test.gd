extends Node2D
class_name GameLevel
@export var p1:CharacterController
@export var p2:CharacterController
@export var movementHandler: MovementHandler
@export var ground:int
@export var leftWall:int
@export var rightWall:int

var p1Dir:int
var p2Dir:int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

#if x == x i DO NOT CHANGE DIRECTION
func resolveDirection():
	if p1.position.x < p2.position.x:
		p1Dir = 1
		p2Dir = -1
	elif p1.position.x > p2.position.x:
		p1Dir = -1
		p2Dir = 1
	

func getForwardDirection(character:CharacterController)->int:
	if character == p1:
		return p1Dir
	if character == p2:
		return p2Dir
	return 1
func getGroundY() -> int:
	return ground
func getLeftWall() -> int:
	return leftWall
func getRightWall()->int:
	return rightWall

func _physics_process(delta: float) -> void:
	
	resolveDirection()
	
	p1.processFrame(delta)
	p2.processFrame(delta)
	
	movementHandler.processCollisions([p1,p2])
	
	p1.resolveState()
	p2.resolveState()
	
	#print("p1: "+str(p1.inputReader.inputBuffer.getLastFrameInput()))
	#print("p2: "+str(p2.inputReader.inputBuffer.getLastFrameInput()))
	
	#$Node2D.processMovement(characters)
