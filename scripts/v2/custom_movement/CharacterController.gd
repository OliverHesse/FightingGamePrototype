extends Node2D
class_name CharacterController

@export var pushBox:Area2D
@export var hurtBoxes:Array[Area2D]
@export var hitBoxes:Array[Area2D]
@export var stateMachine:SimpleStateMachine
@export var inputReader:InputReader

var deltaX = 0
var deltaY = 0

signal state_changed(stateMachine:SimpleStateMachine)

func isOnFloor()->bool:
	return position.y + getFeet() >= getGroundY()
func isAgainstLeftWall()->bool:
	return position.x -getLeftSide() <= getLeftWallX()
func isAgainstRightWall()->bool:
	return position.x +getRightSide() >= getRightWallX()
func getLeftSide()->int:
	if scale.x >= 1:
		return abs($PushBox/CollisionShape2D.shape.get_rect().size.x/2-$PushBox/CollisionShape2D.position.x) 
	return abs($PushBox/CollisionShape2D.position.x+$PushBox/CollisionShape2D.shape.get_rect().size.x/2) 
func getRightSide()->int:
	if scale.x >= 1:
		return abs($PushBox/CollisionShape2D.position.x+$PushBox/CollisionShape2D.shape.get_rect().size.x/2) 
	return abs($PushBox/CollisionShape2D.shape.get_rect().size.x/2-$PushBox/CollisionShape2D.position.x) 
		
func getTop()->int:
	return abs($PushBox/CollisionShape2D.shape.get_rect().size.y/2-$PushBox/CollisionShape2D.position.y) 
func getFeet() ->int:
	return abs($PushBox/CollisionShape2D.position.y-$PushBox/CollisionShape2D.shape.get_rect().size.y/2)

func getForwardDirection()->int:
	return get_parent().getForwardDirection(self)

func move(velocity:Vector2):
	deltaX += velocity.x
	deltaY += velocity.y

	

func getGroundY() ->int:
	return get_parent().getGroundY() 
func getLeftWallX() ->int:
	return get_parent().getLeftWall()
func getRightWallX()->int:
	return get_parent().getRightWall()


func processFrame(delta:float)->void:
	inputReader.processFrame()
	if stateMachine.processFrame(delta,self,inputReader):
		state_changed.emit(stateMachine)
	
func resolveState()->void:
	stateMachine.resolveState(self,inputReader)
